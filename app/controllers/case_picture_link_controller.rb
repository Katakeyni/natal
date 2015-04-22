class CasePictureLinkController < ApplicationController
	def new 
	    @link = CasePictureLink.new
	    1.times { @link.picture.build} 
	end
	private
    def case_picture_link_params
      params.require(:case_picture_link).permit(:case, :picture)
    end
end
