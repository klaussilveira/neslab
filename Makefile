
default: build

movingsprite/movingsprite.nes:
	$(MAKE) -C movingsprite


build: movingsprite/movingsprite.nes

clean:
	$(MAKE) -C movingsprite clean
