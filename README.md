# Accelerating software development for emerging ISA extensions with cloud-based FPGAs: RVV case study

*Authors:* Marek Pikuła, Marek Szyprowski (Samsung R&D Institute Poland)

> The RISC-V Vector Extension (RVV) promises an enhanced performance and power efficiency across various complex computational tasks. However, the efficient utilization of RVV demands careful consideration of the optimization approach. This article examines strategies for accelerating this process. Key challenges include assessing performance differences among algorithmic approaches and overcoming initial hardware constraints. FireSim provides a comprehensive solution by offering advanced software and hardware simulation capabilities. Utilizing FireSim, we started the process of enhancing source code with RVV instructions (called vectorization) for the pixman project. Our experience outlines the efficacy of a cloud-based FPGA simulation in expediting software development for emerging ISA extensions. Overall, FireSim facilitates faster iteration cycles and informed design decisions, benefiting individual developers and fostering collaboration in remote teams.

## Resources

On this website you can find all resources for my poster submission for [*RISC-V Summit Europe 2024*](https://riscv-europe.org/summit/2024/) and [*ORConf 2024*](https://fossi-foundation.org/orconf/2024):

- [GitHub repository with all resources][here]
- [Extended abstract][abstract] ([PDF version][abstract-pdf])
- [Poster (PDF)][poster-pdf]
- [ORConf 2024 main talk][presentation-video] ([slides][presentation])
- [ORConf 2024 lightning talk][lightning-video] ([slides][lightning], title: *CI setup for multi-platform software project*)

You can read my RISC-V Summit Europe 2024 summary with some more information about this project on my [blog].

[here]: https://github.com/MarekPikula/RISC-V-Summit-Europe-2024
[abstract]: abstract/index.html
[abstract-pdf]: abstract/abstract.pdf
[poster-pdf]: poster/poster.pdf
[presentation]: presentation/2024-09-14-orconf-presentation.pdf
[presentation-video]: https://youtu.be/04YZcZ8E_jg
[lightning]: presentation/2024-09-14-orconf-lightning-talk.pdf
[lightning-video]: https://youtu.be/Xm_kUVhMBdw?t=766
[blog]: https://serenitycode.dev/post/2024/06/riscv-summit-europe

## Code

The following repositories were modified in process of this project:

- [Chipyard][chipyard-repo]
- [FireSim][firesim-repo]
- [PULP Ara][ara-repo]
- [PULP Ara Chipyard wrapper][ara-wrapper-repo]
- [FireMarshal][firemarshal-repo]

[chipyard-repo]: https://github.com/MarekPikula/chipyard/tree/ara-integration
[firesim-repo]: https://github.com/MarekPikula/firesim/tree/ara-integration
[ara-repo]: https://github.com/MarekPikula/pulp-ara/tree/chipyard-integration
[ara-wrapper-repo]: https://github.com/Samsung/chipyard-ara-wrapper
[firemarshal-repo]: https://github.com/MarekPikula/FireMarshal

> [!NOTE]
> All repositories are available as submodules in the `code` directory.

## Benchmarks

In order to assess performance of PULP Ara, [rvv-bench][rvv-bench-upstream] was used. Results are available [here][rvv-bench-results]. It uses a modified [rvv-bench][rvv-bench-mod] suite.

[rvv-bench-upstream]: https://github.com/camel-cdr/rvv-bench
[rvv-bench-results]: benchmarks/rvv-bench-results/pulp_ara/index.html
[rvv-bench-mod]: https://github.com/MarekPikula/rvv-bench/tree/pulp-ara
