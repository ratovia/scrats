
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  form_count = 1
  # 支払い追加した際のフォーム
  $('#add_cost').click( ->
    original = $('#form_No_' + form_count)
    form_count += 1
    # クローンを作成し、元の後ろに設置。
    $(original)
      .clone()
      .insertAfter(original)
      # クローンのid属性を変更。
      .attr('id', 'form_No_' + form_count)
      # # label要素のfor属性を変更。
      .find('label').each( (index, element) ->
        $(element).attr(
          'for',
          /^_No_/ + form_count
        );
      ).end()
      # # input要素のid,name属性を変更。value値を空白に。
      # .find('input').each(function (idx, obj) {
      #   $(obj).attr({
      #     id: $(obj).attr('id').replace(/_[0-9]+$/, '_' + form_count),
      #     name: $(obj).attr('name').replace(/_[0-9]+$/, '_' + form_count)
      #   }).val('');
      # });
  )