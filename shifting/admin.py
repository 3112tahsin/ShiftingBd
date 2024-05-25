from django.contrib import admin
from django.utils.html import format_html, mark_safe
from shifting.models import Booking_labour, Booking_tec, BookingCommercial, BookingHouse, BookingOffice, Bookinghome, CommentBlog, Contact_Us, Covertruckdetails, HomeVideo, Largtruckdetails, MediumCovertruckdetails, Mediumtruckdetails, SecurityBooking, Subscribe, about_bottom, about_brand, about_feature, about_us, blogs, blog_popular_tags, branch_barisal, branch_chittagong, branch_chittagong_city, branch_dhaka, branch_dhaka_city, branch_khulna, branch_mymensingh, branch_rajshahi, branch_rangpur, branch_sylhet, contact_address, couriers, couriers_service, home_slider, labour_demand, labours, labours_type, largeCovertruckdetails, md, notice_description, notice_job_circular, our_services, portfolios, portfoliosCategory, questions, securities, shifting_house, shifting_houseser, shifting_office, shifting_other_cost, shifting_transport_cost, shiftingc_ommercial, team_members, technician, technician_category, technician_chart, testimonials, truck_details


# Register your models here.
admin.site.site_header  =  "ShiftingBd"  
admin.site.site_title  =  "ShiftingBd"
admin.site.index_title  =  "Welcome to ShiftingBd Admin"

# Home Page Slider admin here...
class HomeAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('id','title', 'display_image')

    def display_image(self, obj):
        if obj.image:
            return format_html('<img src="{}" alt="Image" style="max-height: 100px; max-width: 100px;" />', obj.image.url)
        else:
            return "No Image"
    display_image.short_description = "Image"

admin.site.register(home_slider, HomeAdmin)

class HomevideoAdmin(admin.ModelAdmin):
    list_filter = ('id',)
    search_fields = ('id',)
    list_display = ('id', 'video_url') 

admin.site.register(HomeVideo, HomevideoAdmin)

class HomeFormAdmin(admin.ModelAdmin):
    list_filter = ('company_name', 'your_name')
    search_fields = ('company_name', 'your_name')
    list_per_page = 10
    list_display = (
        'company_name',
        'formatted_your_name',
        'formatted_mobile',
        'formatted_email_id',
        'formatted_address',
        'formatted_booking_datetime',
        'formatted_booking_details',
        'date_time',
        'is_read_icon',
    )

    def formatted_your_name(self, obj):
        return self.formatted_field(obj, 'your_name')
    formatted_your_name.short_description = 'Your Name'

    def formatted_mobile(self, obj):
        return self.formatted_field(obj, 'mobile')
    formatted_mobile.short_description = 'Mobile'

    def formatted_email_id(self, obj):
        return self.formatted_field(obj, 'email_id')
    formatted_email_id.short_description = 'Email ID'

    def formatted_address(self, obj):
        return self.formatted_field(obj, 'address')
    formatted_address.short_description = 'Address'

    def formatted_booking_datetime(self, obj):
        return self.formatted_field(obj, 'booking_datetime')
    formatted_booking_datetime.short_description = 'Booking Date Time'

    def formatted_booking_details(self, obj):
        return self.formatted_field(obj, 'booking_details')
    formatted_booking_details.short_description = 'Booking Details'

    def formatted_field(self, obj, field_name):
        field_value = getattr(obj, field_name)
        return format_html('<strong style="color: black;">{}</strong>', field_value)
    
    def formatted_field(self, obj, field_name):
        field_value = getattr(obj, field_name)
        if not obj.is_read:
            return format_html('<strong style="color: black;">{}</strong>', field_value)
        return field_value
    
    def is_read_icon(self, obj):
        # Display a different icon based on the value of is_read
        if obj.is_read:
            return format_html('<span style="color: green; font-weight: bold;">✓</span>')
        else:
            return format_html('<span style="color: red; font-weight: bold;">✗</span>')

    is_read_icon.short_description = 'Is Read'
    is_read_icon.admin_order_field = 'is_read' 

admin.site.register(Bookinghome, HomeFormAdmin)

class SubscribeAdminForms(admin.ModelAdmin):
    list_filter = ('email','date_time' )
    search_fields = ( 'email', )
    list_per_page = 10
    list_display = ('id', 'formatted_email', 'date_time', 'is_read_icon') 

    # Define a custom admin action to mark messages as read
    actions = ['mark_as_read']

    def formatted_email(self, obj):
        if obj.is_read:
            return obj.email
        else:
            formatted_message = format_html('<strong font-weight: bold; style="color: black;">{}</strong>', obj.email)
            return mark_safe(formatted_message)
    formatted_email.short_description = "Email"

    def mark_as_read(self, request, queryset):
        queryset.update(is_read=True)
    mark_as_read.short_description = "Mark selected messages as read"

    def is_read_icon(self, obj):
        return format_html('<span style="color: {}; font-weight: bold; font-size: 15px;">{}</span>',
                        'green' if obj.is_read else 'red',
                        '✓' if obj.is_read else '✗')

    is_read_icon.short_description = "Is Read"
    is_read_icon.admin_order_field = 'is_read'
admin.site.register(Subscribe, SubscribeAdminForms)


# About Page admin here...About Page admin here...
class AboutAdmin(admin.ModelAdmin):
    list_filter = ('about_title', 'our_mission')
    search_fields = ('about_title',)
    list_display = ('about_title', 'about_details', 'display_image', 'our_vision', 'our_mission', 'shifting_expriance_title', 'display_site_image')

    def display_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.image.url)

    def display_site_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.site_image.url)

    display_image.short_description = 'Image'
    display_site_image.short_description = 'Site Image'

admin.site.register(about_us, AboutAdmin)

class AboutExperianceAdmin(admin.ModelAdmin):
    list_filter = ('feature_title',)
    search_fields = ('feature_title',)
    list_display = ('feature_title', 'feature_details','feature_icone','progress_title','values')

admin.site.register(about_feature, AboutExperianceAdmin)

class AboutSliderAdmin(admin.ModelAdmin):
    list_filter = ('id',)
    search_fields = ('slider_image',)
    list_display = ('id', 'display_slider_image')

    def display_slider_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.slider_image.url)
    display_slider_image.short_description = 'Slider Image'

admin.site.register(about_brand, AboutSliderAdmin)


class AboutBottomAdmin(admin.ModelAdmin):
    list_filter = ('titles','values')
    search_fields = ('titles',)
    list_display = ('id', 'titles', 'values','icone')

admin.site.register(about_bottom, AboutBottomAdmin)

# Team Page admin here...Team Page admin here...
class TeamAdmin(admin.ModelAdmin):
    list_filter = ('name', 'designation')
    search_fields = ('name',)
    list_per_page = 8

    list_display = ('name', 'designation', 'display_picture', 'facebook_link', 'twitter_link', 'instagram_link')

    def display_picture(self, obj):
        if obj.picture:
            return format_html('<img src="{}" alt="Picture" style="max-height: 100px; max-width: 100px;" />', obj.picture.url)
        else:
            return "No Picture"
    display_picture.short_description = "Picture"

admin.site.register(team_members, TeamAdmin)

# Portfolio Page admin here...Portfolio Page admin here...
class PortfolioCategoryAdmin(admin.ModelAdmin):
    list_filter = ('category_title',)
    search_fields = ('category_title',)
    list_per_page = 10
    list_display = ('id', 'category_title')

admin.site.register(portfoliosCategory, PortfolioCategoryAdmin)

class PortfolioAdmin(admin.ModelAdmin):
    list_filter = ('title', 'category')
    search_fields = ('title',)
    list_per_page = 6
    list_display = ('title', 'category', 'display_image','category_title')

    def display_image(self, obj):
        if obj.image:
            return format_html('<img src="{}" alt="Image" style="max-height: 100px; max-width: 100px;" />', obj.image.url)
        else:
            return "No Image"
    display_image.short_description = "Image"

admin.site.register(portfolios, PortfolioAdmin)


# Testimonial Page admin here...Testimonial Page admin here...
class TestimonialAdmin(admin.ModelAdmin):
    list_filter = ('name', 'designation')
    search_fields = ('name',)
    list_per_page = 8
    list_display = ('name', 'designation', 'display_picture', 'message')

    def display_picture(self, obj):
        if obj.picture:
            return format_html('<img src="{}" alt="Picture" style="max-height: 100px; max-width: 100px;" />', obj.picture.url)
        else:
            return "No Picture"
    display_picture.short_description = "Picture"

admin.site.register(testimonials, TestimonialAdmin)

# Questions Page admin here...Questions Page admin here...
class QuestionsAdmin(admin.ModelAdmin):
    list_filter = ('questions',)
    search_fields = ('questions',)
    list_display = ('id', 'questions', 'questions_answer')

admin.site.register(questions, QuestionsAdmin)

# Blog Page admin here...Questions Page admin here...
class BlogAdmin(admin.ModelAdmin):
    list_filter = ('title', 'date')
    search_fields = ('title',)
    list_per_page = 8
    list_display = ('title', 'date', 'display_picture', 'descriptions', 'link_types')

    def display_picture(self, obj):
        if obj.picture:
            return format_html('<img src="{}" alt="Picture" style="max-height: 100px; max-width: 100px;" />', obj.picture.url)
        else:
            return "No Picture"
    display_picture.short_description = "Picture"

admin.site.register(blogs, BlogAdmin)

class BlogPopularAdmin(admin.ModelAdmin):
    list_filter = ('popular_tags_title','categories_title')
    search_fields = ('popular_tags_title','categories_title')
    list_display = ('id','popular_tags_title','categories_title')

admin.site.register(blog_popular_tags, BlogPopularAdmin)

class CommentAdmin(admin.ModelAdmin):
    list_display = ( 'blog_title', 'comment_text', 'author_name', 'author_email', 'website')
    list_filter = ('author_name', 'author_email')
    search_fields = ('comment_text', 'author_name')
    list_display_links = ('author_name',)

admin.site.register(CommentBlog, CommentAdmin)


# .................Our Services Page admin here.............
class OurServicesAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display_links = ('title',)
    list_per_page = 8
    list_display = ('id', 'title', 'descriptions', 'display_image')

    def display_image(self, obj):
        if obj.image:
            return format_html('<img src="{}" alt="Image" style="max-height: 100px; max-width: 100px;" />', obj.image.url)
        else:
            return "No Image"
    display_image.short_description = "Image"

admin.site.register(our_services, OurServicesAdmin)


# Truck Details Page admin here...

from django.utils.html import format_html

class TruckDetailsAdmin(admin.ModelAdmin):
    list_filter = ('truck_name', 'fixed_amount', 'per_km_amount')
    search_fields = ('truck_name', 'fixed_amount', 'per_km_amount')
    list_per_page = 10
    list_display_links = ('truck_name',)
    list_display = ('id', 'truck_name', 'truck_title', 'descriptions', 'display_image', 'fixed_amount', 'per_km_amount')

    def display_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.image.url)

    display_image.short_description = 'Image'

admin.site.register(truck_details, TruckDetailsAdmin)

class MediumTruckDetailsAdmin(admin.ModelAdmin):
    list_filter = ('truck_name', 'fixed_amount', 'per_km_amount')
    search_fields = ('truck_name', 'fixed_amount', 'per_km_amount')
    list_per_page = 10
    list_display_links = ('truck_name',)
    list_display = ('id', 'truck_name', 'truck_title', 'descriptions', 'display_image', 'fixed_amount', 'per_km_amount')

    def display_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.image.url)

    display_image.short_description = 'Image'

admin.site.register(Mediumtruckdetails, MediumTruckDetailsAdmin)

class LargeTruckDetailsAdmin(admin.ModelAdmin):
    list_filter = ('truck_name', 'fixed_amount', 'per_km_amount')
    search_fields = ('truck_name', 'fixed_amount', 'per_km_amount')
    list_per_page = 10
    list_display_links = ('truck_name',)
    list_display = ('id', 'truck_name', 'truck_title', 'descriptions', 'display_image', 'fixed_amount', 'per_km_amount')

    def display_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.image.url)

    display_image.short_description = 'Image'

admin.site.register(Largtruckdetails, LargeTruckDetailsAdmin)

class CoverTruckDetailsAdmin(admin.ModelAdmin):
    list_filter = ('truck_name', 'fixed_amount', 'per_km_amount')
    search_fields = ('truck_name', 'fixed_amount', 'per_km_amount')
    list_per_page = 10
    list_display_links = ('truck_name',)
    list_display = ('id', 'truck_name', 'truck_title', 'descriptions', 'display_image', 'fixed_amount', 'per_km_amount')

    def display_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.image.url)

    display_image.short_description = 'Image'

admin.site.register(Covertruckdetails, CoverTruckDetailsAdmin)

class MediumCoverTruckDetailsAdmin(admin.ModelAdmin):
    list_filter = ('truck_name', 'fixed_amount', 'per_km_amount')
    search_fields = ('truck_name', 'fixed_amount', 'per_km_amount')
    list_per_page = 10
    list_display_links = ('truck_name',)
    list_display = ('id', 'truck_name', 'truck_title', 'descriptions', 'display_image', 'fixed_amount', 'per_km_amount')

    def display_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.image.url)

    display_image.short_description = 'Image'

admin.site.register(MediumCovertruckdetails, MediumCoverTruckDetailsAdmin)

class LargeCoverTruckDetailsAdmin(admin.ModelAdmin):
    list_filter = ('truck_name', 'fixed_amount', 'per_km_amount')
    search_fields = ('truck_name', 'fixed_amount', 'per_km_amount')
    list_per_page = 10
    list_display_links = ('truck_name',)
    list_display = ('id', 'truck_name', 'truck_title', 'descriptions', 'display_image', 'fixed_amount', 'per_km_amount')

    def display_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.image.url)

    display_image.short_description = 'Image'

admin.site.register(largeCovertruckdetails, LargeCoverTruckDetailsAdmin)

# Shifting-House Page admin here...
class ShiftingHouseAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('title', 'top_descriptions', 'display_image', 'descriptions', 'descriptions2', 'display_site_image')

    def display_image(self, obj):
        if obj.image:
            return format_html('<img src="{}" alt="Image" style="max-height: 100px; max-width: 100px;" />', obj.image.url)
        else:
            return "No Image"
    display_image.short_description = "Image"

    def display_site_image(self, obj):
        if obj.site_image:
            return format_html('<img src="{}" alt="Site Image" style="max-height: 100px; max-width: 100px;" />', obj.site_image.url)
        else:
            return "No Site Image"
    display_site_image.short_description = "Site Image"

admin.site.register(shifting_house, ShiftingHouseAdmin)

class ShiftingHouseAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('id', 'title', 'descriptions', 'display_image', 'top_details')

    def display_image(self, obj):
        if obj.image:
            return format_html('<img src="{}" alt="Image" style="max-height: 100px; max-width: 100px;" />', obj.image.url)
        else:
            return "No Image"
    
    display_image.short_description = "Image"
admin.site.register(shifting_houseser, ShiftingHouseAdmin)

class ShiftingOfficeAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('id', 'title', 'descriptions', 'display_image')

    def display_image(self, obj):
        if obj.image:
            return format_html('<img src="{}" alt="Image" style="max-height: 100px; max-width: 100px;" />', obj.image.url)
        else:
            return "No Image"
    
    display_image.short_description = "Image"
admin.site.register(shifting_office, ShiftingOfficeAdmin)

class ShiftingCommarcialAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('id', 'title', 'descriptions', 'display_image')

    def display_image(self, obj):
        if obj.image:
            return format_html('<img src="{}" alt="Image" style="max-height: 100px; max-width: 100px;" />', obj.image.url)
        else:
            return "No Image"
    
    display_image.short_description = "Image"
admin.site.register(shiftingc_ommercial, ShiftingCommarcialAdmin)

class ShiftingCostAdmin(admin.ModelAdmin):
    list_filter = ('item_name','per_km_cost')
    search_fields = ('item_name','per_km_cost')
    list_per_page= 15
    list_display = ('id', 'item_name', 'inside_dhaka', 'outside_dhaka', 'per_km_cost')
admin.site.register(shifting_transport_cost, ShiftingCostAdmin)

class OtherCostAdmin(admin.ModelAdmin):
    list_filter = ('item_name','outside_dhaka')
    search_fields = ('item_name','outside_dhaka')
    list_per_page = 15
    list_display = ('id', 'item_name', 'inside_dhaka', 'outside_dhaka')
admin.site.register(shifting_other_cost, OtherCostAdmin)

class BookingHouseAdmin(admin.ModelAdmin):
    list_filter = ('name', 'mobile_number')
    search_fields = ('name', 'mobile_number')
    list_per_page = 10
    list_display = ('name', 'formatted_mobile_number', 'acs_ton_items', 'furniture_items', 'formatted_address',
                    'booking_date_time', 'shifting_date_time', 'formatted_booking_details', 'date_time', 'is_read_icon')

    def formatted_mobile_number(self, obj):
        return self.format_field(obj, 'mobile_number')

    def formatted_address(self, obj):
        return self.format_field(obj, 'address')

    def formatted_booking_details(self, obj):
        return self.format_field(obj, 'booking_details')
    
    def is_read_icon(self, obj):
        # Display a different icon based on the value of is_read
        if obj.is_read:
            return format_html('<span style="color: green; font-weight: bold;">✓</span>')
        else:
            return format_html('<span style="color: red; font-weight: bold;">✗</span>')

    is_read_icon.short_description = 'Is Read'
    is_read_icon.admin_order_field = 'is_read' 

    def format_field(self, obj, field_name):
        # Check if the entry is unread, and apply bold formatting with black color if True
        style = 'font-weight: bold; color: black;' if not obj.is_read else ''
        return format_html('<span style="{}">{}</span>', style, getattr(obj, field_name))

    formatted_mobile_number.short_description = 'Mobile Number'
    formatted_address.short_description = 'Address'
    formatted_booking_details.short_description = 'Booking Details'

admin.site.register(BookingHouse, BookingHouseAdmin)

class BookingOfficeAdmin(admin.ModelAdmin):
    list_filter = ('name', 'mobile_number')
    search_fields = ('name', 'mobile_number')
    list_per_page = 10
    list_display = ('name', 'formatted_mobile_number', 'acs_ton_items', 'glass_items', 'formatted_address',
                    'booking_date_time', 'shifting_date_time', 'formatted_booking_details', 'date_time', 'is_read_icon')

    def formatted_mobile_number(self, obj):
        return self.format_field(obj, 'mobile_number')

    def formatted_address(self, obj):
        return self.format_field(obj, 'address')

    def formatted_booking_details(self, obj):
        return self.format_field(obj, 'booking_details')
    
    def is_read_icon(self, obj):
        if obj.is_read:
            return format_html('<span style="color: green; font-weight: bold;">✓</span>')
        else:
            return format_html('<span style="color: red; font-weight: bold;">✗</span>')

    is_read_icon.short_description = 'Is Read'
    is_read_icon.admin_order_field = 'is_read' 

    def format_field(self, obj, field_name):
        style = 'font-weight: bold; color: black;' if not obj.is_read else ''
        return format_html('<span style="{}">{}</span>', style, getattr(obj, field_name))

    formatted_mobile_number.short_description = 'Mobile Number'
    formatted_address.short_description = 'Address'
    formatted_booking_details.short_description = 'Booking Details'

admin.site.register(BookingOffice, BookingOfficeAdmin)

class BookingCommercialAdmin(admin.ModelAdmin):
    list_filter = ('name', 'mobile_number')
    search_fields = ('name', 'mobile_number')
    list_per_page = 10
    list_display = ('name', 'formatted_mobile_number', 'formatted_commercial_details',
                    'formatted_address', 'booking_date_time', 'shifting_date_time', 'date_time', 'is_read_icon')

    def formatted_mobile_number(self, obj):
        return self.format_field(obj, 'mobile_number')

    def formatted_commercial_details(self, obj):
        return self.format_field(obj, 'commercial_details')

    def formatted_address(self, obj):
        return self.format_field(obj, 'address')
    
    def is_read_icon(self, obj):
        if obj.is_read:
            return format_html('<span style="color: green; font-weight: bold;">✓</span>')
        else:
            return format_html('<span style="color: red; font-weight: bold;">✗</span>')

    is_read_icon.short_description = 'Is Read'
    is_read_icon.admin_order_field = 'is_read' 

    def format_field(self, obj, field_name):
        # Check if the entry is unread, and apply bold formatting with black color if True
        style = 'font-weight: bold; color: black;' if not obj.is_read else ''
        return format_html('<span style="{}">{}</span>', style, getattr(obj, field_name))

    formatted_mobile_number.short_description = 'Mobile Number'
    formatted_commercial_details.short_description = 'Commercial Details'
    formatted_address.short_description = 'Address'

admin.site.register(BookingCommercial, BookingCommercialAdmin)

# Couriers Page admin here...Couriers Page admin here...
class CouriersAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('id', 'title', 'display_top_image', 'display_site_image')

    def display_top_image(self, obj):
        if obj.top_image:
            return format_html('<img src="{}" alt="Top Image" style="max-height: 100px; max-width: 100px;" />', obj.top_image.url)
        else:
            return "No Top Image"

    display_top_image.short_description = "Top Image"

    def display_site_image(self, obj):
        if obj.site_image:
            return format_html('<img src="{}" alt="Site Image" style="max-height: 100px; max-width: 100px;" />', obj.site_image.url)
        else:
            return "No Site Image"

    display_site_image.short_description = "Site Image"

admin.site.register(couriers, CouriersAdmin)

class CurierSerAdmin(admin.ModelAdmin):
    list_filter = ('service_title', 'cost_title')
    search_fields = ('service_title','cost_title')
    list_display = ('service_title', 'cost_title')
admin.site.register(couriers_service, CurierSerAdmin)


# Securities Page admin here...Couriers Page admin here...
class securitiesAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('title', 'top_descriptions', 'top_image', 'descriptions1', 'descriptions2', 'site_image')
admin.site.register(securities, securitiesAdmin)

class SecurityFormAdmin(admin.ModelAdmin):
    list_filter = ('name', 'mobile_number', 'booking_datetime')
    search_fields = ('name', 'mobile_number', 'booking_datetime')
    list_per_page = 10
    list_display = ('name', 'formatted_mobile_number', 'formatted_security_type', 'formatted_address',
                    'booking_datetime', 'working_datetime', 'formatted_booking_details', 'date_time','is_read_icon')

    def formatted_mobile_number(self, obj):
        return self.format_field(obj, 'mobile_number')

    def formatted_security_type(self, obj):
        return self.format_field(obj, 'security_type')

    def formatted_address(self, obj):
        return self.format_field(obj, 'address')

    def formatted_booking_details(self, obj):
        return self.format_field(obj, 'booking_details')
    
    def is_read_icon(self, obj):
        if obj.is_read:
            return format_html('<span style="color: green; font-weight: bold;">✓</span>')
        else:
            return format_html('<span style="color: red; font-weight: bold;">✗</span>')

    is_read_icon.short_description = 'Is Read'
    is_read_icon.admin_order_field = 'is_read' 

    def format_field(self, obj, field_name):
        # Check if the entry is unread, and apply bold formatting with black color if True
        style = 'font-weight: bold; color: black;' if not obj.is_read else ''
        return format_html('<span style="{}">{}</span>', style, getattr(obj, field_name))

    formatted_mobile_number.short_description = 'Mobile Number'
    formatted_security_type.short_description = 'Security Type'
    formatted_address.short_description = 'Address'
    formatted_booking_details.short_description = 'Booking Details'

admin.site.register(SecurityBooking, SecurityFormAdmin)

# Labour Page admin here...Couriers Page admin here...
class labourTypeAdmin(admin.ModelAdmin):
    list_filter = ('category_title',)
    search_fields = ('category_title',)
    list_display = ('id', 'category_title')
admin.site.register(labours_type, labourTypeAdmin)

class labourAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_per_page = 8
    list_display = ('title', 'sub_title', 'descriptions', 'descriptions2', 'descriptions3','site_title')
admin.site.register(labours, labourAdmin)

class LabourAdmin(admin.ModelAdmin):
    list_filter = ('Labour_Type',)
    search_fields = ('Labour_Type',)
    list_display = ('id', 'Labour_Type', 'inside_dhaka', 'outside_dhaka', 'onside_outside_dhaka')
admin.site.register(labour_demand, LabourAdmin)

class LabourBookingAdmin(admin.ModelAdmin):
    list_filter = ('name', 'mobile_number', 'booking_datetime')
    search_fields = ('name', 'mobile_number', 'booking_datetime')
    list_per_page = 10
    list_display = ('name', 'mobile_number', 'formatted_worker_type', 'working_time', 'formatted_address',
                    'booking_datetime', 'working_datetime', 'formatted_booking_details', 'date_time','is_read_icon')

    def formatted_worker_type(self, obj):
        return self.format_field(obj, 'worker_type')

    def formatted_address(self, obj):
        return self.format_field(obj, 'address')

    def formatted_booking_details(self, obj):
        return self.format_field(obj, 'booking_details')
    
    def is_read_icon(self, obj):
        if obj.is_read:
            return format_html('<span style="color: green; font-weight: bold;">✓</span>')
        else:
            return format_html('<span style="color: red; font-weight: bold;">✗</span>')

    is_read_icon.short_description = 'Is Read'
    is_read_icon.admin_order_field = 'is_read' 

    def format_field(self, obj, field_name):
        # Check if the entry is unread, and apply bold formatting with black color if True
        style = 'font-weight: bold; color: black;' if not obj.is_read else ''
        return format_html('<span style="{}">{}</span>', style, getattr(obj, field_name))

    formatted_worker_type.short_description = 'Worker Type'
    formatted_address.short_description = 'Address'
    formatted_booking_details.short_description = 'Booking Details'

admin.site.register(Booking_labour, LabourBookingAdmin)
# Technician Page admin here...Couriers Page admin here...

class ElectricalAdmin(admin.ModelAdmin):
    list_filter = ('category_title',)
    search_fields = ('category_title',)
    list_per_page = 12
    list_display = ('id', 'category_title')
admin.site.register(technician_category, ElectricalAdmin)

class TechnicianAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('title', 'sub_title', 'descriptions', 'display_top_image', 'repair_title', 'display_bottom_image')

    def display_top_image(self, obj):
        return self.display_image(obj, 'top_image')

    def display_bottom_image(self, obj):
        return self.display_image(obj, 'bottom_image')

    def display_image(self, obj, image_field):
        if getattr(obj, image_field):
            return format_html('<img src="{}" alt="Image" style="max-height: 100px; max-width: 100px;" />', getattr(obj, image_field).url)
        else:
            return "No Image"
    
    display_top_image.short_description = "Top Image"
    display_bottom_image.short_description = "Bottom Image"
admin.site.register(technician, TechnicianAdmin)

class TechnicianFormAdmin(admin.ModelAdmin):
    list_filter = ('your_name', 'mobile_number', 'booking_date_time')
    search_fields = ('your_name', 'mobile_number', 'booking_date_time')
    list_per_page = 10
    list_display = ('your_name', 'formatted_mobile_number', 'formatted_technician_type',
                    'formatted_address', 'booking_date_time', 'formatted_working_date_time',
                    'formatted_booking_details', 'date_time','is_read_icon')

    def formatted_mobile_number(self, obj):
        return self.format_field(obj, 'mobile_number')
    
    def formatted_technician_type(self, obj):
        return self.format_field(obj, 'technician_type')

    def formatted_address(self, obj):
        return self.format_field(obj, 'address')
    
    def formatted_working_date_time(self, obj):
        return self.format_field(obj, 'working_date_time')

    def formatted_booking_details(self, obj):
        return self.format_field(obj, 'booking_details')
    
    def is_read_icon(self, obj):
        if obj.is_read:
            return format_html('<span style="color: green; font-weight: bold;">✓</span>')
        else:
            return format_html('<span style="color: red; font-weight: bold;">✗</span>')

    is_read_icon.short_description = 'Is Read'
    is_read_icon.admin_order_field = 'is_read' 

    def format_field(self, obj, field_name):
        style = 'font-weight: bold; color: black;' if not obj.is_read else ''
        return format_html('<span style="{}">{}</span>', style, getattr(obj, field_name))

    formatted_mobile_number.short_description = 'Mobile Number'
    formatted_technician_type.short_description = 'Technician Type'
    formatted_address.short_description = 'Address'
    formatted_working_date_time.short_description = 'Working Date Time'
    formatted_booking_details.short_description = 'Booking Details'

admin.site.register(Booking_tec, TechnicianFormAdmin)
# Technician Page admin here...Couriers Page admin here...
class technicianChartAdmin(admin.ModelAdmin):
    list_filter = ('item_name',)
    search_fields = ('item_name',)
    list_display = ( 'id', 'item_name', 'inside_dhaka', 'outside_dhaka')
admin.site.register(technician_chart, technicianChartAdmin)







# ................Our Branch Page admin start here..................

class DhakaAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ('id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_dhaka_city, DhakaAdmin)

class BranchDhakaAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ( 'id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_dhaka, BranchDhakaAdmin)

class ChittagongAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ('id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_chittagong_city, ChittagongAdmin)

class BranchChittagongAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ('id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_chittagong, BranchChittagongAdmin)

class BranchMymensinghAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ('id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_mymensingh, BranchMymensinghAdmin)

class BranchKhulnaAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ('id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_khulna, BranchKhulnaAdmin)

class BranchRajshahiAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ('id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_rajshahi, BranchRajshahiAdmin)

class BranchRangpurAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ( 'id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_rangpur, BranchRangpurAdmin)

class BranchSylhetAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ('id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_sylhet, BranchSylhetAdmin)

class BranchBarisalAdmin(admin.ModelAdmin):
    list_filter = ('office_name','phone_number1')
    search_fields = ('office_name',)
    list_display_links = ('office_name',)
    list_display = ( 'id', 'office_name','address', 'phone_number1','phone_number2')

admin.site.register(branch_barisal, BranchBarisalAdmin)
# Our Services Page admin End here...

# Notice Page admin here...Notice Page admin here...
class NoticeAdmin(admin.ModelAdmin):
    list_filter = ('title',)
    search_fields = ('title',)
    list_display = ('id','title','descriptions')

admin.site.register(notice_description, NoticeAdmin)

class NoticeCircularAdmin(admin.ModelAdmin):
    list_filter = ('job_title', 'date')
    search_fields = ('job_title', 'date')
    list_display_links = ('job_title',)
    list_display = ('id', 'job_title', 'interview_date', 'date', 'descriptions', 'display_image','address')

    def display_image(self, obj):
        return format_html('<img src="{}" width="50" height="50" />', obj.image.url)
    display_image.short_description = 'Image'

admin.site.register(notice_job_circular, NoticeCircularAdmin)

# Contact Page admin here...
class ContactAdmin(admin.ModelAdmin):
    list_filter = ('primary_phone_no', 'primary_email')
    search_fields = ('primary_phone_no',)
    list_display = ('primary_phone_no', 'phone_no', 'primary_email', 'office_time', 'address', 'display_logo', 'top_image')

    def display_logo(self, obj):
        if obj.logo:
            return format_html('<img src="{}" alt="Logo" style="max-height: 50px; max-width: 50px;" />', obj.logo.url)
        else:
            return "No Logo"

    display_logo.short_description = "Logo"
admin.site.register(contact_address, ContactAdmin)

class ContactAdminForms(admin.ModelAdmin):
    list_filter = ('name', 'email','date_time' )
    search_fields = ('name', 'email', 'messages')
    list_per_page = 10
    list_display = ('name', 'email', 'formatted_messages', 'phone','subject', 'date_time', 'is_read_icon') 

    # Define a custom admin action to mark messages as read
    actions = ['mark_as_read']

    def formatted_messages(self, obj):
        if obj.is_read:
            return obj.messages
        else:
            formatted_message = format_html('<strong font-weight: bold; style="color: black;">{}</strong>', obj.messages)
            return mark_safe(formatted_message)
    formatted_messages.short_description = "Message"

    def mark_as_read(self, request, queryset):
        queryset.update(is_read=True)
    mark_as_read.short_description = "Mark selected messages as read"

    def is_read_icon(self, obj):
        return format_html('<span style="color: {}; font-weight: bold; font-size: 15px;">{}</span>',
                        'green' if obj.is_read else 'red',
                        '✓' if obj.is_read else '✗')

    is_read_icon.short_description = "Is Read"
    is_read_icon.admin_order_field = 'is_read'
admin.site.register(Contact_Us, ContactAdminForms)

# Md Page models here...
class mdAdmin(admin.ModelAdmin):
    list_filter = ('name','designations')
    search_fields = ('name','designations')
    list_per_page = 10
    list_display = ( 'designations', 'name','picture', 'messages','facebook_link', 'instagram_link','google_link')

admin.site.register(md, mdAdmin)







