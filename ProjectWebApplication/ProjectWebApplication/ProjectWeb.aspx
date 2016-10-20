<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectWeb.aspx.cs" Inherits="ProjectWebApplication.ProjectWeb" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">

    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
    </script>
    <%--<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>--%>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <style>
         body { padding-top:10px;font-size: 13px;}
        .modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 50px; /* Location of the box */
    padding-left: 100px;
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
.text-control {
    width: 100%;
    height: 50px;
    font-size: 25px;
}
/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin-top:100px;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

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
          
        <input type="text" class="text-control" placeholder="Search The Item" ng-model="searchItem" style="z-index: 1000;">
              
      </div>      
    </div>
        </form>
            <div ng-show="IsVisible">
           <form>
             <table class="table table-bordered table-striped table-hover" style="font-size: 14px;" width=100%>
    
    <thead >
      <tr >
        <td>
			<a href="#" ng-click="sortType='Symbol'; sortReverse=!sortReverse">
           <font color="#3399ff">Symbol</font> 
				<span ng-show="sortType == 'Symbol'&& sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Symbol' && sortReverse==true" class="fa fa-caret-up"></span>
				</a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'Side'; sortReverse=!sortReverse">
         
          <font color="#3399ff">Side </font>
			   <span ng-show="sortType == 'Side' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Side'&& sortReverse==true" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
         <a href="#" ng-click="sortType = 'Evaluator'; sortReverse=!sortReverse">
          
        <font color="#3399ff">  Evaluator </font>
			 <span ng-show="sortType == 'Evaluator' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Evaluator' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
        </td>
          <td>
         <a href="#" ng-click="sortType = 'RatePrice'; sortReverse=!sortReverse">
          
        <font color="#3399ff">  RatePrice </font>
			 <span ng-show="sortType == 'RatePrice' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'RatePrice' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'Expiration'; sortReverse=!sortReverse">
          
         <font color="#3399ff"> Expiration </font>
			 <span ng-show="sortType == 'Expriration' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Expiration' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'UsePercentMoney'; sortReverse=!sortReverse">
          
        <font color="#3399ff">  Use PercentMoney </font>
			 <span ng-show="sortType == 'UsePercentMoney' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'UsePercentMoney' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'BidStrike'; sortReverse=!sortReverse">
          
         <font color="#3399ff"> BidStrike </font>
			 <span ng-show="sortType == 'BidStrike' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'BidStrike' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'MidStrike'; sortReverse=!sortReverse">
          
         <font color="#3399ff"> Mid Strike </font>
			 <span ng-show="sortType == 'MidStrike' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'MidStrike' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'HighStrike'; sortReverse=!sortReverse">
          
          <font color="#3399ff">High Strike </font>
			 <span ng-show="sortType == 'HighStrike' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'HighStrike' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'Account'; sortReverse=!sortReverse">
          
         <font color="#3399ff"> Account </font>
			 <span ng-show="sortType == 'Account' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Account' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'Limit'; sortReverse=!sortReverse">
          
         <font color="#3399ff"> Limit </font>
			 <span ng-show="sortType == 'Limit' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Limit' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'ListnerType'; sortReverse=!sortReverse">
          
          <font color="#3399ff">ListnerType </font>
			 <span ng-show="sortType == 'ListnerType' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'ListnerType' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'JobId'; sortReverse=!sortReverse">
          
          <font color="#3399ff">JobID </font>
			 <span ng-show="sortType == 'JobId' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'JibId' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>
           <td>
         <a href="#" ng-click="sortType = 'Comments'; sortReverse=!sortReverse">
          
         <font color="#3399ff"> Comments </font>
			 <span ng-show="sortType == 'Comments' && sortReverse==false" class="fa fa-caret-down"></span>
			  <span ng-show="sortType == 'Comments' && sortReverse==true" class="fa fa-caret-up"></span>
          </a>
              </td>

          <td> <a href="#"><font color="#3399ff">Remove</font></a></td>
          <td> <a href="#"><font color="#3399ff">Edit</font></a></td>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="(dataIndex,pr) in myData | orderBy:sortType:sortReverse | filter:searchItem | filter:jsonDate">
          
       
          <td>
            <span data-ng-hide="editMode">{{pr.Symbol}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.Symbol" data-ng-required />
        </td>
         <td>
            <span data-ng-hide="editMode">{{pr.Side}}</span>
            <select ng-model="pr.Side" data-ng-show="editMode">
                <option>{{pr.Side}}</option>
                 <option ng-repeat="option in Side" ng-selected="{{option==pr.Side}}" value="{{ option }}">{{option}}</option>
            </select>
        </td>
         <td>
            <span data-ng-hide="editMode">{{pr.Evaluator}}</span>
            <select ng-model="pr.Evaluator" data-ng-show="editMode">
                 <option ng-repeat="option in Evaluator" ng-selected="{{option==pr.Evaluator}}" value="{{ option }}">{{option}}</option>
            </select>
        </td>
          
           <td>
            <span data-ng-hide="editMode" >{{pr.RatePriceFee}}</span>
            <select ng-model="pr.RatePriceFee" data-ng-show="editMode">
                 <option ng-repeat="option in RatePrice" ng-selected="{{option==pr.RatePriceFee}}">{{option}}</option>
            </select>
        </td>
          
           <td>
            <button data-ng-hide="editDate" class="glyphicon glyphicon-edit" data-ng-click="editDate = true"></button><span data-ng-hide="editDate" >{{pr.Expiration | jsonDate}}</span>
            <button data-ng-show="editDate" class="glyphicon glyphicon-ok-sign" data-ng-click="editDate = false"></button><input type="date" data-ng-show="editDate" ng-model="Expiration" />
        </td>
          
           <td>
            <span data-ng-hide="editMode">{{pr.UsePercentMoney}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.UsePercentMoney" data-ng-required />
        </td>
         
           <td>
            <span data-ng-hide="editMode">{{pr.BidStrike}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.BidStrike" data-ng-required />
        </td>
          
           <td>
            <span data-ng-hide="editMode">{{pr.MidStrike}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.MidStrike" data-ng-required />
        </td>
          
           <td>
               
            <span data-ng-hide="editMode" >{{pr.HighStrike}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.HighStrike" data-ng-required />
        </td>
          
           <td>
            <span data-ng-hide="editMode">{{pr.Account}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.Account" data-ng-required />
        </td>
          
           <td>
            <span data-ng-hide="editMode">{{pr.Limit}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.Limit" data-ng-required />
        </td>
           <td>
            <span data-ng-hide="editMode">{{pr.ListenerType}}</span>
            <select ng-model="pr.ListenerType" data-ng-show="editMode">
                 <option ng-repeat="option in ListnerType" ng-selected="option==pr.ListenerType" value="{{ option }}">{{option}}</option>
            </select>
        </td>
          
           <td>
            <span data-ng-hide="editMode">{{pr.JobId}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.JobId" data-ng-required />
        </td>
          
           <td>
            <span data-ng-hide="editMode">{{pr.Comments}}</span>
            <input type="text" data-ng-show="editMode" ng-model="pr.Comments" data-ng-required />
        </td>
          <td><button class="btn btn-danger remove show_tip" ng-click="retData.deleteResult(pr._id)">Remove</button></td>
          <td><button class="btn btn-primary remove show_tip" data-ng-hide="editMode" data-ng-click="editMode = true">Edit</button>
              <button class="btn btn-primary remove show_tip" data-ng-show="editMode" data-ng-click="editMode = false; 
                  retData.updateResult(pr._id,pr.Symbol,pr.Side,pr.Evaluator,pr.RatePriceFee,Expiration,pr.UsePercentMoney,
                  pr.BidStrike,pr.MidStrike,pr.HighStrike,pr.Account,pr.Limit,pr.ListenerType,pr.JobId,pr.Comments) ">Update</button>
          </td>
      </tr>
        <div>
        <tr>
           
           <button id="myBtn" class="btn btn-primary">Add New</button>
        </tr>
     
        </div>
    </tbody>
    
  </table>
                 </form>
   <div id="myModal" class="modal" >

            <div class="modal-content" style="min-width: 100px">
                <span class="close">×</span>
                <table class="table">
                    <form>
                        <fieldset>
                            <legend>Insert a Record</legend>
                
               <tr> <td>Symbol: </td><td><input type="text" ng-model="Symbol" id="Symobl"/></td>
            
                <td>Side: </td><td><select ng-model="sideSelected" ng-options="option for option in Side"></select></td></tr>
             
               <tr> <td>Evaluator:</td><td> <select ng-model="evaluatorSelected" ng-options="option for option in Evaluator"></select></td>
           
               <td>RatePrice: </td><td><select ng-model="ratePriceSelected" ng-options="option for option in RatePrice"></select></td></tr>
            
               <tr> <td> Expiration:  </td><td><input type="date" ng-model="Expiration" id="Expiration"/></td>
           
               <td>Use Percent Money:</td><td> <input type="text" ng-model="UsePercentMoney" id="UsePercentMoney"/></td></tr>
            
              <tr> <td> Bid Strike:</td><td> <input type="text" ng-model="BidStrike" id="BidStrike"/></td>
            
              <td> Mid Strike: </td><td><input type="text" ng-model="MidStrike" id="MidStrike"/></td></tr>
            
              <tr> <td> High Strike:</td><td> <input type="text" ng-model="HighStrike" id="HighStrike"/></td>
           
              <td> Account: </td><td><input type="text" ng-model="Account" id="Account"/></td></tr>
            
              <tr> <td> Limit: </td><td> <input type="text" ng-model="Limit" id="Limit"/></td>
           
             <td> Listner Type:  </td><td><select ng-model="ListnerTypeSelected" ng-options="option for option in ListnerType"></select></td></tr>
           
              <tr> <td> JobId: </td><td><input type="text" ng-model="JobId" id="JobId"/></td>
           
              <td> Comments: </td><td><textarea ng-model="Comments" id="Comments"></textarea></td></tr>
            
               <tr> <td> <input class="btn btn-primary" type="submit" ng-click="retData.saveResult()" value="Insert"/></td></tr>
                </fieldset>
                            </form>
                        </table>
            </div>
        </div>
        </div>

   
  
            <br />  
<%--<div >Result from server: {{myData}}  </div>--%>
             
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
                        $scope.editMode = false;
                        $scope.sortType = '';
                        $scope.sortReverse = false;
                        $scope.IsVisible = true;
                        $scope.editDate = false;
                        $scope.retData.getResult = function () {
                            $http.post('ProjectWeb.aspx/GetData', { data: {} })
                                .success(function (data, status, headers, config) {
                                    console.log(data.d);
                                    $scope.Side = data.d[0];
                                    $scope.Evaluator = data.d[1];
                                    $scope.RatePrice = data.d[2];
                                    $scope.ListnerType = data.d[3];
                                    $scope.myData = data.d[4].MyList;
                                    $scope.ratePriceSelected = data.d[4].MyList.RatePrice;

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
                                $scope.Symbol = '';
                                $scope.sideSelected = '';
                                $scope.evaluatorSelected = '';
                                $scope.ratePriceSelected = '';
                                $scope.Expiration = '';
                                $scope.UsePercentMoney = '';
                                $scope.BidStrike = '';
                                $scope.MidStrike = '';
                                $scope.HighStrike = '';
                                $scope.Account = '';
                                $scope.Limit = '';
                                $scope.ListnerTypeSelected = '';
                                $scope.JobId = '';
                                $scope.Comments = '';

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
                        $scope.retData.updateResult=function(id,symbol,side,evaluator,ratePriceFee,expiration,usePercentMoney,
                  bidStrike,midStrike,highStrike,account,limit,listenerType,jobId,comments) {
                            $scope.data1 = { "id": id,"symbol": symbol, "side": side, "evaluator": evaluator, "ratePriceFee": ratePriceFee, "expiration": expiration, "usePercentMoney": usePercentMoney, 
                                "bidStrike": bidStrike, "midStrike": midStrike, "highStrike": highStrike, "account": account, "limit": limit, "listenerType": listenerType, "jobId": jobId, 
                                "comments": comments };
                            $http.post('ProjectWeb.aspx/UpdateData', $scope.data1).success(function (data, status, headers, config) {
                                console.log(data);

                                $scope.retData.getResult();
                                

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
    <script>
        // Get the modal
        var modal = document.getElementById('myModal');

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks the button, open the modal
        btn.onclick = function () {
            modal.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target === modal) {
                modal.style.display = "none";
            }
        }
</script>
  
</body>
</html>
