package §4-§
{
   import §0u§.§"`§;
   import flash.text.TextField;
   
   public class §>Z§ extends §"`§
   {
       
      
      public var §23§:TextField;
      
      public function §>Z§(param1:XML, param2:§'J§)
      {
         super(param1,param2);
         this.§23§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§23§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§23§)
         {
            this.§23§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§23§.text = param1;
      }
      
      public function §1C§() : String
      {
         return this.§23§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§23§ = null;
      }
   }
}
