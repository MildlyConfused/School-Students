class SupportController < ApplicationController
  def contact
  end

  def contacted
    redirect_to schools_path
  end
end
