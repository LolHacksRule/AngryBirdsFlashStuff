package §[]§
{
   import §7L§.§+!$§;
   import flash.text.TextField;
   
   public class §'!X§ extends §+!$§
   {
       
      
      public var §3!E§:TextField;
      
      public function §'!X§(param1:XML, param2:§`!`§)
      {
         super(param1,param2);
         this.§3!E§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§3!E§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§3!E§)
         {
            this.§3!E§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§3!E§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§3!E§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§3!E§ = null;
      }
   }
}
