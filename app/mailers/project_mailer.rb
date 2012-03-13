class ProjectMailer < ActionMailer::Base
  default :from => "emap@csg.org"
  
  def standard_comment(id, name, date, phone, organization, email, address, city, state, zip, standard, area, com_rec, comment, support, rop_email, projects.count)
    @id, @name, @date, @phone, @organization, @email, @address, @city, @state, @zip, @standard, @area, @com_rec, @comment, @support, @rop_email, @count = id, name, date, phone, organization, email, address, city, state, zip, standard, area, com_rec, comment, support, rop_email, count
    mail( :subject => "Comment for the Emergency Management Standard by EMAP - 2013",
          :to      => rop_email,
          :bcc      => "jaraddowning@gmail.com" )
  end

end
