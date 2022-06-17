package §4!e§
{
   import §2!i§.§=!&§;
   import §<a§.§>!i§;
   import flash.text.TextField;
   
   public class §-"E§ extends §=!&§
   {
       
      
      public var §5!=§:TextField;
      
      private var §"!g§:§>!i§ = null;
      
      public function §-"E§(param1:XML, param2:§08§)
      {
         super(param1,param2);
         this.§5!=§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§5!=§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§5!=§)
         {
            this.§5!=§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§5!=§.text = param1;
      }
      
      public function §-W§() : String
      {
         return this.§5!=§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§"!g§)
         {
            this.§"!g§.dispose();
            this.§"!g§ = null;
         }
         this.§5!=§ = null;
      }
      
      public function §;4§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§"!g§ = new §>!i§(this.§5!=§,param1,param2,param3);
      }
      
      public function §%S§() : void
      {
         this.§"!g§.dispose();
         this.§"!g§ = null;
      }
   }
}
