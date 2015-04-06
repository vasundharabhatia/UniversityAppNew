class AddAttachmentAvatarToMentors < ActiveRecord::Migration
  def self.up
    change_table :mentors do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :mentors, :avatar
  end
end
