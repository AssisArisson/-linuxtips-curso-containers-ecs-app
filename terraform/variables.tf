variable "region" {

}

variable "cluster_name" {

}

variable "service_name" {

}

variable "service_port" {

}

variable "service_cpu" {

}

variable "service_memory" {

}

variable "ssm_vpc_id" {

}

variable "ssm_listener" {

}

variable "ssm_private_subnet_1a" {

}

variable "ssm_private_subnet_1b" {

}

variable "ssm_private_subnet_1c" {

}

variable "ssm_alb" {
  type        = string
  description = ""
}

variable "environment_variables" {

}

variable "capabilities" {

}

variable "service_healthcheck" {

}

variable "service_launch_type" {
  type = list(object({
    capacity_provider = string
    weight            = number
  }))
}

variable "service_task_count" {

}

variable "service_hosts" {

}

variable "scale_type" {

}

variable "task_minimum" {

}

variable "task_maximum" {

}

##Autoscalling Out de cpu

variable "scale_out_cpu_threshold" {
  description = "Quantidade maxima de uso cpu para startar o alarme autoscalling"

}

variable "scale_out_adjustment" {
  description = "Quantidade de task para serem adicionadas ao startar o alarme autoscalling"

}

variable "scale_out_comparison_operator" {
  description = "Operador de comparação da metrica"

}

variable "scale_out_statistic" {
  description = "Dimensão da metrica a ser utilizada para autoscalling max, min, media.."

}

variable "scale_out_period" {
  description = "Periodo de monitoramento da metrica"

}

variable "scale_out_evaluation_periods" {
  description = "Quantidade de periodo para monitoramento da Metrica"

}

variable "scale_out_cooldown" {
  description = "Quantidade de tempo de espera para voltar a monitorar a metrica após ação de autoscalling"

}

##Autoscalling In de cpu

variable "scale_in_cpu_threshold" {
  description = "Quantidade maxima de uso cpu para startar o alarme autoscalling"

}

variable "scale_in_adjustment" {
  description = "Quantidade de task para serem adicionadas ao startar o alarme autoscalling"

}

variable "scale_in_comparison_operator" {
  description = "Operador de comparação da metrica"

}

variable "scale_in_statistic" {
  description = "Dimensão da metrica a ser utilizada para autoscalling max, min, media.."

}

variable "scale_in_period" {
  description = "Periodo de monitoramento da metrica"

}

variable "scale_in_evaluation_periods" {
  description = "Quantidade de periodo para monitoramento da Metrica"

}

variable "scale_in_cooldown" {
  description = "Quantidade de tempo de espera para voltar a monitorar a metrica após ação de autoscalling"

}

##Tracking CPU

variable "scale_tracking_cpu" {
  description = "Utilização ideal de CPU para MANTER nas tasks"

}

##Tracking Requests

variable "scale_tracking_requests" {
  description = "Quantidade de requisições por segundos para MANTER em cada tasks"
}