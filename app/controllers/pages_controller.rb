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
end
