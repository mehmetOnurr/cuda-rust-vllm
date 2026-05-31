#include <iostream>
#include <cuda_runtime.h>

__global__ void print_ids() {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;

    printf(
        "blockIdx.x=%d, threadIdx.x=%d, blockDim.x=%d, gridDim.x=%d, global idx=%d\n",
        blockIdx.x,
        threadIdx.x,
        blockDim.x,
        gridDim.x,
        idx
    );
}

int main() {
    print_ids<<<3, 4>>>();

    cudaDeviceSynchronize();

    return 0;
}