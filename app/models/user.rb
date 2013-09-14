class User < ActiveRecord::Base
	attr_accessible :bio, :email, :name, :location, :birthday, :password
	validates_presence_of :email, :name, :location, :birthday, :password
	validates_confirmation_of :password
	validates_lenght_of :bio, minimun: 30,  allow_blank: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, on: :create
end