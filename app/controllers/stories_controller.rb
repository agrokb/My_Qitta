class StoriesController < ApplicationController
 before_action :authenticate_user!
 layout "story"
 
 def index
  @stories = Story.all
 end
 def new
  @story = Story.new
 end
 def create
   @story = Story.new(story_params)
   @story.user_id = current_user.id
   
   if @story.save
    redirect_to stories_path	
   else
    render :new 
   end
 end
def show
  @user = Story.friendly.find(params[:id])
end
private

def story_params
  params.require(:story).permit(:memo,:skill_tag,:title)
end

end
