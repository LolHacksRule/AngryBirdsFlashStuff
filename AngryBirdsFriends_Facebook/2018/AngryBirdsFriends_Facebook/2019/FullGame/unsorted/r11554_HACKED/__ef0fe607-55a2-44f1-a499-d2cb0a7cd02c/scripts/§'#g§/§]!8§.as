package §'#g§
{
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import §;$5§.§9§;
   import §>"Q§.§7"2§;
   import §?!N§.§%#§;
   import §?!N§.WarningPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §]!8§ extends EventDispatcher
   {
       
      
      protected var §'X§:§7"2§;
      
      protected var §'$$§:§,!K§;
      
      protected var §^"v§:§<#a§;
      
      protected var §3@§:String;
      
      protected var §<"G§:int;
      
      protected var §'"k§:String;
      
      protected var §6"^§:String;
      
      protected var §&#"§:String;
      
      public function §]!8§(param1:§,!K§, param2:§<#a§, param3:String = "", param4:String = "")
      {
         super();
         this.§'$$§ = param1;
         this.§^"v§ = param2;
         this.§6"^§ = param3;
         this.§&#"§ = param4;
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
      
      protected function §^!c§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function get §4">§() : §,!K§
      {
         return this.§'$$§;
      }
      
      public function get pricePoint() : §<#a§
      {
         return this.§^"v§;
      }
      
      public function get orderId() : String
      {
         return this.§3@§;
      }
      
      public function get errorCode() : int
      {
         return this.§<"G§;
      }
      
      public function get errorMessage() : String
      {
         return this.errorMessage;
      }
   }
}
