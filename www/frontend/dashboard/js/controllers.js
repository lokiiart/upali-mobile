/**
 * INSPINIA - Responsive Admin Theme
 *
 */

/**
 * MainCtrl - controller
 */
function MainCtrl() {

    this.userName = 'Example user';
    this.helloText = 'Welcome in SeedProject';
    this.descriptionText = 'It is an application skeleton for a typical AngularJS web app. You can use it to quickly bootstrap your angular webapp projects and dev environment for these projects.';

};

function orderCtrl($scope, $http ){
    $http.get('/api/orders').then(function(response){
        $scope.orderData=response.data.orders;
    },function(response){
        alert(response);
    });

}

angular
    .module('inspinia')
    .controller('MainCtrl', MainCtrl)
    .controller('orderCtrl',orderCtrl)
