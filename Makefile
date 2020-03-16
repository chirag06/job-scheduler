blazersh: jobscheduler.c
	gcc jobscheduler.c queue.c -lpthread -o blazersh

clean:
	rm *.out *.err blazersh *.log
