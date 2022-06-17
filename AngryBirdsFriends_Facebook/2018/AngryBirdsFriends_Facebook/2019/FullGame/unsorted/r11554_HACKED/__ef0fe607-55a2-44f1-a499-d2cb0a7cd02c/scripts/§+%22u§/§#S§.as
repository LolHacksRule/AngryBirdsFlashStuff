package §+"u§
{
   import §!§.§="D§;
   import §%4§.CoinShopPopup;
   import §'#g§.§2"W§;
   import §+#B§.§5"w§;
   import §5!$§.§"S§;
   import §;$5§.§9§;
   import §?!N§.§%#§;
   import §]"'§.§>I§;
   import flash.events.Event;
   
   public class §#S§
   {
       
      
      protected var §7#]§:§="D§;
      
      protected var §&"Q§:§"S§;
      
      protected var §8"x§:String;
      
      protected var §7"E§:String;
      
      protected var §[W§:Object;
      
      protected var §;"§:§^"C§;
      
      protected var §7"=§:§2"W§;
      
      protected var §!R§:§>I§;
      
      protected var §9-§:Boolean;
      
      protected var §0O§:Boolean = false;
      
      protected var §`"F§:Boolean = false;
      
      public function §#S§(param1:§="D§, param2:§"S§, param3:§^"C§, param4:§2"W§, param5:§>I§)
      {
         super();
         this.§7#]§ = param1;
         this.§&"Q§ = param2;
         this.§;"§ = param3;
         this.§7"=§ = param4;
         this.§!R§ = param5;
      }
      
      public function activate(param1:String) : void
      {
         this.§7"E§ = param1;
         this.§[W§ = this.§;"§.§'^§(this.§7"E§);
         this.§9-§ = this.§;"§.isLevelOpen(this.§7"E§);
         this.setLocked(!this.§9-§);
         if(this.§;"§.§'!e§ == this.§[W§)
         {
            this.setPurchasable(false);
         }
         else if(this.§7"=§.§ #R§)
         {
            this.§"" §();
         }
         else
         {
            this.setPurchasable(false);
            this.§7"=§.addEventListener(Event.COMPLETE,this.§9"-§);
         }
      }
      
      public function deactivate() : void
      {
         this.§7"=§.removeEventListener(Event.COMPLETE,this.§9"-§);
      }
      
      public function get §^#u§() : Boolean
      {
         return this.§9-§;
      }
      
      public function get §^"3§() : Boolean
      {
         return !this.§^#u§ && this.§`"F§ && !this.§0O§;
      }
      
      public function § "i§() : void
      {
         var _loc1_:CoinShopPopup = null;
         if(this.§^"3§)
         {
            if(this.§!R§.§"$6§ < this.§7"=§.§ #R§[0].getPricePoint(0).price)
            {
               _loc1_ = new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP,CoinShopPopup.§-$7§);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
            }
            else
            {
               this.setPurchasable(false);
               this.§;"§.§03§(this.§[W§);
               §5"w§.§<!G§(this.§7"E§,this.sourceForTracking);
            }
         }
      }
      
      private function §9"-§(param1:Event) : void
      {
         this.§"" §();
      }
      
      private function §"" §() : void
      {
         if(this.§7"=§.§ #R§ && this.§7"=§.§ #R§.length > 0)
         {
            this.§`"F§ = true;
            this.setPurchasable(true);
            this.showPrice(this.§7"=§.§ #R§[0].getPricePoint(0).price);
         }
         else
         {
            this.setPurchasable(false);
         }
      }
      
      public function update() : void
      {
         if(!this.§7"E§ || this.§9-§)
         {
            return;
         }
         if(this.§0O§)
         {
            if(!this.§;"§.§'!e§)
            {
               this.§9-§ = true;
               this.setLocked(!this.§9-§);
            }
            return;
         }
         if(this.§;"§.isLevelOpen(this.§7"E§))
         {
            this.§9-§ = true;
            this.setLocked(!this.§9-§);
            return;
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§&"Q§.scaleX = param1;
         this.§&"Q§.scaleY = param1;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§&"Q§.x = param1;
         this.§&"Q§.y = param2;
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
