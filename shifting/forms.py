from django.forms import ModelForm, ValidationError
from .models import Booking_labour, Booking_tec, BookingCommercial, BookingHouse, BookingOffice, Bookinghome, CommentBlog, Contact_Us, SecurityBooking, Subscribe
from django import forms
from django.contrib.auth.forms import UserCreationForm

class ContactForm(ModelForm):
    class Meta:
        model = Contact_Us
        fields = ['name', 'email','phone','subject', 'messages']

class SubscribeForm(ModelForm):
    class Meta:
        model = Subscribe
        fields = ['email',]

class HomeForm(ModelForm):
    class Meta:
        model = Bookinghome
        fields = ['company_name', 'your_name','mobile','email_id','address','booking_datetime','shifting_datetime', 'booking_details']

class BookingForm(forms.ModelForm):
    class Meta:
        model = Booking_tec
        fields = ['your_name', 'mobile_number', 'technician_type','address','booking_date_time','working_date_time','booking_details']

class BookingFormLabour(forms.ModelForm):
    class Meta:
        model = Booking_labour 
        fields = ['name', 'mobile_number','worker_type', 'working_time', 'address','booking_datetime','working_datetime','booking_details']

class BookingFormSecurity(forms.ModelForm):
    class Meta:
        model = SecurityBooking 
        fields = ['name', 'mobile_number','security_type', 'address', 'booking_datetime','working_datetime','booking_details']

class BookingFormHouse(forms.ModelForm):
    class Meta:
        model = BookingHouse 
        fields = ['name', 'mobile_number','acs_ton_items', 'furniture_items', 'glass_items','melamine_items','mattress_items','others_items','address','booking_date_time','shifting_date_time','booking_details']

class BookingFormOffice(forms.ModelForm):
    class Meta:
        model = BookingOffice 
        fields = ['name', 'mobile_number','acs_ton_items', 'chair_tables_items', 'computer_items','monitor_items','glass_items','others_items','address','booking_date_time','shifting_date_time','booking_details']

class BookingFormCommercial(forms.ModelForm):
    class Meta:
        model = BookingCommercial 
        fields = ['name', 'mobile_number','commercial_details', 'address', 'booking_date_time','shifting_date_time','booking_details']


# Blog Comments Forms
class CommentForm(forms.ModelForm):
    class Meta:
        model = CommentBlog
        fields = ['comment_text', 'author_name', 'author_email', 'website']