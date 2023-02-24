Before do |scenario|
   @login = Login.new
end

After do |scenario|
   t = date_time.gsub!(/[:.]/,' ')
   tempo_shot = page.save_screenshot("screenshots/#{scenario.name.delete!(" ")}#{t.delete!(' ')}_screenshot.png")
   
   Allure.add_attachment(name: "Screenshot", source: File.open(tempo_shot), type: Allure::ContentType::PNG, test_case: false)
end