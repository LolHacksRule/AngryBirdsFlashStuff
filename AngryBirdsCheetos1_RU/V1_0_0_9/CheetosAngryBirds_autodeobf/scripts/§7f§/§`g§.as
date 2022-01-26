package §7f§
{
   import §^r§.§%%§;
   import flash.text.TextField;
   
   public class §`g§ extends §%%§
   {
       
      
      public var §^!N§:TextField;
      
      public function §`g§(param1:XML, param2:§?i§)
      {
         super(param1,param2);
         this.§^!N§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§^!N§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§^!N§)
         {
            this.§^!N§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§^!N§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§^!N§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§^!N§ = null;
      }
   }
}
