package §%S§
{
   import flash.text.TextField;
   import §in§.§9c§;
   
   public class §7g§ extends §9c§
   {
       
      
      public var §1p§:TextField;
      
      public function §7g§(param1:XML, param2:§,1§)
      {
         super(param1,param2);
         this.§1p§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§1p§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§1p§)
         {
            this.§1p§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§1p§.text = param1;
      }
      
      public function §8_§() : String
      {
         return this.§1p§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§1p§ = null;
      }
   }
}
