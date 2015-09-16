class WelcomeController < ApplicationController

  # before_filter :find_client

  def index
    @contact = Contact.new()
    @category = Category.all.order(name: 'ASC')
    @case = CaseStudy.all.order(name: 'ASC')
  end

private

  # def find_client
  #   @case = CaseStudy.find_by_slug!(params[:id])
  # end

end
