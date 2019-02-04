/*global angular*/
(function () {
    angular
        .module('CcticAdmin.media')
        .factory('mediaItemService', mediaItemService);

    /* @ngInject */
    function mediaItemService($http, Upload) {
        var service = {
            getMediaItem: getNewsItem,
            createNewsItem: createNewsItem,
            editNewsItem: editNewsItem,
            deleteNewsItem: deleteNewsItem,
            getNewsItems: getNewsItems
        };
        return service;

        function getNewsItem(id) {
            return $http.get('api/news-items/' + id);
        }

        function getNewsItems(params) {
            return $http.post('api/news-items/grid', params);
        }

        function createNewsItem(newsItem) {
            return Upload.upload({
                url: 'api/news-items',
                data: newsItem
            });
        }

        function editNewsItem(newsItem) {
            return Upload.upload({
                url: 'api/news-items/' + newsItem.id,
                method: 'PUT',
                data: newsItem
            });
        }  

        function deleteNewsItem(newsItem) {
            return $http.delete('api/news-items/' + newsItem.id, null);
        }
    }
})();