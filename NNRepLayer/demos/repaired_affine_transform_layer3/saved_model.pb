¹
Ñ¢
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68¿°
v
layer0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namelayer0/kernel
o
!layer0/kernel/Read/ReadVariableOpReadVariableOplayer0/kernel*
_output_shapes

:*
dtype0
n
layer0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer0/bias
g
layer0/bias/Read/ReadVariableOpReadVariableOplayer0/bias*
_output_shapes
:*
dtype0
v
layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namelayer1/kernel
o
!layer1/kernel/Read/ReadVariableOpReadVariableOplayer1/kernel*
_output_shapes

:
*
dtype0
n
layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namelayer1/bias
g
layer1/bias/Read/ReadVariableOpReadVariableOplayer1/bias*
_output_shapes
:
*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:
*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0

NoOpNoOp
Ò
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bù
²
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
,
$0
%1
&2
'3
(4
)5* 
°
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

/serving_default* 
]W
VARIABLE_VALUElayer0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*

$0
%1* 

0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUElayer1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*

&0
'1* 

5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*

(0
)1* 

:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1
2*
* 
* 
* 
* 
* 
* 
* 

$0
%1* 
* 
* 
* 
* 

&0
'1* 
* 
* 
* 
* 

(0
)1* 
* 

serving_default_layer0_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_layer0_inputlayer0/kernellayer0/biaslayer1/kernellayer1/biasoutput/kerneloutput/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*4
config_proto$"

CPU

GPU2	 *0,1J 8 *+
f&R$
"__inference_signature_wrapper_3117
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ò
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer0/kernel/Read/ReadVariableOplayer0/bias/Read/ReadVariableOp!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8 *&
f!R
__inference__traced_save_3355
õ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer0/kernellayer0/biaslayer1/kernellayer1/biasoutput/kerneloutput/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8 *)
f$R"
 __inference__traced_restore_3383­
Á

%__inference_output_layer_call_fn_3226

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_2604o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Á

%__inference_layer0_layer_call_fn_3138

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_2547o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
Æ
__inference__wrapped_model_2517
layer0_input@
.layer_nn_layer0_matmul_readvariableop_resource:=
/layer_nn_layer0_biasadd_readvariableop_resource:@
.layer_nn_layer1_matmul_readvariableop_resource:
=
/layer_nn_layer1_biasadd_readvariableop_resource:
@
.layer_nn_output_matmul_readvariableop_resource:
=
/layer_nn_output_biasadd_readvariableop_resource:
identity¢(3_layer_NN/layer0/BiasAdd/ReadVariableOp¢'3_layer_NN/layer0/MatMul/ReadVariableOp¢(3_layer_NN/layer1/BiasAdd/ReadVariableOp¢'3_layer_NN/layer1/MatMul/ReadVariableOp¢(3_layer_NN/output/BiasAdd/ReadVariableOp¢'3_layer_NN/output/MatMul/ReadVariableOp
'3_layer_NN/layer0/MatMul/ReadVariableOpReadVariableOp.layer_nn_layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
3_layer_NN/layer0/MatMulMatMullayer0_input/3_layer_NN/layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(3_layer_NN/layer0/BiasAdd/ReadVariableOpReadVariableOp/layer_nn_layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
3_layer_NN/layer0/BiasAddBiasAdd"3_layer_NN/layer0/MatMul:product:003_layer_NN/layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
3_layer_NN/layer0/ReluRelu"3_layer_NN/layer0/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'3_layer_NN/layer1/MatMul/ReadVariableOpReadVariableOp.layer_nn_layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0«
3_layer_NN/layer1/MatMulMatMul$3_layer_NN/layer0/Relu:activations:0/3_layer_NN/layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

(3_layer_NN/layer1/BiasAdd/ReadVariableOpReadVariableOp/layer_nn_layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0¬
3_layer_NN/layer1/BiasAddBiasAdd"3_layer_NN/layer1/MatMul:product:003_layer_NN/layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
t
3_layer_NN/layer1/ReluRelu"3_layer_NN/layer1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

'3_layer_NN/output/MatMul/ReadVariableOpReadVariableOp.layer_nn_output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0«
3_layer_NN/output/MatMulMatMul$3_layer_NN/layer1/Relu:activations:0/3_layer_NN/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(3_layer_NN/output/BiasAdd/ReadVariableOpReadVariableOp/layer_nn_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
3_layer_NN/output/BiasAddBiasAdd"3_layer_NN/output/MatMul:product:003_layer_NN/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentity"3_layer_NN/output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
NoOpNoOp)^3_layer_NN/layer0/BiasAdd/ReadVariableOp(^3_layer_NN/layer0/MatMul/ReadVariableOp)^3_layer_NN/layer1/BiasAdd/ReadVariableOp(^3_layer_NN/layer1/MatMul/ReadVariableOp)^3_layer_NN/output/BiasAdd/ReadVariableOp(^3_layer_NN/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2T
(3_layer_NN/layer0/BiasAdd/ReadVariableOp(3_layer_NN/layer0/BiasAdd/ReadVariableOp2R
'3_layer_NN/layer0/MatMul/ReadVariableOp'3_layer_NN/layer0/MatMul/ReadVariableOp2T
(3_layer_NN/layer1/BiasAdd/ReadVariableOp(3_layer_NN/layer1/BiasAdd/ReadVariableOp2R
'3_layer_NN/layer1/MatMul/ReadVariableOp'3_layer_NN/layer1/MatMul/ReadVariableOp2T
(3_layer_NN/output/BiasAdd/ReadVariableOp(3_layer_NN/output/BiasAdd/ReadVariableOp2R
'3_layer_NN/output/MatMul/ReadVariableOp'3_layer_NN/output/MatMul/ReadVariableOp:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namelayer0_input
â>

D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2766

inputs
layer0_2714:
layer0_2716:
layer1_2719:

layer1_2721:

output_2724:

output_2726:
identity¢layer0/StatefulPartitionedCall¢-layer0/bias/Regularizer/Square/ReadVariableOp¢/layer0/kernel/Regularizer/Square/ReadVariableOp¢layer1/StatefulPartitionedCall¢-layer1/bias/Regularizer/Square/ReadVariableOp¢/layer1/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCall¢-output/bias/Regularizer/Square/ReadVariableOp¢/output/kernel/Regularizer/Square/ReadVariableOpé
layer0/StatefulPartitionedCallStatefulPartitionedCallinputslayer0_2714layer0_2716*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_2547
layer1/StatefulPartitionedCallStatefulPartitionedCall'layer0/StatefulPartitionedCall:output:0layer1_2719layer1_2721*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_2576
output/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0output_2724output_2726*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_2604{
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer0_2714*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer0_2716*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer1_2719*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer1_2721*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2724*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2726*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp^layer0/StatefulPartitionedCall.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
layer0/StatefulPartitionedCalllayer0/StatefulPartitionedCall2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú

£
__inference_loss_fn_5_3314D
6output_bias_regularizer_square_readvariableop_resource:
identity¢-output/bias/Regularizer/Square/ReadVariableOp 
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOp6output_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentityoutput/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^output/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp
Á

%__inference_layer1_layer_call_fn_3182

inputs
unknown:

	unknown_0:

identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_2576o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
I

D__inference_3_layer_NN_layer_call_and_return_conditional_losses_3038

inputs7
%layer0_matmul_readvariableop_resource:4
&layer0_biasadd_readvariableop_resource:7
%layer1_matmul_readvariableop_resource:
4
&layer1_biasadd_readvariableop_resource:
7
%output_matmul_readvariableop_resource:
4
&output_biasadd_readvariableop_resource:
identity¢layer0/BiasAdd/ReadVariableOp¢layer0/MatMul/ReadVariableOp¢-layer0/bias/Regularizer/Square/ReadVariableOp¢/layer0/kernel/Regularizer/Square/ReadVariableOp¢layer1/BiasAdd/ReadVariableOp¢layer1/MatMul/ReadVariableOp¢-layer1/bias/Regularizer/Square/ReadVariableOp¢/layer1/kernel/Regularizer/Square/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOp¢-output/bias/Regularizer/Square/ReadVariableOp¢/output/kernel/Regularizer/Square/ReadVariableOp
layer0/MatMul/ReadVariableOpReadVariableOp%layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype0w
layer0/MatMulMatMulinputs$layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer0/BiasAdd/ReadVariableOpReadVariableOp&layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer0/BiasAddBiasAddlayer0/MatMul:product:0%layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
layer0/ReluRelulayer0/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
layer1/MatMulMatMullayer0/Relu:activations:0$layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
^
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
output/MatMulMatMullayer1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOp&layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityoutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
NoOpNoOp^layer0/BiasAdd/ReadVariableOp^layer0/MatMul/ReadVariableOp.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2>
layer0/BiasAdd/ReadVariableOplayer0/BiasAdd/ReadVariableOp2<
layer0/MatMul/ReadVariableOplayer0/MatMul/ReadVariableOp2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/MatMul/ReadVariableOplayer1/MatMul/ReadVariableOp2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

)__inference_3_layer_NN_layer_call_fn_2662
layer0_input
unknown:
	unknown_0:
	unknown_1:

	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllayer0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*4
config_proto$"

CPU

GPU2	 *0,1J 8 *M
fHRF
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2647o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namelayer0_input
I

D__inference_3_layer_NN_layer_call_and_return_conditional_losses_3098

inputs7
%layer0_matmul_readvariableop_resource:4
&layer0_biasadd_readvariableop_resource:7
%layer1_matmul_readvariableop_resource:
4
&layer1_biasadd_readvariableop_resource:
7
%output_matmul_readvariableop_resource:
4
&output_biasadd_readvariableop_resource:
identity¢layer0/BiasAdd/ReadVariableOp¢layer0/MatMul/ReadVariableOp¢-layer0/bias/Regularizer/Square/ReadVariableOp¢/layer0/kernel/Regularizer/Square/ReadVariableOp¢layer1/BiasAdd/ReadVariableOp¢layer1/MatMul/ReadVariableOp¢-layer1/bias/Regularizer/Square/ReadVariableOp¢/layer1/kernel/Regularizer/Square/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOp¢-output/bias/Regularizer/Square/ReadVariableOp¢/output/kernel/Regularizer/Square/ReadVariableOp
layer0/MatMul/ReadVariableOpReadVariableOp%layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype0w
layer0/MatMulMatMulinputs$layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer0/BiasAdd/ReadVariableOpReadVariableOp&layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer0/BiasAddBiasAddlayer0/MatMul:product:0%layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
layer0/ReluRelulayer0/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
layer1/MatMulMatMullayer0/Relu:activations:0$layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
^
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
output/MatMulMatMullayer1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOp&layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityoutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
NoOpNoOp^layer0/BiasAdd/ReadVariableOp^layer0/MatMul/ReadVariableOp.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2>
layer0/BiasAdd/ReadVariableOplayer0/BiasAdd/ReadVariableOp2<
layer0/MatMul/ReadVariableOplayer0/MatMul/ReadVariableOp2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/MatMul/ReadVariableOplayer1/MatMul/ReadVariableOp2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô>
 
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2908
layer0_input
layer0_2856:
layer0_2858:
layer1_2861:

layer1_2863:

output_2866:

output_2868:
identity¢layer0/StatefulPartitionedCall¢-layer0/bias/Regularizer/Square/ReadVariableOp¢/layer0/kernel/Regularizer/Square/ReadVariableOp¢layer1/StatefulPartitionedCall¢-layer1/bias/Regularizer/Square/ReadVariableOp¢/layer1/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCall¢-output/bias/Regularizer/Square/ReadVariableOp¢/output/kernel/Regularizer/Square/ReadVariableOpï
layer0/StatefulPartitionedCallStatefulPartitionedCalllayer0_inputlayer0_2856layer0_2858*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_2547
layer1/StatefulPartitionedCallStatefulPartitionedCall'layer0/StatefulPartitionedCall:output:0layer1_2861layer1_2863*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_2576
output/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0output_2866output_2868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_2604{
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer0_2856*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer0_2858*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer1_2861*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer1_2863*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2866*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2868*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp^layer0/StatefulPartitionedCall.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
layer0/StatefulPartitionedCalllayer0/StatefulPartitionedCall2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namelayer0_input
Ú

£
__inference_loss_fn_1_3270D
6layer0_bias_regularizer_square_readvariableop_resource:
identity¢-layer0/bias/Regularizer/Square/ReadVariableOp 
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOp6layer0_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentitylayer0/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^layer0/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp
Ú

£
__inference_loss_fn_3_3292D
6layer1_bias_regularizer_square_readvariableop_resource:

identity¢-layer1/bias/Regularizer/Square/ReadVariableOp 
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOp6layer1_bias_regularizer_square_readvariableop_resource*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentitylayer1/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^layer1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp
×

"__inference_signature_wrapper_3117
layer0_input
unknown:
	unknown_0:
	unknown_1:

	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCalllayer0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*4
config_proto$"

CPU

GPU2	 *0,1J 8 *(
f#R!
__inference__wrapped_model_2517o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namelayer0_input
Ð
Ó
@__inference_layer0_layer_call_and_return_conditional_losses_2547

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-layer0/bias/Regularizer/Square/ReadVariableOp¢/layer0/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

«
__inference_loss_fn_2_3281J
8layer1_kernel_regularizer_square_readvariableop_resource:

identity¢/layer1/kernel/Regularizer/Square/ReadVariableOp¨
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8layer1_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!layer1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp
ü
Ó
@__inference_output_layer_call_and_return_conditional_losses_2604

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-output/bias/Regularizer/Square/ReadVariableOp¢/output/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
	

)__inference_3_layer_NN_layer_call_fn_2798
layer0_input
unknown:
	unknown_0:
	unknown_1:

	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllayer0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*4
config_proto$"

CPU

GPU2	 *0,1J 8 *M
fHRF
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namelayer0_input
Ð
Ó
@__inference_layer1_layer_call_and_return_conditional_losses_3205

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-layer1/bias/Regularizer/Square/ReadVariableOp¢/layer1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ù
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
Ó
@__inference_output_layer_call_and_return_conditional_losses_3248

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-output/bias/Regularizer/Square/ReadVariableOp¢/output/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs

«
__inference_loss_fn_4_3303J
8output_kernel_regularizer_square_readvariableop_resource:

identity¢/output/kernel/Regularizer/Square/ReadVariableOp¨
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8output_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!output/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp
ô>
 
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2853
layer0_input
layer0_2801:
layer0_2803:
layer1_2806:

layer1_2808:

output_2811:

output_2813:
identity¢layer0/StatefulPartitionedCall¢-layer0/bias/Regularizer/Square/ReadVariableOp¢/layer0/kernel/Regularizer/Square/ReadVariableOp¢layer1/StatefulPartitionedCall¢-layer1/bias/Regularizer/Square/ReadVariableOp¢/layer1/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCall¢-output/bias/Regularizer/Square/ReadVariableOp¢/output/kernel/Regularizer/Square/ReadVariableOpï
layer0/StatefulPartitionedCallStatefulPartitionedCalllayer0_inputlayer0_2801layer0_2803*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_2547
layer1/StatefulPartitionedCallStatefulPartitionedCall'layer0/StatefulPartitionedCall:output:0layer1_2806layer1_2808*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_2576
output/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0output_2811output_2813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_2604{
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer0_2801*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer0_2803*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer1_2806*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer1_2808*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2811*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2813*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp^layer0/StatefulPartitionedCall.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
layer0/StatefulPartitionedCalllayer0/StatefulPartitionedCall2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namelayer0_input

«
__inference_loss_fn_0_3259J
8layer0_kernel_regularizer_square_readvariableop_resource:
identity¢/layer0/kernel/Regularizer/Square/ReadVariableOp¨
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8layer0_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!layer0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^layer0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp
ñ

)__inference_3_layer_NN_layer_call_fn_2978

inputs
unknown:
	unknown_0:
	unknown_1:

	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*4
config_proto$"

CPU

GPU2	 *0,1J 8 *M
fHRF
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ

)__inference_3_layer_NN_layer_call_fn_2961

inputs
unknown:
	unknown_0:
	unknown_1:

	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*4
config_proto$"

CPU

GPU2	 *0,1J 8 *M
fHRF
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2647o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â>

D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2647

inputs
layer0_2548:
layer0_2550:
layer1_2577:

layer1_2579:

output_2605:

output_2607:
identity¢layer0/StatefulPartitionedCall¢-layer0/bias/Regularizer/Square/ReadVariableOp¢/layer0/kernel/Regularizer/Square/ReadVariableOp¢layer1/StatefulPartitionedCall¢-layer1/bias/Regularizer/Square/ReadVariableOp¢/layer1/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCall¢-output/bias/Regularizer/Square/ReadVariableOp¢/output/kernel/Regularizer/Square/ReadVariableOpé
layer0/StatefulPartitionedCallStatefulPartitionedCallinputslayer0_2548layer0_2550*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_2547
layer1/StatefulPartitionedCallStatefulPartitionedCall'layer0/StatefulPartitionedCall:output:0layer1_2577layer1_2579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_2576
output/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0output_2605output_2607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*4
config_proto$"

CPU

GPU2	 *0,1J 8 *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_2604{
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer0_2548*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer0_2550*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer1_2577*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer1_2579*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2605*
_output_shapes

:
*
dtype0
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: u
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2607*
_output_shapes
:*
dtype0
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp^layer0/StatefulPartitionedCall.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2@
layer0/StatefulPartitionedCalllayer0/StatefulPartitionedCall2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
Ó
@__inference_layer1_layer_call_and_return_conditional_losses_2576

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-layer1/bias/Regularizer/Square/ReadVariableOp¢/layer1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
p
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
g
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ù
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
Ó
@__inference_layer0_layer_call_and_return_conditional_losses_3161

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-layer0/bias/Regularizer/Square/ReadVariableOp¢/layer0/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:p
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
ø
__inference__traced_save_3355
file_prefix,
(savev2_layer0_kernel_read_readvariableop*
&savev2_layer0_bias_read_readvariableop,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ô
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ý
valueóBðB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B ¬
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer0_kernel_read_readvariableop&savev2_layer0_bias_read_readvariableop(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*G
_input_shapes6
4: :::
:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: 
Ì
æ
 __inference__traced_restore_3383
file_prefix0
assignvariableop_layer0_kernel:,
assignvariableop_1_layer0_bias:2
 assignvariableop_2_layer1_kernel:
,
assignvariableop_3_layer1_bias:
2
 assignvariableop_4_output_kernel:
,
assignvariableop_5_output_bias:

identity_7¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5×
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ý
valueóBðB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B Á
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_layer0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp assignvariableop_2_layer1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp assignvariableop_4_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ö

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_7IdentityIdentity_6:output:0^NoOp_1*
T0*
_output_shapes
: Ä
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*"
_acd_function_control_output(*
_output_shapes
 "!

identity_7Identity_7:output:0*!
_input_shapes
: : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
E
layer0_input5
serving_default_layer0_input:0ÿÿÿÿÿÿÿÿÿ:
output0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ºP
Ì
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
$0
%1
&2
'3
(4
)5"
trackable_list_wrapper
Ê
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ò2ï
)__inference_3_layer_NN_layer_call_fn_2662
)__inference_3_layer_NN_layer_call_fn_2961
)__inference_3_layer_NN_layer_call_fn_2978
)__inference_3_layer_NN_layer_call_fn_2798À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_3038
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_3098
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2853
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2908À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÏBÌ
__inference__wrapped_model_2517layer0_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
/serving_default"
signature_map
:2layer0/kernel
:2layer0/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
­
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_layer0_layer_call_fn_3138¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_layer0_layer_call_and_return_conditional_losses_3161¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:
2layer1/kernel
:
2layer1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
­
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_layer1_layer_call_fn_3182¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_layer1_layer_call_and_return_conditional_losses_3205¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:
2output/kernel
:2output/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
­
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_output_layer_call_fn_3226¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_output_layer_call_and_return_conditional_losses_3248¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
±2®
__inference_loss_fn_0_3259
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_1_3270
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_2_3281
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_3_3292
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_4_3303
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_5_3314
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
"__inference_signature_wrapper_3117layer0_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_dict_wrapper¶
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2853n=¢:
3¢0
&#
layer0_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_2908n=¢:
3¢0
&#
layer0_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 °
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_3038h7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 °
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_3098h7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_3_layer_NN_layer_call_fn_2662a=¢:
3¢0
&#
layer0_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_3_layer_NN_layer_call_fn_2798a=¢:
3¢0
&#
layer0_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_3_layer_NN_layer_call_fn_2961[7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_3_layer_NN_layer_call_fn_2978[7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
__inference__wrapped_model_2517p5¢2
+¢(
&#
layer0_inputÿÿÿÿÿÿÿÿÿ
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ 
@__inference_layer0_layer_call_and_return_conditional_losses_3161\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 x
%__inference_layer0_layer_call_fn_3138O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ 
@__inference_layer1_layer_call_and_return_conditional_losses_3205\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 x
%__inference_layer1_layer_call_fn_3182O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
9
__inference_loss_fn_0_3259¢

¢ 
ª " 9
__inference_loss_fn_1_3270¢

¢ 
ª " 9
__inference_loss_fn_2_3281¢

¢ 
ª " 9
__inference_loss_fn_3_3292¢

¢ 
ª " 9
__inference_loss_fn_4_3303¢

¢ 
ª " 9
__inference_loss_fn_5_3314¢

¢ 
ª "  
@__inference_output_layer_call_and_return_conditional_losses_3248\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 x
%__inference_output_layer_call_fn_3226O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ§
"__inference_signature_wrapper_3117E¢B
¢ 
;ª8
6
layer0_input&#
layer0_inputÿÿÿÿÿÿÿÿÿ"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ