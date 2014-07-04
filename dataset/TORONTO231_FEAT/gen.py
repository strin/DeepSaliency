import os

listing = os.listdir('../TORONTO231')
layers = [3, 6, 9, 12, 16, 18, 20, 21]

for name in listing:
  dot = name.find('.jpg')
  if dot == -1:
    continue
  name = name[:dot]
  print 'processing ', name, '.jpg'
  for layer in layers:
    print '\t at layer ', layer
    os.popen('../../code/overfeat/bin/macos/overfeat ../TORONTO231/%s.jpg -f -d ../../code/overfeat/data/default/ -L %d > %s_%d.features'%(name, layer, name, layer))
