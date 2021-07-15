package §0"$§
{
   import §"n§.§;Z§;
   import §,L§.§%J§;
   import §-!;§.§>!B§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class §+!@§ extends §%J§
   {
       
      
      public var §"v§:Object;
      
      private var §4!>§:§;Z§ = null;
      
      public function §+!@§(param1:XML, param2:§"!a§)
      {
         super(param1,param2);
         if(mClip.getChildByName("text") is TLFTextField)
         {
            this.§"v§ = mClip.getChildByName("text") as TLFTextField;
         }
         else
         {
            this.§"v§ = mClip.getChildByName("text") as TextField;
         }
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§"v§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§"v§)
         {
            this.§"v§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         if(this.§"v§.text != param1)
         {
            this.§"v§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§"v§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§4!>§)
         {
            this.§4!>§.dispose();
            this.§4!>§ = null;
         }
         this.§"v§ = null;
      }
   }
}
