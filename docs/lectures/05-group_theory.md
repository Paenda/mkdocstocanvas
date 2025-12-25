# Lecture 5: Group Theory, DH, Security Assumptions

**Keywords:** _group, generator, Euler Totient function, Diffie-Hellman key exchange, Man-in-the-Middle attack, discrete logarithm (DL), computational diffie-hellman (CDH), decisional diffie-hellman (DDH), hardness reduction, trapdoor._

**Study Material**

*   Slides: [Lecture5.pdf](./assets/lectures/Lecture5.pdf)
*   [Lecture Notes](./assets/lecture_notes/lectureNotes05.pdf)
*   Group Theory Notebooks: [Number\_theory.ipynb](./assets/notes/Number_theory.ipynb), [Number-theory.pdf](./assets/notes/Number-theory.pdf)
*   [A Course in Cryptography](https://www.cs.cornell.edu/courses/cs4830/2010fa/lecnotes.pdf):_ Chapters 2.6-2.6.4, 2.8, 2.9, 2.11
*   [Lecture Notes Cryptographic Protocols](https://berry.win.tue.nl/CryptographicProtocols/LectureNotes.pdf "Link") Chapters 2, 1.3.3  (optional 1)
*   [Proof DL reduction](./assets/notes/proof_DL_reduction.pdf)
*   [_An Intensive Introduction to Cryptography_](https://intensecrypto.org/public/) : Chapters (9.0 optional), 9.3.1, 9.3.4, 3.9.5 (no proofs)
*   (optional): [A Computational Introduction to Number Theory and Algebra](https://www.shoup.net/ntb/ntb-v2.pdf "Link") by Shoup (comprehensive overview, read up only the sections regarding topics you do not understand from the other sources)

**Lecture Content**

*   How to share a key securely?
    *   Key Exchange (KE)
    *   A simple solution
    *   Group Theory
*   The Diffie-Hellman KE
    *   The protocol
    *   Securing DH keys
    *   MiM Attack
*   Security Assumptions
    *   DL, CDH, DDH
    *   Relation between Problems 
    *   CDH ≤ DL (**proof**)
*   Public Key Cryptography
    *   Introduction to the topic
