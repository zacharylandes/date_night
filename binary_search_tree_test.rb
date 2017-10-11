gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './binary_search_tree'
require 'pry'
# require 'movies'


class BinarySearchTreeTest < Minitest::Test
  def test_it_can_insert_a_root_node
    tree = BinarySearchTree.new
    assert_equal 1, tree.insert(18, "movie")
  end

  def test_it_can_insert_and_return_node_depth
    tree = BinarySearchTree.new
    tree.insert(18, "matrix")
    tree.insert(13,"dumbness")

    assert_equal 2, tree.insert(19,"matrix")
  end
  def test_it_can_insert_and_return_more_node_depths

    tree = BinarySearchTree.new
    tree.load('movies.txt')

    assert_equal 6, tree.insert(202,"matrix")

  end


  def test_if_it_includes_node

    tree = BinarySearchTree.new
    tree.load('movies.txt')

    # tree.insert(18, "matrix")
    # tree.insert(10,"matrix")
    # tree.insert(13,"dumbness")
    # tree.insert(4,"Dark Knight")
    # tree.insert(11,"helloness")
    # tree.insert(21,"helloness")
    # tree.insert(123,"helloness")
    # tree.insert(24,"helloness")
    # tree.insert(102,"matrix")
    # tree.insert(10,"matrix")
    assert tree.include?(12)
  end

  def test_if_it_does_not_includes_node
    tree = BinarySearchTree.new
    tree.load('movies.txt')
    # tree.insert(18, "matrix")
    # tree.insert(13,"dumbness")
    # tree.insert(4,"Dark Knight")
    # tree.insert(11,"helloness")
    # tree.insert(21,"helloness")
    # tree.insert(123,"helloness")
    # tree.insert(24,"helloness")
    # tree.insert(102,"matrix")
    # tree.insert(10,"matrix")
    refute tree.include?(128)
    refute tree.include?(212)

  end

  def test_it_can_find_the_depth

    tree = BinarySearchTree.new
    tree.load('movies.txt')

    assert_equal 5, tree.depth_of(9)
    assert_equal 6, tree.depth_of(58)
    assert_equal 5, tree.depth_of(79)
    # assert_equal 5, tree.depth_of(10)
  end

  def test_it_can_return_the_max
    tree = BinarySearchTree.new
     tree.load('movies.txt')

    assert_equal ({" The Little Engine That Could" => 100}), tree.max
    refute_equal ({"matrix" => 22}), tree.max
    refute_equal ({"matrix" => 1}), tree.max

  end
  def test_it_can_return_the_min
    tree = BinarySearchTree.new
     tree.load('movies.txt')
    # tree.insert(18, "matrix")
    # tree.insert(13,"dumbness")
    # tree.insert(105,"matrix")
    # tree.insert(111,"matrix")
    # tree.insert(202,"matrix")
    # tree.insert(20,"matrix")

    assert_equal ({" Cruel Intentions" => 0}), tree.min
    refute_equal ({"matrix" => 22}), tree.min
    refute_equal ({"matrix" => 1}), tree.min

  end
  def test_it_can_sort

    tree = BinarySearchTree.new
     tree.load('movies.txt')
    # tree.insert(18, "Forest Gump")
    # tree.insert(14,"Star Wars")
    # tree.insert(4,"Blade Runner")
    # tree.insert(3,"Matrix")
    # tree.insert(202,"Mars Attacks")
    # tree.insert(20,"Truman Show")
    assert_equal ([{0=>" Cruel Intentions"}, {1=>" The Hollow"}, {2=>" Full Metal Jacket"}, {3=>" Frozen Planet: The Epic Journey"}, {4=>" Turbo Kid"},
         {5=>" Bratz: Pampered Petz"}, {6=>" Para Elisa"}, {7=>" I Love You Phillip Morris"},
         {8=>" Incompresa"}, {9=>" A Ballerina's Tale"}, {10=>" Visions"}, {11=>" Love"},
         {12=>" Ungli"}, {13=>" 9 Muses of Star Empire"},
          {14=>" Unsung Heroes: The Story of America's Female Patriots"}, {15=>" Stitches"}, {16=>" Out of My Hand"},
          {17=>" Meet My Valentine"}, {18=>" Care Bears: Journey to Joke-a-Lot"}, {19=>" Scooby-Doo 2: Monsters Unleashed"},
          {20=>" All That Glitters"}, {21=>" Stranger by the Lake"}, {22=>" Swim Little Fish Swim"}, {23=>" The Wild Thornberrys Movie"}, {24=>" My Side of the Mountain"}, {25=>" Assassination"}, {26=>" Hate Story 2"}, {27=>" Hate Crimes in the Heartland"}, {28=>" Suspect Zero"}, {29=>" Like Rain"}, {30=>" Breathe"},
          {31=>" Bratz Kidz: Sleep-Over Adventure"}, {32=>" Game Face"}, {33=>" Ayanda and the Mechanic"}, {34=>" Kashmir"}, {35=>" Sharknado 3"}, {36=>" Bill & Ted's Bogus Journey"}, {37=>" Ricardo O'Farrill Abrazo Genial"}, {38=>" Charlie's Country"},
          {39=>" A Place on Earth"}, {40=>" The Year Dolly Parton Was My Mum"}, {41=>" Waking Ned Devine"}, {42=>" How to Steal a Million"}, {43=>" The Hoax"}, {44=>" Stardust"}, {45=>" The One I Wrote for You"}, {46=>" Maz Jobrani: Brown and Friendly"}, {47=>" The Fury"}, {48=>" Tenured"}, {49=>" Star Trek V: The Final Frontier"},
          {50=>" Bratz Go To Paris"}, {51=>" Jennifer 8"}, {52=>" Crossroads"}, {53=>" Tokyo Tribe"}, {54=>" Alpha and Omega: The Legend of the Saw Tooth Cave"},
          {55=>" Experimenter"}, {56=>" Cartel Land"}, {57=>" Kal Ho Naa Ho"}, {58=>" Armageddon"}, {59=>" Frozen Planet: On Thin Ice"}, {60=>" The Veil"}, {61=>" Sin City"}, {62=>" Alpha and Omega 2: A Howl-iday Adventure"},
          {63=>" Lalaloopsy Girls: Welcome to L.A.L.A. Prep School"},
          {64=>" Johnny English"}, {65=>" The Land Before Time XIV: Journey of the Brave"}, {66=>" The Search For Life: The Drake Equation"}, {67=>" Hellions"}, {68=>" Losing Isaiah"}, {69=>" Collateral Damage"},
          {70=>" The Dudesons Movie"}, {71=>" Hannibal Buress: Animal Furnace"}, {72=>" Serenity"}, {73=>" Talladega Nights: The Ballad of Ricky Bobby"}, {74=>" Bratz Kidz: Fairy Tales"}, {75=>" French Dirty"}, {76=>" A Faster Horse"},
          {77=>" Night Watch"}, {78=>" Pound of Flesh"}, {79=>" A Picture of You"}, {80=>" Hannibal Buress: Comedy Camisado"},
          {81=>" Twelve O'Clock High"}, {82=>" The Saint"}, {83=>" The Diabolical"}, {85=>" Pokémon the Movie: Diancie and the Cocoon of Destruction"}, {86=>" Charlie's Angels"},
          {87=>" Bratz: Super Babyz"}, {88=>" curve"}, {89=>" Drone"}, {90=>" Alpha and Omega 3: The Great Wolf Games"}, {91=>" The Cut"}, {92=>" The Hunted"},
          {93=>" Bill & Ted's Excellent Adventure"}, {94=>" Hyde Park on Hudson"}, {95=>" Loins of Punjab"}, {96=>" Scooby-Doo"}, {97=>" Teen Witch"}, {98=>" Animals United"}, {99=>" Sand Dollars"}, {100=>" The Little Engine That Could"}]), tree.sort

  end

def test_it_can_load_a_file

  tree = BinarySearchTree.new
  assert_equal  100, tree.load('movies.txt')

end
end
