class Resume
	attr_accessor :first_name, :last_name, :address, :phone_number, :email_id, :about_you, :skills, :courses_name, 
		      :date_of_birth, :gender, :nationality, :languages_known, :save_file

	def self.build
		user_info = self.new
	 	user_info.get_first_name
		user_info.get_last_name
		user_info.get_address
		user_info.get_phone_number
		user_info.get_email_id
		user_info.get_about_you
		user_info.get_skills
		user_info.get_courses_name
		user_info.get_date_of_birth
		user_info.get_gender
		user_info.get_nationality
		user_info.get_languages_known
		user_info.save_in_file
	end

	# It is retreiving First Name of the User
	def get_first_name
		puts "Enter Your First Name : "
		self.first_name = gets.strip
		if /[a-zA-Z]/.match("#{first_name}") 
			puts "Correct!"
		else
			puts "*First Name should be Alphabets only*"
			get_first_name
		end
	end

	# It is retreiving Last Name of the User
	def get_last_name
		puts "Enter Your Last Name : "
		self.last_name = gets.strip
		if /[a-zA-Z]/.match("#{last_name}")
			puts "Correct!"
		else
			puts "*Last Name should be Alphabets only*"
			get_last_name
		end
	end

	# It is retreiving Address of the User
	def get_address
		puts "Enter Your Address : "
		self.address = gets.chomp
		if address.length != 0
			puts "Correct!"
		else
			puts "*Address cannot be empty*"
			get_address
		end
	end

	# It is retreiving Phone Number of the User
	def get_phone_number
		puts "Enter Your Phone Number"
		self.phone_number = "+91" + gets.chomp
		if /[0-9]{10}/.match("#{phone_number}") 
			puts "Correct!"
		else
			puts "*Phone Number should be digits only and must contain 10 digits*"
			get_phone_number
		end
	end

	# It is retreiving e-mail of the User
	def get_email_id
		puts "Enter Your email id : "
		self.email_id = gets.chomp
		if /[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/.match("#{email_id}") 
			puts "Correct!"
		else
			puts"*Enter valid e-mail id*"
			get_email_id
		end
	end

	# It is retreiving Brief Summary of the User
	def get_about_you
		puts "Enter About You (Brief Summary) : "
		self.about_you = gets.chomp
	end

	# It is retreiving Skills of the User
	def get_skills
		puts "Enter Your Skills"
		self.skills = gets.chomp
		if skills.length != 0
			puts "Correct!"
		else
			puts "*Skills cannot be empty*"
			get_skills
		end
	end

	# It is retreiving Course Name of the User
	def get_courses_name
		puts "Enter name of the Courses : "
		self.courses_name = gets.chomp
		if courses_name.length != 0
			puts "Correct!"
		else
			puts "*Courses Name cannot be empty*"
			get_courses_name
		end
	end

	# It is retreiving DOB of the User
	def get_date_of_birth
		puts "Enter Your Date of Birth (dd/mm/yyyy): "
		self.date_of_birth = gets.chomp
		if /\d{2}\/\d{2}\/\d{4}/.match("#{date_of_birth}")
			puts "Correct!"
		else
			puts "*Date of Birth should be in the given Style only*"
			get_date_of_birth
		end
	end

	# It is retreiving Gender of the User
	def get_gender
		puts "Enter Your Gender : "
		self.gender = gets.chomp
		if gender.length != 0
			puts "Correct!"
		else
			puts "*Gender cannot be empty*"
			get_gender
		end
	end

	# It is retreiving Nationality of the User
	def get_nationality
		puts "Enter Your Nationality : "
		self.nationality = gets.chomp
	end

	# It is retreiving Languages known by the User
	def get_languages_known
		puts "Languages known : "
		self.languages_known = gets.chomp
	end

	# It is saving the data to a file
	def save_in_file
		aFile = File.new("#{first_name + email_id}.txt","w") 
		save_file = File.open(aFile, "a") do |file|
			file.puts " ADDRESS SECTION\n ___________________\n First Name : #{first_name}\n Last Name : #{last_name}\n Address : #{address}" + 
				  "\n Contact Number : #{phone_number}\n e-mail id : #{email_id}\n\n SUMMARY SECTION\n ___________________" +
				  "\n About You (Brief Summary) : #{about_you}\n\n EDUCATION DETAILS\n ___________________\n Skills : #{skills}" + 
				  "\n Courses Completed : #{courses_name}\n\n PERSONAL DETAILS\n ___________________\n Date of Birth : #{date_of_birth}" +
				  "\n Gender : #{gender}\n Nationality : #{nationality}\n Languages Known : #{languages_known}\n"
		end
	end
end	
Resume.build
