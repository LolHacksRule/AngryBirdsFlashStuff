package §8!8§
{
   import §@R§.§<d§;
   import flash.text.TextField;
   
   public class §1!-§ extends §<d§
   {
       
      
      public var §#!F§:TextField;
      
      public function §1!-§(param1:XML, param2:§4!C§)
      {
         super(param1,param2);
         this.§#!F§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§#!F§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§#!F§)
         {
            this.§#!F§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§#!F§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§#!F§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§#!F§ = null;
      }
   }
}
