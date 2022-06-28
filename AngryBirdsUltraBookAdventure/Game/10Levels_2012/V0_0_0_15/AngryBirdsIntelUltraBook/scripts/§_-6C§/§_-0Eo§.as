package §_-6C§
{
   import §_-MN§.§_-rR§;
   import flash.text.TextField;
   
   public class §_-0Eo§ extends §_-rR§
   {
       
      
      public var §_-ab§:TextField;
      
      public function §_-0Eo§(param1:XML, param2:§_-gt§)
      {
         super(param1,param2);
         this.§_-ab§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-ab§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-ab§)
         {
            this.§_-ab§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-ab§.text = param1;
      }
      
      public function §_-06e§() : String
      {
         return this.§_-ab§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-ab§ = null;
      }
   }
}
