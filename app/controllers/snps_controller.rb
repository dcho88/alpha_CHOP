class SnpsController < ApplicationController
  # GET /snps
  # GET /snps.json
  def index
    @snps = Snp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @snps }
    end
  end

  # GET /snps/1
  # GET /snps/1.json
  def show
    @snp = Snp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @snp }
    end
  end

  # GET /snps/new
  # GET /snps/new.json
  def new
    @snp = Snp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @snp }
    end
  end

  # GET /snps/1/edit
  def edit
    @snp = Snp.find(params[:id])
  end

  # POST /snps
  # POST /snps.json
  def create
    @snp = Snp.new(params[:snp])

    respond_to do |format|
      if @snp.save
        format.html { redirect_to @snp, notice: 'Snp was successfully created.' }
        format.json { render json: @snp, status: :created, location: @snp }
      else
        format.html { render action: "new" }
        format.json { render json: @snp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /snps/1
  # PUT /snps/1.json
  def update
    @snp = Snp.find(params[:id])

    respond_to do |format|
      if @snp.update_attributes(params[:snp])
        format.html { redirect_to @snp, notice: 'Snp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @snp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snps/1
  # DELETE /snps/1.json
  def destroy
    @snp = Snp.find(params[:id])
    @snp.destroy

    respond_to do |format|
      format.html { redirect_to snps_url }
      format.json { head :no_content }
    end
  end
end
