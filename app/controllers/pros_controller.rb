class ProsController < InheritedResources::Base

  private

    def pro_params
      params.require(:pro).permit(:name)
    end

end
