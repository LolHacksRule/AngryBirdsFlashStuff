package §`,§
{
   import § "L§.§1"r§;
   import § $0§.§5R§;
   import §#"4§.§<"G§;
   import §,#,§.§>#g§;
   import §7"&§.§1k§;
   import §>#q§.§<M§;
   import §?Q§.§@#D§;
   import §]"U§.CoinShopPopup;
   import flash.events.Event;
   
   public class §]!y§
   {
       
      
      protected var §74§:§1k§;
      
      protected var §]"d§:§1"r§;
      
      protected var §5"s§:String;
      
      protected var §8";§:String;
      
      protected var §4$D§:Object;
      
      protected var §<$B§:§7!$§;
      
      protected var §8#%§:§<M§;
      
      protected var §-!f§:§>#g§;
      
      protected var §#]§:Boolean;
      
      protected var §4#G§:Boolean = false;
      
      protected var §8>§:Boolean = false;
      
      public function §]!y§(param1:§1k§, param2:§1"r§, param3:§7!$§, param4:§<M§, param5:§>#g§)
      {
         super();
         this.§74§ = param1;
         this.§]"d§ = param2;
         this.§<$B§ = param3;
         this.§8#%§ = param4;
         this.§-!f§ = param5;
      }
      
      public function activate(param1:String) : void
      {
         this.§8";§ = param1;
         this.§4$D§ = this.§<$B§.§%!%§(this.§8";§);
         this.§#]§ = this.§<$B§.isLevelOpen(this.§8";§);
         this.setLocked(!this.§#]§);
         if(this.§<$B§.§]!<§ == this.§4$D§)
         {
            this.setPurchasable(false);
         }
         else if(this.§8#%§.§0"Z§)
         {
            this.§=!&§();
         }
         else
         {
            this.setPurchasable(false);
            this.§8#%§.addEventListener(Event.COMPLETE,this.§@$1§);
         }
      }
      
      public function deactivate() : void
      {
         this.§8#%§.removeEventListener(Event.COMPLETE,this.§@$1§);
      }
      
      public function get §>M§() : Boolean
      {
         return this.§#]§;
      }
      
      public function get §5#>§() : Boolean
      {
         return !this.§>M§ && this.§8>§ && !this.§4#G§;
      }
      
      public function §`!w§() : void
      {
         var _loc1_:CoinShopPopup = null;
         if(this.§5#>§)
         {
            if(this.§-!f§.§#"+§ < this.§8#%§.§0"Z§[0].getPricePoint(0).price)
            {
               _loc1_ = new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP,CoinShopPopup.§<!7§);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
            }
            else
            {
               this.setPurchasable(false);
               this.§<$B§.§]"u§(this.§4$D§);
               §<"G§.§?-§(this.§8";§,this.sourceForTracking);
            }
         }
      }
      
      private function §@$1§(param1:Event) : void
      {
         this.§=!&§();
      }
      
      private function §=!&§() : void
      {
         if(this.§8#%§.§0"Z§ && this.§8#%§.§0"Z§.length > 0)
         {
            this.§8>§ = true;
            this.setPurchasable(true);
            this.showPrice(this.§8#%§.§0"Z§[0].getPricePoint(0).price);
         }
         else
         {
            this.setPurchasable(false);
         }
      }
      
      public function update() : void
      {
         if(!this.§8";§ || this.§#]§)
         {
            return;
         }
         if(this.§4#G§)
         {
            if(!this.§<$B§.§]!<§)
            {
               this.§#]§ = true;
               this.setLocked(!this.§#]§);
            }
            return;
         }
         if(this.§<$B§.isLevelOpen(this.§8";§))
         {
            this.§#]§ = true;
            this.setLocked(!this.§#]§);
            return;
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§]"d§.scaleX = param1;
         this.§]"d§.scaleY = param1;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§]"d§.x = param1;
         this.§]"d§.y = param2;
      }
      
      protected function showTimeUntilUnlocked(param1:String) : void
      {
      }
      
      protected function showPrice(param1:int) : void
      {
      }
      
      protected function setPurchasable(param1:Boolean) : void
      {
      }
      
      protected function setLocked(param1:Boolean) : void
      {
      }
      
      protected function get buttonName() : String
      {
         return "";
      }
      
      protected function get sourceForTracking() : String
      {
         return "";
      }
   }
}
