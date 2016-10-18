<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnumCheck.aspx.cs" Inherits="ProjectWebApplication.EnumCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
    </script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
</head>
<body ng-app="myApp"> 
    <form id="form1">
    <div ng-controller="myCtrl">
       
    <select ng-model="selected" ng-options="option for option in Color" ></select>
      <h4> {{selected}} </h4> <br/><h4>Hello</h4>
       <button ng-click="retData.getColor()">{{selected}}</button>
        <h3>Return Color: {{returnColor}}</h3>
        <br/>
         <select ng-model="dayselect" ng-options="option for option in Day" ></select>
      <h4> {{dayselect}} </h4> <br/><h4>Hello</h4>
      
        <h3>Return Color: {{returnDay}}</h3>

    </div>
    </form>
    <script>
        (function() {

            angular.module("myApp", [])
                .controller("myCtrl",
                    function($scope, $http) {
                        $scope.retData = {};
                       
                            $http.post('EnumCheck.aspx/GetData', { data: {} })
                                .success(function(data, status, headers, config) {
                                    console.log(data.d);
                                    $scope.Color = data.d[0];
                                    $scope.Day = data.d[1];
                                    $scope.selected = $scope.Color[0];
                                    $scope.dayselect = $scope.Day[0];

                                })
                                .error(function(data, status, headers, config) {
                                    $scope.status = status;
                                });
                        
                        $scope.retData.getColor = function () {
                            $scope.data1 = { "color": $scope.selected };
                            $http.post('EnumCheck.aspx/GetColor', $scope.data1).success(function (data, status, headers, config) {
                                console.log(data);
                                    $scope.returnColor = data.d;


                                    // $scope.myData = data.d.MyList;*/

                                })
                                .error(function (data, status, headers, config) {
                                    $scope.status = status;
                                });
                            
                        };
                    }).config(function ($httpProvider) {
                        $httpProvider.defaults.headers.post = {};
                        $httpProvider.defaults.headers.post["Content-Type"] = "application/json; charset=utf-8";
                    });
        })();
    </script>
</body>

</html>
