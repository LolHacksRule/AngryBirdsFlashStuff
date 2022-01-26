package §_-of§
{
   import §_-Ys§.§_-TM§;
   import flash.text.TextField;
   
   public class §_-rt§ extends §_-TM§
   {
       
      
      public var §_-u7§:TextField;
      
      public function §_-rt§(param1:XML, param2:§_-H4§)
      {
         super(param1,param2);
         this.§_-u7§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-u7§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-u7§)
         {
            this.§_-u7§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-u7§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-u7§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-u7§ = null;
      }
   }
}
