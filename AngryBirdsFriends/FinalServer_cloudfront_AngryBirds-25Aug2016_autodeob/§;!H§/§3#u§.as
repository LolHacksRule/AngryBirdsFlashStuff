package §;!H§
{
   import §"!U§.§6!J§;
   import §"!U§.§=#V§;
   import §?"R§.ErrorPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §]$9§.§5$5§;
   import §^!,§.§<d§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §3#u§ extends EventDispatcher
   {
       
      
      protected var §5!L§:§5$5§;
      
      protected var §""Q§:§=#V§;
      
      protected var §3!@§:§6!J§;
      
      protected var §=!;§:String;
      
      protected var §!t§:int;
      
      protected var §-"d§:String;
      
      protected var §?#o§:String;
      
      protected var §"#L§:String;
      
      public function §3#u§(param1:§=#V§, param2:§6!J§, param3:String = "", param4:String = "")
      {
         super();
         this.§""Q§ = param1;
         this.§3!@§ = param2;
         this.§?#o§ = param3;
         this.§"#L§ = param4;
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
      
      protected function §@!w§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§[W§.§5Z§,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=#r§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function get §^$2§() : §=#V§
      {
         return this.§""Q§;
      }
      
      public function get pricePoint() : §6!J§
      {
         return this.§3!@§;
      }
      
      public function get orderId() : String
      {
         return this.§=!;§;
      }
      
      public function get errorCode() : int
      {
         return this.§!t§;
      }
      
      public function get errorMessage() : String
      {
         return this.errorMessage;
      }
   }
}
