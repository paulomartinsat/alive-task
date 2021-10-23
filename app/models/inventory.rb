class Inventory < ApplicationRecord
    validates :model, :color, :carrier_plan_type, :quantity, :manufacturer, presence: true
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Inventory.find_or_create_by row.to_hash
        end
    end 
    def self.ransackable_attributes(auth_object = nil)
        ["manufacturer", "model", "carrier_plan_type"]
    end
end
