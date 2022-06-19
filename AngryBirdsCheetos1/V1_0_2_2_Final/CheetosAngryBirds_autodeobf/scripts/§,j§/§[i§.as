package §,j§
{
   import §1§.§&!3§;
   import flash.text.TextField;
   
   public class §[i§ extends §&!3§
   {
       
      
      public var §7t§:TextField;
      
      public function §[i§(param1:XML, param2:§1-§)
      {
         super(param1,param2);
         this.§7t§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§7t§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§7t§)
         {
            this.§7t§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§7t§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§7t§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§7t§ = null;
      }
   }
}
