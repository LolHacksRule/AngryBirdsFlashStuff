package §'P§
{
   import §7]§.§8N§;
   import flash.text.TextField;
   
   public class §5!_§ extends §8N§
   {
       
      
      public var §5r§:TextField;
      
      public function §5!_§(param1:XML, param2:§`;§)
      {
         super(param1,param2);
         this.§5r§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§5r§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§5r§)
         {
            this.§5r§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§5r§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§5r§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§5r§ = null;
      }
   }
}
