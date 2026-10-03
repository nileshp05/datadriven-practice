def parse_address(address):
  parts = address.split(",")
  city = parts[1].strip()
  street = parts[0].strip()
  
  subparts = parts[2].strip().split()
  state = subparts[0]
  zip = subparts[1]
  
  return {
    "street": street,
    "city": city,
    "state": state,
    "zip": zip
  }
