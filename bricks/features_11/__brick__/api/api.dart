
class BookingProvider extends GetConnect {
 

  Future<ApiReturn> getCustomerConcern() async {
    String url = ApiUrls.getcustomerConcernUrl(url: 'service/customerConcern');
    coustom_print(message: url);
    return HttpService.get(url);
  }

   Future<ApiReturn> bookAnAppointment(Map<String, dynamic> rawData,) async {
    String url = ApiUrls.bookAnAppointment(url: 'service/inquiry',);
    coustom_print(message: url);
    return HttpService.rawPost(url,rawData:rawData,headers: {
      'access_token': getTokenBox()?.authToken ?? '',
      'Content-Type': 'application/json'
    } );
  }
}
