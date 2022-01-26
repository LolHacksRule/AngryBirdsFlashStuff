package §_-F1§
{
   import §_-6r§.§_-h3§;
   import flash.text.TextField;
   
   public class §_-V1§ extends §_-h3§
   {
       
      
      public var §_-hJ§:TextField;
      
      public function §_-V1§(param1:XML, param2:§_-k4§)
      {
         super(param1,param2);
         this.§_-hJ§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-hJ§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-hJ§)
         {
            this.§_-hJ§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-hJ§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-hJ§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-hJ§ = null;
      }
   }
}
