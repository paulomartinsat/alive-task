FactoryBot.define do 
    factory :inventory do 
        model {"iPhone SE"}
        color {"blue"}
        price {1299}
        carrier_plan_type {"pre"}
        manufacturer {"Motorola"}
        quantity {5}        
    end
end
