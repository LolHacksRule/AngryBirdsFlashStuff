package §_-Eg§
{
   import §_-16§.§_-8n§;
   import flash.text.TextField;
   
   public class §_-MT§ extends §_-8n§
   {
       
      
      public var §_-Pb§:TextField;
      
      public function §_-MT§(param1:XML, param2:§_-Up§)
      {
         super(param1,param2);
         this.§_-Pb§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§_-Pb§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§_-Pb§)
         {
            this.§_-Pb§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§_-Pb§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§_-Pb§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§_-Pb§ = null;
      }
   }
}
