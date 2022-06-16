package §8#!§
{
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §1"N§.§+#`§;
   import §2G§.§"G§;
   import §4#V§.CoinShopPopup;
   import §<h§.§>"0§;
   import §?P§.§]"$§;
   import §`7§.§`"x§;
   import flash.events.Event;
   
   public class §'I§
   {
       
      
      protected var §[$@§:§8#§;
      
      protected var §^#Z§:§>"0§;
      
      protected var §<4§:String;
      
      protected var §3"=§:String;
      
      protected var §'!Q§:Object;
      
      protected var §^!T§:§5`§;
      
      protected var §,"b§:§+#`§;
      
      protected var §&#7§:§"G§;
      
      protected var §%!f§:Boolean;
      
      protected var §]p§:Boolean = false;
      
      protected var §[#N§:Boolean = false;
      
      public function §'I§(param1:§8#§, param2:§>"0§, param3:§5`§, param4:§+#`§, param5:§"G§)
      {
         super();
         this.§[$@§ = param1;
         this.§^#Z§ = param2;
         this.§^!T§ = param3;
         this.§,"b§ = param4;
         this.§&#7§ = param5;
      }
      
      public function activate(param1:String) : void
      {
         this.§3"=§ = param1;
         this.§'!Q§ = this.§^!T§.§#!4§(this.§3"=§);
         this.§%!f§ = this.§^!T§.isLevelOpen(this.§3"=§);
         this.setLocked(!this.§%!f§);
         if(this.§^!T§.§'!d§ == this.§'!Q§)
         {
            this.setPurchasable(false);
         }
         else if(this.§,"b§.§+#G§)
         {
            this.§;A§();
         }
         else
         {
            this.setPurchasable(false);
            this.§,"b§.addEventListener(Event.COMPLETE,this.§52§);
         }
      }
      
      public function deactivate() : void
      {
         this.§,"b§.removeEventListener(Event.COMPLETE,this.§52§);
      }
      
      public function get §5[§() : Boolean
      {
         return this.§%!f§;
      }
      
      public function get §9!Z§() : Boolean
      {
         return !this.§5[§ && this.§[#N§ && !this.§]p§;
      }
      
      public function §%[§() : void
      {
         var _loc1_:CoinShopPopup = null;
         if(this.§9!Z§)
         {
            if(this.§&#7§.§##!§ < this.§,"b§.§+#G§[0].getPricePoint(0).price)
            {
               _loc1_ = new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP,CoinShopPopup.§'$7§);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
            }
            else
            {
               this.setPurchasable(false);
               this.§^!T§.§'#3§(this.§'!Q§);
               §`"x§.§ set§(this.§3"=§,this.sourceForTracking);
            }
         }
      }
      
      private function §52§(param1:Event) : void
      {
         this.§;A§();
      }
      
      private function §;A§() : void
      {
         if(this.§,"b§.§+#G§ && this.§,"b§.§+#G§.length > 0)
         {
            this.§[#N§ = true;
            this.setPurchasable(true);
            this.showPrice(this.§,"b§.§+#G§[0].getPricePoint(0).price);
         }
         else
         {
            this.setPurchasable(false);
         }
      }
      
      public function update() : void
      {
         if(!this.§3"=§ || this.§%!f§)
         {
            return;
         }
         if(this.§]p§)
         {
            if(!this.§^!T§.§'!d§)
            {
               this.§%!f§ = true;
               this.setLocked(!this.§%!f§);
            }
            return;
         }
         if(this.§^!T§.isLevelOpen(this.§3"=§))
         {
            this.§%!f§ = true;
            this.setLocked(!this.§%!f§);
            return;
         }
         this.§]#D§();
      }
      
      private function §]#D§() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§^!T§.secondsToUnlock(this.§3"=§);
         if(_loc1_ < 60 * 60)
         {
            _loc3_ = _loc1_;
            _loc4_ = Math.floor(_loc1_ / 60);
            _loc3_ -= _loc4_ * 60;
            _loc2_ = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc3_ < 10 ? "0" : "") + _loc3_;
         }
         else if(_loc1_ < 60 * 60 * 24)
         {
            _loc2_ = Math.ceil(_loc1_ / (60 * 60)).toString() + " hours";
         }
         else
         {
            _loc2_ = Math.ceil(_loc1_ / (60 * 60 * 24)).toString() + " days";
         }
         this.showTimeUntilUnlocked(_loc2_);
      }
      
      public function setScale(param1:Number) : void
      {
         this.§^#Z§.scaleX = param1;
         this.§^#Z§.scaleY = param1;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§^#Z§.x = param1;
         this.§^#Z§.y = param2;
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
