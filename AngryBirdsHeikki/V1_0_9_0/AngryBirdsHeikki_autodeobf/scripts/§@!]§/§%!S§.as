package §@!]§
{
   import §1Q§.§4p§;
   import §3r§.§+!G§;
   import flash.text.TextField;
   
   public class §%!S§ extends §4p§
   {
       
      
      public var §9!"§:TextField;
      
      private var §4!^§:§+!G§ = null;
      
      public function §%!S§(param1:XML, param2:§'!9§)
      {
         super(param1,param2);
         this.§9!"§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§9!"§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§9!"§)
         {
            this.§9!"§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§9!"§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§9!"§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§4!^§)
         {
            this.§4!^§.dispose();
            this.§4!^§ = null;
         }
         this.§9!"§ = null;
      }
      
      public function §0x§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§4!^§ = new §+!G§(this.§9!"§,param1,param2,param3);
      }
      
      public function §+!V§() : void
      {
         this.§4!^§.dispose();
         this.§4!^§ = null;
      }
   }
}
