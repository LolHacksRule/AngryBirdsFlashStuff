package §2T§
{
   import §3V§.§`;§;
   import §7J§.§=U§;
   import flash.text.TextField;
   
   public class §5@§ extends §=U§
   {
       
      
      public var §[!J§:TextField;
      
      private var §3W§:§`;§ = null;
      
      public function §5@§(param1:XML, param2:§&M§)
      {
         super(param1,param2);
         this.§[!J§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§[!J§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§[!J§)
         {
            this.§[!J§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§[!J§.text = param1;
      }
      
      public function §!z§() : String
      {
         return this.§[!J§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§3W§)
         {
            this.§3W§.dispose();
            this.§3W§ = null;
         }
         this.§[!J§ = null;
      }
      
      public function §[%§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§3W§ = new §`;§(this.§[!J§,param1,param2,param3);
      }
      
      public function §6!'§() : void
      {
         this.§3W§.dispose();
         this.§3W§ = null;
      }
   }
}
