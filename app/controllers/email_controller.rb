class EmailController < ApplicationController

  def index
    @all_emails = Email.all
  end

  def show
    @email = Email.find(params[:id]);
      respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
    format.html
    format.js
  end
    redirect_to root_path
  end

end
