import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evreka_case/models/container_model/container_model.dart';
import 'package:evreka_case/repositories/container_repository/repository/container_repository.dart';
import 'package:evreka_case/repositories/container_repository/type/container_repository_interface.dart';
import 'package:evreka_case/services/container_service/type/container_service_interface.dart';

class ContainerService implements IContainerService {

  @override
  IContainerRepository containerRepository = ContainerRepository();

  @override
  Future<List<ContainerModel>> getContainers()  async{
    try {
      QuerySnapshot<Map<String, dynamic>> response = await containerRepository.getContainers();

      return response.docs.map((element) => ContainerModel.fromJson(element.data())).toList();
    } on Exception catch (_) {
      rethrow;
    }
  }
}