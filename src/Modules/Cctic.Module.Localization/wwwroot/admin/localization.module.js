/*global angular*/
(function () {
    'use strict';

    angular
        .module('CcticAdmin.localization', [])
        .config(['$stateProvider', function ($stateProvider) {
            $stateProvider.state('localization', {
                url: '/localization',
                templateUrl: "modules/localization/admin/localization/localization-form.html",
                controller: 'LocalizationFormCtrl as vm'
            });
        }]);
})();