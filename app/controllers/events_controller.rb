class EventsController < ApplicationController

	def index
		@events = Event.all
		render json: EventSerializer.new(@events)
	end

	def create
		Event.create(event_params)
		events = Event.all
		render json: EventSerializer.new(events)
	end

	private

	def event_params
		params.require(:event).permit(:title, :start_date, :end_date, :ongoing, :description, :private, :url, :img_url, :host_id)
	end

end
