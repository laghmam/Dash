/**
 * Defines the Component abstract class, which is the base for all components.
 */
module components.component;
import core, graphics;

/**
 * Interface for components to implement.
 */
abstract class Component
{
	this( GameObject owner )
	{
		this.owner = owner;
	}

	/**
	 * Function called on update.
	 */
	abstract void update();
	/**
	 * Function called on shutdown.
	 */
	abstract void shutdown();

	/**
	 * The GameObject that owns this component.
	 */
	mixin Property!( "GameObject", "owner", "public" );
}
