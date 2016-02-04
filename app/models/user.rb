class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
      	 :confirmable, :omniauthable
         #, :omniauth_providers => :facebook

  has_many :adventures, dependent: :destroy

  validates :fullname, presence: true, length: {maximum: 50}

  def self.from_omniauth(auth)
  	user = User.where(email: auth.info.email).first

  	if user
      user.provider = auth.provider
      user.uid = auth.uid
      user.image = auth.info.image
  		return user
  	else
  		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  			user.fullname = auth.info.name
  			user.provider = auth.provider
  			user.uid = auth.uid
  			user.email = auth.info.email
  			user.image = auth.info.image
  			user.password = Devise.friendly_token[0,20]
  		end
  	end
  end

  def confirm!
    # UserMailer.deliver_welcome_alert(self)
    super
  end
  # def self.calculate_age(birthday)
  #   (Date.today - birthday).to_i / 365
  #   # now = Date.today
  #   # age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= dob.day)) ? 0 : 1)
  # end
end
