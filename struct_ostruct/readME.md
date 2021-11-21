With an OpenStruct, you can arbitrarily create attributes. A Struct, on the other hand, must have its attributes defined when you create it. The choice of one over the other should be based primarily on whether you need to be able to add attributes later.

Use Struct when:
  speed is a concern
  you know all of your attributes at instantiation

Use OpenStruct when:
  speed is not a concern
  you don’t know all of your attributes at instantiation