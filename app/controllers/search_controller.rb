class SearchController < ApplicationController
  def index
    render locals: {
      member: MemberService.new(params[:house])
    }
  end
end
