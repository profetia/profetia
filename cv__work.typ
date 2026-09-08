#show heading: set text(font: "Linux Biolinum O")
#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
#set text(size: 10pt)

// Feel free to change the margin below to best fit your own CV
#set page(margin: (x: 0.9cm, y: 1.3cm))

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}

#let last_updated(date) = {
  place(
    bottom,
    [
      // #text(link("https://mpi.run/files/cv.pdf")[mpi.run/cv], fill: color.gray)
      #h(1fr)
      #text("Last Updated: " + date, fill: color.gray)
    ],
  )
}

= Linshu Yang

linshuy2\@illinois.edu
| #link("https://github.com/profetia")[github.com/profetia]
| #link("https://mpi.run")[mpi.run]
| #link("https://www.linkedin.com/in/ly4ng")[linkedin.com/in/ly4ng]

// == Highlights
// #chiline()

// - Specialized in high-performance and distributed systems, with hands-on experience optimizing large-scale compute and storage infrastructure across AI and HPC.
// - Contributions deployed in production-scale environments powering large-model training at a leading quant firm; recognized through open-source Rust contributions and multiple HPC competition awards.

== Education
#chiline()

*University of Illinois Urbana-Champaign* #h(1fr) 2025/08 - 2026/12 (Expected) \
Master of Computer Science #h(1fr) Champaign, IL, USA \
- GPA: 3.94/4.0, Courses: Advanced Performance Engineering, Parallel Computer Architecture, Machine Learning Systems, etc.
#v(-4pt)

*ShanghaiTech University* #h(1fr) 2021/09 -- 2025/07 \
Bachelor of Engineering in Computer Science and Technology #h(1fr) Shanghai, China \
// - Overall GPA 3.72/4.0, Rank 25/178 (Top 15%), Major GPA 3.83/4.0
- Concentration: Software and Systems, Major GPA 3.81/4.0, Overall GPA 3.6/4.0, Outstanding Student (Top 5%) in 2022
- A+ Courses: Operating Systems/* (A+) */, Computer Networks/* (A+) */, Software Engineering/* (A+) */, Computer Aided Verification/* (A+) */, and 19 others.
#v(-4pt)

== Skills
#chiline()
*Programming Languages*: Python, Modern C/C++, Rust, Go, TypeScript, Shell, P4, SQL\
*Systems and HPC*: OpenMP, MPI, CUDA, Linux Kernel, eBPF, RDMA, GPFS, LMCache, Megatron-LM\
*Tools and Frameworks*: Docker, Singularity, Kubernetes, Slurm, Intel VTune, Perf, GitLab, Postgres, Kestra
#v(-4pt)

== Experience
#chiline()
*Jump Trading* #h(1fr) 2026/06 -- 2026/09 \
Software Engineer Intern #h(1fr) Shanghai, China
#v(-4pt)

*National Center for Supercomputing Applications*, Supercomputing System AI Lab #h(1fr) 2025/08 -- 2026/05\
Research Intern, Advised by Prof. Minjia Zhang #h(1fr) Champaign, IL, USA
- Analyzed AWS Trainium, an emerging AI accelerator, providing the first systematic characterization of dense and MoE training and analyzing compute performance, memory footprint, and collective communication behavior across model scales.
- Developed a topology-aligned planner to solve the 3D parallel groups placement constraints imposed by Trainium's 2D torus topology, enabling previously unsupported parallel configurations (>50% of the solution space) to run with optimal NIC utilization.
- Identified the optimal scale-out strategy for MoE training on Trainium and, together with the planner, demonstrated scalable training of up to 1T-parameter models with 2K chips, achieving up to 3.2× speedup over the baseline.
#v(-4pt)

*Ubiquant*, HPC System Group #h(1fr) 2025/04 -- 2025/08 \
Performance Engineer Intern #h(1fr) Shanghai, China
- Repurposed Ubiloader, the in-house data-loading middleware, for large-model checkpoint I/O under a 10-day deadline by adding a write path and integrating it with the training framework; achieved up to 2× faster writes and 3× faster loads, deployed on a 1K-H800 Kubernetes cluster.
- Evaluated existing distributed storage solutions for KV cache workloads, including DeepSeek’s 3FS, GekkoFS, Valkey over RDMA, ByteDance's Infinistore, and Mooncake Store, identifying limitations in meeting our latency requirements.
- Prototyped a high-performance, multi-level distributed key-value store named Simm in C++; achieved up to 8× lower latency (\<100 μs for 1 MB writes) and 18% higher throughput than ByteDance’s Infinistore and Mooncake Store.
// - Integrated Simm with vLLM using LMCache as a storage backend for KV cache; achieved up to 2× lower TTFT and 25% higher output throughput over Infinistore and Mooncake Store on models up to 70B parameters.
#v(-4pt)

*Max Planck Institute for Informatics*, Network and Cloud System Group #h(1fr) 2024/09
-- 2024/12\
Research Assistant, Advised by Prof. Yiting Xia #h(1fr) Saarbrücken, Germany\
- Prototyped the traffic-aware workflow for OpenOptics, a framework for programmable optical data center networks, and built its Tofino-based backend in P4; implemented 4 types of traffic-aware scheduling algorithms in \<50 lines of Python.
#v(-4pt)

// *Tencent*, Keen Security Lab #h(1fr) 2024/04 -- 2024/07\
// System Software Engineer Intern #h(1fr) Shanghai, China
// - Developed a probing tool using eBPF and kernel modules for the Linux sandbox, with kprobe/uprobe custom probe points capturing buffers and memory mappings; combined with downstream algorithms, matched competitor accuracy.
// - Refactored existing sandbox software by decoupling and pipelining data collection and analysis, delivering up to 30% higher throughput; deployed on Tencent's internal malware analysis platforms with 10+ nodes.
// - Streamlined the gRPC endpoint for the malware database and rewrote the log parser with PEG.
// #v(-4pt)

== Activities
#chiline()

*Open Source Contributions*
- *Member, The Rust Programming Language* #h(1fr) Since 2024/12
  - Triaged and fixed issues for Clippy, the Rust linter, including bug fixes and lint improvements. Contributed 450+ merged commits, reducing 1K+ false positives and negatives in regression tests.

#v(-4pt)

*HPC Competitions*
- *Team Leader, ISC'24 Student Cluster Competition* #h(1fr) 2024/03 -- 2024/04
  - Guided the team on MPI profiling and optimization, reducing communication time by 50%.
  - Individual 3rd place in Coding Challenge, OpenMP Track. Implemented code optimization and GPU offloading for this challenge using C++; achieved strong scaling within one CPU node and >200× speedup on one A100.

#v(-4pt)

== Awards
#chiline()

- Second Class Prize (Rank 6/447), with Huawei Kunpeng Special Award, 2025 PKU HPCGame #h(1fr) 2025/01
- Individual 3rd place for Coding Challenge (OpenMP Track), Rank 9/29, ISC'24 Student Cluster Competition #h(1fr) 2024/04
- Second Class Prize (Rank 27/300+), ASC'24 Student Supercomputer Challenge #h(1fr) 2024/02
// - Outstanding Teaching Assistant, ShanghaiTech University #h(1fr) 2023/06
// - Silver Award, ICPC China Silk Road National Invitational 2023 #h(1fr) 2023/05
// - Outstanding Student (Top 3%-7%), ShanghaiTech University #h(1fr) 2022/10
- Level 6 (= Second Class Prize in former NOIP), 1st place in the award group, 2019 CCF CSP-S #h(1fr) 2019/12

// *University of Illinois Urbana-Champaign*, Supercomputing System AI Lab #h(1fr) Since 2025/08\
// Research Intern, Advised by *Prof. Minjia Zhang* #h(1fr) Champaign, IL, USA

// *ShanghaiTech University*, Wireless and Mobile System Lab #h(1fr) 2023/12 --
// 2024/08\
// Research Intern, Advised by *Prof. Zhice Yang* #h(1fr) Shanghai, China\
// - *Understanding Hybrid Scheduling in Asymmetric Processors*
// - Conducted intensive benchmarks and analyzed performance issues of Linux's Completely Fair Scheduler (CFS) on Asymmetric Multi-Processor (AMP) platforms.
// - Identified the performance bottlenecks of CFS when scheduling workloads under Kernel-based Virtual Machine (KVM), and proposed patches that improve its scheduling efficiency by 5%.
// *ShanghaiTech University*, Human-Cyber-Physical System Lab #h(1fr) 2022/07 --
// 2023/06\
// Research Intern, Advised by *Prof. Zhihao Jiang* #h(1fr) Shanghai, China\
// - *Model-Checking-Based Diagnosis Assistance for Cardiac Ablation* #link("https://github.com/Jack0Chan/pyuppaal")[github.com/Jack0Chan/pyuppaal]
// - Worked on pyUPPAAL, a Python toolkit for UPPAAL, providing programmatic access to the model-checking tool and enabling automation of verification tasks.
// - Implemented a model-checking-based diagnosis program for cardiac ablation surgeries using the toolkit, and optimized it to process cardiac signals in real-time.

#v(-4pt)

// == Publications
// #chiline()

// - *Understanding Hybrid Scheduling in Asymmetric Processors* #h(1fr) \
//   _Chenfei Gao, *Linshu Yang*, Zhice Yang_ #h(1fr) \
//   *Under Review in _IEEE International Symposium on High-Performance Computer Architecture 2025_*
// - *pyUPPAAL: A Python Package for Risk Analysis of CPS* #link("https://dl.acm.org/doi/abs/10.1145/3576841.3589611")[doi.org/10.1145/3576841.3589611] #h(1fr) \
//   _Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang_ #h(1fr) \
//   *Published in _ACM/IEEE International Conference on Cyber-Physical Systems 2023_*

#last_updated(datetime.today().display("[year]/[month]"))
