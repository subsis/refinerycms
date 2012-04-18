# Encoding: utf-8

module Refinery
  class PagePublication < Refinery::Core::BaseModel
    belongs_to :page, :foreign_key => :refinery_page_id

    attr_accessible :publish_at, :locale

    validates :publish_at,
              :locale,
              :presence => true
  end
end
