class CaseStudyWithDigitalMarketing < ActiveRecord::Base

  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  has_many :goals
  has_many :approaches

  has_and_belongs_to_many :pictures
  has_and_belongs_to_many :categories

  has_attached_file :featured_image,
  :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :url => "/system/:attachment/:id/:basename_:style.:extension",

    :styles => {
      :admin    => ['100x100#',  :jpg, :quality => 70],
      :retina   => ['1920>',     :jpg, :quality => 100]
    },

    :convert_options => {
      :admin    => '-set colorspace sRGB -strip',
      :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
    }

    has_attached_file :thumbnail,
    :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
    :url => "/system/:attachment/:id/:basename_:style.:extension",

    :styles => {
      :admin    => ['100x100#',  :jpg, :quality => 70],
      :thumb    => ['500x500#',  :jpg, :quality => 100]
    },

    :convert_options => {
      :admin    => '-set colorspace sRGB -strip',
      :thumb    => '-set colorspace sRGB -strip'
    }

    has_attached_file :results,
    :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
    :url => "/system/:attachment/:id/:basename_:style.:extension",

    :styles => {
      :admin    => ['100x100#',  :jpg, :quality => 70],
      :preview  => ['500x500#',  :jpg, :quality => 100]
    },

    :convert_options => {
      :admin    => '-set colorspace sRGB -strip',
      :preview  => '-set colorspace sRGB -strip'
    }

    validates_attachment :featured_image,
    :presence => true,
    :size => { :in => 0..10.megabytes },
    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }

    validates_attachment :results,
    :presence => true,
    :size => { :in => 0..10.megabytes },
    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }

    validates_attachment :thumbnail,
    :presence => true,
    :size => { :in => 0..10.megabytes },
    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }



    rails_admin do
      edit do
        field :name
        field :categories
        field :tagline
        field :featured_image
        field :thumbnail
        field :description
        field :approaches
        field :goals
        field :results
        field :conclusion
        field :pictures
        fields do
          help false
        end
      end
    end

    def to_param
      slug # or "#{id}-#{name}".parameterize
    end

    def generate_slug
      self.slug ||= name.parameterize
    end

end
