package §=!H§
{
   import §9c§.§6P§;
   import flash.text.TextField;
   
   public class §`S§ extends §6P§
   {
       
      
      public var §'Z§:TextField;
      
      public function §`S§(param1:XML, param2:§9V§)
      {
         super(param1,param2);
         this.§'Z§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§'Z§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§'Z§)
         {
            this.§'Z§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§'Z§.text = param1;
      }
      
      public function §67§() : String
      {
         return this.§'Z§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§'Z§ = null;
      }
   }
}
