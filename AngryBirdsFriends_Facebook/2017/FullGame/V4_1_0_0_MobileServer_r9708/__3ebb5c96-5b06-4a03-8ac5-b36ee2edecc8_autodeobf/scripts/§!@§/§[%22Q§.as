package §!@§
{
   import § $%§.§0#`§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.WarningPopup;
   import §7",§.§!#q§;
   import §7",§.§2#i§;
   import §<#m§.§^#o§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §["Q§ extends EventDispatcher
   {
       
      
      protected var §%$+§:§0#`§;
      
      protected var §]#+§:§2#i§;
      
      protected var §9#A§:§!#q§;
      
      protected var §]$2§:String;
      
      protected var §]"u§:int;
      
      protected var § "W§:String;
      
      protected var §"1§:String;
      
      protected var §?!P§:String;
      
      public function §["Q§(param1:§2#i§, param2:§!#q§, param3:String = "", param4:String = "")
      {
         super();
         this.§]#+§ = param1;
         this.§9#A§ = param2;
         this.§"1§ = param3;
         this.§?!P§ = param4;
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
      
      protected function §[#U§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§%"!§.§4!P§,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=!,§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function get §in§() : §2#i§
      {
         return this.§]#+§;
      }
      
      public function get pricePoint() : §!#q§
      {
         return this.§9#A§;
      }
      
      public function get orderId() : String
      {
         return this.§]$2§;
      }
      
      public function get errorCode() : int
      {
         return this.§]"u§;
      }
      
      public function get errorMessage() : String
      {
         return this.errorMessage;
      }
   }
}
