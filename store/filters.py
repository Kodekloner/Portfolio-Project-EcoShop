from ast import keyword
from django_filters import rest_framework as filters
from .models import Product

class ProductsFilter(filters.FilterSet):

    keyword = filters.CharFilter(field_name="product_name", lookup_expr="icontains")
    min_price = filters.NumberFilter(field_name="price" or 0, lookup_expr="gte")
    max_price = filters.NumberFilter(field_name="price" or 1000000, lookup_expr="lte")
    category = filters.CharFilter(field_name="category__category_name", lookup_expr="icontains")

    class Meta:
        model = Product
        fields = ('keyword', 'category', 'min_price', 'max_price')