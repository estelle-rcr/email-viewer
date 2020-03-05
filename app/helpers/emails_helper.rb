module EmailsHelper
  def update_read_status(email)
    if params[:read] == 'true'
      email.update(read: true)
    elsif params[:read] == 'false'
      email.update(read: false)
    end
  end
end
