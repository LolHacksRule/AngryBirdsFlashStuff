package §;"+§
{
   import §%f§.§!! §;
   import §<" §.§]!g§;
   import §>P§.§-U§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class §"!I§ extends §-U§
   {
       
      
      public var §6s§:Object;
      
      private var §6!N§:§!! § = null;
      
      public function §"!I§(param1:XML, param2:§^!i§)
      {
         super(param1,param2);
         if(mClip.getChildByName("text") is TLFTextField)
         {
            this.§6s§ = mClip.getChildByName("text") as TLFTextField;
         }
         else
         {
            this.§6s§ = mClip.getChildByName("text") as TextField;
         }
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§6s§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§6s§)
         {
            this.§6s§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]!g§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         if(this.§6s§.text != param1)
         {
            this.§6s§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§6s§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§6!N§)
         {
            this.§6!N§.dispose();
            this.§6!N§ = null;
         }
         this.§6s§ = null;
      }
   }
}
