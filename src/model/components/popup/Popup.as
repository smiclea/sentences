package model.components.popup
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.core.FlexGlobals;
	import mx.managers.PopUpManager;
	
	[Bindable]
	public class Popup extends EventDispatcher
	{
		public function Popup()
		{
		}
		
		static public function showPopup(title: String, message :String, parent :DisplayObject, closeHandler :Function = null) :void
		{
			var popupView :PopupVew = new PopupVew();
			popupView.message = message;
			popupView.title = title;
			
			if (closeHandler != null)
				popupView.addEventListener(Event.CLOSE, closeHandler);
			
			PopUpManager.addPopUp(popupView, parent);
		}
	}
}