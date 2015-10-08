((ng) ->
  ng.module('app', [])
  .controller 'AppCtrl', [
    '$scope'
    '$log'
    ($scope, $log) ->
      $scope.click = ->
        $log.log 'click'
  ]
) window.angular