class SearchController < ApplicationController
  def index
    render locals: {
      members: MemberService.new(params[:house]).members_get
    }
  end
end
