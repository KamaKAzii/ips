class EnquiryMailer < ActionMailer::Base
  default from: "website@ipssolutions.com.au"

  def enquiry_email(enquiry)
    @enquiry = enquiry
    mail(:to => "enquiries@ipssolutions.com.au", :subject => "Enquiry from website")
  end
end
