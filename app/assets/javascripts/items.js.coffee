# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# endless-kaminari-demo by zzak
# $(document).ready ->
#   $("#items .page").infinitescroll
#     navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
#     nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
#     itemSelector: "#items tr.item" # selector for all items you'll retrieve
#   $(window).scroll()


$ ->
  # Configure infinite table
  $('.infinite-table').infinitePages
    debug: true
    buffer: 200
    loading: ->
      $(this).text('Loading next page...')
    error: ->
      $(this).button('There was an error, please try again')
