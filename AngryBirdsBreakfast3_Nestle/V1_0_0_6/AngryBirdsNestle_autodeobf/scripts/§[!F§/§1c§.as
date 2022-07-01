package §[!F§
{
   import §&<§.§@j§;
   import §2W§.§`6§;
   import §8,§.§8!h§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class §1c§ extends §@j§
   {
       
      
      public var § e§:Object;
      
      private var §`!F§:§`6§ = null;
      
      public function §1c§(param1:XML, param2:§3j§)
      {
         super(param1,param2);
         if(mClip.getChildByName("text") is TLFTextField)
         {
            this.§ e§ = mClip.getChildByName("text") as TLFTextField;
         }
         else
         {
            this.§ e§ = mClip.getChildByName("text") as TextField;
         }
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§ e§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§ e§)
         {
            this.§ e§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8!h§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         if(this.§ e§.text != param1)
         {
            this.§ e§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§ e§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§`!F§)
         {
            this.§`!F§.dispose();
            this.§`!F§ = null;
         }
         this.§ e§ = null;
      }
   }
}
