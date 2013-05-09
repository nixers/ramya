class CompanyController < ApplicationController
  def new
  	@company = Company.new
  end
  def create
  	@company = Company.new(params[:company])
  	if @company.save
  		redirect_to root_url :notice => "info saved"
  	end
  end

 end
