package §8]§
{
   import §!!0§.§2§;
   import flash.text.TextField;
   
   public class §?N§ extends §2§
   {
       
      
      public var §2W§:TextField;
      
      public function §?N§(param1:XML, param2:§+a§)
      {
         super(param1,param2);
         this.§2W§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§2W§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§2W§)
         {
            this.§2W§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§2W§.text = param1;
      }
      
      public function §?k§() : String
      {
         return this.§2W§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§2W§ = null;
      }
   }
}
