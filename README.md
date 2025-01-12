# DSR protocol formal verification using SPIN

The Network protocols are the established rules that deter- mine how different nodes, such as mobile, laptop, and other devices, are connected. In other words, network protocols are the backbone of communication systems that correctly send, modify, and receive data. For example, routing protocols such as DSR ensure effectiveness using route caching and recovery from error algorithms in dynamic network topology, where nodes and connections can be permanently changed.
The algorithms of the network protocol and overall behavior can be tested via simulation. The simulation can be created using a framework such as OMNeT++, which can create a network topology and simulate the message traveling accord- ing to the rules. However, OMNeT++ does not ensure the correctness of the results as it heavily depends on the accuracy of the algorithm used. That is to say, we can not be sure we are getting the correct results even though the simulation was successfully started and finished.
Thus, the algorithm must be further verified to ensure that the models used in the simulation will simulate expected behavior and results. Simulation can be verified using formal verification tools such as SPIN/Promela. That is to say, SPIN, which can verify the correctness of the concurrent systems, can precisely verify the simulation of the network protocols’ code from the OMNeT++. Thus, we can verify such properties as deadlock-freedom, liveliness and message delivery guarantees.
This paper shows how the network protocol’s code from OMNeT++ can be translated into SPIN models. Additionally, it shows which properties of the Network Protocols SPIN can verify to ensure the correctness of the algorithms and simulation.

---

## Files and Resources

### Presentation (PPTX)

**File:** `verification_of_dsr_protocol.pptx`

- **Description:** A detailed presentation outlining the key concepts and methodology of the project.

---

### Paper (PDF)

**File:** `dsr_verification.pdf`

- **Description:** A comprehensive document providing detailed descriptions of the project. This includes:
  - Introduction
  - Network Topology
  - Network Protocol Implementation in OMNeT++
  - Translation of OMNeT++ Code to SPIN Models
  - Challenges
  - Summary

---

### Recording (MOV)

**File:** `recording.mov`

- **Description:** A video recording provides DSR simulation to better understand what is being verified. 

---

## Usage

To make the most of the resources in this repository:
1. **Start with the `verification_of_dsr_protocol.pptx`** for a quick overview.
2. **Read the `dsr_verification.pdf`** to understand the project in-depth, including technical and conceptual details.
3. **Watch the `recording.mov`** for a live demonstration or walkthrough.

## Contact Information

If you have any questions, suggestions, or feedback, feel free to contact:

**Name:** Emir Kuanyshev
**Email:** emir.kuanyshev.ktl@gmail.com
**GitHub:** https://github.com/Tozare
