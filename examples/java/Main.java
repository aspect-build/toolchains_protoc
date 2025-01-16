import com.google.protobuf.InvalidProtocolBufferException;
import static proto.GreeterOuterClass.HelloReply;

public class Main {
  public static void main(String[] args) throws InvalidProtocolBufferException {
    System.out.println(makeMessage("Hello World!"));
  }

  public static HelloReply makeMessage(String msg) {
    HelloReply.Builder response = HelloReply.newBuilder();
    response.setMessage(msg);
    return response.build();
  }
}
