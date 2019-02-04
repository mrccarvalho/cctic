/*global angular, jQuery*/
(function ($) {
    angular
        .module('CcticAdmin.news')
        .controller('NewsWidgetFormCtrl', NewsWidgetFormCtrl);

    /* @ngInject */
    function NewsWidgetFormCtrl($state, $stateParams, newsWidgetService, translateService) {
        var vm = this;
        vm.translate = translateService;
        vm.widgetZones = [];

        vm.widgetInstance = { widgetZoneId: 1, setting: { numberOfNewsItem: 4 }, publishStart: new Date() };
        vm.widgetInstanceId = $stateParams.id;
        vm.isEditMode = vm.widgetInstanceId > 0;

        vm.datePickerPublishStart = {};
        vm.datePickerPublishEnd = {};

        vm.openCalendar = function (e, picker) {
            vm[picker].open = true;
        };

        vm.save = function save() {
            var promise;
            if (vm.isEditMode) {
                promise = newsWidgetService.editNewsWidget(vm.widgetInstance);
            } else {
                promise = newsWidgetService.createNewsWidget(vm.widgetInstance);
            }

            promise
                .then(function (result) {
                    $state.go('widget');
                })
                .catch(function (response) {
                    var error = response.data;
                    vm.validationErrors = [];
                    if (error && angular.isObject(error)) {
                        for (var key in error) {
                            vm.validationErrors.push(error[key][0]);
                        }
                    } else {
                        vm.validationErrors.push('Could not news display widget.');
                    }
                });
        };

        function init() {
            newsWidgetService.getWidgetZones().then(function (result) {
                vm.widgetZones = result.data;
            });

            newsWidgetService.getNewsWidget().then(function (result) {
                vm.sorts = result.data;


            });

            if (vm.isEditMode) {
                newsWidgetService.getNewsWidget(vm.widgetInstanceId).then(function (result) {
                    vm.widgetInstance = result.data;
                    if (vm.widgetInstance.publishStart) {
                        vm.widgetInstance.publishStart = new Date(vm.widgetInstance.publishStart);
                    }
                    if (vm.widgetInstance.publishEnd) {
                        vm.widgetInstance.publishEnd = new Date(vm.widgetInstance.publishEnd);
                    }
                });
            }
        }

        init();
    }
})(jQuery);