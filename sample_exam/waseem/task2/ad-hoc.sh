#! /bin/bash

pub=$(cat files/sample_exam.pub)

ansible -i inventory -m user -a 'user=automation' all -b
ansible -i inventory -m authorized_key -a "user=automation key={{ lookup('file', 'files/sample_exam.pub') }}" all -b
ansible -i inventory -m community.general.sudoers -a 'name=ad-hoc-automation user=automation commands=ALL nopassword=true' all -b

