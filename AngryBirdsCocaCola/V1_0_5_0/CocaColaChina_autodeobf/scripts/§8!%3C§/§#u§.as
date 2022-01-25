package §8!<§
{
   import §7!H§.§`f§;
   import flash.text.TextField;
   
   public class §#u§ extends §`f§
   {
       
      
      public var §=J§:TextField;
      
      public function §#u§(param1:XML, param2:§2W§)
      {
         super(param1,param2);
         this.§=J§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§=J§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§=J§)
         {
            this.§=J§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§=J§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§=J§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§=J§ = null;
      }
   }
}
