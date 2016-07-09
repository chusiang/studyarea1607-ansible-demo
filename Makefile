.PHONY: main boot run clean

main: run

init:
	if [ ! -d "ansible-retry" ]; then mkdir "ansible-retry"; fi
	ansible-galaxy install -f -p roles -r requirements.yml

boot:
	vagrant up

run:
	ansible-playbook setup.yml

stop:
	ansible all -m raw -a "shutdown -s -t 0"

clean:
	rm -f setup.retry ansible-retry/setup.retry builds/output.*
	vagrant destroy -f

