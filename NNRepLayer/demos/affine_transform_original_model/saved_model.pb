??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.12v2.6.0-101-g3aa40c3ce9d8??
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
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
h


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
6
iter
	decay
learning_rate
momentum
*

0
1
2
3
4
5
*

0
1
2
3
4
5
 
?
trainable_variables
 layer_metrics
	variables
!non_trainable_variables
"layer_regularization_losses

#layers
$metrics
regularization_losses
 
YW
VARIABLE_VALUElayer0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1


0
1
 
?
trainable_variables
%layer_metrics
&non_trainable_variables
	variables
'layer_regularization_losses

(layers
)metrics
regularization_losses
YW
VARIABLE_VALUElayer1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
*layer_metrics
+non_trainable_variables
	variables
,layer_regularization_losses

-layers
.metrics
regularization_losses
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
trainable_variables
/layer_metrics
0non_trainable_variables
	variables
1layer_regularization_losses

2layers
3metrics
regularization_losses
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

0
1
2

40
51
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	6total
	7count
8	variables
9	keras_api
D
	:total
	;count
<
_fn_kwargs
=	variables
>	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

60
71

8	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

=	variables

serving_default_layer0_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_layer0_inputlayer0/kernellayer0/biaslayer1/kernellayer1/biasoutput/kerneloutput/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_7945
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer0/kernel/Read/ReadVariableOplayer0/bias/Read/ReadVariableOp!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_8361
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer0/kernellayer0/biaslayer1/kernellayer1/biasoutput/kerneloutput/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_8413??
?
?
"__inference_signature_wrapper_7945
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayer0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_74952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namelayer0_input
?
?
@__inference_layer0_layer_call_and_return_conditional_losses_8143

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?-layer0/bias/Regularizer/Square/ReadVariableOp?/layer0/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mul?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/mulm
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
@__inference_layer1_layer_call_and_return_conditional_losses_7554

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?-layer1/bias/Regularizer/Square/ReadVariableOp?/layer1/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mul?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/mulm
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
)__inference_3_layer_NN_layer_call_fn_7979

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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_77442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_layer0_layer_call_fn_8120

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_75252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_output_layer_call_fn_8208

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_75822
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
@__inference_output_layer_call_and_return_conditional_losses_7582

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?-output/bias/Regularizer/Square/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
%__inference_layer1_layer_call_fn_8164

inputs
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_75542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_8241J
8layer0_kernel_regularizer_square_readvariableop_resource:
identity??/layer0/kernel/Regularizer/Square/ReadVariableOp?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8layer0_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mulk
IdentityIdentity!layer0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp0^layer0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_4_8285J
8output_kernel_regularizer_square_readvariableop_resource:

identity??/output/kernel/Regularizer/Square/ReadVariableOp?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8output_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mulk
IdentityIdentity!output/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_5_8296D
6output_bias_regularizer_square_readvariableop_resource:
identity??-output/bias/Regularizer/Square/ReadVariableOp?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOp6output_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/muli
IdentityIdentityoutput/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity~
NoOpNoOp.^output/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp
?	
?
)__inference_3_layer_NN_layer_call_fn_7776
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayer0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_77442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namelayer0_input
?
?
@__inference_output_layer_call_and_return_conditional_losses_8230

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?-output/bias/Regularizer/Square/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/mulk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-output/bias/Regularizer/Square/ReadVariableOp-output/bias/Regularizer/Square/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_8274D
6layer1_bias_regularizer_square_readvariableop_resource:

identity??-layer1/bias/Regularizer/Square/ReadVariableOp?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOp6layer1_bias_regularizer_square_readvariableop_resource*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/muli
IdentityIdentitylayer1/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity~
NoOpNoOp.^layer1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp
?I
?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_7744

inputs
layer0_7692:
layer0_7694:
layer1_7697:

layer1_7699:

output_7702:

output_7704:
identity??layer0/StatefulPartitionedCall?-layer0/bias/Regularizer/Square/ReadVariableOp?/layer0/kernel/Regularizer/Square/ReadVariableOp?layer1/StatefulPartitionedCall?-layer1/bias/Regularizer/Square/ReadVariableOp?/layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?-output/bias/Regularizer/Square/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
layer0/StatefulPartitionedCallStatefulPartitionedCallinputslayer0_7692layer0_7694*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_75252 
layer0/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCall'layer0/StatefulPartitionedCall:output:0layer1_7697layer1_7699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_75542 
layer1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0output_7702output_7704*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_75822 
output/StatefulPartitionedCall?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer0_7692*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mul?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer0_7694*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/mul?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer1_7697*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mul?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer1_7699*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_7702*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpoutput_7704*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^layer0/StatefulPartitionedCall.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2@
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
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_7831
layer0_input
layer0_7779:
layer0_7781:
layer1_7784:

layer1_7786:

output_7789:

output_7791:
identity??layer0/StatefulPartitionedCall?-layer0/bias/Regularizer/Square/ReadVariableOp?/layer0/kernel/Regularizer/Square/ReadVariableOp?layer1/StatefulPartitionedCall?-layer1/bias/Regularizer/Square/ReadVariableOp?/layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?-output/bias/Regularizer/Square/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
layer0/StatefulPartitionedCallStatefulPartitionedCalllayer0_inputlayer0_7779layer0_7781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_75252 
layer0/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCall'layer0/StatefulPartitionedCall:output:0layer1_7784layer1_7786*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_75542 
layer1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0output_7789output_7791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_75822 
output/StatefulPartitionedCall?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer0_7779*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mul?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer0_7781*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/mul?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer1_7784*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mul?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer1_7786*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_7789*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpoutput_7791*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^layer0/StatefulPartitionedCall.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2@
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
:?????????
&
_user_specified_namelayer0_input
?I
?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_7625

inputs
layer0_7526:
layer0_7528:
layer1_7555:

layer1_7557:

output_7583:

output_7585:
identity??layer0/StatefulPartitionedCall?-layer0/bias/Regularizer/Square/ReadVariableOp?/layer0/kernel/Regularizer/Square/ReadVariableOp?layer1/StatefulPartitionedCall?-layer1/bias/Regularizer/Square/ReadVariableOp?/layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?-output/bias/Regularizer/Square/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
layer0/StatefulPartitionedCallStatefulPartitionedCallinputslayer0_7526layer0_7528*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_75252 
layer0/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCall'layer0/StatefulPartitionedCall:output:0layer1_7555layer1_7557*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_75542 
layer1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0output_7583output_7585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_75822 
output/StatefulPartitionedCall?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer0_7526*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mul?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer0_7528*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/mul?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer1_7555*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mul?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer1_7557*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_7583*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpoutput_7585*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^layer0/StatefulPartitionedCall.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2@
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
:?????????
 
_user_specified_nameinputs
?&
?
__inference__traced_save_8361
file_prefix,
(savev2_layer0_kernel_read_readvariableop*
&savev2_layer0_bias_read_readvariableop,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer0_kernel_read_readvariableop&savev2_layer0_bias_read_readvariableop(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*W
_input_shapesF
D: :::
:
:
:: : : : : : : : : 2(
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
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?#
?
__inference__wrapped_model_7495
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
identity??(3_layer_NN/layer0/BiasAdd/ReadVariableOp?'3_layer_NN/layer0/MatMul/ReadVariableOp?(3_layer_NN/layer1/BiasAdd/ReadVariableOp?'3_layer_NN/layer1/MatMul/ReadVariableOp?(3_layer_NN/output/BiasAdd/ReadVariableOp?'3_layer_NN/output/MatMul/ReadVariableOp?
'3_layer_NN/layer0/MatMul/ReadVariableOpReadVariableOp.layer_nn_layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'3_layer_NN/layer0/MatMul/ReadVariableOp?
3_layer_NN/layer0/MatMulMatMullayer0_input/3_layer_NN/layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
3_layer_NN/layer0/MatMul?
(3_layer_NN/layer0/BiasAdd/ReadVariableOpReadVariableOp/layer_nn_layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(3_layer_NN/layer0/BiasAdd/ReadVariableOp?
3_layer_NN/layer0/BiasAddBiasAdd"3_layer_NN/layer0/MatMul:product:003_layer_NN/layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
3_layer_NN/layer0/BiasAdd?
3_layer_NN/layer0/ReluRelu"3_layer_NN/layer0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
3_layer_NN/layer0/Relu?
'3_layer_NN/layer1/MatMul/ReadVariableOpReadVariableOp.layer_nn_layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02)
'3_layer_NN/layer1/MatMul/ReadVariableOp?
3_layer_NN/layer1/MatMulMatMul$3_layer_NN/layer0/Relu:activations:0/3_layer_NN/layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
3_layer_NN/layer1/MatMul?
(3_layer_NN/layer1/BiasAdd/ReadVariableOpReadVariableOp/layer_nn_layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02*
(3_layer_NN/layer1/BiasAdd/ReadVariableOp?
3_layer_NN/layer1/BiasAddBiasAdd"3_layer_NN/layer1/MatMul:product:003_layer_NN/layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
3_layer_NN/layer1/BiasAdd?
3_layer_NN/layer1/ReluRelu"3_layer_NN/layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
3_layer_NN/layer1/Relu?
'3_layer_NN/output/MatMul/ReadVariableOpReadVariableOp.layer_nn_output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02)
'3_layer_NN/output/MatMul/ReadVariableOp?
3_layer_NN/output/MatMulMatMul$3_layer_NN/layer1/Relu:activations:0/3_layer_NN/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
3_layer_NN/output/MatMul?
(3_layer_NN/output/BiasAdd/ReadVariableOpReadVariableOp/layer_nn_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(3_layer_NN/output/BiasAdd/ReadVariableOp?
3_layer_NN/output/BiasAddBiasAdd"3_layer_NN/output/MatMul:product:003_layer_NN/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
3_layer_NN/output/BiasAdd}
IdentityIdentity"3_layer_NN/output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp)^3_layer_NN/layer0/BiasAdd/ReadVariableOp(^3_layer_NN/layer0/MatMul/ReadVariableOp)^3_layer_NN/layer1/BiasAdd/ReadVariableOp(^3_layer_NN/layer1/MatMul/ReadVariableOp)^3_layer_NN/output/BiasAdd/ReadVariableOp(^3_layer_NN/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2T
(3_layer_NN/layer0/BiasAdd/ReadVariableOp(3_layer_NN/layer0/BiasAdd/ReadVariableOp2R
'3_layer_NN/layer0/MatMul/ReadVariableOp'3_layer_NN/layer0/MatMul/ReadVariableOp2T
(3_layer_NN/layer1/BiasAdd/ReadVariableOp(3_layer_NN/layer1/BiasAdd/ReadVariableOp2R
'3_layer_NN/layer1/MatMul/ReadVariableOp'3_layer_NN/layer1/MatMul/ReadVariableOp2T
(3_layer_NN/output/BiasAdd/ReadVariableOp(3_layer_NN/output/BiasAdd/ReadVariableOp2R
'3_layer_NN/output/MatMul/ReadVariableOp'3_layer_NN/output/MatMul/ReadVariableOp:U Q
'
_output_shapes
:?????????
&
_user_specified_namelayer0_input
?V
?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_8039

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
identity??layer0/BiasAdd/ReadVariableOp?layer0/MatMul/ReadVariableOp?-layer0/bias/Regularizer/Square/ReadVariableOp?/layer0/kernel/Regularizer/Square/ReadVariableOp?layer1/BiasAdd/ReadVariableOp?layer1/MatMul/ReadVariableOp?-layer1/bias/Regularizer/Square/ReadVariableOp?/layer1/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?-output/bias/Regularizer/Square/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
layer0/MatMul/ReadVariableOpReadVariableOp%layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
layer0/MatMul/ReadVariableOp?
layer0/MatMulMatMulinputs$layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer0/MatMul?
layer0/BiasAdd/ReadVariableOpReadVariableOp&layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
layer0/BiasAdd/ReadVariableOp?
layer0/BiasAddBiasAddlayer0/MatMul:product:0%layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer0/BiasAddm
layer0/ReluRelulayer0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
layer0/Relu?
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
layer1/MatMul/ReadVariableOp?
layer1/MatMulMatMullayer0/Relu:activations:0$layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
layer1/MatMul?
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
layer1/BiasAdd/ReadVariableOp?
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
layer1/BiasAddm
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
layer1/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMullayer1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mul?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOp&layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/mul?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mul?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/mulr
IdentityIdentityoutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^layer0/BiasAdd/ReadVariableOp^layer0/MatMul/ReadVariableOp.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2>
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
:?????????
 
_user_specified_nameinputs
?	
?
)__inference_3_layer_NN_layer_call_fn_7962

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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_76252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_7886
layer0_input
layer0_7834:
layer0_7836:
layer1_7839:

layer1_7841:

output_7844:

output_7846:
identity??layer0/StatefulPartitionedCall?-layer0/bias/Regularizer/Square/ReadVariableOp?/layer0/kernel/Regularizer/Square/ReadVariableOp?layer1/StatefulPartitionedCall?-layer1/bias/Regularizer/Square/ReadVariableOp?/layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?-output/bias/Regularizer/Square/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
layer0/StatefulPartitionedCallStatefulPartitionedCalllayer0_inputlayer0_7834layer0_7836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer0_layer_call_and_return_conditional_losses_75252 
layer0/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCall'layer0/StatefulPartitionedCall:output:0layer1_7839layer1_7841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_75542 
layer1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0output_7844output_7846*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_75822 
output/StatefulPartitionedCall?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer0_7834*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mul?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer0_7836*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/mul?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer1_7839*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mul?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer1_7841*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_7844*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOpoutput_7846*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^layer0/StatefulPartitionedCall.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/StatefulPartitionedCall.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2@
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
:?????????
&
_user_specified_namelayer0_input
?
?
@__inference_layer1_layer_call_and_return_conditional_losses_8187

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?-layer1/bias/Regularizer/Square/ReadVariableOp?/layer1/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Relu?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mul?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/mulm
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-layer1/bias/Regularizer/Square/ReadVariableOp-layer1/bias/Regularizer/Square/ReadVariableOp2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?V
?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_8099

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
identity??layer0/BiasAdd/ReadVariableOp?layer0/MatMul/ReadVariableOp?-layer0/bias/Regularizer/Square/ReadVariableOp?/layer0/kernel/Regularizer/Square/ReadVariableOp?layer1/BiasAdd/ReadVariableOp?layer1/MatMul/ReadVariableOp?-layer1/bias/Regularizer/Square/ReadVariableOp?/layer1/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?-output/bias/Regularizer/Square/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
layer0/MatMul/ReadVariableOpReadVariableOp%layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
layer0/MatMul/ReadVariableOp?
layer0/MatMulMatMulinputs$layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer0/MatMul?
layer0/BiasAdd/ReadVariableOpReadVariableOp&layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
layer0/BiasAdd/ReadVariableOp?
layer0/BiasAddBiasAddlayer0/MatMul:product:0%layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
layer0/BiasAddm
layer0/ReluRelulayer0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
layer0/Relu?
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
layer1/MatMul/ReadVariableOp?
layer1/MatMulMatMullayer0/Relu:activations:0$layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
layer1/MatMul?
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
layer1/BiasAdd/ReadVariableOp?
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
layer1/BiasAddm
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
layer1/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMullayer1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%layer0_matmul_readvariableop_resource*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mul?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOp&layer0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/mul?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mul?
-layer1/bias/Regularizer/Square/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-layer1/bias/Regularizer/Square/ReadVariableOp?
layer1/bias/Regularizer/SquareSquare5layer1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:
2 
layer1/bias/Regularizer/Square?
layer1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer1/bias/Regularizer/Const?
layer1/bias/Regularizer/SumSum"layer1/bias/Regularizer/Square:y:0&layer1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/Sum?
layer1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer1/bias/Regularizer/mul/x?
layer1/bias/Regularizer/mulMul&layer1/bias/Regularizer/mul/x:output:0$layer1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/bias/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
-output/bias/Regularizer/Square/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-output/bias/Regularizer/Square/ReadVariableOp?
output/bias/Regularizer/SquareSquare5output/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
output/bias/Regularizer/Square?
output/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
output/bias/Regularizer/Const?
output/bias/Regularizer/SumSum"output/bias/Regularizer/Square:y:0&output/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/Sum?
output/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
output/bias/Regularizer/mul/x?
output/bias/Regularizer/mulMul&output/bias/Regularizer/mul/x:output:0$output/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/bias/Regularizer/mulr
IdentityIdentityoutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^layer0/BiasAdd/ReadVariableOp^layer0/MatMul/ReadVariableOp.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp.^layer1/bias/Regularizer/Square/ReadVariableOp0^layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp.^output/bias/Regularizer/Square/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2>
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
:?????????
 
_user_specified_nameinputs
?=
?
 __inference__traced_restore_8413
file_prefix0
assignvariableop_layer0_kernel:,
assignvariableop_1_layer0_bias:2
 assignvariableop_2_layer1_kernel:
,
assignvariableop_3_layer1_bias:
2
 assignvariableop_4_output_kernel:
,
assignvariableop_5_output_bias:%
assignvariableop_6_sgd_iter:	 &
assignvariableop_7_sgd_decay: .
$assignvariableop_8_sgd_learning_rate: )
assignvariableop_9_sgd_momentum: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: 
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_layer0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_layer1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp assignvariableop_4_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_sgd_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_sgd_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14f
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_15?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
@__inference_layer0_layer_call_and_return_conditional_losses_7525

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?-layer0/bias/Regularizer/Square/ReadVariableOp?/layer0/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
/layer0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype021
/layer0/kernel/Regularizer/Square/ReadVariableOp?
 layer0/kernel/Regularizer/SquareSquare7layer0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 layer0/kernel/Regularizer/Square?
layer0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer0/kernel/Regularizer/Const?
layer0/kernel/Regularizer/SumSum$layer0/kernel/Regularizer/Square:y:0(layer0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/Sum?
layer0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer0/kernel/Regularizer/mul/x?
layer0/kernel/Regularizer/mulMul(layer0/kernel/Regularizer/mul/x:output:0&layer0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/kernel/Regularizer/mul?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/mulm
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^layer0/bias/Regularizer/Square/ReadVariableOp0^layer0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp2b
/layer0/kernel/Regularizer/Square/ReadVariableOp/layer0/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
)__inference_3_layer_NN_layer_call_fn_7640
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayer0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_76252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namelayer0_input
?
?
__inference_loss_fn_1_8252D
6layer0_bias_regularizer_square_readvariableop_resource:
identity??-layer0/bias/Regularizer/Square/ReadVariableOp?
-layer0/bias/Regularizer/Square/ReadVariableOpReadVariableOp6layer0_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02/
-layer0/bias/Regularizer/Square/ReadVariableOp?
layer0/bias/Regularizer/SquareSquare5layer0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2 
layer0/bias/Regularizer/Square?
layer0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
layer0/bias/Regularizer/Const?
layer0/bias/Regularizer/SumSum"layer0/bias/Regularizer/Square:y:0&layer0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/Sum?
layer0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
layer0/bias/Regularizer/mul/x?
layer0/bias/Regularizer/mulMul&layer0/bias/Regularizer/mul/x:output:0$layer0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer0/bias/Regularizer/muli
IdentityIdentitylayer0/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity~
NoOpNoOp.^layer0/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-layer0/bias/Regularizer/Square/ReadVariableOp-layer0/bias/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_2_8263J
8layer1_kernel_regularizer_square_readvariableop_resource:

identity??/layer1/kernel/Regularizer/Square/ReadVariableOp?
/layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8layer1_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:
*
dtype021
/layer1/kernel/Regularizer/Square/ReadVariableOp?
 layer1/kernel/Regularizer/SquareSquare7layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
2"
 layer1/kernel/Regularizer/Square?
layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
layer1/kernel/Regularizer/Const?
layer1/kernel/Regularizer/SumSum$layer1/kernel/Regularizer/Square:y:0(layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/Sum?
layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
layer1/kernel/Regularizer/mul/x?
layer1/kernel/Regularizer/mulMul(layer1/kernel/Regularizer/mul/x:output:0&layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
layer1/kernel/Regularizer/mulk
IdentityIdentity!layer1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp0^layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/layer1/kernel/Regularizer/Square/ReadVariableOp/layer1/kernel/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
layer0_input5
serving_default_layer0_input:0?????????:
output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?U
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
?__call__
@_default_save_signature
*A&call_and_return_all_conditional_losses"
_tf_keras_sequential
?


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
I
iter
	decay
learning_rate
momentum"
	optimizer
J

0
1
2
3
4
5"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
J
H0
I1
J2
K3
L4
M5"
trackable_list_wrapper
?
trainable_variables
 layer_metrics
	variables
!non_trainable_variables
"layer_regularization_losses

#layers
$metrics
regularization_losses
?__call__
@_default_save_signature
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
,
Nserving_default"
signature_map
:2layer0/kernel
:2layer0/bias
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
trainable_variables
%layer_metrics
&non_trainable_variables
	variables
'layer_regularization_losses

(layers
)metrics
regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
:
2layer1/kernel
:
2layer1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
trainable_variables
*layer_metrics
+non_trainable_variables
	variables
,layer_regularization_losses

-layers
.metrics
regularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
:
2output/kernel
:2output/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
trainable_variables
/layer_metrics
0non_trainable_variables
	variables
1layer_regularization_losses

2layers
3metrics
regularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	6total
	7count
8	variables
9	keras_api"
_tf_keras_metric
^
	:total
	;count
<
_fn_kwargs
=	variables
>	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
60
71"
trackable_list_wrapper
-
8	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
-
=	variables"
_generic_user_object
?2?
)__inference_3_layer_NN_layer_call_fn_7640
)__inference_3_layer_NN_layer_call_fn_7962
)__inference_3_layer_NN_layer_call_fn_7979
)__inference_3_layer_NN_layer_call_fn_7776?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference__wrapped_model_7495layer0_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_8039
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_8099
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_7831
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_7886?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_layer0_layer_call_fn_8120?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_layer0_layer_call_and_return_conditional_losses_8143?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_layer1_layer_call_fn_8164?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_layer1_layer_call_and_return_conditional_losses_8187?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_output_layer_call_fn_8208?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_output_layer_call_and_return_conditional_losses_8230?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_8241?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_8252?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_8263?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_8274?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_8285?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_8296?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
"__inference_signature_wrapper_7945layer0_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_7831n
=?:
3?0
&?#
layer0_input?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_7886n
=?:
3?0
&?#
layer0_input?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_8039h
7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_3_layer_NN_layer_call_and_return_conditional_losses_8099h
7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_3_layer_NN_layer_call_fn_7640a
=?:
3?0
&?#
layer0_input?????????
p 

 
? "???????????
)__inference_3_layer_NN_layer_call_fn_7776a
=?:
3?0
&?#
layer0_input?????????
p

 
? "???????????
)__inference_3_layer_NN_layer_call_fn_7962[
7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
)__inference_3_layer_NN_layer_call_fn_7979[
7?4
-?*
 ?
inputs?????????
p

 
? "???????????
__inference__wrapped_model_7495p
5?2
+?(
&?#
layer0_input?????????
? "/?,
*
output ?
output??????????
@__inference_layer0_layer_call_and_return_conditional_losses_8143\
/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? x
%__inference_layer0_layer_call_fn_8120O
/?,
%?"
 ?
inputs?????????
? "???????????
@__inference_layer1_layer_call_and_return_conditional_losses_8187\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????

? x
%__inference_layer1_layer_call_fn_8164O/?,
%?"
 ?
inputs?????????
? "??????????
9
__inference_loss_fn_0_8241
?

? 
? "? 9
__inference_loss_fn_1_8252?

? 
? "? 9
__inference_loss_fn_2_8263?

? 
? "? 9
__inference_loss_fn_3_8274?

? 
? "? 9
__inference_loss_fn_4_8285?

? 
? "? 9
__inference_loss_fn_5_8296?

? 
? "? ?
@__inference_output_layer_call_and_return_conditional_losses_8230\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? x
%__inference_output_layer_call_fn_8208O/?,
%?"
 ?
inputs?????????

? "???????????
"__inference_signature_wrapper_7945?
E?B
? 
;?8
6
layer0_input&?#
layer0_input?????????"/?,
*
output ?
output?????????