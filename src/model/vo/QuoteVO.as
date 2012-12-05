package model.vo
{
	[Bindable]
	public class QuoteVO
	{
		
		public var text :String;
		public var author :String;
		
		public function QuoteVO(text :String = "", author :String = "")
		{
			this.text = text;
			this.author = author;
		}
	}
}