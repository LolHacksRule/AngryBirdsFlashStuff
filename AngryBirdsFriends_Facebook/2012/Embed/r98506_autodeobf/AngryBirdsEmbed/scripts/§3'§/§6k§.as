package §3'§
{
   import §+n§.§3P§;
   import flash.text.TextField;
   
   public class §6k§ extends §3P§
   {
       
      
      public var §#Y§:TextField;
      
      public function §6k§(param1:XML, param2:§8I§)
      {
         super(param1,param2);
         this.§#Y§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§#Y§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§#Y§)
         {
            this.§#Y§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§#Y§.text = param1;
      }
      
      public function §"<§() : String
      {
         return this.§#Y§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§#Y§ = null;
      }
   }
}
