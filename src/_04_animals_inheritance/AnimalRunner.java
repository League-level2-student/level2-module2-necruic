package _04_animals_inheritance;

/*
 * 1. Similar to the shapes example, use inheritance to create classes 
 *   in order for this code to work.
 * 
 * HINT: We need a Super class to have all the things that Dog and Cat 
 *       have in common. Lets call that class Animal.
 */
public class AnimalRunner {
	public static void main(String[] args) {
		Animal c = new Animal("Lucy", "Brown", true);
		Animal d = new Animal("Tom", "Black", false);
		c.printName();
		c.play();
		c.eat();
		c.sleep();
		
		d.printName();
		d.play();
		d.eat();
		d.sleep();
	}
}
