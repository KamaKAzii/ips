class EnquiryMailer < ActionMailer::Base
  default from: "website@ipssolutions.com.au"

  def enquiry_email(enquiry)
    @enquiry = enquiry
    mail(:to => "ipsstratasolutions@gmail.com", :subject => "Enquiry from website")
  end
end
