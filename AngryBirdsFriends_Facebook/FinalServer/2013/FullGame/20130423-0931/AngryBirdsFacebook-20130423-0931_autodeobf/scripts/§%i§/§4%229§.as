package §%i§
{
   import §1!t§.§!!G§;
   import §9@§.§3"!§;
   import flash.text.TextField;
   
   public class §4"9§ extends §!!G§
   {
       
      
      public var §-" §:TextField;
      
      private var §3M§:§3"!§ = null;
      
      public function §4"9§(param1:XML, param2:§0!Y§)
      {
         super(param1,param2);
         this.§-" § = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§-" §.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§-" §)
         {
            this.§-" §.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§-" §.text = param1;
      }
      
      public function § do§() : String
      {
         return this.§-" §.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§3M§)
         {
            this.§3M§.dispose();
            this.§3M§ = null;
         }
         this.§-" § = null;
      }
      
      public function §#!_§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§3M§ = new §3"!§(this.§-" §,param1,param2,param3);
      }
      
      public function §;!c§() : void
      {
         this.§3M§.dispose();
         this.§3M§ = null;
      }
   }
}
