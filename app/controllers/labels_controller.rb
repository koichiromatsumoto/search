class LabelsController < ApplicationController

    def new
    	@label = Label.new
    end

    def create
    	@label = Label.new(label_params)
    	@label.save
    	redirect_to root_path
    end

    private
    def label_params
    	params.require(:label).permit(:label_name, items_attributes: [:item_name, :sales])
    end

end
