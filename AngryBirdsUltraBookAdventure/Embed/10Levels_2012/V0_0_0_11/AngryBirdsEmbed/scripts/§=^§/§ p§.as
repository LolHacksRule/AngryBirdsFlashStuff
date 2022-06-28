package §=^§
{
   import §@s§.§9$§;
   import flash.text.TextField;
   
   public class § p§ extends §9$§
   {
       
      
      public var §!"§:TextField;
      
      public function § p§(param1:XML, param2:§`f§)
      {
         super(param1,param2);
         this.§!"§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§!"§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§!"§)
         {
            this.§!"§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§!"§.text = param1;
      }
      
      public function §6"§() : String
      {
         return this.§!"§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§!"§ = null;
      }
   }
}
