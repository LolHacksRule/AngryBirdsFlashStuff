package §5!8§
{
   import §-!^§.§7§;
   import §^x§.§;_§;
   import flash.text.TextField;
   
   public class §6m§ extends §;_§
   {
       
      
      public var §<"§:TextField;
      
      private var §=!T§:§7§ = null;
      
      public function §6m§(param1:XML, param2:§+!?§)
      {
         super(param1,param2);
         this.§<"§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§<"§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§<"§)
         {
            this.§<"§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§<"§.text = param1;
      }
      
      public function §5!A§() : String
      {
         return this.§<"§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§=!T§)
         {
            this.§=!T§.dispose();
            this.§=!T§ = null;
         }
         this.§<"§ = null;
      }
      
      public function §=v§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§=!T§ = new §7§(this.§<"§,param1,param2,param3);
      }
      
      public function §+0§() : void
      {
         this.§=!T§.dispose();
         this.§=!T§ = null;
      }
   }
}
