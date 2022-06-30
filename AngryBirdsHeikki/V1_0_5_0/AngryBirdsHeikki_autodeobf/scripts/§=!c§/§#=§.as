package §=!c§
{
   import §93§.§?t§;
   import flash.text.TextField;
   
   public class §#=§ extends §?t§
   {
       
      
      public var §5!R§:TextField;
      
      public function §#=§(param1:XML, param2:§=>§)
      {
         super(param1,param2);
         this.§5!R§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§5!R§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§5!R§)
         {
            this.§5!R§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§5!R§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§5!R§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§5!R§ = null;
      }
   }
}
