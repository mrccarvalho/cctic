/*global angular*/
(function () {
    angular
        .module('CcticAdmin.news')
        .factory('newsWidgetService', newsWidgetService);

    /* @ngInject */
    function newsWidgetService($http) {
        var service = {
            getWidgetZones: getWidgetZones,
            getNewsWidget: getNewsWidget,
            createNewsWidget: createNewsWidget,
            editNewsWidget: editNewsWidget
        };
        return service;

        function getWidgetZones() {
            return $http.get('api/widget-zones');
        }

        function getNewsWidget(id) {
            return $http.get('api/news-widgets/' + id);
        }

        function createNewsWidget(widgetInstance) {
            return $http.post('api/news-widgets', widgetInstance);
        }

        function editNewsWidget(widgetInstance) {
            return $http.put('api/news-widgets/' + widgetInstance.id, widgetInstance);
        }

       
    }
})();