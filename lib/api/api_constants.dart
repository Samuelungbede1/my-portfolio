


const popularMovies = "popular";

apiResponse(String? message, [String? responseCode]) {
  return {
    "status": false,
    "message": message ?? "An error occurred please try again",
    "responseCode": responseCode ?? "000"
  };
}
