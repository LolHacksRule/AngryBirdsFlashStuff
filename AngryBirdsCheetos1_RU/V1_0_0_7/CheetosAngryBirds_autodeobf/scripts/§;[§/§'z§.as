package §;[§
{
   import §'!N§.§71§;
   import flash.text.TextField;
   
   public class §'z§ extends §71§
   {
       
      
      public var §%!B§:TextField;
      
      public function §'z§(param1:XML, param2:§>!^§)
      {
         super(param1,param2);
         this.§%!B§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§%!B§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§%!B§)
         {
            this.§%!B§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§%!B§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§%!B§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§%!B§ = null;
      }
   }
}
