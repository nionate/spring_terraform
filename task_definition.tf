resource "aws_ecs_task_definition" "spring_task" {
  family = "spring_task"

  container_definitions = <<DEFINITION
[
  {
    "cpu": 128,
    "environment": [{
      "name": "SECRET",
      "value": "KEY"
    }],
    "essential": true,
    "image": "162674748533.dkr.ecr.us-east-1.amazonaws.com/helloworldrepository:latest",
    "memory": 128,
    "memoryReservation": 64,
    "name": "spring_app_task"
  }
]
DEFINITION
}