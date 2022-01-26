package §_-E-§
{
   import §_-PK§.§_-ds§;
   import flash.text.TextField;
   
   public class §_-mm§ extends §_-ds§
   {
       
      
      public var §_-3U§:TextField;
      
      public function §_-mm§(param1:XML, param2:§_-hw§)
      {
         super(param1,param2);
         this.§_-3U§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-3U§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-3U§)
         {
            this.§_-3U§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-3U§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-3U§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-3U§ = null;
      }
   }
}
