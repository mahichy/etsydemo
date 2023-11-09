class AddAttachmentImageToListings < ActiveRecord::Migration[7.0]
  def self.up
    change_table :listings do |t|
      t.attachment :image
    end
    # add_attachment :listings, :image


  end

  def self.down
    remove_attachment :listings, :image
  end
end


# new
# class AddAvatarColumnsToUsers < ActiveRecord::Migration
#   def up
#     add_attachment :users, :avatar
#   end

#   def down
#     remove_attachment :users, :avatar
#   end
# end
