package §""d§
{
   import §#!k§.§4!4§;
   import §4##§.§7!Y§;
   import §7A§.§0§;
   import flash.text.TextField;
   
   public class §+">§ extends §7!Y§
   {
       
      
      public var §?x§:TextField;
      
      private var §<"b§:§0#5§ = null;
      
      public function §+">§(param1:XML, param2:§,m§)
      {
         super(param1,param2);
         this.§?x§ = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.§?x§.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.§?x§)
         {
            this.§?x§.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §4!4§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.§?x§.text = param1;
      }
      
      public function §^!n§() : String
      {
         return this.§?x§.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§<"b§)
         {
            this.§<"b§.dispose();
            this.§<"b§ = null;
         }
         this.§?x§ = null;
      }
      
      public function § "1§(param1:uint, param2:uint, param3:uint) : void
      {
         this.§<"b§ = new §0#5§(this.§?x§,param1,param2,param3);
      }
      
      public function §!"l§() : void
      {
         this.§<"b§.dispose();
         this.§<"b§ = null;
      }
   }
}
