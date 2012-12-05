package model.events
{
	import flash.events.Event;
	
	public class KeyEvent extends Event
	{
		
		static public const KEY_PRESSED :String = "keyPressed";
		
		public var key :String;
		
		public function KeyEvent(type:String, key :String = "")
		{
			this.key = key;
			
			super(type);
		}
	}
}