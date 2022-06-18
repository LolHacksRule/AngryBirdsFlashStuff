package §[V§
{
   import §8B§.§+;§;
   import flash.text.TextField;
   
   public class §`@§ extends §+;§
   {
       
      
      public var §66§:TextField;
      
      public function §`@§(param1:XML, param2:§=!'§)
      {
         super(param1,param2);
         this.§66§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§66§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§66§)
         {
            this.§66§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§66§.text = param1;
      }
      
      public function §@!2§() : String
      {
         return this.§66§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§66§ = null;
      }
   }
}
