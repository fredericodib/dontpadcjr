class TextsController < ApplicationController
	def show
		params[:params1] = "" if params[:params1] == nil
		params[:params2] = "" if params[:params2] == nil
		params[:params3] = "" if params[:params3] == nil
		params[:params4] = "" if params[:params4] == nil
		params[:params5] = "" if params[:params5] == nil
		@url = params[:params1]+"/"+params[:params2]+"/"+params[:params3]+"/"+params[:params4]+"/"+params[:params5]
		@text = Text.find_or_create_by(url: @url)
	end

	def update
		@text = Text.find(params[:id])
		@text.update(text_param)
		ActionCable.server.broadcast "chat_#{@text.id}", message: @text, id: params[:id_recive]
		render body: nil, status: :ok
	end

	def text_param
		params.require('text').permit(:text)
	end
end
