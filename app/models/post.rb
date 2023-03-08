class Post < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20}
    
    validates :startdate, presence: true
    validate :start_check
    
    validates :enddate, presence: true
    
    validate :start_end_check

    validates :content, length: { maximum: 500}
    
    attribute :allday, :boolean, default: false

    def start_check
        if startdate.present? && Date.current > startdate
            errors.add(:startdate, "は過去の日付を登録できません")
        end    
    end

    def start_end_check
        if enddate.present? && startdate > enddate
            errors.add(:enddate, "は開始日より前の日付は登録できません")
        end
    end    
end