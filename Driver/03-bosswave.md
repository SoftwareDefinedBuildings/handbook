# Driver Communication

Bosswave
- Go Documentation: https://gopkg.in/immesys/bw2bind.v5
- GitHub: https://github.com/immesys/bw2

Basic Terminology
- Entity
- URI
- Namespace
- DoT (Declaration of Trust)

Commands
- 'mke': Create a new entity
- 'bc': Build a DoT chain. Specify a URI and entity to grant that entity permission to communication and edit a particular

bw2 bc --uri john/test --to ~/Bosswave/john-dev.ent

- 'mkdot': Create a new access DoT. Grants permissions on a URI from one entity to another. DoT's can expire or be revoked.

bw2 mkdot --from ~/Bosswave/john.key --to ~/Bosswave/john-dev.ent --uri john/* --bankroll ~/Bossave/john.key

Potential Errors:
- [443] Peer has a different VK
- [401] No primary access chain found
