package §3!M§
{
   import §!!S§.§>a§;
   import flash.text.TextField;
   
   public class §&!S§ extends §>a§
   {
       
      
      public var §@9§:TextField;
      
      public function §&!S§(param1:XML, param2:§7^§)
      {
         super(param1,param2);
         this.§@9§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§@9§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§@9§)
         {
            this.§@9§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§@9§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§@9§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§@9§ = null;
      }
   }
}
