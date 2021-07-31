package §class§
{
   import §-!F§.§`!&§;
   import flash.text.TextField;
   
   public class §3D§ extends §`!&§
   {
       
      
      public var §7=§:TextField;
      
      public function §3D§(param1:XML, param2:§3C§)
      {
         super(param1,param2);
         this.§7=§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§7=§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§7=§)
         {
            this.§7=§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§7=§.text = param1;
      }
      
      public function §0S§() : String
      {
         return this.§7=§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.§7=§ = null;
      }
   }
}
