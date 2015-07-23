/*
All clafers: 15 | Abstract: 9 | Concrete: 6 | Reference: 5
Constraints: 0
Goals: 0
Global scope: 1..*
Can skip name resolver: no
*/
open util/integer
pred show {}
run show for 1 but 2 c0_Request, 3 c0_Signal

abstract sig c0_Component
{ r_c0_InPort : set c0_InPort
, r_c0_OutPort : set c0_OutPort }

abstract sig c0_InPort
{ c0_InPort_ref : one c0_Signal }
{ one @r_c0_InPort.this }

abstract sig c0_OutPort
{ c0_OutPort_ref : one c0_Signal }
{ one @r_c0_OutPort.this }

abstract sig c0_Signal
{}

abstract sig c0_Command extends c0_Signal
{}

abstract sig c0_MotorCommand extends c0_Command
{}

one sig c0_motorDown extends c0_MotorCommand
{}

abstract sig c0_Request extends c0_Signal
{}

one sig c0_stop extends c0_Request
{}

abstract sig c0_Controller extends c0_Component
{ r_c0_req : lone c0_req
, r_c0_down : one c0_down }
{ r_c0_req in r_c0_InPort }

abstract sig c0_req extends c0_InPort
{ c0_req_ref : one c0_Request }
{ one @r_c0_req.this
  c0_req_ref in c0_InPort_ref }

sig c0_down extends c0_Request
{}
{ one @r_c0_down.this }

one sig c0_WinController extends c0_Controller
{ r_c1_req : one c1_req
, r_c0_cmd : one c0_cmd }
{ r_c1_req in r_c0_req
  r_c0_cmd in r_c0_OutPort }

one sig c1_req extends c0_req
{ c1_req_ref : one c0_stop }
{ c1_req_ref in c0_req_ref }

one sig c0_cmd extends c0_OutPort
{ c0_cmd_ref : one c0_MotorCommand }
{ c0_cmd_ref in c0_OutPort_ref }

