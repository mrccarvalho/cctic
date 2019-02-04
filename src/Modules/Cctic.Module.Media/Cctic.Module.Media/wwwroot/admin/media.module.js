/*global angular*/
(function () {
    'use strict';

    angular.module('CcticAdmin.media', [])
        .config(['$stateProvider', function ($stateProvider) {
            $stateProvider
               
                .state('media', {
                    url: '/media',
                    templateUrl: 'modules/media/admin/media-items/media-item-list.html',
                    controller: 'MediaItemListCtrl as vm'
                })
                .state('media-create', {
                    url: '/media-items/create',
                    templateUrl: 'modules/media/admin/media-items/media-item-form.html',
                    controller: 'MediaItemFormCtrl as vm'
                })
                .state('media-items-edit', {
                    url: '/media-items/edit/:id',
                    templateUrl: 'modules/media/admin/media-items/media-item-form.html',
                    controller: 'MediaItemFormCtrl as vm'
                });
         
              
                
        }]);
})();