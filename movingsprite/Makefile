ifeq "" "$(shell which python)"
default:
	@echo "Please install python"
	exit 1
else
default: movingsprite.nes
endif

clean:
	@rm movingsprite.nes

.pip_check: requirements.txt
	pip install -r requirements.txt
	touch $@

movingsprite.nes: .pip_check
	pynes asm movingsprite.asm -o movingsprite.nes

run: movingsprite.nes
	fceux movingsprite.nes	
