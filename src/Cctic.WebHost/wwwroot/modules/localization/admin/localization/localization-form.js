 /*global angular*/
(function () {
    angular
        .module('CcticAdmin.localization')
        .controller('LocalizationFormCtrl', LocalizationFormCtrl);

    /* @ngInject */
    function LocalizationFormCtrl($state, localizationService) {
        var vm = this;
        vm.resources = [];
        vm.cultures = [];
        vm.selectedCultureId = 3;

        vm.changeCulture = function changeCulture()
        {
            vm.validationErrors = [];
            localizationService.getResources(vm.selectedCultureId).then(function (result) {
                vm.resources = result.data;
            });
        }

        vm.save = function save() {
            vm.validationErrors = [];
            localizationService.updateResources(vm.selectedCultureId, vm.resources)
                .then(function (result) {
                    toastr.success('Translations have been saved');
                })
                .catch(function (response) {
                    var error = response.data;
                    vm.validationErrors = [];
                    if (error && angular.isObject(error)) {
                        for (var key in error) {
                            vm.validationErrors.push(error[key][0]);
                        }
                    } else {
                        vm.validationErrors.push('Could not save translation.');
                    }
                });
        };

        function init() {
            localizationService.getCultures().then(function (result) {
                vm.cultures = result.data;
            });

            localizationService.getResources(vm.selectedCultureId).then(function (result) {
                vm.resources = result.data;
            });
        }

        init();
    }
})();