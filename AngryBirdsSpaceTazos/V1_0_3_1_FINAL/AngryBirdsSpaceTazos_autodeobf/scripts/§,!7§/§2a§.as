package §,!7§
{
   import §'!n§.§<;§;
   import §+=§.§?!Q§;
   import §6B§.§5![§;
   import flash.text.TextField;
   
   public class §2a§ extends §5![§
   {
       
      
      public var §%!%§:TextField;
      
      private var §-j§:§<;§ = null;
      
      public function §2a§(param1:XML, param2:§5!k§)
      {
         super(param1,param2);
         this.§%!%§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§%!%§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§%!%§)
         {
            this.§%!%§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!Q§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§%!%§.text = param1;
      }
      
      public function §;!E§() : String
      {
         return this.§%!%§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§-j§)
         {
            this.§-j§.dispose();
            this.§-j§ = null;
         }
         this.§%!%§ = null;
      }
      
      public function § !=§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§-j§ = new §<;§(this.§%!%§,param1,param2,param3);
      }
      
      public function §8$§() : void
      {
         this.§-j§.dispose();
         this.§-j§ = null;
      }
   }
}
