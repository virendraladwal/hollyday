class KamalsController < InheritedResources::Base

  private

    def kamal_params
      params.require(:kamal).permit(:index)
    end

end
