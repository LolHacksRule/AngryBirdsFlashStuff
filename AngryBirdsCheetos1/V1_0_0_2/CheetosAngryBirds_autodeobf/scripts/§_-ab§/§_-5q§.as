package §_-ab§
{
   import §_-A§.§_-YT§;
   import flash.text.TextField;
   
   public class §_-5q§ extends §_-YT§
   {
       
      
      public var §_-xA§:TextField;
      
      public function §_-5q§(param1:XML, param2:§_-IP§)
      {
         super(param1,param2);
         this.§_-xA§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-xA§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-xA§)
         {
            this.§_-xA§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-xA§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-xA§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-xA§ = null;
      }
   }
}
