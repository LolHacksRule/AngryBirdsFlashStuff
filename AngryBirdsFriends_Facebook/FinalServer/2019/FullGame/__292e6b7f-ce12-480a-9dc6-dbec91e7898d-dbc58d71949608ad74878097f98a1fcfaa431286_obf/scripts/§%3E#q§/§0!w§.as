package §>#q§
{
   import § $0§.§5R§;
   import §4S§.§@§;
   import §?Q§.§@#D§;
   import §?Q§.WarningPopup;
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §0!w§ extends EventDispatcher
   {
       
      
      protected var §^!$§:§@#1§;
      
      protected var §@l§:§2_§;
      
      protected var §`!Q§:§'"j§;
      
      protected var §"@§:String;
      
      protected var §"c§:int;
      
      protected var §=$#§:String;
      
      protected var §5"N§:String;
      
      protected var §'#S§:String;
      
      public function §0!w§(param1:§2_§, param2:§'"j§, param3:String = "", param4:String = "")
      {
         super();
         this.§@l§ = param1;
         this.§`!Q§ = param2;
         this.§5"N§ = param3;
         this.§'#S§ = param4;
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
      
      protected function §4!0§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function get §@" §() : §2_§
      {
         return this.§@l§;
      }
      
      public function get pricePoint() : §'"j§
      {
         return this.§`!Q§;
      }
      
      public function get orderId() : String
      {
         return this.§"@§;
      }
      
      public function get errorCode() : int
      {
         return this.§"c§;
      }
      
      public function get errorMessage() : String
      {
         return this.errorMessage;
      }
   }
}
