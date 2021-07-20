package §^@§
{
   import §1h§.§ use§;
   import flash.text.TextField;
   
   public class §`Y§ extends § use§
   {
       
      
      public var § p§:TextField;
      
      public function §`Y§(param1:XML, param2:§2q§)
      {
         super(param1,param2);
         this.§ p§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§ p§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§ p§)
         {
            this.§ p§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§ p§.text = param1;
      }
      
      public function §6"§() : String
      {
         return this.§ p§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§ p§ = null;
      }
   }
}
