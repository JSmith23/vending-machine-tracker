require "rails_helper"

    describe "user visits vending machine show page" do 
        it "shows price and name of snack associated with that machine" do 
            owner = Owner.create(name: "Sam's Snacks")
            dons  = owner.machines.create(location: "Don's Mixed Drinks")
            snackers = dons.snacks.create(name:"Twizzlers",price:10.99)
            twizzles = dons.snacks.create(name:"Twizzlers",price:4.70)

            visit machine_path(dons)

    
            expect(page).to have_content("Average Price: ??")
            
        end 

    end 