; Auto-generated. Do not edit!


(cl:in-package verb_msgs-srv)


;//! \htmlinclude Push-request.msg.html

(cl:defclass <Push-request> (roslisp-msg-protocol:ros-message)
  ((point_cloud
    :reader point_cloud
    :initarg :point_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass Push-request (<Push-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Push-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Push-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name verb_msgs-srv:<Push-request> is deprecated: use verb_msgs-srv:Push-request instead.")))

(cl:ensure-generic-function 'point_cloud-val :lambda-list '(m))
(cl:defmethod point_cloud-val ((m <Push-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader verb_msgs-srv:point_cloud-val is deprecated.  Use verb_msgs-srv:point_cloud instead.")
  (point_cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Push-request>) ostream)
  "Serializes a message object of type '<Push-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Push-request>) istream)
  "Deserializes a message object of type '<Push-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Push-request>)))
  "Returns string type for a service object of type '<Push-request>"
  "verb_msgs/PushRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Push-request)))
  "Returns string type for a service object of type 'Push-request"
  "verb_msgs/PushRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Push-request>)))
  "Returns md5sum for a message object of type '<Push-request>"
  "d8a44488cb0d26162ce3bf52b99ef2dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Push-request)))
  "Returns md5sum for a message object of type 'Push-request"
  "d8a44488cb0d26162ce3bf52b99ef2dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Push-request>)))
  "Returns full string definition for message of type '<Push-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 point_cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Push-request)))
  "Returns full string definition for message of type 'Push-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 point_cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Push-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Push-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Push-request
    (cl:cons ':point_cloud (point_cloud msg))
))
;//! \htmlinclude Push-response.msg.html

(cl:defclass <Push-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Push-response (<Push-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Push-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Push-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name verb_msgs-srv:<Push-response> is deprecated: use verb_msgs-srv:Push-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Push-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader verb_msgs-srv:success-val is deprecated.  Use verb_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Push-response>) ostream)
  "Serializes a message object of type '<Push-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Push-response>) istream)
  "Deserializes a message object of type '<Push-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Push-response>)))
  "Returns string type for a service object of type '<Push-response>"
  "verb_msgs/PushResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Push-response)))
  "Returns string type for a service object of type 'Push-response"
  "verb_msgs/PushResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Push-response>)))
  "Returns md5sum for a message object of type '<Push-response>"
  "d8a44488cb0d26162ce3bf52b99ef2dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Push-response)))
  "Returns md5sum for a message object of type 'Push-response"
  "d8a44488cb0d26162ce3bf52b99ef2dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Push-response>)))
  "Returns full string definition for message of type '<Push-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Push-response)))
  "Returns full string definition for message of type 'Push-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Push-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Push-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Push-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Push)))
  'Push-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Push)))
  'Push-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Push)))
  "Returns string type for a service object of type '<Push>"
  "verb_msgs/Push")