package §?!7§
{
   import §9Y§.§+!!§;
   import flash.text.TextField;
   
   public class §"j§ extends §+!!§
   {
       
      
      public var §"E§:TextField;
      
      public function §"j§(param1:XML, param2:§8;§)
      {
         super(param1,param2);
         this.§"E§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§"E§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§"E§)
         {
            this.§"E§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§"E§.text = param1;
      }
      
      public function §%!o§() : String
      {
         return this.§"E§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§"E§ = null;
      }
   }
}
