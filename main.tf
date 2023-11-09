provider "aws" {
  region = "us-east-2"  # Change to your desired AWS region
}

resource "aws_sqs_queue" "input_fifo_queue" {
  name                      = "test_input.fifo"
  fifo_queue                = true
  content_based_deduplication = true
  // Additional configuration parameters can be added here
}

resource "aws_sqs_queue" "output_fifo_queue" {
  name                      = "test_output.fifo"
  fifo_queue                = true
  content_based_deduplication = true
  // Additional configuration parameters can be added here
}
