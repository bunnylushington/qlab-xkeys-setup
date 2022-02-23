# Integrating QLab with Nomad Via OSC

## Rationale

The purpose of this document is to describe how to configure QLab and
ETCnomad so that Nomad cues are triggered from QLab. Among the
reasons this might be desirable are:

* Simplified board operation: with only one cue stack, lights and
  sound (and video, &c.) can be triggered from one list, eliminating
  the need for an operator to monitor two different applications or
  multiple operators to maintain synchronization.

* Cues can be programmed in sync. For intance, light cues can fire at
  precise moment in a sound cue.

* Separation of technical responsibilities: the lighting designer can
  concern themselves with creating looks and the QLab programmer with
  when to fire those looks.

## Networking

Because this is such a broad topic that spans network types and
operating systems, we will content ourselves with some general
comments and not delve into how to configure networks. There is an
absolute requirement that the QLab and Nomad hosts must be able to
communicate over a network, that network can be wired or wireless as
appropriate.

It appears to be the case that the Nomad host must have an external
network and does not listen on the loopback address ("localhost" or
127.0.0.1).

> Note: MacOS will not assign an IP address at all unless (a) there's
> an ethernet cable attached or (b) wifi is enabled and attached to an
> access point.  I usually run a cable between the computer and an
> ethernet hub.

On the Nomad console there are two means of determining what IP
address the console is receiving data on:

  * From the EOS Family Welcome Screen choose "Settings" then
    "Network." The IP address Nomad will listen on is listed as "IP
    address".

    ![Nomad Family Network Page](img/nomad-eos-family-screen.png)

  * From the Nomad application, choose "Setup" then "Diagnostics" (Tab
    99) then "Network Info". The address will be listed as "Address"
    on the display.

    ![Nomad Diagnostics Page](img/nomad-diag-network.png)

## Nomad Setup

## QLab Setup

## Testing

## Author

  Bunny Lushington; February 2022; New Orleans
