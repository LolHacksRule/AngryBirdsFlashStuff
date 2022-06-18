package §2K§
{
   import §,+§.§&t§;
   import §6!K§.§3l§;
   import flash.text.TextField;
   
   public class §catch§ extends §3l§
   {
       
      
      public var §3!X§:TextField;
      
      private var §-F§:§&t§ = null;
      
      public function §catch§(param1:XML, param2:§,!@§)
      {
         super(param1,param2);
         this.§3!X§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§3!X§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§3!X§)
         {
            this.§3!X§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§3!X§.text = param1;
      }
      
      public function getText() : String
      {
         return this.§3!X§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§-F§)
         {
            this.§-F§.dispose();
            this.§-F§ = null;
         }
         this.§3!X§ = null;
      }
      
      public function §&!+§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§-F§ = new §&t§(this.§3!X§,param1,param2,param3);
      }
      
      public function §"B§() : void
      {
         this.§-F§.dispose();
         this.§-F§ = null;
      }
   }
}
