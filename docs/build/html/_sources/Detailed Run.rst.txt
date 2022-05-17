Running the Repair Process
==========================

1) Defining the constraints
----------------------------

The constraints are defined as a list of the *nnreplayer.utils.ConstraintsClass*. 

.. autoclass:: nnreplayer.utils.ConstraintsClass
    :members:

Example
~~~~~~~~

We will go over three examples.

1. Defining "Keep Inside" Constraints:


Consider we have a linear box defined in the form Ax<b and can be visualized as shown in following table. 

.. list-table:: Constraint
    :widths: 50 50
    :header-rows: 0

    * - .. image:: constraint_1_visual.png
      - .. math:: \left[\begin{array}{cc}-0.70710678 & -0.70710678\\0.70710678 &-0.70710678\\-0.70710678 & 0.70710678\\0.70710678 & 0.70710678\end{array}\right] x \leq \left[\begin{array}{c}-2.31053391 \\1.225     \\1.225     \\4.76053391\end{array}\right]

If we want to define the such that outputs are inside the box region, this can be achieved using:

.. code-block:: python
    
    A = np.array([
            [-0.70710678, -0.70710678],
            [ 0.70710678, -0.70710678],
            [-0.70710678,  0.70710678],
            [ 0.70710678,  0.70710678]
            ])

    b = np.array([
                [-2.31053391],
                [ 1.225     ],
                [ 1.225     ],
                [ 4.76053391]
                ])

    constraint_inside = constraints_class("inside", A, b)
    output_constraint_list = [constraint_inside]

2) Defining "Keep Outside" Constraint      

Consider we have a linear box defined in the form Ax<b and can be visualized as shown in following table. 

.. list-table:: Constraint
    :widths: 50 50
    :header-rows: 0

    * - .. image:: constraint_2_visual.png
      - .. math:: \left[\begin{array}{cc}-1 & 0\\1 & 0\\0 & -1\\0 & 1\end{array}\right] x \leq \left[\begin{array}{c}-0.45 \\0.55     \\-0.1     \\0.25\end{array}\right]

If we want to define the such that outputs are outside the box region, this can be achieved using:


If we want to define the such that outputs are inside the box region, this can be achieved using:

.. code-block:: python
    
    A_1 = np.array([[1,0],[-1,0],[1,0],[1,0]])
    b_1 = np.array([[0.45],[-0.55],[0.55],[0.55]])

    A_2 = np.array([[0, 0], [0, 0],[-1,0],[-1,0]])
    b_2 = np.array([[0],[0],[-0.45],[-0.45]])

    A_3 = np.array([[0, 0], [0, 0],[0,-1],[0,1]])
    b_3 = np.array([[0],[0],[-0.25],[0.1]])

    A = [A_1, A_2, A_3]
    B = [b_1,b_2,b_3]
    constraint_outside = constraints_class("outside", A, B)
    output_constraint_list = [constraint_outside]

.. note::
    It is possible to merge "Keep Inside" and "Keep Outside" constraint by defining a list of constraint_class objects.

Defining Parameter for MILP
---------------------------

Define the parameters for MILP using the Options class provided. Here is an example of how you may do so.

.. code-block:: python

    max_weight_bound = 5
    cost_weights = np.array([1.0, 1.0])
    options = Options(
        "gdp.bigm",
        "gurobi",
        "python",
        "keras",
        {
            "timelimit": 3600,
            "mipgap": 0.001,
            "mipfocus": 2,
            "improvestarttime": 3300,
            "logfile": path_write
            + f"/logs/opt_log_layer{layer_to_repair}.log",
        },
    )

Initializing and Compiling the Repair Process
----------------------------------------------

The last step is to run theinitilize the repair process by passing the original model intended for repair and specifying the type of input model and passing in the original model. This will initialize the repair process.

In order tocompile model, call the compile method on the initialized repair process and pass the training dataset, layer to repair, list of constraints, and other parameters. 

.. code-block:: python
    
    repair_obj = NNRepair(model_orig, "pytorch")

    layer_to_repair = 3

    repair_obj.compile(
        x_train,
        y_train,
        layer_to_repair,
        output_constraint_list=output_constraint_list,
        cost_weights=cost_weights,
        max_weight_bound=max_weight_bound,
    )
    out_model = repair_obj.repair(options)