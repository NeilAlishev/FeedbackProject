class FeedbacksController < ApplicationController
  expose(:feedback, attributes: :feedback_params)

  def new
  end

  def create
    if feedback.save
      FeedbackMailer.feedback_message(feedback).deliver
      flash[:success] = "Your feedback has been submitted"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :text)
  end
end
