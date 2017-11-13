# One_qsub_for_several_runs

Run as:

`bash multidir_improved_2.sh  > multidir_improved_2.qsub`

`vi multidir_improved_2.sh`

and on top, add the file: `template.qsub`

```
1,16s/$/ \\\\/g

When you run:
qcry17.v1 input(.d12)  first_input
Only the second file does not have to contain the extension .d12
(.d12) means that the extension is optional, you can or cannot include it.

:r !which bash
:set paste
```
