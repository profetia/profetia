#show heading: set text(font: "Linux Biolinum O")
#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

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
      #text(link("https://mpi.run/files/cv.pdf")[mpi.run/cv], fill: color.gray)
      #h(1fr)
      #text("Last updated in " + date, fill: color.gray)
    ],
  )
}

= Linshu Yang

linshuy2\@illinois.edu
| #link("https://github.com/profetia")[github.com/profetia]
| #link("https://mpi.run")[mpi.run]
| #link("https://www.linkedin.com/in/ly4ng")[linkedin.com/in/ly4ng]

== Education
#chiline()

*University of Illinois Urbana-Champaign* #h(1fr) Since 2025/08 \
Master of Computer Science #h(1fr) Champaign, IL, USA \
- GPA: 4.0/4.0, Courses: Programming Languages & Compilers, Machine Learning Systems
*ShanghaiTech University* #h(1fr) 2021/09 -- 2025/07 \
Bachelor of Engineering in Computer Science and Technology #h(1fr) Shanghai,
China \
- Concentration: Software and Systems, Major GPA 3.81/4.0, Overall GPA 3.60/4.0
- A/A+ Courses: Operating Systems/* (A+) */, Computer Networks/* (A+) */, Computer Aided Verification/* (A+) */, Deep Learning/* (A+) */, and 19 others.

== Publications
#chiline()

// - *Understanding Hybrid Scheduling in Asymmetric Processors* #h(1fr) \
//   _Chenfei Gao, *Linshu Yang*, Zhice Yang_ #h(1fr) \
//   *Under Review in _IEEE International Symposium on High-Performance Computer Architecture 2025_*
- *pyUPPAAL: A Python Package for Risk Analysis of CPS* #link("https://dl.acm.org/doi/abs/10.1145/3576841.3589611")[doi.org/10.1145/3576841.3589611] #h(1fr) \
  _Guangyao Chen, *Linshu Yang*, Haochen Yang, Peilin He, Zhihao Jiang_ #h(1fr) \
  *Published in _ACM/IEEE International Conference on Cyber-Physical Systems 2023_*

== Research Experience
#chiline()

*University of Illinois Urbana-Champaign*, Supercomputing System AI Lab #h(1fr) Since 2025/08\
Research Intern, Advised by *Prof. Minjia Zhang* #h(1fr) Champaign, IL, USA

*Max Planck Institute for Informatics*, Network and Cloud System Group #h(1fr) 2024/09
-- 2024/12\
Research Assistant, Advised by *Prof. Yiting Xia* #h(1fr) Saarbrücken, Germany\
- *OpenOptics: An Open Research Framework for Optical Data Center Networks* #link("https://github.com/mpi-ncs/openoptics/")[github.com/mpi-ncs/openoptics]
  - OpenOptics is a general framework for realizing different optical data center network architectures in a plug-and-play manner -- you can get started with just \~10 lines of Python.
  - Prototyped the traffic-aware workflow of OpenOptics, and built the corresponding Tofino-based backend. Implemented 4 types of traffic-aware scheduling algorithms in the framework for \<50 lines of Python.
*ShanghaiTech University*, Wireless and Mobile System Lab #h(1fr) 2023/12 --
2024/08\
Research Intern, Advised by *Prof. Zhice Yang* #h(1fr) Shanghai, China\
- *Understanding Hybrid Scheduling in Asymmetric Processors*
  // - Conducted intensive benchmarks and analyzed performance issues of Linux's Completely Fair Scheduler (CFS) on Asymmetric Multi-Processor (AMP) platforms.
  - Identified the performance bottlenecks of CFS when scheduling workloads under Kernel-based Virtual Machine (KVM), and proposed patches that improve its scheduling efficiency by 5%.
// TODO: Replace with an official title if needed
// - *Exploitation of Vulnerabilities in a Popular Commodity LIDAR Model*
//   - Evaluated the robustness of existing attack methods on newer LIDAR models,
//     proving their ineffectiveness.
//   - Built an adversarial device replicating a malfunction of a widely-used commodity
//     LIDAR model and used it to explore possible attack methods exploiting this
//     vulnerability.
// - *Understanding Precision Time Protocol in Embedded Systems: A Measurement Study*
//   - Migrated the PTP to BLE on
//     embedded systems by emulating the hardware PTP clock with specific counters.
//   - Implemented a synchronized sound recording system across 20 devices to
//     demonstrate the method's capabilities.
*ShanghaiTech University*, Human-Cyber-Physical System Lab #h(1fr) 2022/07 --
2023/06\
Research Intern, Advised by *Prof. Zhihao Jiang* #h(1fr) Shanghai, China\
- *Model-Checking-Based Diagnosis Assistance for Cardiac Ablation* #link("https://github.com/Jack0Chan/pyuppaal")[github.com/Jack0Chan/pyuppaal]
  - Worked on pyUPPAAL, a Python toolkit for UPPAAL, providing programmatic access to the model-checking tool and enabling automation of verification tasks.
  - Implemented a model-checking-based diagnosis program for cardiac ablation surgeries using the toolkit, and optimized it to process cardiac signals in real-time.

== Work Experience
#chiline()

*Ubiquant*, HPC System Group #h(1fr) 2025/04 -- 2025/08 \
HPC System Engineer Intern #h(1fr) Shanghai, China
- Evaluated and assessed the performance metrics of various distributed storage solutions, including GPFS, DeepSeek's 3FS, GekkoFS and Valkey over RDMA.
- Implemented file write for Ubiloader, Ubiquant's in-house distributed data loading acceleration middleware; delivered up to 2× faster checkpoint writes and 3× faster checkpoint loading for large models under an urgent 10-day deadline.
- Prototyped a high-performance, multi-level distributed key-value store named Simm; achieved up to 8× lower latency and 18% higher throughput than existing solutions compared to ByteDance's Infinistore and Mooncake Store.
- Integrated Simm with vLLM using LMCache as a storage backend for KV cache; delivered up to 2× lower TTFT and 25% higher output throughput over Infinistore and Mooncake Store on large models.

*Tencent*, Keen Security Lab #h(1fr) 2024/04 -- 2024/07\
System Software Engineer Intern #h(1fr) Shanghai, China
- Developed a fine-grained probing tool using eBPF and kernel modules for the Linux sandbox to capture and analyze malware during runtime; delivered comparative accuracy to competitors.
- Refactored existing sandbox software by decoupling and pipelining data collection and analysis, improving overall throughput by 30%.
// - Streamlined the gRPC endpoint for the malware database and rewrote the log parser with PEG.

*Deemos Technology* #h(1fr) 2023/01 -- 2023/07\
Full-Stack Software Engineer Intern #h(1fr) Shanghai, China\
- Worked on a full-stack web application for ChatAvatar, a text-to-3D model. Developed interactive frontend and integrated backend to support model generation, user interaction, and result visualization.
// - Designed and implemented a Blender tool to reshape and adjust cloth mesh according to human models.

== Activities
#chiline()

*Open Source Contributions*
- *Member, The Rust Programming Language* #h(1fr) Since 2024/12
  - Triaged and fixed issues for Clippy, the Rust linter, including bug fixes and lint improvements. Contributed 200+ merged commits and reduced 1k+ false positives and negatives in regression tests.

*HPC Competitions*
- *Team Leader, ISC'24 Student Cluster Competition* #h(1fr) 2024/03 -- 2024/04
  - Individual 3rd place in Coding Challenge, OpenMP Track. Implemented code optimization and GPU offloading for this Challenge; achieved strong scaling within one CPU node and 200× speedup in one A100.
  - Advised the team on MPI profiling and optimization; reduced communication time by 50%.

*Student Organizations*
- *Vice President, Geekpie Association* #h(1fr) 2022/08 -- 2023/07
  - Developed the frontend of Coursebench, a popular course-rating website for ShanghaiTech University.
  - Organized events including Geekpie Games and Geekpie Linux Seminar, with 1k+ students participated.

// == Projects
// #chiline()

// *Rathernet* #link("https://github.com/profetia/rathernet")[github.com/profetia/rathernet] #h(1fr) 2023/09
// -- 2023/10\
// An acoustic userspace network stack written in Rust #h(1fr) // #lorem(2)
// \
// - Implemented all five layers of the OSI model from bottom to up, using acoustic
//   wave as the carrier.
// // - Utilized existing Rust asynchronous infrastructures and avoided manual control of scheduling and synchronization.
// - Created a customized network address translation, achieving bidirectional
//   interaction with the Internet.
// - Integrated the program into the operating system, enabling common transportation
//   and application protocols.

// *Pintos* #link("https://github.com/profetia/pintos")[github.com/profetia/pintos] #h(1fr) 2023/08
// -- 2023/09\
// An education-oriented operating system from Stanford #h(1fr) // #lorem(2)
// \
// - Implemented core operating system components: kernel threads, user programs,
//   virtual memory, and file system.

// *BusTub* #h(1fr) 2023/11 -- 2023/12\
// A relational database management system from CMU implemented in C++ #h(1fr) // #lorem(2)
// \
// - Completed core DBMS functions including storage management, indexing, query
//   execution, and concurrency control.

// *LBM* #link("https://github.com/winlere/lbm")[github.com/winlere/lbm] #h(1fr) 2023/04
// -- 2023/05\
// An optimized numerical simulation of Computational Fluid Dynamics #h(1fr) // #lorem(2)
// \
// - Optimized the simulation with techniques including OpenMP parallelization, SIMD
//   vectorization, memory alignment, cache blocking, and software pipelining.
// - Achieved a 20x speed increase over baseline on Intel Xeon E5-2698 v4 processor
//   (20 cores).

== Services
#chiline()

- Teaching Assistant, CS100: Computer Programming, ShanghaiTech University #h(1fr) Spring 2023
- Teaching Assistant, CS132: Software Engineering, ShanghaiTech University #h(1fr) Spring 2023

== Awards
#chiline()

- Second Class Prize (Rank 6/447), with Huawei Kunpeng Special Award, 2025 PKU HPCGame #h(1fr) 2025/01
- Individual 3rd place for Coding Challenge (OpenMP Track), Rank 9/29, ISC'24 Student Cluster Competition #h(1fr) 2024/04
- Second Class Prize (Rank 27/300+), ASC'24 Student Supercomputer Challenge #h(1fr) 2024/02
- Outstanding Teaching Assistant, ShanghaiTech University #h(1fr) 2023/06
// - Silver Award, ICPC China Silk Road National Invitational 2023 #h(1fr) 2023/05
- Outstanding Student (Top 3%-7%), ShanghaiTech University #h(1fr) 2022/10
- Level 6 (= Second Class Prize in former NOIP), 1st place in the award group, 2019 CCF CSP-S #h(1fr) 2019/12

== Skills
#chiline()
*Working Languages*: Chinese (Native), English (Advanced, TOEFL 112:
R30/L30/S24/W28)\
*Programming Languages*: Python, Modern C/C++, Rust, Golang, Typescript, Shell, P4, SQL\
*Tools and Frameworks*: OpenMP, MPI, CUDA, Linux Kernel, eBPF, LMCache, Megatron-LM, DeepSpeed, UPPAAL\
*DevOps Technologies*: Docker, Singularity, Kubernetes, Slurm, Gitlab, Postgres, Cloudflare Worker

#last_updated(datetime.today().display("[month repr:long], [year]"))
