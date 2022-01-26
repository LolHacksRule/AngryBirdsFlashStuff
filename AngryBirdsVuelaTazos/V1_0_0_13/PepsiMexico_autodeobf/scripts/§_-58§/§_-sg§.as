package §_-58§
{
   import §_-J-§.§_-BT§;
   import flash.text.TextField;
   
   public class §_-sg§ extends §_-BT§
   {
       
      
      public var §_-Ak§:TextField;
      
      public function §_-sg§(param1:XML, param2:§_-WC§)
      {
         super(param1,param2);
         this.§_-Ak§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-Ak§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-Ak§)
         {
            this.§_-Ak§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-Ak§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-Ak§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-Ak§ = null;
      }
   }
}
