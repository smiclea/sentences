package model.events
{
	import flash.events.Event;
	
	public class ThreeLettersEvent extends Event
	{
		
		static public const TEXT_CHANGED :String = "textChanged";
		static public const MISTAKE :String = "mistake";
		static public const COMPLETE :String = "complete";
		
		public var text :String;
		
		public function ThreeLettersEvent(type:String, text :String = "")
		{
			this.text = text;
			
			super(type);
		}
	}
}