# Encoding: utf-8

module Refinery
  class PagePublication < Refinery::Core::BaseModel
    belongs_to :page, :foreign_key => :refinery_page_pid

    attr_accessible :publish_at, :locale
  end
end
