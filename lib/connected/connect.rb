module Connected

  # class Foo
  #   extend Connected::Connect
  # end
  module Connect
    def connect(configuration)
      # TODO allow sensible defaults?
      # TODO class variable working?
      @connection_type = configuration[:as]
      @endpoint = configuration[:to]

      attr_reader :context, :socket

      # TODO include modules depending on @connection_type
      include InstanceMethods
    end

    module InstanceMethods
      def send_message(message)
        socket.send_string(message)
      end
      # TODO alias as publish in pub module

      def receive_message
        # TODO why empty string?
        socket.recv_string('')
      end

      def socket
        @socket ||= context.socket(ZMQ::REP)
      end

      def context
        @context ||= ZMQ::Context.new(1)
      end
    end
  end
end
