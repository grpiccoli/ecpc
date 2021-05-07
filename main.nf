#!/usr/bin/env nextflow
Channel.fromPath(params.i, type: 'file')
.buffer(size:1)
.set{
    input1;
}

Channel.fromPath(params.i, type: 'file')
.buffer(size:1)
.set{
    input2;
}

process ecpc {
    executor params.e
    time params.t
    queue params.q
    memory params.m
    cpus params.p
	tag "ecpc.$r"
    publishDir params.o
    container params.c

    input:
    file input1 from input1
    file input2 from input2

    output:
    file params.o_f into ecpc

    script:
    """
    $params.a
    """
}