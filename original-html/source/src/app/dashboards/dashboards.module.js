'use strict';

/**
 * @ngdoc module
 * @name triangular.authentication
 * @description
 *
 * The `triangular.authentication` module handles all the login and signup pages
 */
angular.module('triAngularDashboards', [])
.config(function ($translatePartialLoaderProvider, $stateProvider) {
    $translatePartialLoaderProvider.addPart('app/dashboards');

    $stateProvider
    .state('admin-panel.default.dashboard-general', {
        url: '/dashboards/general',
        templateUrl: 'app/dashboards/dashboard-general.tmpl.html',
    })
    .state('admin-panel.default.dashboard-analytics', {
        url: '/dashboards/analytics',
        templateUrl: 'app/dashboards/dashboard-analytics.tmpl.html',
    })
    .state('admin-panel.default.dashboard-server', {
        url: '/dashboards/server',
        controller: 'DashboardServerController',
        templateUrl: 'app/dashboards/dashboard-server.tmpl.html',
    })
    .state('admin-panel.default.dashboard-widgets', {
        url: '/dashboards/widgets',
        templateUrl: 'app/dashboards/widgets.tmpl.html',
    });
})
.run(function(SideMenu) {
    SideMenu.addMenu({
        name: 'MENU.DASHBOARDS.DASHBOARDS',
        icon: 'icon-home',
        type: 'dropdown',
        priority: 2.1,
        children: [{
            name: 'MENU.DASHBOARDS.ANALYTICS',
            state: 'admin-panel.default.dashboard-analytics',
            type: 'link',
        },{
            name: 'MENU.DASHBOARDS.GENERAL',
            state: 'admin-panel.default.dashboard-general',
            type: 'link',
        },{
            name: 'MENU.DASHBOARDS.SERVER',
            state: 'admin-panel.default.dashboard-server',
            type: 'link',
        },{
            name: 'MENU.DASHBOARDS.WIDGETS',
            state: 'admin-panel.default.dashboard-widgets',
            type: 'link',
        }]
    });
});
