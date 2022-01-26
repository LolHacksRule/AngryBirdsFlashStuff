package §_-ES§
{
   import §_-9J§.§_-DA§;
   import flash.text.TextField;
   
   public class §_-To§ extends §_-DA§
   {
       
      
      public var §_-pU§:TextField;
      
      public function §_-To§(param1:XML, param2:§_-L8§)
      {
         super(param1,param2);
         this.§_-pU§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-pU§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-pU§)
         {
            this.§_-pU§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-pU§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-pU§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-pU§ = null;
      }
   }
}
