package § §#4
{
   import §0!s§.§]"Y§;
   import §1L§.§9#f§;
   import §5" §.§5u§;
   import §5" §.§=n§;
   import §>z§.§#"l§;
   import §>z§.WarningPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §5!$§ extends EventDispatcher
   {
       
      
      protected var §"">§:§9#f§;
      
      protected var §3$@§:§=n§;
      
      protected var §?!M§:§5u§;
      
      protected var §>!e§:String;
      
      protected var §8"?§:int;
      
      protected var §6"i§:String;
      
      protected var §3"r§:String;
      
      protected var §49§:String;
      
      public function §5!$§(param1:§=n§, param2:§5u§, param3:String = "", param4:String = "")
      {
         super();
         this.§3$@§ = param1;
         this.§?!M§ = param2;
         this.§3"r§ = param3;
         this.§49§ = param4;
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
      
      protected function §;%§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function get §6!-§() : §=n§
      {
         return this.§3$@§;
      }
      
      public function get pricePoint() : §5u§
      {
         return this.§?!M§;
      }
      
      public function get orderId() : String
      {
         return this.§>!e§;
      }
      
      public function get errorCode() : int
      {
         return this.§8"?§;
      }
      
      public function get errorMessage() : String
      {
         return this.errorMessage;
      }
   }
}
