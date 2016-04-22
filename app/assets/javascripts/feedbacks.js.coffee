class FeedbackForm

  constructor: ->
    @_bindUi()
    @_bindEvents()

  _bindUi: ->
    @ui =
      feedbackForm: $(".feedbackForm")

  _bindEvents: ->
    $(document).on("ready", @ui.feedbackForm, @_insertName)

  _insertName: =>
    @ui.feedbackForm.find("#feedback_name").val(App.currentUserData.full_name)


if $(".feedbackForm").length && App.currentUserData
  new FeedbackForm
