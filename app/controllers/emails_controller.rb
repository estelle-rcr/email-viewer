class EmailsController < ApplicationController
  def index
    @emails = Email.all
    @email = Email.new
  end

  def new
    @email = Email.new
  end

  def show
    @email = Email.find(params[:id])
    if params[:read] == 'true'
      @email.update(read: true)
    elsif params[:read] == 'false'
      @email.update(read: false)
    end
    respond_to do |format|
      flash[:success] = "Your email has been created!"
      format.html { redirect_to @email }
      format.js { }
      end
  end

  def create
    @email = Email.new('object' => Faker::Cannabis.cannabinoid, 'body' => Faker::Hipster.paragraph, 'read' => false)
    if @email.save 
      respond_to do |format|
        flash[:success] = "Your email has been created!"
        format.html { redirect_to root_path }
        format.js { }
        end
    else
    render 'new'
    end
  end

  def edit
    @email = Email.find(params[:id])
  end

  def update
    @email = Email.find(params[:id])
    if params[:read] == 'true'
      @email.update(read: true)
    elsif params[:read] == 'false'
      @email.update(read: false)
    end
    respond_to do |format|
    flash[:success] = "The email has been modified"
    format.html { redirect_to root_path }
    format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    if @email.destroy
      respond_to do |format|
        flash[:success] = "The email has been deleted"
        format.html { redirect_to emails_path }
        format.js { }
        end
    else 
      render 'show'
    end
  end
end
