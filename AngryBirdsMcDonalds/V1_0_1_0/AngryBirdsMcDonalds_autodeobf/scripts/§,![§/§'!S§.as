package §,![§
{
   import §-1§.§>!6§;
   import §1!D§.§65§;
   import flash.text.TextField;
   
   public class §'!S§ extends §>!6§
   {
       
      
      public var §'!Z§:TextField;
      
      private var §1c§:§65§ = null;
      
      public function §'!S§(param1:XML, param2:§[!S§)
      {
         super(param1,param2);
         this.§'!Z§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§'!Z§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§'!Z§)
         {
            this.§'!Z§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§'!Z§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§'!Z§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§1c§)
         {
            this.§1c§.dispose();
            this.§1c§ = null;
         }
         this.§'!Z§ = null;
      }
      
      public function §<j§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§1c§ = new §65§(this.§'!Z§,param1,param2,param3);
      }
      
      public function §];§() : void
      {
         this.§1c§.dispose();
         this.§1c§ = null;
      }
   }
}
