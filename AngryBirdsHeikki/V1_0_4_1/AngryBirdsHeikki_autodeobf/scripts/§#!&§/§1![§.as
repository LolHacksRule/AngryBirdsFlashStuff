package §#!&§
{
   import flash.text.TextField;
   import §var§.§8!_§;
   
   public class §1![§ extends §8!_§
   {
       
      
      public var §2q§:TextField;
      
      public function §1![§(param1:XML, param2:§59§)
      {
         super(param1,param2);
         this.§2q§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§2q§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§2q§)
         {
            this.§2q§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§2q§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§2q§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§2q§ = null;
      }
   }
}
