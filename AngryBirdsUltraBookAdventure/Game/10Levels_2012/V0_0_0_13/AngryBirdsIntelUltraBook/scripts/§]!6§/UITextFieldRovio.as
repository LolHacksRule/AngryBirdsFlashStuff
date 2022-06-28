package §]!6§
{
   import §>!-§.UIComponentInteractiveRovio;
   import flash.text.TextField;
   
   public class UITextFieldRovio extends UIComponentInteractiveRovio
   {
       
      
      public var §24§:TextField;
      
      public function UITextFieldRovio(param1:XML, param2:UIContainerRovio)
      {
         super(param1,param2);
         this.§24§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§24§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§24§)
         {
            this.§24§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§24§.text = param1;
      }
      
      public function §8"§() : String
      {
         return this.§24§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§24§ = null;
      }
   }
}
