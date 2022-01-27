package §="<§
{
   import §#R§.§%!S§;
   import §4u§.§-C§;
   import §7!6§.§^l§;
   import flash.text.TextField;
   
   public class §#`§ extends §^l§
   {
       
      
      public var §';§:TextField;
      
      private var §-!N§:§-C§ = null;
      
      public function §#`§(param1:XML, param2:§,"$§)
      {
         super(param1,param2);
         this.§';§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§';§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§';§)
         {
            this.§';§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%!S§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§';§.text = param1;
      }
      
      public function §%!E§() : String
      {
         return this.§';§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§-!N§)
         {
            this.§-!N§.dispose();
            this.§-!N§ = null;
         }
         this.§';§ = null;
      }
      
      public function §6W§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§-!N§ = new §-C§(this.§';§,param1,param2,param3);
      }
      
      public function §7!d§() : void
      {
         this.§-!N§.dispose();
         this.§-!N§ = null;
      }
   }
}
