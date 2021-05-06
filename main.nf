#!/usr/bin/env nextflow
Channel.fromPath(params.i, type: 'file')
.buffer(size:1)
.set{
    input;
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
    file r from input

    output:
    file params.o_f into ecpc

    script:
    """
    $params.a
    """
}