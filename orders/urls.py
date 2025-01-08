from django.urls import path
from . import views

urlpatterns = [
    path('place_order/', views.place_order, name='place_order'),
    path('stripe_payments/', views.stripe_payments, name='stripe_payments'),
    path('order_complete/', views.order_complete, name='order_complete'),
]
