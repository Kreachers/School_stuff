#lang racket/base

(provide get-general-acks
         get-authors)

(define (get-authors)
  (get-general-acks))

(define (get-general-acks)
  (string-append
   "The following individuals contributed to the implementation"
   " and documentation of Racket: "
   "Claire Alvis, "
   "Yavuz Arkun, "
   "Ian Barland, "
   "Eli Barzilay, "
   "Gann Bierner, "
   "Stephen Bloch, "
   "Matthew Butterick, "
   "Filipe Cabecinhas, "
   "Stephen Chang, "
   "Richard Cleis, "
   "John Clements, "
   "Richard Cobbe, "
   "Greg Cooper, "
   "Ryan Culpepper, "
   "Eric Dobson, "
   "Carl Eastlund, "
   "Moy Easwaran, "
   "Will Farr, "
   "Matthias Felleisen, "
   "Michael Filonenko, "
   "Burke Fetscher, "
   "Robby Findler, "
   "Kathi Fisler, "
   "Cormac Flanagan, "
   "Matthew Flatt, "
   "Sebastian Good, "
   "Paul Graunke, "
   "Kathy Gray, "
   "Dan Grossman, "
   "Arjun Guha, "
   "Dave Gurnell, "
   "Tobias Hammer, "
   "Bruce Hauman, "
   "Dave Herman, "
   "Blake Johnson, "
   "Casey Klein, "
   "Geoffrey S. Knauth, "
   "Mark Krentel, "
   "Shriram Krishnamurthi, "
   "Mario Latendresse, "
   "Guillaume Marceau, "
   "Jacob Matthews, "
   "Jay McCarthy, "
   "Mike T. McHenry, "
   "Philippe Meunier, "
   "Scott Owens, "
   "David T. Pierson, "
   "Jon Rafkind, "
   "Jamie Raymond, "
   "Grant Rettke, "
   "Paul Schlie, "
   "Dorai Sitaram, "
   "Francisco Solsona, "
   "Mike Sperber, "
   "Vincent St-Amour, "
   "Paul Steckler, "
   "Stevie Strickland, "
   "James Swaine, "
   "Jens Axel Søgaard, "
   "Sam Tobin-Hochstadt, "
   "Neil Van Dyke, "
   "David Van Horn, "
   "Anton van Straaten, "
   "Asumu Takikawa, "
   "Kevin Tew, "
   "Neil Toronto, "
   "Dale Vaillancourt, "
   "Dimitris Vyzovitis, "
   "Stephanie Weirich, "
   "Noel Welsh, "
   "Adam Wick, "
   "Danny Yoo, "
   "and "
   "ChongKai Zhu."))