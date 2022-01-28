package §_-Ll§
{
   import §_-7V§.§_-LB§;
   import flash.text.TextField;
   
   public class §_-JL§ extends §_-LB§
   {
       
      
      public var §_-ML§:TextField;
      
      public function §_-JL§(param1:XML, param2:§_-4G§)
      {
         super(param1,param2);
         this.§_-ML§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-ML§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-ML§)
         {
            this.§_-ML§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-ML§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-ML§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-ML§ = null;
      }
   }
}
