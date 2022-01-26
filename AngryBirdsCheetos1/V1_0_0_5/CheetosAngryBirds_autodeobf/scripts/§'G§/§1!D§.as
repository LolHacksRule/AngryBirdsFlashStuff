package §'G§
{
   import §-V§.§9d§;
   import flash.text.TextField;
   
   public class §1!D§ extends §9d§
   {
       
      
      public var §1!-§:TextField;
      
      public function §1!D§(param1:XML, param2:§%!%§)
      {
         super(param1,param2);
         this.§1!-§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§1!-§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§1!-§)
         {
            this.§1!-§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§1!-§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§1!-§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§1!-§ = null;
      }
   }
}
