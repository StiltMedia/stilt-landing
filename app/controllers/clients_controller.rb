class ClientsController < ApplicationController

  before_filter :find_client, only: [:show]

  def show
  end


private

  def find_client
    @case = CaseStudy.find_by_slug!(params[:id])
  end

end
