/*global angular*/
(function () {
    var adminApp = angular.module('CcticAdmin', [
        'ui.router',
        'ngMaterial',
        'ngMessages',
        'smart-table',
        'ngFileUpload',
        'ui.bootstrap',
        'ui.bootstrap.datetimepicker',
        'ui.tree',
        'summernote',
        'CcticAdmin.common',
        'CcticAdmin.dashboard',
        'CcticAdmin.core',
        'CcticAdmin.mainmenu',
        'CcticAdmin.cms',
        'CcticAdmin.localization',
        'CcticAdmin.news',
        'CcticAdmin.contacts'
    ]);

    toastr.options.closeButton = true;
    adminApp
        .config([
            '$urlRouterProvider', '$httpProvider',
            function ($urlRouterProvider, $httpProvider) {
                $urlRouterProvider.otherwise("/dashboard");

                $httpProvider.interceptors.push(function () {
                    return {
                        request: function (config) {
                            if (/modules.*admin.*\.html/i.test(config.url)) {
                                var separator = config.url.indexOf('?') === -1 ? '?' : '&';
                                config.url = config.url + separator + 'v=' + window.Global_AssetVersion;
                            }

                            return config;
                        }
                    };
                });
            }
        ]);
}());