def date_time
    Time.now.strftime("%d.%m.%Y %H:%M:%S").to_s
end

def data_table(example)
case 
    when example.include?("empty")
        example = ""
    when example.include?("invalid")
        example = "INV4LID"
    when example.include?("user")
        example = DATA["username"]
    when example.include?("pwd")
        example = DATA["password"]
end
    example
end