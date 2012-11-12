class UserGroupsController < ApplicationController
  # GET /user_groups
  def index
    @user_groups = UserGroup.all

    respond_to :html # index.html.erb
  end

  # GET /user_groups/1
  def show
    @user_group = UserGroup.find(params[:id])

    respond_to :html # show.html.erb
  end

  # GET /user_groups/new
  def new
    @user_group = UserGroup.new

    respond_to :html # new.html.erb
  end

  # GET /user_groups/1/edit
  def edit
    @user_group = UserGroup.find(params[:id])
  end

  # POST /user_groups
  def create
    @user_group = UserGroup.new(params[:user_group])

    respond_to do |format|
      if @user_group.save
        format.html { redirect_to @user_group, notice: 'User group was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /user_groups/1
  def update
    @user_group = UserGroup.find(params[:id])

    respond_to do |format|
      if @user_group.update_attributes(params[:user_group])
        format.html { redirect_to @user_group, notice: 'User group was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /user_groups/1
  def destroy
    @user_group = UserGroup.find(params[:id])
    @user_group.destroy

    respond_to do |format|
      format.html { redirect_to user_groups_url }
    end
  end
end