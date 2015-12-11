; Auto-generated. Do not edit!


(cl:in-package uart_lib-msg)


;//! \htmlinclude usr_message.msg.html

(cl:defclass <usr_message> (roslisp-msg-protocol:ros-message)
  ((rfid_mgs
    :reader rfid_mgs
    :initarg :rfid_mgs
    :type std_msgs-msg:UInt8MultiArray
    :initform (cl:make-instance 'std_msgs-msg:UInt8MultiArray)))
)

(cl:defclass usr_message (<usr_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <usr_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'usr_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uart_lib-msg:<usr_message> is deprecated: use uart_lib-msg:usr_message instead.")))

(cl:ensure-generic-function 'rfid_mgs-val :lambda-list '(m))
(cl:defmethod rfid_mgs-val ((m <usr_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uart_lib-msg:rfid_mgs-val is deprecated.  Use uart_lib-msg:rfid_mgs instead.")
  (rfid_mgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <usr_message>) ostream)
  "Serializes a message object of type '<usr_message>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rfid_mgs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <usr_message>) istream)
  "Deserializes a message object of type '<usr_message>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rfid_mgs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<usr_message>)))
  "Returns string type for a message object of type '<usr_message>"
  "uart_lib/usr_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'usr_message)))
  "Returns string type for a message object of type 'usr_message"
  "uart_lib/usr_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<usr_message>)))
  "Returns md5sum for a message object of type '<usr_message>"
  "390e8dfdd8fdc4523e51bc8a3dbc8d7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'usr_message)))
  "Returns md5sum for a message object of type 'usr_message"
  "390e8dfdd8fdc4523e51bc8a3dbc8d7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<usr_message>)))
  "Returns full string definition for message of type '<usr_message>"
  (cl:format cl:nil "std_msgs/UInt8MultiArray rfid_mgs~%~%================================================================================~%MSG: std_msgs/UInt8MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%uint8[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'usr_message)))
  "Returns full string definition for message of type 'usr_message"
  (cl:format cl:nil "std_msgs/UInt8MultiArray rfid_mgs~%~%================================================================================~%MSG: std_msgs/UInt8MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%uint8[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <usr_message>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rfid_mgs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <usr_message>))
  "Converts a ROS message object to a list"
  (cl:list 'usr_message
    (cl:cons ':rfid_mgs (rfid_mgs msg))
))
