package §4#$§
{
   import § h§.§-!S§;
   import §2$;§.§;!b§;
   import §2E§.§'@§;
   import §4$A§.§=$5§;
   import §8!G§.CoinShopPopup;
   import §9!6§.§## §;
   import §>#Y§.§2$8§;
   import §@!_§.§]a§;
   import flash.events.Event;
   
   public class §8"E§
   {
       
      
      protected var § #Z§:§=$5§;
      
      protected var §`$%§:§;!b§;
      
      protected var §=!h§:String;
      
      protected var §?#f§:String;
      
      protected var §=$§:Object;
      
      protected var §]!a§:§5"L§;
      
      protected var §=s§:§]a§;
      
      protected var §<$4§:§2$8§;
      
      protected var §5#C§:Boolean;
      
      protected var §,"5§:Boolean = false;
      
      protected var §<!T§:Boolean = false;
      
      public function §8"E§(param1:§=$5§, param2:§;!b§, param3:§5"L§, param4:§]a§, param5:§2$8§)
      {
         super();
         this.§ #Z§ = param1;
         this.§`$%§ = param2;
         this.§]!a§ = param3;
         this.§=s§ = param4;
         this.§<$4§ = param5;
      }
      
      public function activate(param1:String) : void
      {
         this.§?#f§ = param1;
         this.§=$§ = this.§]!a§.§2"`§(this.§?#f§);
         this.§5#C§ = this.§]!a§.isLevelOpen(this.§?#f§);
         this.setLocked(!this.§5#C§);
         if(this.§]!a§.§7"<§ == this.§=$§)
         {
            this.setPurchasable(false);
         }
         else if(this.§=s§.§1!?§)
         {
            this.§&#1§();
         }
         else
         {
            this.setPurchasable(false);
            this.§=s§.addEventListener(Event.COMPLETE,this.§"W§);
         }
      }
      
      public function deactivate() : void
      {
         this.§=s§.removeEventListener(Event.COMPLETE,this.§"W§);
      }
      
      public function get §1#q§() : Boolean
      {
         return this.§5#C§;
      }
      
      public function get §,#m§() : Boolean
      {
         return !this.§1#q§ && this.§<!T§ && !this.§,"5§;
      }
      
      public function §,5§() : void
      {
         var _loc1_:CoinShopPopup = null;
         if(this.§,#m§)
         {
            if(this.§<$4§.§5"i§ < this.§=s§.§1!?§[0].getPricePoint(0).price)
            {
               _loc1_ = new CoinShopPopup(§-!S§.NORMAL,§## §.TOP,CoinShopPopup.§]#;§);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
            }
            else
            {
               this.setPurchasable(false);
               this.§]!a§.§[<§(this.§=$§);
               §'@§.§]$%§(this.§?#f§,this.sourceForTracking);
            }
         }
      }
      
      private function §"W§(param1:Event) : void
      {
         this.§&#1§();
      }
      
      private function §&#1§() : void
      {
         if(this.§=s§.§1!?§ && this.§=s§.§1!?§.length > 0)
         {
            this.§<!T§ = true;
            this.setPurchasable(true);
            this.showPrice(this.§=s§.§1!?§[0].getPricePoint(0).price);
         }
         else
         {
            this.setPurchasable(false);
         }
      }
      
      public function update() : void
      {
         if(!this.§?#f§ || this.§5#C§)
         {
            return;
         }
         if(this.§,"5§)
         {
            if(!this.§]!a§.§7"<§)
            {
               this.§5#C§ = true;
               this.setLocked(!this.§5#C§);
            }
            return;
         }
         if(this.§]!a§.isLevelOpen(this.§?#f§))
         {
            this.§5#C§ = true;
            this.setLocked(!this.§5#C§);
            return;
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§`$%§.scaleX = param1;
         this.§`$%§.scaleY = param1;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§`$%§.x = param1;
         this.§`$%§.y = param2;
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
