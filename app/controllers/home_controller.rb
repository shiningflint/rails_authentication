class HomeController < ApplicationController
	before_action :authorize, except: :freebie

	def awesome
	end

	def freebie
	end
end
