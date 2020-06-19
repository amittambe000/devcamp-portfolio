class Portfolio < ApplicationRecord
    include Placeholder

    has_many :technologies
    accepts_nested_attributes_for :technologies,
                                  reject_if: lambda{|attrs| attrs['name'].blank?}

    validates_presence_of :title,:body,:main_image,:thumb_image

    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader

    def self.angular
        where(subtitle:"Angular")
    end

    scope :Ruby_on_rails,->{where(subtitle:"Ruby on rails")}

    after_initialize :set_defaults

    def set_defaults
        #self.main_image ||= PlaceHolder.image_generator(height: '600',width: '400')
        self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
        self.thumb_image ||= Placeholder.image_generator(height: '300',width: '250')
    end
end
