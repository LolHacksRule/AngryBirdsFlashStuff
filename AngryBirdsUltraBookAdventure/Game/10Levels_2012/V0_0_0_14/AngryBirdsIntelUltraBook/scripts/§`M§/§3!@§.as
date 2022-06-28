package §`M§
{
   import §=R§.§5!a§;
   import flash.text.TextField;
   
   public class §3!@§ extends §5!a§
   {
       
      
      public var §!!2§:TextField;
      
      public function §3!@§(param1:XML, param2:§9!#§)
      {
         super(param1,param2);
         this.§!!2§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§!!2§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§!!2§)
         {
            this.§!!2§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§!!2§.text = param1;
      }
      
      public function §%!i§() : String
      {
         return this.§!!2§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§!!2§ = null;
      }
   }
}
