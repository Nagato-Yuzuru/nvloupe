# Security

There are two different things people mean by "a security issue" here. They
go to different places.

## A flaw in nvloupe itself

If you've found a bug in nvloupe that has security weight — it crashes on
hostile input, it can be made to miss a whole class of capability, it reads or
writes something it shouldn't while scanning — report it privately. Open a
[draft advisory](https://github.com/Nagato-Yuzuru/nvloupe/security/advisories/new) rather than a public issue.

Please include what you ran, what happened, and a way to reproduce it. This is a
side project, you'll get a real answer, just not necessarily a fast one.

## A plugin you think is malicious

nvloupe is not an intake for this, and this repo is not where it should be
posted. Naming a plugin as malware in a public issue, before anyone has
confirmed it, can be wrong and can do real harm.

If you suspect a specific plugin:

- Report it to wherever it's hosted (GitHub abuse, the registry, the author if
  you trust them).
- If it's distributed through a plugin manager, let that project know.
- If you want a missed _pattern_ turned into a rule so nvloupe catches that
  shape in future, open a "Missed capability" issue with a **minimal, neutral**
  snippet of technique.
