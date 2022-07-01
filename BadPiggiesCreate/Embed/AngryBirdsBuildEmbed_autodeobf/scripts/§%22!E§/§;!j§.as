package §"!E§
{
   import §#!4§.§<f§;
   import flash.text.TextField;
   
   public class §;!j§ extends §<f§
   {
       
      
      public var §!D§:TextField;
      
      public function §;!j§(param1:XML, param2:§[!s§)
      {
         super(param1,param2);
         this.§!D§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§!D§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§!D§)
         {
            this.§!D§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§!D§.text = param1;
      }
      
      public function §,!v§() : String
      {
         return this.§!D§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§!D§ = null;
      }
   }
}
