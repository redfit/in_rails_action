(($) ->
  $.extend
    inRailsActionFuncs: {}

    inRailsAction: (controller, actions, callback) ->
      if callback
        $.inRailsActionFuncs[controller] ||= {}
        actions = [actions] unless actions instanceof Array
        for action in actions
          $.inRailsActionFuncs[controller][action] ||= []
          $.inRailsActionFuncs[controller][action].push callback
      else
        actions = [actions] unless actions instanceof Array
        for action in actions
          funcs = if $.inRailsActionFuncs[controller] then ($.inRailsActionFuncs[controller][action] || []) else []
          func?() for func in funcs
)(jQuery)
