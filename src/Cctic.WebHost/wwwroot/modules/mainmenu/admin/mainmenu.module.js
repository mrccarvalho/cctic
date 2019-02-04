/*global angular*/
(function () {
    'use strict';

    angular.module('CcticAdmin.mainmenu', [])
        .config(['$stateProvider', function ($stateProvider) {
            $stateProvider
                
                .state('category', {
                    url: '/category',
                    templateUrl: 'modules/mainmenu/admin/category/category-list.html',
                    controller: 'CategoryListCtrl as vm'
                })
               .state('category-create', {
                   url: '/category/create',
                   templateUrl: 'modules/mainmenu/admin/category/category-form.html',
                   controller: 'CategoryFormCtrl as vm'
               })
               .state('category-edit', {
                   url: '/category/edit/:id',
                   templateUrl: 'modules/mainmenu/admin/category/category-form.html',
                   controller: 'CategoryFormCtrl as vm'
               })
              
                .state('widget-category-create', {
                    url: '/widget-category/create',
                    templateUrl: 'modules/mainmenu/admin/category-widget/category-widget-form.html',
                    controller: 'CategoryWidgetFormCtrl as vm'
                })
                .state('widget-category-edit', {
                    url: '/widget-category/edit/:id',
                    templateUrl: 'modules/mainmenu/admin/category-widget/category-widget-form.html',
                    controller: 'CategoryWidgetFormCtrl as vm'
                });
        }]);
})();