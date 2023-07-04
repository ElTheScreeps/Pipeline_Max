# Pipeline_Max

![Max_Pipeline Diagram](https://github.com/ElTheScreeps/Pipeline_Max/assets/115155585/1910d74b-3376-4778-8ab5-5497227f8344)

The interface of the circuit for maximum determination is presented in the following tables.

| Parameter Name            | Default Value | Value Domain  | Description                                                                    |
|           :---:           |     :---:     |    :---:      |                                     :---:                                      |
| DATA_WIDTH                | 8             | ≥ 1           | Size of the data                                                               |

| Port Name                 | Direction     | Size          | Description                                                                    |
|           :---:           |     :---:     |    :---:      |                                     :---:                                      |
| clk                       | IN            | 1             | Clock signal                                                                   |
| rst_n                     | IN            | 1             | Asynchronous reset signal, active low                                          |
| client_val                | IN            | 1             | Valid signal from the client                                                   |
| client_rdy                | OUT           | 1             | Ready signal for the client                                                    |
| client_data               | IN            | 8 * DATA_WIDTH| Data from the client, interpreted as 8 separate data of DATA_WIDTH bits each   |
| max_val                   | OUT           | 1             | Valid data delivered                                                           |
| max_rdy                   | IN            | 1             | Module is ready to accept data                                                 |
| max_data                  | OUT           | DATA_WIDTH    | Data representing the maximum, DATA_WIDTH bits                                 |

When the numbers are equal, the value 0 will be displayed on max_data.

How to use this files:

1. Download the files;
2. Put them in a directory;
3. Open Modelsim;
4. Change directory to the directory who contain the files;
5. Create a project and add the files;
6. Compile the files and start stimulate.
