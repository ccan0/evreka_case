import 'package:evreka_case/models/container_model/container_model.dart';
import 'package:evreka_case/repositories/container_repository/type/container_repository_interface.dart';

abstract class IContainerService {
  abstract IContainerRepository containerRepository;

  Future<List<ContainerModel>> getContainers();
}