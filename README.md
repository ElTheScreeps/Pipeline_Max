# Pipeline_Max



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
