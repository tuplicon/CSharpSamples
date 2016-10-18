<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectWeb.aspx.cs" Inherits="ProjectWebApplication.ProjectWeb" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">

    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
    </script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <style>
        body { padding-top:10px;font-size: 13px;}
        .table{ width: 70%; height: }
    </style>
<body ng-app="myApp" >

  
       
        <div  ng-controller="myCtrl" data-ng-init="retData.getResult()">
             <%--<button ng-click="retData.getResult()">Send AJAX Request</button> <br/>--%>
            Show Data:<input type="checkbox" checked="" ng-model="IsVisible"/>
            <div class="alert alert-info">
    <p>Sort Type: {{ sortType }}</p>
    <p>Sort Reverse: {{ sortReverse }}</p>
    <p>Search Query: {{ searchItem }}</p>
  </div>
   
             <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>

        <input type="text" class="form-control" placeholder="Search The Item" ng-model="searchItem">

      </div>      
    </div>
            <div ng-show="IsVisible">
            <%--<table border="1">
                <tr>
                    <th>Item</th>
                    <th>Quanity</th>
                    <th>Date</th>
                </tr>
              <tr ng-repeat="x in myData ">
                <td>{{ x.item }}</td>
                <td>{{x.qty}}</td>
                  <td>{{x.date | jsonDate}}</td>
              </tr>
            </table>--%>
             <table class="table table-bordered table-striped table-hover" style="font-size: 15px;">
    
    <thead>
      <tr>
        <td>
			<a href="#" ng-click="sortType='Symbol'; sortReverse=!sortReverse">
            Symbol
				<span ng-show="sortType == 'Symbol'&& sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Symbol' && sortReverse==true" class="fa fa-caret-up"></span>
				</a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'Side'; sortReverse=!sortReverse">
         
          Side 
			   <span ng-show="sortType == 'Side' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Side'&& sortReverse==true" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
         <a href="#" ng-click="sortType = 'Evaluator'; sortReverse=!sortReverse">
          
          Evaluator 
			 <span ng-show="sortType == 'Evaluator' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Evaluator' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
        </td>
          <td>
         <a href="#" ng-click="sortType = 'RatePrice'; sortReverse=!sortReverse">
          
          RatePrice 
			 <span ng-show="sortType == 'RatePrice' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'RatePrice' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'Expiration'; sortReverse=!sortReverse">
          
          Expiration 
			 <span ng-show="sortType == 'Expriration' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Expiration' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'UsePercentMoney'; sortReverse=!sortReverse">
          
          Use PercentMoney 
			 <span ng-show="sortType == 'UsePercentMoney' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'UsePercentMoney' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'BidStrike'; sortReverse=!sortReverse">
          
          BidStrike 
			 <span ng-show="sortType == 'BidStrike' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'BidStrike' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'MidStrike'; sortReverse=!sortReverse">
          
          Mid Strike 
			 <span ng-show="sortType == 'MidStrike' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'MidStrike' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'HighStrike'; sortReverse=!sortReverse">
          
          High Strike 
			 <span ng-show="sortType == 'HighStrike' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'HighStrike' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'Account'; sortReverse=!sortReverse">
          
          Account 
			 <span ng-show="sortType == 'Account' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Account' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'Limit'; sortReverse=!sortReverse">
          
          Limit 
			 <span ng-show="sortType == 'Limit' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Limit' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'ListnerType'; sortReverse=!sortReverse">
          
          ListnerType 
			 <span ng-show="sortType == 'ListnerType' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'ListnerType' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'JobId'; sortReverse=!sortReverse">
          
          JobID 
			 <span ng-show="sortType == 'JobId' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'JibId' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'Comments'; sortReverse=!sortReverse">
          
          Comments 
			 <span ng-show="sortType == 'Comments' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Comments' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>

          <td> <a href="#">Remove</a></td>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="(dataIndex,pr) in myData | orderBy:sortType:sortReverse | filter:searchItem | filter:jsonDate">
          
        <td>{{ pr.Symbol }}</td>
        <td>{{ pr.Side }}</td>
        <td>{{ pr.Evaluator }}</td>
          <td>{{ pr.RatePriceFee}}</td>
          <td>{{ pr.Expiration | jsonDate}}</td>
          <td>{{ pr.UsePercentMoney}}</td>
          <td>{{ pr.BidStrike}}</td>
          <td>{{ pr.MidStrike}}</td>
          <td>{{ pr.HighStrike}}</td>
          <td>{{ pr.Account}}</td>
          <td>{{ pr.Limit}}</td>
          <td>{{ pr.ListenerType}}</td>
          <td>{{ pr.JobId}}</td>
          <td>{{ pr.Comments}}</td>
          <td><button class="btn btn-danger remove show_tip" ng-click="retData.deleteResult(pr._id)">Remove</button></td>
      </tr>
        <tr>
            <td><input type="text" ng-model="Symbol" id="Symobl"/></td>
            <td><select ng-model="sideSelected" ng-options="option for option in Side" ></select></td>
            <td><select ng-model="evaluatorSelected" ng-options="option for option in Evaluator"></select></td>
            <td><select ng-model="ratePriceSelected" ng-options="option for option in RatePrice"></select></td>
            <td><input type="date" ng-model="Expiration" id="Expiration"/></td>
            <td><input type="text" ng-model="UsePercentMoney" id="UsePercentMoney"/></td>
            <td><input type="text" ng-model="BidStrike" id="BidStrike"/></td>
            <td><input type="text" ng-model="MidStrike" id="MidStrike"/></td>
            <td><input type="text" ng-model="HighStrike" id="HighStrike"/></td>
            <td><input type="text" ng-model="Account" id="Account"/></td>
            <td><input type="text" ng-model="Limit" id="Limit"/></td>
            <td><select ng-model="ListnerTypeSelected" ng-options="option for option in ListnerType"></select></td>
            <td><input type="text" ng-model="JobId" id="JobId"/></td>
            <td><input type="text" ng-model="Comments" id="Comments"/></td>
            <td><input class="btn btn-primary" type="submit" ng-click="retData.saveResult()" value="Insert"/></td>
        </tr>
    </tbody>
    
  </table>
  
            <br />  
<div >Result from server: {{myData}}  </div>
  </div>
             </form>


        </div>
     
        <script>
            /* $(document).ready(function() {
                // retDate.getResult(item,$event);
             });*/
            (function () {


                angular.module("myApp", [])
                    .controller("myCtrl", function ($scope, $http) {
                        $scope.retData = {};
                        $scope.searchItem = '';
                        $scope.sortType = '';
                        $scope.sortReverse = false;
                        $scope.IsVisible = true;
                        $scope.retData.getResult = function () {
                            $http.post('ProjectWeb.aspx/GetData', { data: {} })
                                .success(function (data, status, headers, config) {
                                    console.log(data.d);
                                    $scope.Side = data.d[0];
                                    $scope.Evaluator = data.d[1];
                                    $scope.RatePrice = data.d[2];
                                    $scope.ListnerType = data.d[3];
                                    $scope.myData = data.d[4].MyList;

                                })
                                .error(function (data, status, headers, config) {
                                    $scope.status = status;
                                });
                        };
                        $scope.retData.saveResult = function () {
                            $scope.data1 = { "symbol": $scope.Symbol, "side": $scope.sideSelected, "evaluator": $scope.evaluatorSelected, "ratePriceFee": $scope.ratePriceSelected, "expiration": $scope.Expiration, "usePercentMoney": $scope.UsePercentMoney, "bidStrike": $scope.BidStrike, "midStrike": $scope.MidStrike, "highStrike": $scope.HighStrike, "account": $scope.Account, "limit": $scope.Limit, "listenerType": $scope.ListnerTypeSelected, "jobId": $scope.JobId, "comments": $scope.Comments };
                            $http.post('ProjectWeb.aspx/SaveData', $scope.data1).success(function (data, status, headers, config) {
                                console.log(data);

                                $scope.retData.getResult();
                                $scope.item = '';
                                $scope.qty = '';
                                $scope.date = '';
                                $scope.phone = '';
                                // $scope.myData = data.d.MyList;*/

                            })
                                .error(function (data, status, headers, config) {
                                    $scope.status = status;
                                });
                        };
                        $scope.retData.deleteResult = function (x) {
                            console.log(x);
                            $scope.data1 = { "id": x };
                            $http.post('ProjectWeb.aspx/DeleteData', $scope.data1).success(function (data, status, headers, config) {
                                console.log(data);

                                $scope.retData.getResult();

                                // $scope.myData = data.d.MyList;

                            })
                                .error(function (data, status, headers, config) {
                                    $scope.status = status;
                                });
                        };

                    }).config(function ($httpProvider) {
                        $httpProvider.defaults.headers.post = {};
                        $httpProvider.defaults.headers.post["Content-Type"] = "application/json; charset=utf-8";
                    }).filter('jsonDate', ['$filter', function ($filter) {
                        return function (input, format) {
                            return (input)
                                ? $filter('date')(parseInt(input.substr(6)), format)
                                : '';
                        };
                    }]).filter('tel', function () {
                        return function (tel) {
                            if (!tel) { return ''; }

                            var value = tel.toString().trim().replace(/^\+/, '');

                            if (value.match(/[^0-9]/)) {
                                return tel;
                            }

                            var country, city, number;

                            switch (value.length) {
                                case 10: // +1PPP####### -> C (PPP) ###-####
                                    country = 1;
                                    city = value.slice(0, 3);
                                    number = value.slice(3);
                                    break;

                                case 11: // +CPPP####### -> CCC (PP) ###-####
                                    country = value[0];
                                    city = value.slice(1, 4);
                                    number = value.slice(4);
                                    break;

                                case 12: // +CCCPP####### -> CCC (PP) ###-####
                                    country = value.slice(0, 3);
                                    city = value.slice(3, 5);
                                    number = value.slice(5);
                                    break;

                                default:
                                    return tel;
                            }

                            if (country == 1) {
                                country = "";
                            }

                            number = number.slice(0, 3) + '-' + number.slice(3);

                            return (country + " (" + city + ") " + number).trim();
                        };
                    });;
            })();
        </script>  
  
</body>
</html>
