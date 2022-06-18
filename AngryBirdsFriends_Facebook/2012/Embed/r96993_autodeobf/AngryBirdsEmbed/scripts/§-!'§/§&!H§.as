package §-!'§
{
   import §!^§.§+!5§;
   import flash.text.TextField;
   
   public class §&!H§ extends §+!5§
   {
       
      
      public var §#C§:TextField;
      
      public function §&!H§(param1:XML, param2:§in §)
      {
         super(param1,param2);
         this.§#C§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§#C§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§#C§)
         {
            this.§#C§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§#C§.text = param1;
      }
      
      public function §6_§() : String
      {
         return this.§#C§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§#C§ = null;
      }
   }
}
