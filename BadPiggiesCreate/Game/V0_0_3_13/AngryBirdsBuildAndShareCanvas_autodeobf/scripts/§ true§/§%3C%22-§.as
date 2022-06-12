package § true§
{
   import §,!!§.§2D§;
   import §4!j§.§""3§;
   import flash.text.TextField;
   
   public class §<"-§ extends §""3§
   {
       
      
      public var §7!n§:TextField;
      
      private var §const§:§2D§ = null;
      
      public function §<"-§(param1:XML, param2:§1H§)
      {
         super(param1,param2);
         this.§7!n§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§7!n§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.§7!n§)
         {
            this.§7!n§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§7!n§.text = param1;
      }
      
      public function §@!;§() : String
      {
         return this.§7!n§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§const§)
         {
            this.§const§.dispose();
            this.§const§ = null;
         }
         this.§7!n§ = null;
      }
      
      public function §^q§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§const§ = new §2D§(this.§7!n§,param1,param2,param3);
      }
      
      public function §'!b§() : void
      {
         this.§const§.dispose();
         this.§const§ = null;
      }
   }
}
