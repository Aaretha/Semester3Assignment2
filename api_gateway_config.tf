resource "aws_api_gateway_rest_api" "api" {
  name        = "StaticWebsiteAPI"
  description = "API for the static website"
}

resource "aws_api_gateway_deployment" "deployment" {
  depends_on = [aws_api_gateway_method.method]
  rest_api_id = aws_api_gateway_rest_api.api.id
  stage_name  = "prod"
}

resource "aws_api_gateway_stage" "stage" {
  stage_name    = "prod"
  rest_api_id   = aws_api_gateway_rest_api.api.id
  deployment_id = aws_api_gateway_deployment.deployment.id
}
