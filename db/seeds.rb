#create some users
User.create(first_name: "Max", email: "Max.charles@whatever.com", password: "99problems", password_confirmation: "99problems")
User.create(first_name: "Jax", email: "SkaiJackson@doodle.com", password: "98problems", password_confirmation: "98problems")
User.create(first_name: "Kay", email: "kaleisgreat@doodle.com", password: "207problems", password_confirmation: "207problems")

#create some classes
MyClass.create(course_title: "Raspberry Pi: Full Stack", topic: "IoT")
MyClass.create(course_title: "Complete Ethical Hacking Course", topic: "Infosec")
MyClass.create(course_title: "Learn.co", topic: "Web Development")

#create some tasks
Task.create(title: "Finish Rails", description: "Build project for Rails Assessment", goal_date: Date.yesterday)
Task.create(title: "Set Up SSH", description: "Set up SSH connection for headless Raspberry Pi", goal_date: Date.tomorrow)
Task.create(title: "Install Kali", description: "Create virtual machine and install Kali Linux", goal_date: Date.tomorrow)
Task.create(title: "Finish JavaScript", description: "Complete all JavaScript assignments",  goal_date: Date.next_week)

#create some cheers
Cheer.create(content: "Keep up the good work! I know you can finish.")
Cheer.create(content: "Noticed you've got a goal date coming up this week, You can do it!")
Cheer.create(content: "Don't get discouraged, you're almost there!!!")