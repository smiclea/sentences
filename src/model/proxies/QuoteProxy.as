package model.proxies
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import model.vo.QuoteVO;
	
	import mx.collections.ArrayCollection;
	
	public class QuoteProxy extends EventDispatcher
	{
		static private var completeHandler :Function;
		
		static public var quotes :ArrayCollection = new ArrayCollection();
		
		public function QuoteProxy()
		{
		}
		
		static public function loadQuotes(completeHandler :Function) :void
		{
			var request :URLRequest = new URLRequest("assets/data/quotes.xml");
			var loader :URLLoader = new URLLoader();
			
			QuoteProxy.completeHandler = completeHandler;
			
			loader.addEventListener(Event.COMPLETE, quotesCompleteHandler);
			
			loader.load(request);
		}
		
		static private function quotesCompleteHandler(event :Event) :void
		{
			var data :XML = new XML(event.currentTarget.data);
			quotes = new ArrayCollection();
			
			for each (var item :XML in data.children())
				quotes.addItem(new QuoteVO(item.text.toString(), item.author.toString()));
			
			completeHandler();
		}
	}
}