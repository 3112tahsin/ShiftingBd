from django.shortcuts import redirect, render
from django.contrib import messages
from django.core.mail import send_mail
from shifting.forms import BookingForm, BookingFormCommercial, BookingFormHouse, BookingFormLabour, BookingFormOffice, BookingFormSecurity, CommentForm, ContactForm, HomeForm, SubscribeForm
from shifting.models import CommentBlog, Contact_Us, Covertruckdetails, HomeVideo, Largtruckdetails, MediumCovertruckdetails, Mediumtruckdetails, about_bottom, about_brand, about_feature, about_us, blog_popular_tags, blogs, branch_barisal, branch_chittagong, branch_chittagong_city, branch_dhaka, branch_dhaka_city, branch_khulna, branch_mymensingh, branch_rajshahi, branch_rangpur, branch_sylhet, contact_address, couriers, couriers_service, home_slider, labour_demand, labours, labours_type, largeCovertruckdetails, md, notice_description, notice_job_circular, our_services, portfolios, portfoliosCategory, questions, securities, shifting_house, shifting_houseser, shifting_office, shifting_other_cost, shifting_transport_cost, shiftingc_ommercial, team_members, technician, technician_category, technician_chart, testimonials, truck_details

 
# Home Page views start here...
def home(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    teamMembers = team_members.objects.all().order_by('id')
    homeSlider = home_slider.objects.all()
    VideoObj = HomeVideo.objects.all().order_by('-id')[:3]
    testiMonials = testimonials.objects.all()

    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    aboutBottom = about_bottom.objects.all().order_by('-id')[:3]
    aboutUs = about_us.objects.all().order_by('-id')[:1]
    ourServices = our_services.objects.all()[0:6]

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    # Contact Form Booking Start
    contactfo = ContactForm()
    if request.method == 'POST':
        contactfo = ContactForm(request.POST)
        if contactfo.is_valid():
            contactfo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactfo.errors)

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            phone = form.cleaned_data['phone']
            subject = form.cleaned_data['subject']
            body = form.cleaned_data['messages']
            if contactfo.is_valid():
                contactfo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Name: {name}\nEmail: {email}\nPhone: {phone}\nSubject: {subject}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = ContactForm()


     # Home Header Form Booking Start
    subscribs = SubscribeForm()
    if request.method == 'POST':
        subscribs = SubscribeForm(request.POST)
        if subscribs.is_valid():
            subscribs.save()
            print(messages.success(request, "Thanks for subscribing! Get ready for exclusive content, insider news, and special offers delivered."))
            return redirect('subscribs')
        else:
            print(subscribs.errors)

    categories = portfoliosCategory.objects.all()
    portobj = portfolios.objects.all()

    context = {
       'contactAddress': contactAddress,
       'teamMembers': teamMembers,
       'homeSlider': homeSlider,
       'VideoObj': VideoObj,
       'aboutBottom': aboutBottom,
       'aboutUs': aboutUs,
       'ourServices': ourServices,
       'contactfo': contactfo,
       'all_labour_objects': all_labour_objects,
       'all_tec_objects': all_tec_objects,
       'Md': Md,
       'portobj':portobj,
       'categories':categories,
       'testiMonials': testiMonials,
       'contactHo':contactHo,
       'subscribs': subscribs,
    } 
    return render(request, 'base/home.html', context)

 # Home Header Form Booking Success Message
def success(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    teamMembers = team_members.objects.all().order_by('id')
    homeSlider = home_slider.objects.all()
    VideoObj = HomeVideo.objects.all()
    testiMonials = testimonials.objects.all()

    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    aboutBottom = about_bottom.objects.all().order_by('-id')[:3]
    aboutUs = about_us.objects.all().order_by('-id')[:1]
    ourServices = our_services.objects.all()[0:6]

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    # Contact Form Booking Start
    contactfo = ContactForm()
    if request.method == 'POST':
        contactfo = ContactForm(request.POST)
        if contactfo.is_valid():
            contactfo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactfo.errors)

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            phone = form.cleaned_data['phone']
            subject = form.cleaned_data['subject']
            body = form.cleaned_data['messages']
            if contactfo.is_valid():
                contactfo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Name: {name}\nEmail: {email}\nPhone: {phone}\nSubject: {subject}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('home')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = ContactForm()

    categories = portfoliosCategory.objects.all()
    portobj = portfolios.objects.all()

    context = {
       'contactAddress': contactAddress,
       'teamMembers': teamMembers,
       'homeSlider': homeSlider,
       'VideoObj': VideoObj,
       'aboutBottom': aboutBottom,
       'aboutUs': aboutUs,
       'ourServices': ourServices,
       'contactfo': contactfo,
       'all_labour_objects': all_labour_objects,
       'all_tec_objects': all_tec_objects,
       'Md': Md,
       'portobj':portobj,
       'categories':categories,
       'testiMonials': testiMonials,
       'contactHo':contactHo,
    } 
    return render(request, 'base/success.html', context)

# Home Header Form Booking Subscribs Message
def subscribs(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    teamMembers = team_members.objects.all().order_by('id')
    homeSlider = home_slider.objects.all()
    VideoObj = HomeVideo.objects.all()
    testiMonials = testimonials.objects.all()

    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    aboutBottom = about_bottom.objects.all().order_by('-id')[:3]
    aboutUs = about_us.objects.all().order_by('-id')[:1]
    ourServices = our_services.objects.all()[0:6]

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    categories = portfoliosCategory.objects.all()
    portobj = portfolios.objects.all()

    context = {
       'contactAddress': contactAddress,
       'teamMembers': teamMembers,
       'homeSlider': homeSlider,
       'VideoObj': VideoObj,
       'aboutBottom': aboutBottom,
       'aboutUs': aboutUs,
       'ourServices': ourServices,
       'all_labour_objects': all_labour_objects,
       'all_tec_objects': all_tec_objects,
       'Md': Md,
       'portobj':portobj,
       'categories':categories,
       'testiMonials': testiMonials,
       'contactHo':contactHo,
    } 
    return render(request, 'base/subscribs.html', context)

# Thai-glass Page views start here...
def login(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    context = {
        'contactAddress': contactAddress,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/login.html', context)

# ..................About Page views start here........................
def about(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    aboutUs = about_us.objects.all().order_by('-id')[:1]
    aboutFeature = about_feature.objects.all().order_by('-id')[:3]
    aboutProgress = about_feature.objects.all().order_by('-id')[:5]
    aboutBrand = about_brand.objects.all()
    aboutBottom = about_bottom.objects.all().order_by('-id')[:4]

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('home')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    context = {
        'contactAddress': contactAddress,
        'aboutUs': aboutUs,
        'aboutFeature': aboutFeature,
        'aboutProgress':aboutProgress,
        'aboutBrand': aboutBrand, 
        'aboutBottom': aboutBottom,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/about.html', context)

# Team Page views start here...
def team(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:3]

    teamMembers = team_members.objects.all().order_by('id')

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'teamMembers': teamMembers,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/team.html', context)

from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import get_object_or_404
from django.db.models import Q

# Blog Single Page views start here...
def blog(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    blogSit = blogs.objects.all().order_by('-id')[:4]
    popularTags = blog_popular_tags.objects.all()
    popularCatat = blog_popular_tags.objects.all().order_by('id')[:5]

    # Fetch all blog objects first
    blogObj = blogs.objects.all()

    # Search functionality
    query = request.GET.get('s')
    if query:
        blogObj = blogObj.filter(
            Q(title__icontains=query) | 
            Q(date__icontains=query) | 
            Q(link_types__icontains=query) |
            Q(person_name__icontains=query)
            )

    page = request.GET.get('page', 1)
    paginator = Paginator(blogObj, 3)  # Show 3 blog posts per page

    try:
        blogObj = paginator.page(page)
    except PageNotAnInteger:
        blogObj = paginator.page(1)
    except EmptyPage:
        blogObj = paginator.page(paginator.num_pages)

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    context = {
        'contactAddress': contactAddress,
        'blogObj': blogObj,
        'blogSit': blogSit,
        'popularTags': popularTags,
        'popularCatat': popularCatat,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/blog.html', context)


# Blog Single Page views start here...
def blogSingle(request, blog_id):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]


    blogSit = blogs.objects.all().order_by('-id')[:4]
    popularTags = blog_popular_tags.objects.all()
    popularCatat = blog_popular_tags.objects.all().order_by('id')[:5]

    search_query = request.GET.get('s')
    if search_query:
        blogSit = blogs.objects.filter(
            Q(title__icontains=search_query) |
            Q(descriptions__icontains=search_query) |
            Q(link_types=search_query) |
            Q(date__icontains=search_query) |
            Q(singal_blog_title__icontains=search_query) |
            Q(person_name__icontains=search_query)
        ).order_by('-id')[:4]
    else:
        blogSit = blogs.objects.all().order_by('-id')[:4]

    blogObj = get_object_or_404(blogs, id=blog_id)

    # Blog Reviews Functionality
    Comments = CommentBlog.objects.filter(blog_title=blog_id)
    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.blog_title = blogObj
            comment.save()
            return redirect('blog-single', blog_id=blog_id) 
    else:
        form = CommentForm()

    
    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'blogObj': blogObj,
        'blogSit': blogSit,
        'popularTags': popularTags,
        'popularCatat': popularCatat,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
        'Comments': Comments,
    } 
    return render(request, 'base/blog-single.html', context)

# Faq Page views start here...
def faq(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    question = questions.objects.all().order_by('-id')[:5]

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'question': question,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/faq.html', context)

# Testimonial Page views start here...
def testimonial(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    testiMonials = testimonials.objects.all()

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()
    
    context = {
        'contactAddress': contactAddress,
        'testiMonials': testiMonials,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/testimonial.html', context)

# Portfolio Page views start here...
def portfolio(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    portobj = portfolios.objects.all()

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    
    context = {
        'contactAddress': contactAddress,
        'portobj':portobj,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/portfolio.html', context)

# ..............Truck Page views start here... All Servicess..............
def truck(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    aboutBrand = about_brand.objects.all()
    
    # Truk Contact Booking Form Start 
    contactfo = ContactForm()
    if request.method == 'POST':
        contactfo = ContactForm(request.POST)
        if contactfo.is_valid():
            contactfo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('contact')
        else:
            print(contactfo.errors)

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            phone = form.cleaned_data['phone']
            subject = form.cleaned_data['subject']
            body = form.cleaned_data['messages']
            if contactfo.is_valid():
                contactfo.save()

                # Send an email
                email_subject = 'Truck Contact Submission From Website'
                message = f'Name: {name}\nEmail: {email}\nPhone: {phone}\nSubject: {subject}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('truck')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))

    else:
         form = ContactForm()


    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    

    context = {
        'contactAddress': contactAddress,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'aboutBrand': aboutBrand,
        'Md': Md,
        'contactfo': contactfo,
        'contactHo': contactHo,
    } 
    return render(request, 'base/truck.html', context)

def truckDetails(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]
    
    PickUp = truck_details.objects.all()
    Mediun = Mediumtruckdetails.objects.all()
    Large = Largtruckdetails.objects.all()
    Cover = Covertruckdetails.objects.all()
    MediumCover = MediumCovertruckdetails.objects.all()
    LargeCover = largeCovertruckdetails.objects.all()

    aboutBrand = about_brand.objects.all()

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'aboutBrand': aboutBrand,
        'Md': Md,
        'PickUp': PickUp,
        'Mediun': Mediun,
        'Large': Large,
        'Cover': Cover,
        'MediumCover': MediumCover,
        'LargeCover': LargeCover,
    } 
    return render(request, 'base/truck_details.html', context)

# Shifting-house  Page views start here...
def shiftingHouse(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    shiftingHouse = shifting_house.objects.all().order_by('id')[0:3]
    shiftingCost = shifting_transport_cost.objects.all()
    OtherCost = shifting_other_cost.objects.all()
    House = shifting_houseser.objects.all().order_by('-id')[:1]
    Office = shifting_office.objects.all().order_by('-id')[:1]
    commerCial = shiftingc_ommercial.objects.all().order_by('-id')[:1]

    # House Booking Form Start
    formhou = BookingFormHouse()
    if request.method == 'POST':
        formhou = BookingFormHouse(request.POST)
        if formhou.is_valid():
            formhou.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
           # return redirect('shifting-house')
        else:
            print(formoff.errors)

    if request.method == 'POST':
        form = BookingFormHouse(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            mobile_number = form.cleaned_data['mobile_number']
            acs_ton_items = form.cleaned_data['acs_ton_items']
            furniture_items = form.cleaned_data['furniture_items']
            glass_items = form.cleaned_data['glass_items']
            melamine_items = form.cleaned_data['melamine_items']
            mattress_items = form.cleaned_data['mattress_items']
            others_items = form.cleaned_data['others_items']
            address = form.cleaned_data['address']
            booking_date_time = form.cleaned_data['booking_date_time']
            shifting_date_time = form.cleaned_data['shifting_date_time']
            body = form.cleaned_data['booking_details']
            if formhou.is_valid():
                formhou.save()

                # Send an email
                email_subject = 'House Shifting Submission From Website'
                message = f'Name: {name}\nPhone: {mobile_number}\nAC Item: {acs_ton_items}\nFurniture: {furniture_items}\nGlass Item: {glass_items}\nMelamin Items: {melamine_items}\nMattress Item: {mattress_items}\nOther Item: {others_items}\nAddress: {address}\nBooking Date Time: {booking_date_time}\nShifting Date Time: {shifting_date_time}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('shifting-house')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = BookingFormHouse()

    # Office Booking Form Start
    formoff = BookingFormOffice()
    if request.method == 'POST':
        formoff = BookingFormOffice(request.POST)
        if formoff.is_valid():
            formoff.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
           # return redirect('shifting-house')
        else:
            print(formoff.errors)

    if request.method == 'POST':
        form = BookingFormOffice(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            mobile_number = form.cleaned_data['mobile_number']
            acs_ton_items = form.cleaned_data['acs_ton_items']
            chair_tables_items = form.cleaned_data['chair_tables_items']
            computer_items = form.cleaned_data['computer_items']
            monitor_items = form.cleaned_data['monitor_items']
            glass_items = form.cleaned_data['glass_items']
            others_items = form.cleaned_data['others_items']
            address = form.cleaned_data['address']
            booking_date_time = form.cleaned_data['booking_date_time']
            shifting_date_time = form.cleaned_data['shifting_date_time']
            body = form.cleaned_data['booking_details']
            if formoff.is_valid():
                formoff.save()

                # Send an email
                email_subject = 'Office Shifting Submission From Website'
                message = f'Name: {name}\nPhone: {mobile_number}\nAC Item: {acs_ton_items}\nChair&Table Item: {chair_tables_items}\nComputer Item: {computer_items}\nMonitor Item: {monitor_items}\nGlass Item: {glass_items}\nOther Item: {others_items}\nAddress: {address}\nBooking Date Time: {booking_date_time}\nShifting Date Time: {shifting_date_time}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('shifting-house')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = BookingFormOffice()

    # Commercial Booking Form Start..
    formcomm = BookingFormCommercial()
    if request.method == 'POST':
        formcomm = BookingFormCommercial(request.POST)
        if formcomm.is_valid():
            formcomm.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
           # return redirect('shifting-house')
        else:
            print(formoff.errors)

    if request.method == 'POST':
        form = BookingFormCommercial(request.POST)
        if form.is_valid():   # Send email 
            name = form.cleaned_data['name']
            mobile_number = form.cleaned_data['mobile_number']
            commercial_details = form.cleaned_data['commercial_details']
            address = form.cleaned_data['address']
            booking_date_time = form.cleaned_data['booking_date_time']
            shifting_date_time = form.cleaned_data['shifting_date_time']
            body = form.cleaned_data['booking_details']
            if formcomm.is_valid():
                formcomm.save()

                # Send an email
                email_subject = 'Commercial Shifting Submission From Website'
                message = f'Name: {name}\nPhone: {mobile_number}\nComercial Details: {commercial_details}\nAddress: {address}\nBooking Date Time: {booking_date_time}\nShifting Date Time: {shifting_date_time}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('shifting-house')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = BookingFormCommercial()

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    context = {
        'contactAddress': contactAddress,
        'shiftingHouse': shiftingHouse,
        'shiftingCost': shiftingCost,
        'OtherCost': OtherCost,
        'House': House,
        'Office': Office,
        'commerCial': commerCial,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'formoff': formoff,
        'formcomm': formcomm,
        'formhou': formhou,
        'contactHo': contactHo,
    } 
    return render(request, 'base/shifting-house.html', context)


# Courier Page views start here...
def courier(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    couriObj = couriers.objects.all()
    serVice = couriers_service.objects.all()
    Cost = couriers_service.objects.all()[0:4]

    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:3]

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'couriObj': couriObj,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'serVice': serVice,
        'Cost': Cost,
        'Md': Md,
    } 
    return render(request, 'base/courier.html', context)


# Security Page views start here...
def security(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    securObj = securities.objects.all().order_by('id')

    # Security Booking Form Start 
    formlab = BookingFormSecurity()
    if request.method == 'POST':
        formlab = BookingFormSecurity(request.POST)
        if formlab.is_valid():
            formlab.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('security')
        else:
            print(formlab.errors)
            
    if request.method == 'POST':
        form = BookingFormSecurity(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            mobile_number = form.cleaned_data['mobile_number']
            security_type = form.cleaned_data['security_type']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            working_datetime = form.cleaned_data['working_datetime']
            body = form.cleaned_data['booking_details']
            if formlab.is_valid():
                formlab.save()

                # Send an email
                email_subject = 'Security Submission From Website'
                message = f'Name: {name}\nPhone: {mobile_number}\nSecurity Type: {security_type}\nAddress: {address}\nBooking Date Time: {booking_datetime}\nWorking Date Time: {working_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('security')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = BookingFormSecurity()


    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'securObj': securObj,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/security.html', context)

# Labour Worker Page views start here...////////////
def havy(request, labour_id=None):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    labourDemand = labour_demand.objects.all()

    if labour_id is not None:
        labouObj = get_object_or_404(labours, id=labour_id)
        all_labour_objects = labours.objects.exclude(id=labour_id)  # Exclude the selected one
    else:
        labouObj = None  
        all_labour_objects = labours.objects.all()

    laboursType = labours_type.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:3]

    # Labour Booking Form Start
    formlab = BookingFormLabour()
    if request.method == 'POST':
        formlab = BookingFormLabour(request.POST)
        if formlab.is_valid():
            formlab.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('havy')
        else:
            print(formlab.errors)

    if request.method == 'POST':
        form = BookingFormLabour(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            mobile_number = form.cleaned_data['mobile_number']
            worker_type = form.cleaned_data['worker_type']
            working_time = form.cleaned_data['working_time']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            working_datetime = form.cleaned_data['working_datetime']
            body = form.cleaned_data['booking_details']
            if formlab.is_valid():
                formlab.save()

                # Send an email
                email_subject = 'Labour Worker Submission From Website'
                message = f'Name: {name}\nPhone: {mobile_number}\nWorker Type: {worker_type}\nWorking Time: {working_time}\nAddress: {address}\nBooking Date Time: {booking_datetime}\nWorking Date Time: {working_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('havy', labour_id=labour_id)
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = BookingFormLabour()

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'labourDemand': labourDemand,
        'labouObj': labouObj,
        'all_labour_objects': all_labour_objects,
        'laboursType': laboursType,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'formlab': formlab,
        'contactHo': contactHo,
    } 
    return render(request, 'base/havy.html', context)

# Electric-tech  Page views start here...
def electricTech(request,tec_id=None):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()

    if tec_id is not None:
        TecObj = get_object_or_404(technician, id=tec_id)
        all_tec_objects = technician.objects.exclude(id=tec_id)  # Exclude the selected one
    else:
        TecObj = None  
        all_tec_objects = technician.objects.all()

    tecType = technician_category.objects.all()
    technicianChart = technician_chart.objects.all()
    Md = md.objects.all()[:3]

    # Technical Booking Form Start
    formlab = BookingForm()
    if request.method == 'POST':
        formlab = BookingForm(request.POST)
        if formlab.is_valid():
            formlab.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('contact')
        else:
            print(formlab.errors)

    if request.method == 'POST':
        form = BookingForm(request.POST)
        if form.is_valid():   # Send email
            your_name = form.cleaned_data['your_name']
            mobile_number = form.cleaned_data['mobile_number']
            technician_type = form.cleaned_data['technician_type']
            address = form.cleaned_data['address']
            booking_date_time = form.cleaned_data['booking_date_time']
            working_date_time = form.cleaned_data['working_date_time']
            body = form.cleaned_data['booking_details']
            if formlab.is_valid():
                formlab.save()

                email_subject = 'Electric Technician Submission From Website'
                message = f'Name: {your_name}\nPhone: {mobile_number}\nTechnician Type: {technician_type}\nAddress: {address}\nBooking Date Time: {booking_date_time}\nWorking Date Time: {working_date_time}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('electric-tech', tec_id=tec_id)
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = BookingForm()


    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'all_labour_objects':all_labour_objects,
        'TecObj': TecObj,
        'all_tec_objects': all_tec_objects,
        'tecType': tecType,
        'technicianChart': technicianChart,
        'Md':Md,
        'formlab': formlab,
        'contactHo': contactHo,
    } 
    return render(request, 'base/electric-tech.html', context)


# Agricul Worker Page views start here...////////////
def agriculWorker(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/agricul-worker.html', context)


# Cleanwrw  Page views start here...
def cleanErw(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/cleaner-w.html', context)

# Construction-w  Page views start here...
def construCtionw(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/construction-w.html', context)


# LoadAll Page views start here...
def loadAll(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/load-all.html', context)

# Others-w Page views start here...
def otherSw(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    

    context = {
       'contactAddress': contactAddress,
    } 
    return render(request, 'base/others-w.html', context)

# Auto Mobile  Page views start here.../////////////
def autoMobile(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    

    context = {
        'contactAddress' : contactAddress,
    } 
    return render(request, 'base/auto-mobile.html', context)


# Furniture-tech  Page views start here...
def furnitureTech(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/furniture-tech.html', context)

# plumbing Page views start here...
def plumbing(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/plumbing.html', context)

# Printing Tech Page views start here...
def printingTech(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/printing-tech.html', context)

# Raping-packing Page views start here...
def rapingPacking(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/raping-packing.html', context)

# Thai-glass Page views start here...
def thaiGlass(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/thai-glass.html', context)

# Tiles-fittinf Page views start here...
def tilesFittinf(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()

    context = {
        'contactAddress': contactAddress,
    } 
    return render(request, 'base/tiles-fittinf.html', context)



# .................Branch Page views start here...................
def branch(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    dhakaCity = branch_dhaka_city.objects.all()
    branchDhaka = branch_dhaka.objects.all()
    chittagongCity = branch_chittagong_city.objects.all()
    branchChittagong = branch_chittagong.objects.all()
    branchMymensingh = branch_mymensingh.objects.all()
    branchKhulna = branch_khulna.objects.all()
    branchRajshahi = branch_rajshahi.objects.all()
    branchRangpur = branch_rangpur.objects.all()
    branchSylhet = branch_sylhet.objects.all()
    branchBarisal = branch_barisal.objects.all()

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    
    context = {
        'contactAddress': contactAddress,
        'dhakaCity': dhakaCity,
        'branchDhaka': branchDhaka,
        'chittagongCity': chittagongCity,
        'branchChittagong': branchChittagong,
        'branchMymensingh': branchMymensingh,
        'branchKhulna': branchKhulna,
        'branchRajshahi': branchRajshahi,
        'branchRangpur': branchRangpur,
        'branchSylhet': branchSylhet,
        'branchBarisal': branchBarisal,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/branch.html', context)

# Notice Page views start here...
def notice(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    noticeTitle = notice_description.objects.all()
    jobCircular = notice_job_circular.objects.all().order_by('-id')

    # Handle search query
    search_query = request.GET.get('s')
    if search_query:
        jobCircular = notice_job_circular.objects.filter(
            Q(job_title__icontains=search_query) |
            Q(date__icontains=search_query) |
            Q(descriptions__icontains=search_query) |
            Q(interview_date__icontains=search_query) 
        ).order_by('-id')
    else:
        jobCircular = notice_job_circular.objects.all().order_by('-id')

    blogSit = blogs.objects.all().order_by('-id')[:6]
    popularCatat = blog_popular_tags.objects.all().order_by('id')[:6]

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'noticeTitle': noticeTitle,
        'jobCircular': jobCircular,
        'blogSit': blogSit,
        'popularCatat': popularCatat,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/notice.html', context)

# Job Page views start here...
def jobdetail(request, job_id):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:4]

    noticeTitle = notice_description.objects.all()
    jobCircular = notice_job_circular.objects.all()
    
    jobCircular = get_object_or_404(notice_job_circular, id=job_id)

    blogSit = blogs.objects.all().order_by('-id')[:6]
    popularCatat = blog_popular_tags.objects.all().order_by('id')[:6]

    # Job Contact Form Booking Start
    contactfo = ContactForm()
    if request.method == 'POST':
        contactfo = ContactForm(request.POST)
        if contactfo.is_valid():
            contactfo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('job-details', job_id=job_id)
        else:
            print(contactfo.errors)

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            phone = form.cleaned_data['phone']
            subject = form.cleaned_data['subject']
            body = form.cleaned_data['messages']
            if contactfo.is_valid():
                contactfo.save()

                # Send an email
                email_subject = 'Job Circular Submission From Website'
                message = f'Name: {name}\nEmail: {email}\nPhone: {phone}\nSubject: {subject}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('job-details', job_id=job_id)
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = ContactForm()

    
    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()


    context = {
        'contactAddress': contactAddress,
        'contactfo': contactfo,
        'noticeTitle': noticeTitle,
        'jobCircular': jobCircular,
        'blogSit': blogSit,
        'popularCatat': popularCatat,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/job-details.html', context)

# Contact Page views start here...
def contact(request):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    contactName = Contact_Us.objects.all()
    Md = md.objects.all()[:3]

    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()

    # Contact Form Booking Statrt
    contactfo = ContactForm()
    if request.method == 'POST':
        contactfo = ContactForm(request.POST)
        if contactfo.is_valid():
            contactfo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('contact')
        else:
            print(contactfo.errors)

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():   # Send email
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            phone = form.cleaned_data['phone']
            subject = form.cleaned_data['subject']
            body = form.cleaned_data['messages']
            if contactfo.is_valid():
                contactfo.save()

                # Send an email
                email_subject = 'Contact Submission From Website'
                message = f'Name: {name}\nEmail: {email}\nPhone: {phone}\nSubject: {subject}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('contact')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))

    else:
         form = ContactForm()


    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('contact')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    context = {
       'contactAddress':contactAddress,
       'contactfo': contactfo,
       'contactName': contactName,
       'all_labour_objects': all_labour_objects,
       'all_tec_objects': all_tec_objects,
       'Md': Md,
       'contactHo': contactHo,
    } 
    return render(request, 'base/contact.html', context)

# Md Page views start here...
def mdMessage(request,md_id):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:3]
    
    mdObj = get_object_or_404(md, id=md_id)

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    
    context = {
        'contactAddress': contactAddress,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'mdObj': mdObj,
        'contactHo': contactHo,
    } 
    return render(request, 'base/md.html', context)


# custom 404 view
def custom_404(request, exception):
    contactAddress = contact_address.objects.all().order_by('-last_updated').first()
    all_labour_objects = labours.objects.all()
    all_tec_objects = technician.objects.all()
    Md = md.objects.all()[:3]
 

    # Home Header Form Booking Start
    contactHo = HomeForm()
    if request.method == 'POST':
        contactHo = HomeForm(request.POST)
        if contactHo.is_valid():
            contactHo.save()
            print(messages.success(request, "Thanks ! We received your message and will respond shortly."))
            #return redirect('home')
        else:
            print(contactHo.errors)

    if request.method == 'POST':
        form = HomeForm(request.POST)
        if form.is_valid():   # Send email
            company_name = form.cleaned_data['company_name']
            your_name = form.cleaned_data['your_name']
            mobile = form.cleaned_data['mobile']
            email_id = form.cleaned_data['email_id']
            address = form.cleaned_data['address']
            booking_datetime = form.cleaned_data['booking_datetime']
            shifting_datetime = form.cleaned_data['shifting_datetime']
            body = form.cleaned_data['booking_details']
            if contactHo.is_valid():
                contactHo.save()

                # Send an email
                email_subject = 'Home Page Submission From Website'
                message = f'Company Name: {company_name}\nName: {your_name}\nMobile: {mobile}\nEmail Id: {email_id}\nAddress: {address}\nBooking DateTime: {booking_datetime}\nShifting DateTime: {shifting_datetime}\n\nMessage:\n{body}'
                from_email = 'shiftingbdoffice@gmail.com'  # Replace with your email
                recipient_list = ['shiftingbdoffice@gmail.com']  # Replace with your recipient's email

                send_mail(email_subject, message, from_email, recipient_list, fail_silently=False)
                return redirect('success')
                
            else:
                print(messages.error(request, "Contact Messages Send Not Success."))
    else:
         form = HomeForm()

    
    context = {
        'contactAddress': contactAddress,
        'all_labour_objects': all_labour_objects,
        'all_tec_objects': all_tec_objects,
        'Md': Md,
        'contactHo': contactHo,
    } 
    return render(request, 'base/error404.html', context, status=404)

