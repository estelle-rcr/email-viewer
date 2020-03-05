class AddReadToEmails < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :read, :boolean
    Email.all.each do |email|
      email.update_attributes! :read => 'false'
    end
  end
end
