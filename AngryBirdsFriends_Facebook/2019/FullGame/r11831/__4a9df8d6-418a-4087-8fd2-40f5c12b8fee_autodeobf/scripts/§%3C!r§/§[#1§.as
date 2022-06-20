package §<!r§
{
   import § §.§=J§;
   import §!#C§.§null§;
   import §"c§.CoinShopPopup;
   import §#,§.§ !>§;
   import §&!_§.§0I§;
   import §0!s§.§]"Y§;
   import §>z§.§#"l§;
   import §^&§.§%!#§;
   import flash.events.Event;
   
   public class §[#1§
   {
       
      
      protected var §2"X§:§%!#§;
      
      protected var §2!t§:§ !>§;
      
      protected var §[##§:String;
      
      protected var §7!3§:String;
      
      protected var §!!u§:Object;
      
      protected var §8#Q§:§'##§;
      
      protected var §0l§:§=J§;
      
      protected var §-#w§:§null§;
      
      protected var §5#>§:Boolean;
      
      protected var §'#1§:Boolean = false;
      
      protected var §!"O§:Boolean = false;
      
      public function §[#1§(param1:§%!#§, param2:§ !>§, param3:§'##§, param4:§=J§, param5:§null§)
      {
         super();
         this.§2"X§ = param1;
         this.§2!t§ = param2;
         this.§8#Q§ = param3;
         this.§0l§ = param4;
         this.§-#w§ = param5;
      }
      
      public function activate(param1:String) : void
      {
         this.§7!3§ = param1;
         this.§!!u§ = this.§8#Q§.§@X§(this.§7!3§);
         this.§5#>§ = this.§8#Q§.isLevelOpen(this.§7!3§);
         this.setLocked(!this.§5#>§);
         if(this.§8#Q§.§]#8§ == this.§!!u§)
         {
            this.setPurchasable(false);
         }
         else if(this.§0l§.§&i§)
         {
            this.§0!0§();
         }
         else
         {
            this.setPurchasable(false);
            this.§0l§.addEventListener(Event.COMPLETE,this.§-A§);
         }
      }
      
      public function deactivate() : void
      {
         this.§0l§.removeEventListener(Event.COMPLETE,this.§-A§);
      }
      
      public function get §;#W§() : Boolean
      {
         return this.§5#>§;
      }
      
      public function get §-#j§() : Boolean
      {
         return !this.§;#W§ && this.§!"O§ && !this.§'#1§;
      }
      
      public function §;!K§() : void
      {
         var _loc1_:CoinShopPopup = null;
         if(this.§-#j§)
         {
            if(this.§-#w§.§<B§ < this.§0l§.§&i§[0].getPricePoint(0).price)
            {
               _loc1_ = new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP,CoinShopPopup.§["3§);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
            }
            else
            {
               this.setPurchasable(false);
               this.§8#Q§.§-!3§(this.§!!u§);
               §0I§.§3#9§(this.§7!3§,this.sourceForTracking);
            }
         }
      }
      
      private function §-A§(param1:Event) : void
      {
         this.§0!0§();
      }
      
      private function §0!0§() : void
      {
         if(this.§0l§.§&i§ && this.§0l§.§&i§.length > 0)
         {
            this.§!"O§ = true;
            this.setPurchasable(true);
            this.showPrice(this.§0l§.§&i§[0].getPricePoint(0).price);
         }
         else
         {
            this.setPurchasable(false);
         }
      }
      
      public function update() : void
      {
         if(!this.§7!3§ || this.§5#>§)
         {
            return;
         }
         if(this.§'#1§)
         {
            if(!this.§8#Q§.§]#8§)
            {
               this.§5#>§ = true;
               this.setLocked(!this.§5#>§);
            }
            return;
         }
         if(this.§8#Q§.isLevelOpen(this.§7!3§))
         {
            this.§5#>§ = true;
            this.setLocked(!this.§5#>§);
            return;
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§2!t§.scaleX = param1;
         this.§2!t§.scaleY = param1;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§2!t§.x = param1;
         this.§2!t§.y = param2;
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
