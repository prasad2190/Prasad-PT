class ProjectController < ApplicationController
  def name
  	listf
  	render('list')
  end

  def list
  	@project = Project.order("project.position ASC")
  end

  def show 
  	@project = Project.find(params[:id])
  end
   
   def new 
   	@project = Project.new
   end

  def create
  	@project = Project.new(params[:project])
  	if @project.save

  		redirect_to(:action => 'list')
  	else
  		render('new')
end

end
