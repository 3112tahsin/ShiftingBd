
from django.urls import path
from shifting import views

urlpatterns = [
    path('', views.home, name="home"),
    path('login/', views.login, name="login"),
    path('success/', views.success, name="success"),
    path('subscribs/', views.subscribs, name="subscribs"),
    
    path('about/', views.about, name="about"),
    path('team/', views.team, name="team"),
    path('blog/', views.blog, name="blog"),
    path('blog-single/<int:blog_id>/', views.blogSingle, name="blog-single"),
    path('faq/', views.faq, name="faq"),
    path('testimonial/', views.testimonial, name="testimonial"),
    path('portfolio/', views.portfolio, name="portfolio"),


    path('truck/', views.truck, name="truck"),
    path('truck_details/', views.truckDetails, name="truck_details"),
    path('shifting-house/', views.shiftingHouse, name="shifting-house"), 
    path('courier/', views.courier, name="courier"),
    path('security/', views.security, name="security"),

    path('agricul-worker/', views.agriculWorker, name="agricul-worker"),
    path('cleaner-w/', views.cleanErw, name="cleaner-w"),
    path('construction-w/', views.construCtionw, name="construction-w"),
    path('havy/<int:labour_id>/', views.havy, name="havy"),
    path('load-all/', views.loadAll, name="load-all"),
    path('others-w/', views.otherSw, name="others-w"),

    path('auto-mobile/', views.autoMobile, name="auto-mobile"),
    path('electric-tech/<int:tec_id>/', views.electricTech, name="electric-tech"),
    path('furniture-tech/', views.furnitureTech, name="furniture-tech"),
    path('plumbing/', views.plumbing, name="plumbing"),
    path('printing-tech/', views.printingTech, name="printing-tech"),
    path('raping-packing/', views.rapingPacking, name="raping-packing"),
    path('thai-glass/', views.thaiGlass, name="thai-glass"),
    path('tiles-fittinf/', views.tilesFittinf, name="tiles-fittinf"),


    path('branch/', views.branch, name="branch"),
    path('notice/', views.notice, name="notice"),
    path('job-details/<int:job_id>/', views.jobdetail, name="job-details"),
    path('contact/', views.contact, name="contact"),
    path('md/<int:md_id>/', views.mdMessage, name="md"),
]

