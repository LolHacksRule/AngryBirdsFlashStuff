package §3!!§
{
   import §-!F§.§7!<§;
   import §>!L§.§?!d§;
   import §@f§.§4d§;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class native extends §4d§
   {
       
      
      public var §&!K§:Object;
      
      private var §0!b§:§7!<§ = null;
      
      public function native(param1:XML, param2:§5" §)
      {
         super(param1,param2);
         if(mClip.getChildByName("text") is TLFTextField)
         {
            this.§&!K§ = mClip.getChildByName("text") as TLFTextField;
         }
         else
         {
            this.§&!K§ = mClip.getChildByName("text") as TextField;
         }
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§&!K§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§&!K§)
         {
            this.§&!K§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!d§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         if(this.§&!K§.text != param1)
         {
            this.§&!K§.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.§&!K§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§0!b§)
         {
            this.§0!b§.dispose();
            this.§0!b§ = null;
         }
         this.§&!K§ = null;
      }
   }
}
