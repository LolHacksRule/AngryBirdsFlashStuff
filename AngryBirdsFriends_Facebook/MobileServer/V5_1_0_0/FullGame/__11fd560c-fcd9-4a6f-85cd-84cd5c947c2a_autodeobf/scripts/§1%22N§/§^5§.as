package §1"N§
{
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §1!=§.§^"U§;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@V§.§6"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §^5§ extends EventDispatcher
   {
       
      
      protected var §9#s§:§6"§;
      
      protected var §!!b§:§"#x§;
      
      protected var §+$'§:§##P§;
      
      protected var §@!W§:String;
      
      protected var § "6§:int;
      
      protected var §!"B§:String;
      
      protected var §8"$§:String;
      
      protected var §["x§:String;
      
      public function §^5§(param1:§"#x§, param2:§##P§, param3:String = "", param4:String = "")
      {
         super();
         this.§!!b§ = param1;
         this.§+$'§ = param2;
         this.§8"$§ = param3;
         this.§["x§ = param4;
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
      
      protected function §<#Y§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function get §2"X§() : §"#x§
      {
         return this.§!!b§;
      }
      
      public function get pricePoint() : §##P§
      {
         return this.§+$'§;
      }
      
      public function get orderId() : String
      {
         return this.§@!W§;
      }
      
      public function get errorCode() : int
      {
         return this.§ "6§;
      }
      
      public function get errorMessage() : String
      {
         return this.errorMessage;
      }
   }
}
