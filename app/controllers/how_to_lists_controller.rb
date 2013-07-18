class HowToListsController < ApplicationController
  # GET /how_to_lists
  # GET /how_to_lists.json
  def index
    @how_to_lists = HowToList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @how_to_lists }
    end
  end

  # GET /how_to_lists/1
  # GET /how_to_lists/1.json
  def show
    @how_to_list = HowToList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @how_to_list }
    end
  end

  # GET /how_to_lists/new
  # GET /how_to_lists/new.json
  def new
    @how_to_list = HowToList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @how_to_list }
    end
  end

  # GET /how_to_lists/1/edit
  def edit
    @how_to_list = HowToList.find(params[:id])
  end

  # POST /how_to_lists
  # POST /how_to_lists.json
  def create
    @how_to_list = HowToList.new(params[:how_to_list])

    respond_to do |format|
      if @how_to_list.save
        format.html { redirect_to @how_to_list, notice: 'How to list was successfully created.' }
        format.json { render json: @how_to_list, status: :created, location: @how_to_list }
      else
        format.html { render action: "new" }
        format.json { render json: @how_to_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /how_to_lists/1
  # PUT /how_to_lists/1.json
  def update
    @how_to_list = HowToList.find(params[:id])

    respond_to do |format|
      if @how_to_list.update_attributes(params[:how_to_list])
        format.html { redirect_to @how_to_list, notice: 'How to list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @how_to_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /how_to_lists/1
  # DELETE /how_to_lists/1.json
  def destroy
    @how_to_list = HowToList.find(params[:id])
    @how_to_list.destroy

    respond_to do |format|
      format.html { redirect_to how_to_lists_url }
      format.json { head :no_content }
    end
  end
end
