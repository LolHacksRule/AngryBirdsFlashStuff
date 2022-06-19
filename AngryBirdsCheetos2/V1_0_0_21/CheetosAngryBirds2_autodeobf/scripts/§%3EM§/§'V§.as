package §>M§
{
   import §!V§.§-!I§;
   import §'!D§.§0j§;
   import flash.text.TextField;
   
   public class §'V§ extends §0j§
   {
       
      
      public var §2!%§:TextField;
      
      private var §[0§:§-!I§ = null;
      
      public function §'V§(param1:XML, param2:§<6§)
      {
         super(param1,param2);
         this.§2!%§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§2!%§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§2!%§)
         {
            this.§2!%§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§2!%§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§2!%§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§[0§)
         {
            this.§[0§.dispose();
            this.§[0§ = null;
         }
         this.§2!%§ = null;
      }
      
      public function §"%§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§[0§ = new §-!I§(this.§2!%§,param1,param2,param3);
      }
      
      public function §<!P§() : void
      {
         this.§[0§.dispose();
         this.§[0§ = null;
      }
   }
}
