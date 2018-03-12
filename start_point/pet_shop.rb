def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  shop[:admin][:total_cash] += cash
  return shop[:admin][:total_cash]
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold)
  shop[:admin][:pets_sold] += sold
  return shop[:admin][:pets_sold]
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  counter = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      counter.push(pet)
    end
  end
  return counter
end

def find_pet_by_name(shop, name)
  result = nil
  for pet in shop[:pets]
    if pet[:name] == name
      result = pet
    end
  end
  return result
end

def remove_pet_by_name(shop, name)
  pet_to_delete = find_pet_by_name(shop, name)
  shop[:pets].delete(pet_to_delete)
end

def add_pet_to_stock(shop, pet)
  shop[:pets].push(pet)
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end
