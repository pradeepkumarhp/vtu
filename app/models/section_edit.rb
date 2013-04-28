class SectionEdit < ActiveRecord::Base
	validates_presence_of(:name)
	belongs_to :editor, :class_name => "User", :foreign_key => 'user_id'
	belongs_to :section 
    attr_accessible :summary, :section, :editor

end
