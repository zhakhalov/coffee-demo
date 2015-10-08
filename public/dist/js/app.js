(function(ng) {
  return ng.module('app', []).controller('AppCtrl', [
    '$scope', '$log', function($scope, $log) {
      return $scope.click = function() {
        return console.log('click');
      };
    }
  ]);
})(window.angular);

//# sourceMappingURL=../../app/app.js.map
