class TagsController < ApplicationController

    def create
        tag = Tag.find_or_create_by(tag_name: params[:tag_name])
        EventsTag.create(tag_id: tag.id, event_id: params[:event_id])
    end
end
