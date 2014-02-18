QCFILES = buttons.qc  defs.qc   misc.qc	 player.qc    sprites.qc   weapons.qc \
          client.qc   doors.qc  models.qc  server.qc    subs.qc	   world.qc   \
          combat.qc   items.qc  plats.qc	 spectate.qc  triggers.qc 

QWPROGS_DAT = ../qwprogs.dat
QCC=gmqcc
QCCFLAGS=-std=qcc
RM=rm -f


$(QWPROGS_DAT): $(QCFILES) progs.src progdefs.h
	$(QCC) $(QCCFLAGS)

clean:
	$(RM) $(QWPROGS_DAT)
