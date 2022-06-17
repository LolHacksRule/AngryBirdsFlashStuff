package §@!_§
{
   import § h§.§-!S§;
   import § h§.WarningPopup;
   import §4#l§.§8#E§;
   import §4#l§.§>"`§;
   import §7"1§.§"$D§;
   import §9!6§.§## §;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §0D§ extends EventDispatcher
   {
       
      
      protected var §^#8§:§"$D§;
      
      protected var §=#Q§:§8#E§;
      
      protected var §[!'§:§>"`§;
      
      protected var §"§:String;
      
      protected var §`h§:int;
      
      protected var §,#x§:String;
      
      protected var §[U§:String;
      
      protected var §@;§:String;
      
      public function §0D§(param1:§8#E§, param2:§>"`§, param3:String = "", param4:String = "")
      {
         super();
         this.§=#Q§ = param1;
         this.§[!'§ = param2;
         this.§[U§ = param3;
         this.§@;§ = param4;
         this.loadBuyItems();
      }
      
      protected function loadBuyItems() : void
      {
         throw new Error("Don\'t call this method directly. Should be overridden");
      }
      
      protected function onBuyItemComplete(param1:Event) : void
      {
         throw new Error("Don\'t call this method directly. Should be overridden");
      }
      
      protected function §[T§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function get §"^§() : §8#E§
      {
         return this.§=#Q§;
      }
      
      public function get pricePoint() : §>"`§
      {
         return this.§[!'§;
      }
      
      public function get orderId() : String
      {
         return this.§"§;
      }
      
      public function get errorCode() : int
      {
         return this.§`h§;
      }
      
      public function get errorMessage() : String
      {
         return this.errorMessage;
      }
   }
}
