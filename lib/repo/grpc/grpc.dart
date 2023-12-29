


import 'package:grpc/grpc.dart';

ClientChannel newGrpc(
{required String host,required int port,required bool tls}
    ){
  late ChannelCredentials credentials;
  if(tls){
    credentials = const ChannelCredentials.secure();
  }else{
    credentials = const ChannelCredentials.insecure();
  }
  final channel = ClientChannel(
    host,
    port: port,
    options: ChannelOptions(
      credentials: credentials,
    )
  );
  return channel;
}