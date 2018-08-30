class Kitten < ApplicationRecord
    before_destroy :not_referenced_by_any_line_item
    belongs_to :user, optional: true
    has_many :line_items

    
    mount_uploader :image, ImageUploader
    serialize :image, JSON
 
 
    validates :title, :race, :price, :color, presence: true
    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud."}
    validates :title, length:  { maximum: 140, too_long: "%{count} characters is the maximum aloud."}
    
    RACE = %w{Savannah Siamois Bengal Ragdoll Angora Abassyn Persan Sphynx Maine Chartreux Exotic Chartreux }
    FINISH =%w{sage gentil amical aimable affreux rage aveugle adorable rose}
    CONDITION =%w{poilu chauve cute moche minuscule  gros}

    private

    def not_refereced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, "Line items present")
        throw :abort
      end
    end
  
  end
