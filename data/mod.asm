  ifnd H_DATA_MOD
H_DATA_MOD = 1


  ORG $00003000
  include 'data/patterns/mod.asm'
  include 'data/palettes/mod.asm'
  include 'data/instruments/mod.asm'
  include 'data/tables/mod.asm'
  include 'data/tracks/mod.asm'
  ifd TESTSUITE
  include 'testsuite/test_dataseg.asm'
  endif

  endif
