package §_-TW§
{
   import §_-xN§.§_-WL§;
   import flash.text.TextField;
   
   public class §_-iD§ extends §_-WL§
   {
       
      
      public var §_-3n§:TextField;
      
      public function §_-iD§(param1:XML, param2:§_-qq§)
      {
         super(param1,param2);
         this.§_-3n§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-3n§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-3n§)
         {
            this.§_-3n§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-3n§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-3n§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-3n§ = null;
      }
   }
}
