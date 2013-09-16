class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def show
    @vote = Vote.find_by_id(params[:id])
  end

  def create
    @vote = Vote.create(params[:vote])
    plant_id = @vote.plant_id
    respond_to do |format|
      if @vote.save
        format.json { render :json => { :votes => Vote.find_all_by_plant_id(plant_id).count, :id => plant_id } }
      else
        format.html { render action: "edit" }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @vote = Vote.new
  end

  def update
    @vote = Vote.find(params[:id])
    respond_to do |format|
      if @vote.update_attributes(params[:vote])
        format.html { redirect_to votes_path, notice: 'vote updated.' }
        format.json { head :no_content }
        format.js   { render :nothing => true }
      else
        format.html { render action: "edit" }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @vote = Vote.find_by_id(params[:id])
  end

  def destroy
    @vote = Vote.find(params[:id])
  end
end
