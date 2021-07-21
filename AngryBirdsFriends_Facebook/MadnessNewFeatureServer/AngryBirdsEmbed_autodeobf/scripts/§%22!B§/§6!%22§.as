package §"!B§
{
   import §3y§.§!<§;
   import §]!=§.§&P§;
   import flash.text.TextField;
   
   public class §6!"§ extends §&P§
   {
       
      
      public var §#!B§:TextField;
      
      private var §"!1§:§!<§ = null;
      
      public function §6!"§(param1:XML, param2:§58§)
      {
         super(param1,param2);
         this.§#!B§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§#!B§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§#!B§)
         {
            this.§#!B§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§#!B§.text = param1;
      }
      
      public function §[z§() : String
      {
         return this.§#!B§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§"!1§)
         {
            this.§"!1§.dispose();
            this.§"!1§ = null;
         }
         this.§#!B§ = null;
      }
      
      public function §1>§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§"!1§ = new §!<§(this.§#!B§,param1,param2,param3);
      }
      
      public function §@!%§() : void
      {
         this.§"!1§.dispose();
         this.§"!1§ = null;
      }
   }
}
