Channel
  .fromPath(params.input)
  .splitCsv(header: false)
  .set { ch_input_table }

process read_table_content {
    echo true
    //container 'quay.io/lifebitaiorg/ubuntu:18.10'

    input:
    file(input_table) from ch_input_table

    script:
    """
    cat $input_table
    """
}