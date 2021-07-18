package §2u§
{
   import §!""§.§]H§;
   import §'"!§.§-!g§;
   import §4!i§.§0!8§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class §7!&§ extends §-!g§
   {
       
      
      public var §'!"§:Object;
      
      private var §]n§:§0!8§ = null;
      
      public function §7!&§(param1:XML, param2:§,6§)
      {
         super(param1,param2);
         if(mClip.getChildByName("text") is TLFTextField)
         {
            this.§'!"§ = mClip.getChildByName("text") as TLFTextField;
         }
         else
         {
            this.§'!"§ = mClip.getChildByName("text") as TextField;
         }
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§'!"§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§'!"§)
         {
            this.§'!"§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         if(this.§'!"§.text != param1)
         {
            this.§'!"§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§'!"§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§]n§)
         {
            this.§]n§.dispose();
            this.§]n§ = null;
         }
         this.§'!"§ = null;
      }
   }
}
