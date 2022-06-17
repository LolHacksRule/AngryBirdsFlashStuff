package §5!$§
{
   import §+#B§.§ !;§;
   import §4!n§.§'!V§;
   import §5"G§.§8"`§;
   import flash.text.TextField;
   
   public class §-#j§ extends §'!V§
   {
       
      
      public var §^g§:TextField;
      
      private var §7"%§:§ !;§ = null;
      
      public function §-#j§(param1:XML, param2:§<c§)
      {
         super(param1,param2);
         this.§^g§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§^g§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§^g§)
         {
            this.§^g§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"`§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§^g§.text = param1;
      }
      
      public function §0!m§() : String
      {
         return this.§^g§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§7"%§)
         {
            this.§7"%§.dispose();
            this.§7"%§ = null;
         }
         this.§^g§ = null;
      }
      
      public function §>!k§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§7"%§ = new § !;§(this.§^g§,param1,param2,param3);
      }
      
      public function §2#5§() : void
      {
         this.§7"%§.dispose();
         this.§7"%§ = null;
      }
   }
}
