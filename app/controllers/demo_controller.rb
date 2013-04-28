class DemoController < ApplicationController
	layout 'user'
  def index
  	#redirect_to(:action =>'test')

  end
  def test
  	 @id=params[:id] 
  end
  def javascript
  end
  def text_helpers
  end
end
