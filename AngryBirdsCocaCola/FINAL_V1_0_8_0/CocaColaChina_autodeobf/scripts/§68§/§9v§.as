package §68§
{
   import §&V§.§4o§;
   import flash.text.TextField;
   
   public class §9v§ extends §4o§
   {
       
      
      public var §@!G§:TextField;
      
      public function §9v§(param1:XML, param2:§`?§)
      {
         super(param1,param2);
         this.§@!G§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§@!G§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§@!G§)
         {
            this.§@!G§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§@!G§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§@!G§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§@!G§ = null;
      }
   }
}
