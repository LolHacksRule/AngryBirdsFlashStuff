package §4Y§
{
   import §!R§.§-!T§;
   import §&!I§.§9!C§;
   import §`!s§.§+4§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class §&0§ extends §-!T§
   {
       
      
      public var §"S§:Object;
      
      private var §4!G§:§+4§ = null;
      
      public function §&0§(param1:XML, param2:§%n§)
      {
         super(param1,param2);
         if(mClip.getChildByName("text") is TLFTextField)
         {
            this.§"S§ = mClip.getChildByName("text") as TLFTextField;
         }
         else
         {
            this.§"S§ = mClip.getChildByName("text") as TextField;
         }
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§"S§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§"S§)
         {
            this.§"S§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §9!C§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         if(this.§"S§.text != param1)
         {
            this.§"S§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§"S§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§4!G§)
         {
            this.§4!G§.dispose();
            this.§4!G§ = null;
         }
         this.§"S§ = null;
      }
   }
}
