class Post < ApplicationRecord
    validates :title,
        presence: true,
        length: { maximum: 20}
    
    validates :startdate,
        presence: true
    
    validate :start_check    
    
    validates :enddate,
        presence: true
    
    validate :start_end_check

    validates :content,
        length: { maximum: 500}
    
    attribute :allday, :boolean, default: false

    def start_check
        errors.add(:startdate, "は過去の日付で登録できません。") 
        unless self.startdate >= Date.current
        end
    end

    def start_end_check
        errors.add(:enddate, "は開始日より前の日付は登録できません。") 
        unless self.enddate >= self.startdate
        end
    end
end
