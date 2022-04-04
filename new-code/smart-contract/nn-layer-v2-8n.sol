pragma solidity 0.5.5;

contract nn_layer{
    int n11; int n12; int n13; int n14;

//multiply inputs to weights in Layer 1
    function multiply_layer1(int[] memory x, int[] memory w1,
    int[] memory w2, int[] memory w3, int[] memory w4,
    int[] memory b1) public {
        n11=0; n12=0; n13=0;n14=0;
        for (uint i=0;i<x.length; i++){

            n11= n11+ x[i]*w1[i];
            n12= n12+ x[i]*w2[i];
            n13= n13+ x[i]*w3[i];
            n14= n14+ x[i]*w4[i];
        }
        n11=n11+b1[0]; n12=n12+b1[1]; n13=n13+b1[2];n14=n14+b1[3];
    }
    function print_l1() public view returns(int,int,int,int){
        return(n11,n12,n13,n14);
    }
//get sigmoid outputs


//multiply layer 1 output to layer 2
    int n21; int n22; int n23; int n24; int n25; int n26; int n27; int n28;
    int n29; int n30;
    function multiply_layer2(int[] memory l1_output, int[] memory w1,int[] memory w2,
    int[] memory w3, int[] memory w4, int[] memory w5, int[] memory w6, int[] memory w7,
    int[] memory w8, int[] memory w9, int[] memory w10,int[] memory b2) public {

       n21=b2[0]; n22=b2[1]; n23=b2[2];n24=b2[3];
       n25=b2[4]; n26=b2[5]; n27=b2[6];n28=b2[7];n29=b2[8];n30=b2[9];
        for (uint i=0;i<l1_output.length; i++){

            n21= n21+ l1_output[i]*w1[i];
            n22= n22+ l1_output[i]*w2[i];
            n23= n23+ l1_output[i]*w3[i];
            n24= n24+ l1_output[i]*w4[i];
            n25= n25+ l1_output[i]*w5[i];
            n26= n26+ l1_output[i]*w6[i];
            n27= n27+ l1_output[i]*w7[i];
            n28= n28+ l1_output[i]*w8[i];
            n29= n29+ l1_output[i]*w9[i];
            n30= n30+ l1_output[i]*w10[i];
        }
    }
    function print_l2() public view returns(int,int,int,int,int,int,int,int,int,int) {
        return(n21,n22,n23,n24,n25,n26,n27,n28,n29,n30);
    }
//get softmax output of layer 2
}
