class WelcomeController < ApplicationController

  def index
    @contact = Contact.new()
    @category = Category.all.order(name: 'ASC')
    @case = CaseStudy.all.order(name: 'ASC')
    @study = CaseStudyWithDigitalMarketing.all.order(name: 'ASC')
  end

end
