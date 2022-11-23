module Api
  module V1
    class MessagesController < ApplicationController
      def index
        @rand_message = Message.find(Message.pluck(:id).sample)
        render json: @rand_message
      end
    end
  end
end
