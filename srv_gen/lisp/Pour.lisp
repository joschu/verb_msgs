; Auto-generated. Do not edit!


(cl:in-package verb_msgs-srv)


;//! \htmlinclude Pour-request.msg.html

(cl:defclass <Pour-request> (roslisp-msg-protocol:ros-message)
  ((object_clouds
    :reader object_clouds
    :initarg :object_clouds
    :type (cl:vector sensor_msgs-msg:PointCloud2)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:PointCloud2 :initial-element (cl:make-instance 'sensor_msgs-msg:PointCloud2))))
)

(cl:defclass Pour-request (<Pour-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pour-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pour-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name verb_msgs-srv:<Pour-request> is deprecated: use verb_msgs-srv:Pour-request instead.")))

(cl:ensure-generic-function 'object_clouds-val :lambda-list '(m))
(cl:defmethod object_clouds-val ((m <Pour-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader verb_msgs-srv:object_clouds-val is deprecated.  Use verb_msgs-srv:object_clouds instead.")
  (object_clouds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pour-request>) ostream)
  "Serializes a message object of type '<Pour-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_clouds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_clouds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pour-request>) istream)
  "Deserializes a message object of type '<Pour-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_clouds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_clouds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:PointCloud2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pour-request>)))
  "Returns string type for a service object of type '<Pour-request>"
  "verb_msgs/PourRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pour-request)))
  "Returns string type for a service object of type 'Pour-request"
  "verb_msgs/PourRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pour-request>)))
  "Returns md5sum for a message object of type '<Pour-request>"
  "cce057bdbc2bddff02e4e9bc43e56930")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pour-request)))
  "Returns md5sum for a message object of type 'Pour-request"
  "cce057bdbc2bddff02e4e9bc43e56930")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pour-request>)))
  "Returns full string definition for message of type '<Pour-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2[] object_clouds~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pour-request)))
  "Returns full string definition for message of type 'Pour-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2[] object_clouds~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pour-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_clouds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pour-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Pour-request
    (cl:cons ':object_clouds (object_clouds msg))
))
;//! \htmlinclude Pour-response.msg.html

(cl:defclass <Pour-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Pour-response (<Pour-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pour-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pour-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name verb_msgs-srv:<Pour-response> is deprecated: use verb_msgs-srv:Pour-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Pour-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader verb_msgs-srv:success-val is deprecated.  Use verb_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pour-response>) ostream)
  "Serializes a message object of type '<Pour-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pour-response>) istream)
  "Deserializes a message object of type '<Pour-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pour-response>)))
  "Returns string type for a service object of type '<Pour-response>"
  "verb_msgs/PourResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pour-response)))
  "Returns string type for a service object of type 'Pour-response"
  "verb_msgs/PourResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pour-response>)))
  "Returns md5sum for a message object of type '<Pour-response>"
  "cce057bdbc2bddff02e4e9bc43e56930")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pour-response)))
  "Returns md5sum for a message object of type 'Pour-response"
  "cce057bdbc2bddff02e4e9bc43e56930")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pour-response>)))
  "Returns full string definition for message of type '<Pour-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pour-response)))
  "Returns full string definition for message of type 'Pour-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pour-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pour-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Pour-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Pour)))
  'Pour-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Pour)))
  'Pour-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pour)))
  "Returns string type for a service object of type '<Pour>"
  "verb_msgs/Pour")