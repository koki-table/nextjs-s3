# lambda

data "archive_file" "lambda_edge_code" {
  type        = "zip"
  output_path = "lambda_function.zip"
  source {
    content  = <<EOF
exports.handler = async (event) => {
  const request = event.Records[0].cf.request;
  const uri = request.uri;
  
  if (uri.endsWith('/')) {
    request.uri += 'index.html';
  }
  else if (!uri.includes('.')) {
    request.uri += '.html';
  }
  
  return request;
};
EOF
    filename = "index.js"
  }
}

resource "aws_lambda_function" "edge" {
  filename      = data.archive_file.lambda_edge_code.output_path
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda_edge_exec.arn
  handler       = "index.handler"
  runtime       = "nodejs16.x"
  publish       = true
  
  provider = aws.us-east-1
}