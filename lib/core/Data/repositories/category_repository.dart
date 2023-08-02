

// class CategoryRepository {
//   Future<Either<String, List<CategoryModel>>> getAll() async {
//     try {
//       return NetworkUtil.sendRequest(
//         type: RequestType.GET,
//         url: CategoryEndPoints.getAll,
//         headers:
//             NetworkConfig.getHeaders(needAuth: false, type: RequestType.GET),
//       ).then((response) {
//         CommonResponse<List<dynamic>> commonResponse =
//             CommonResponse.fromJson(response);
//         if (commonResponse.getStatus) {
//           List<CategoryModel> resultList = [];
//           commonResponse.data!.forEach((element) {
//             resultList.add(CategoryModel.fromJson(element));
//           });
//           return Right(resultList);
//         } else {
//           return Left(commonResponse.message ?? '');
//         }
//       });
//     } catch (e) {
//       return Left(e.toString());
//     }
//   }
// }
