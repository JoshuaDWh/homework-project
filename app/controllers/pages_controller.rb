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
end
