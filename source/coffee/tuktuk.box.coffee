TukTuk.Box = do (tk = TukTuk) ->

  lock = undefined
  box = undefined

  show = (box_id)->
    box = tk.dom("[data-tuktuk=boxes] ##{box_id}").first()
    box.addClass "active"
    @

  hide = ->
    box.removeClass "active"
    @

  do ->
    tk.dom("[data-tuktuk=boxes] [data-box=close]").on "click", -> TukTuk.Box.hide()
    tk.dom("[data-tuktuk-box]").on "click", ->
      TukTuk.Box.show tk.dom(this).attr('data-tuktuk-box')

  show: show
  hide: hide
