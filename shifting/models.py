from django.db import models
from django.utils import timezone
#from embed_video.fields import EmbedVideoField

# Home Page models start  here...
class home_slider(models.Model):
    title = models.CharField(null=True, max_length=63)
    image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "Home Sliders"

class HomeVideo(models.Model):
    title = models.CharField(max_length=255)
    video_url = models.FileField(upload_to='get_default_video_path',null=True)
    #video_url = EmbedVideoField(null=True)
    
    class Meta:
        verbose_name_plural = "Home Slider Videos"

class Bookinghome(models.Model):
    company_name = models.CharField(max_length=255)
    your_name = models.CharField(max_length=255)
    mobile = models.CharField(max_length=15)
    email_id = models.EmailField(blank=True, null=True)
    address = models.TextField()
    booking_datetime = models.DateTimeField()
    shifting_datetime = models.DateTimeField()
    booking_details = models.TextField()
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)

    def __str__(self):
        return self.company_name
    
    class Meta:
        verbose_name_plural = "Home Booking Forms"

class Subscribe(models.Model):
    email = models.EmailField(null=True)
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)
    
    def __str__(self):
        return self.email
    class Meta:
        verbose_name_plural = "Subscribe Customers"

# About Page models start  here...
class about_us(models.Model):
    about_title = models.CharField(null=True, max_length=31)
    about_details = models.TextField(null=True,)
    about_details2 = models.TextField(null=True, max_length=510)
    image = models.ImageField(null=True, default="avatar.svg")
    our_vision = models.TextField(null=True, max_length=510)
    our_mission = models.TextField(null=True, max_length=510)
    shifting_expriance_title = models.CharField(null=True, max_length=63)
    expriance_details = models.CharField(null=True, max_length=510)
    site_image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.about_title
    
    class Meta:
        verbose_name_plural = "About Shifting"

class about_feature(models.Model):
    feature_title = models.CharField(null=True, max_length=31)
    feature_details = models.CharField(null=True,max_length=127)
    feature_icone = models.CharField(blank=True, max_length=31)
    progress_title = models.CharField(null=True, max_length=31)
    values = models.CharField(null=True,max_length=10)
    
    def __str__(self):
        return self.feature_title
    
    class Meta:
        verbose_name_plural = "About Features & Experiences"

class about_brand(models.Model):
    slider_image = models.ImageField(null=True, default="avatar.svg")
    
    class Meta:
        verbose_name_plural = "About Brand Slider"

class about_bottom(models.Model):
    titles = models.CharField(null=True, max_length=31)
    values = models.CharField(null=True,max_length=10)
    icone = models.CharField(null=True,max_length=31)
    
    def __str__(self):
        return self.titles
    
    class Meta:
        verbose_name_plural = "About Company Ceremony"


# Team Page models start  here...
class team_members(models.Model):
    name = models.CharField(null=True, max_length=31)
    designation = models.CharField(null=True,max_length=31)
    picture = models.ImageField(null=True, default="avatar.svg")
    facebook_link = models.CharField(default='Write..', max_length=63)
    twitter_link = models.CharField(default='Write..', max_length=63)
    instagram_link = models.CharField(default='Write..', max_length=63)
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name_plural = "Team Members List"

# Portfolio Page models start  here...
class portfoliosCategory(models.Model):
    category_title = models.CharField(null=True,max_length=31)
    
    def __str__(self):
        return self.category_title
    
    class Meta:
        verbose_name_plural = "Portfolio Category"        

class portfolios(models.Model):
    category_title = models.ForeignKey(portfoliosCategory, on_delete=models.CASCADE, null=True)
    title = models.CharField(null=True, max_length=31)
    category = models.CharField(null=True,max_length=31)
    image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "Portfolio List"

# Testimonial Page models start  here...
class testimonials(models.Model):
    name = models.CharField(null=True, max_length=31)
    designation = models.CharField(null=True,max_length=31)
    picture = models.ImageField(null=True, default="avatar.svg")
    message = models.TextField(null=True, max_length=255)
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name_plural = "Testimonial"

# Questions Page models start  here...
class questions(models.Model):
    questions = models.CharField(null=True, max_length=127)
    questions_answer = models.CharField(null=True,max_length=127)

    def __str__(self):
        return self.questions
    
    class Meta:
        verbose_name_plural = "Faq Questions"

# Blog Page models start  here...
class blogs(models.Model):
    title = models.CharField(null=True, max_length=127)
    date = models.DateField(null=True, max_length=31)
    picture = models.ImageField(null=True, default="avatar.svg")
    descriptions = models.TextField(null=True)
    link_types = models.CharField(null=True, max_length=31)
    singal_blog_details = models.TextField(null=True, max_length=510)
    singal_blog_image1 = models.ImageField(null=True, default="avatar.svg")
    singal_blog_image2 = models.ImageField(null=True, default="avatar.svg")
    singal_blog_image3 = models.ImageField(null=True, default="avatar.svg")
    qoute = models.CharField(null=True, max_length=250)
    person_name = models.CharField(null=True, max_length=31)
    singal_blog_details2 = models.TextField(null=True, max_length=510)
    singal_blog_title = models.CharField(null=True, max_length=60)
    singal_blog_image4 = models.ImageField(null=True, default="avatar.svg")
    singal_blog_details3 = models.TextField(null=True, max_length=510)
    singal_blog_title2 = models.CharField(null=True, max_length=60)
    singal_blog_details4 = models.TextField(null=True, max_length=510)
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "Blog List"

class CommentBlog(models.Model):
    blog_title = models.ForeignKey(blogs, on_delete=models.CASCADE, null=True)
    comment_text = models.TextField()
    author_name = models.CharField(max_length=100)
    author_email = models.EmailField()
    website = models.URLField(blank=True)
    created = models.DateTimeField(auto_now_add=True)
    active = models.BooleanField(default=True)

    def __str__(self):
        return self.comment_text
    
    class Meta:
        verbose_name_plural = "Blog Comments"

class blog_popular_tags(models.Model):
    popular_tags_title = models.CharField(null=True, max_length=127)
    categories_title = models.CharField(blank=False, max_length=127, default='Default Title')
    
    def __str__(self):
        return self.categories_title

    class Meta:
        verbose_name_plural = "Blog Popular Tag & Categories"


# Our Services Page models start  here...///////////////////// All services
class our_services(models.Model):
    title = models.CharField(null=True, max_length=127)
    descriptions = models.TextField(null=True)
    image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "Home Our Services"

# Truck Details Page models start  here...

class truck_details(models.Model):
    truck_name = models.CharField(null=True, max_length=127)
    truck_title = models.CharField(null=True,max_length=510)
    descriptions = models.TextField(null=True, max_length=510)
    image = models.ImageField(null=True, default="avatar.svg")
    fixed_amount = models.CharField(null=True, max_length=127)
    per_km_amount = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.truck_name
    
    class Meta:
        verbose_name_plural = "S.T PickUp Truck"

class Mediumtruckdetails(models.Model):
    truck_name = models.CharField(null=True, max_length=127)
    truck_title = models.CharField(null=True,max_length=510)
    descriptions = models.TextField(null=True, max_length=510)
    image = models.ImageField(null=True, default="avatar.svg")
    fixed_amount = models.CharField(null=True, max_length=127)
    per_km_amount = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.truck_name
    
    class Meta:
        verbose_name_plural = "S.T Medium Truck"

class Largtruckdetails(models.Model):
    truck_name = models.CharField(null=True, max_length=127)
    truck_title = models.CharField(null=True,max_length=510)
    descriptions = models.TextField(null=True, max_length=510)
    image = models.ImageField(null=True, default="avatar.svg")
    fixed_amount = models.CharField(null=True, max_length=127)
    per_km_amount = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.truck_name
    
    class Meta:
        verbose_name_plural = "S.T Large Truck"

class Covertruckdetails(models.Model):
    truck_name = models.CharField(null=True, max_length=127)
    truck_title = models.CharField(null=True,max_length=510)
    descriptions = models.TextField(null=True, max_length=510)
    image = models.ImageField(null=True, default="avatar.svg")
    fixed_amount = models.CharField(null=True, max_length=127)
    per_km_amount = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.truck_name
    
    class Meta:
        verbose_name_plural = "S.T PickUp Cover Van"

class MediumCovertruckdetails(models.Model):
    truck_name = models.CharField(null=True, max_length=127)
    truck_title = models.CharField(null=True,max_length=510)
    descriptions = models.TextField(null=True, max_length=510)
    image = models.ImageField(null=True, default="avatar.svg")
    fixed_amount = models.CharField(null=True, max_length=127)
    per_km_amount = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.truck_name
    
    class Meta:
        verbose_name_plural = "S.T Medium Cover Van"

class largeCovertruckdetails(models.Model):
    truck_name = models.CharField(null=True, max_length=127)
    truck_title = models.CharField(null=True,max_length=510)
    descriptions = models.TextField(null=True, max_length=510)
    image = models.ImageField(null=True, default="avatar.svg")
    fixed_amount = models.CharField(null=True, max_length=127)
    per_km_amount = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.truck_name
    
    class Meta:
        verbose_name_plural = "S.T Large Cover Van"


# Shifting-House Page models start  here...
class shifting_house(models.Model):
    title = models.CharField(null=True, max_length=127)
    sub_title = models.CharField(null=True, max_length=127)
    top_descriptions = models.TextField(null=True, max_length=510)
    image = models.ImageField(null=True, default="avatar.svg")
    descriptions = models.TextField(null=True)
    descriptions2 = models.CharField(null=True, max_length=510)
    site_image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "S. Shifting Services"

class shifting_houseser(models.Model):
    title = models.CharField(null=True, max_length=127)
    descriptions = models.TextField(null=True)
    image = models.ImageField(null=True, default="avatar.svg")
    top_details = models.TextField(null=True, max_length=510)
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "S. Shifting House"

class shifting_office(models.Model):
    title = models.CharField(null=True, max_length=127)
    descriptions = models.TextField(null=True)
    image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "S. Shifting Office"

class shiftingc_ommercial(models.Model):
    title = models.CharField(null=True, max_length=127)
    descriptions = models.TextField(null=True)
    image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "S. Shifting Commercial"

class shifting_transport_cost(models.Model):
    item_name = models.CharField(null=True, max_length=127)
    inside_dhaka = models.CharField(null=True, max_length=127)
    outside_dhaka = models.CharField(null=True, max_length=127)
    per_km_cost = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.item_name
    
    class Meta:
        verbose_name_plural = "S. Shifting H/O/C Transport Cost"

class shifting_other_cost(models.Model):
    item_name = models.CharField(null=True, max_length=127)
    inside_dhaka = models.CharField(null=True, max_length=127)
    outside_dhaka = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.item_name
    
    class Meta:
        verbose_name_plural = "S. Shifting H/O/C Other Cost"

class BookingHouse(models.Model):
    name = models.CharField(max_length=255)
    mobile_number = models.CharField(max_length=15)
    acs_ton_items = models.CharField(max_length=255)
    furniture_items = models.CharField(max_length=255)
    glass_items = models.CharField(max_length=255)
    melamine_items = models.CharField(max_length=255)
    mattress_items = models.CharField(max_length=255)
    others_items = models.CharField(max_length=255)
    address = models.TextField()
    booking_date_time = models.DateTimeField()
    shifting_date_time = models.DateTimeField()
    booking_details = models.TextField()
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name_plural = "S. Shifting House Booking"

class BookingOffice(models.Model):
    name = models.CharField(max_length=255)
    mobile_number = models.CharField(max_length=15)
    acs_ton_items = models.CharField(max_length=255)
    chair_tables_items = models.CharField(max_length=255)
    computer_items = models.CharField(max_length=255)
    monitor_items = models.CharField(max_length=255)
    glass_items = models.CharField(max_length=255)
    others_items = models.CharField(max_length=255)
    address = models.TextField()
    booking_date_time = models.DateTimeField()
    shifting_date_time = models.DateTimeField()
    booking_details = models.TextField()
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name_plural = "S. Shifting Office Booking"

class BookingCommercial(models.Model):
    name = models.CharField(max_length=255)
    mobile_number = models.CharField(max_length=15)
    commercial_details = models.TextField()
    address = models.TextField()
    booking_date_time = models.DateTimeField()
    shifting_date_time = models.DateTimeField()
    booking_details = models.TextField()
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name_plural = "S. Shifting Commercial Booking"

# Couriers Page models start  here...
class couriers(models.Model):
    title = models.CharField(null=True, max_length=127)
    top_image = models.ImageField(null=True, default="avatar.svg")
    site_image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "S. Couriers"

class couriers_service(models.Model):
    service_title = models.CharField(blank=True, max_length=255)
    cost_title = models.CharField(blank=True, max_length=255)
    
    def __str__(self):
        return self.service_title
    
    class Meta:
        verbose_name_plural = "S. Couriers Services & Cost"

# Security Page models start  here...
class securities(models.Model):
    title = models.CharField(null=True, max_length=127)
    sub_title = models.CharField(null=True, max_length=127)
    top_descriptions = models.TextField(null=True)
    top_image = models.ImageField(null=True, default="avatar.svg")
    descriptions1 = models.TextField(null=True, max_length=510)
    descriptions2 = models.TextField(null=True, max_length=510)
    site_image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "S. Security"

class SecurityBooking(models.Model):
    name = models.CharField(max_length=255)
    mobile_number = models.CharField(max_length=15)
    security_type = models.CharField(max_length=255)
    address = models.TextField()
    booking_datetime = models.DateTimeField()
    working_datetime = models.DateTimeField()
    booking_details = models.TextField()
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "S. Security Bookings List"

# Labour Page models start  here...
class labours_type(models.Model):
    category_title = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.category_title
    
    class Meta:
        verbose_name_plural = "S. Labour Type"

class labours(models.Model):
    category_title = models.ForeignKey(labours_type, on_delete=models.CASCADE, null=True)
    title = models.CharField(null=True, max_length=127)
    main_image = models.ImageField(null=True, default="avatar.svg")
    sub_title = models.CharField(null=True, max_length=127)
    descriptions = models.TextField(null=True)
    descriptions2 = models.TextField(null=True,max_length=510)
    descriptions3 = models.TextField(null=True,max_length=510)
    site_title = models.CharField(null=True, max_length=127)
    site_details = models.CharField(null=True, max_length=510)
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "S. Labour list"

class labour_demand(models.Model):
    Labour_Type	 = models.CharField(null=True, max_length=127)
    inside_dhaka = models.CharField(null=True, max_length=127)
    outside_dhaka = models.CharField(null=True, max_length=127)
    onside_outside_dhaka = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.Labour_Type
    
    class Meta:
        verbose_name_plural = "S. Labour Demand"

class Booking_labour(models.Model):
    name = models.CharField(max_length=255)
    mobile_number = models.CharField(max_length=15)
    worker_type = models.CharField(max_length=255)
    working_time = models.CharField(max_length=255)
    address = models.TextField()
    booking_datetime = models.DateTimeField()
    working_datetime = models.DateTimeField()
    booking_details = models.TextField()
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)

    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name_plural = "S. Labour Booking List"

# Technician Page models start  here...
class technician_category(models.Model):
    category_title = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.category_title
    
    class Meta:
        verbose_name_plural = "S. Technician Category"

class technician(models.Model):
    category_title = models.ForeignKey(technician_category, on_delete=models.CASCADE, null=True)
    title = models.CharField(null=True, max_length=127)
    sub_title = models.CharField(null=True, max_length=127)
    descriptions = models.TextField(null=True)
    top_image = models.ImageField(null=True, default="avatar.svg")
    repair_title = models.CharField(null=True, max_length=127)
    repair_details = models.TextField(null=True, max_length=1000)
    bottom_image = models.ImageField(null=True, default="avatar.svg")
    bottom_image2 = models.ImageField(null=True, default="avatar.svg")
    bootom_title = models.CharField(null=True, max_length=127)
    bootom_details = models.TextField(null=True, max_length=1010)
    contact_details = models.CharField(null=True, max_length=255)
    repair_manue1 = models.CharField(null=True, max_length=127)
    repair_manue2 = models.CharField(null=True, max_length=127)
    repair_manue3 = models.CharField(null=True, max_length=127)
    repair_manue4 = models.CharField(null=True, max_length=127)
    repair_manue5 = models.CharField(blank=True, max_length=127)
    repair_manue6 = models.CharField(blank=True, max_length=127)

    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "S. Technician List"

class technician_chart(models.Model):
    item_name = models.CharField(null=True, max_length=127)
    inside_dhaka = models.CharField(null=True, max_length=127)
    outside_dhaka = models.CharField(null=True, max_length=127)
    
    def __str__(self):
        return self.item_name
    
    class Meta:
        verbose_name_plural = "S. Technician Chart "

class Booking_tec(models.Model):
    your_name = models.CharField(max_length=255)
    mobile_number = models.CharField(max_length=15)
    technician_type = models.CharField(max_length=255,null=True)
    address = models.TextField()
    booking_date_time = models.DateTimeField()
    working_date_time = models.DateTimeField()
    booking_details = models.TextField()
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)

    def __str__(self):
        return self.your_name
    
    class Meta:
        verbose_name_plural = "S. Technician Booking"






# Branch Page models start  here...////////////////////////////////////
class branch_dhaka_city(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Dhaka City"

class branch_dhaka(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Dhaka"

class branch_chittagong_city(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Chittagong City"

class branch_chittagong(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Chittagong"

class branch_mymensingh(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Mymensingh "

class branch_khulna(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Khulna"

class branch_rajshahi(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Rajshahi"

class branch_rangpur(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Rangpur"

class branch_sylhet(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta:
        verbose_name_plural = "Branch Sylhet"

class branch_barisal(models.Model):
    office_name = models.CharField(max_length=255, null=True)
    address = models.TextField(max_length=255, null=True)
    phone_number1 = models.CharField(max_length=25, null= True, unique=True)
    phone_number2 = models.CharField(max_length=25, blank = True)
    
    def __str__(self):
        return self.office_name
    
    class Meta: 
        verbose_name_plural = "Branch Barisal"
# Branch Page models End here...


# Notice Page models start  here...
class notice_description(models.Model):
    title = models.CharField(null=True, max_length=127)
    descriptions = models.TextField(null=True)
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "Notice Descriptions"

class notice_job_circular(models.Model):
    job_title = models.CharField(null=True, max_length=127)
    interview_date = models.CharField(null=True, max_length=127)
    date = models.DateField(null=True, max_length=31)
    descriptions = models.TextField(null=True)
    image = models.ImageField(null=True, default="avatar.svg")
    address = models.CharField(null=True, max_length=250)
    interview_address = models.CharField(null=True, max_length=250)
    interview_date_time = models.CharField(null=True, max_length=250)
    note = models.CharField(null=True, max_length=250)
    
    def __str__(self):
        return self.job_title
    
    class Meta:
        verbose_name_plural = "Notice Job Circulars"

# Contact Page models here...
class contact_address(models.Model):
    primary_phone_no = models.CharField(null=True, max_length=20)
    phone_no = models.CharField(max_length=20, blank=True)
    primary_email = models.EmailField(null=True, max_length=62)
    email = models.EmailField(max_length=62, blank=True)
    address = models.TextField(null=True)
    office_time = models.CharField(max_length=126, null=True)
    holiday = models.CharField(max_length=126, null=True)
    form_title = models.CharField(max_length=255, null=True)
    last_updated = models.DateTimeField(auto_now=True)
    logo = models.ImageField(null=True, default="avatar.svg")
    top_image = models.ImageField(null=True, default="avatar.svg")
    
    def __str__(self):
        return self.primary_phone_no
    
    class Meta:
        verbose_name_plural = "Contact Address & Logo"

class Contact_Us(models.Model):
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(null=True)
    phone = models.CharField(null=True, max_length=15)
    subject = models.CharField(null=True, max_length=63)
    messages = models.TextField(null=True)
    date_time = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)
    
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = "Contact Us"

# Md Page models here...
class md(models.Model):
    designations = models.CharField(max_length=100, null=True)
    name = models.CharField(max_length=100, null=True)
    picture = models.ImageField(null=True, default="avatar.svg")
    messages = models.TextField(null=True)
    facebook_link = models.CharField(blank=True, max_length=63)
    instagram_link = models.CharField(blank=True, max_length=63)
    google_link = models.CharField(blank=True, max_length=63)
    twitter_link = models.CharField(blank=True, max_length=63)
    
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = "Md & Ceo Message"

