class Picture < ActiveRecord::Base
  has_and_belongs_to_many :case_study_with_digital_marketings
  has_and_belongs_to_many :case_studies

  has_attached_file :image,
  :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :url => "/system/:attachment/:id/:basename_:style.:extension",

    :styles => {
      :admin    => ['100x100#',  :jpg, :quality => 70],
      :retina   => ['1524x988#',     :jpg, :quality => 100]
    },

    :convert_options => {
      :admin    => '-set colorspace sRGB -strip',
      :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
    }

    validates_attachment :image,
    :presence => true,
    :size => { :in => 0..10.megabytes },
    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }

end
