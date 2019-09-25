class PagesController < ApplicationController
  def jwhite31
    respond_to do |format|
      format.html { render :jwhite31 }
    end
  end
  def review
    respond_to do |format|
      format.html { render :review }
    end
  end
  def question
    q = [
      "Which of the following is the Single Responsibility Principle?"
    ]
    answers = [
      "a) A class should have only one reason to change.",
      "b) Each developer on a team should have one main responsibiliy.",
      "c) Every app will have one responsibility that is most important to users."
    ]
    respond_to do |format|
      format.html { render :question, locals: { q: q, answers: answers } }
    end
  end
  def student_info
    respond_to do |format|
      format.html { render :student_info, locals: { feedback: {} } }
    end
  end
  def leave_feedback
    required = [:name, :email, :reply, :feedback_type, :message]
    form_complete = true
    required.each do |f|
      if params.has_key? f and not params[f].blank?
        # that's good news. do nothing
      else
        form_complete = false
      end
    end
    if form_complete
      form_status_msg = 'Student info saved successfully!'
    else
      form_status_msg = 'Error! Some student info is missing.'
    end
    respond_to do |format|
      format.html { render :student_info, locals: { status_msg: form_status_msg, feedback: params } }
    end
  end
end
