package §'!N§
{
   import §8P§.§4!Y§;
   import §=! §.§'!4§;
   import flash.text.TextField;
   
   public class §[!%§ extends §4!Y§
   {
       
      
      public var §^!1§:TextField;
      
      private var §%!^§:§'!4§ = null;
      
      public function §[!%§(param1:XML, param2:§2O§)
      {
         super(param1,param2);
         this.§^!1§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§^!1§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§^!1§)
         {
            this.§^!1§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§^!1§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§^!1§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§%!^§)
         {
            this.§%!^§.dispose();
            this.§%!^§ = null;
         }
         this.§^!1§ = null;
      }
      
      public function §"!U§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§%!^§ = new §'!4§(this.§^!1§,param1,param2,param3);
      }
      
      public function §6i§() : void
      {
         this.§%!^§.dispose();
         this.§%!^§ = null;
      }
   }
}
