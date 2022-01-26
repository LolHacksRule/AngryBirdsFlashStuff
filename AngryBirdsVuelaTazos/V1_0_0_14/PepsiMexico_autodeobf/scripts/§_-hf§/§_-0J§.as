package §_-hf§
{
   import §_-Jx§.§_-Tc§;
   import flash.text.TextField;
   
   public class §_-0J§ extends §_-Tc§
   {
       
      
      public var §_-Ho§:TextField;
      
      public function §_-0J§(param1:XML, param2:§_-WL§)
      {
         super(param1,param2);
         this.§_-Ho§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-Ho§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-Ho§)
         {
            this.§_-Ho§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-Ho§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-Ho§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-Ho§ = null;
      }
   }
}
