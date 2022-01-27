package §4"m§
{
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §6"-§.§^!Q§;
   import §9"U§.§0!2§;
   import §9"U§.§7"1§;
   import §=!4§.§8"U§;
   import §=Z§.§@!8§;
   import §?!u§.§,!$§;
   import §`"1§.§=Q§;
   import flash.text.TextField;
   
   public class §;`§
   {
      
      public static const §7"5§:String = "plus";
      
      public static const §@#3§:String = "minus";
       
      
      protected var §3!m§:§@!8§;
      
      protected var §5!G§:§0!2§;
      
      protected var §#7§:int;
      
      public function §;`§(param1:§@!8§)
      {
         super();
         this.§3!m§ = param1;
         this.§3!m§.addEventListener(§8"U§.§`n§,this.§?X§);
         this.§5!G§ = §7"1§(§4"#§.singleton.dataModel).§&!w§;
         this.§5!G§.addEventListener(§,!$§.§6,§,this.§#I§);
         this.§3!m§.mClip.coinIcon.gotoAndStop(1);
         this.§3!m§.mClip.coinIcon.mouseChildren = false;
         this.§3!m§.mClip.coinIcon.mouseEnabled = false;
         this.§#7§ = -1;
         this.§#I§();
      }
      
      public function dispose() : void
      {
         this.§5!G§.removeEventListener(§,!$§.§6,§,this.§#I§);
         this.§3!m§.removeEventListener(§8"U§.§`n§,this.§?X§);
      }
      
      private function §#I§(param1:§,!$§ = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         this.§3!m§.mClip.balance.htmlText = this.§>"b§(this.§5!G§.starCoins.toString());
         var _loc2_:int = this.§5!G§.starCoins;
         if(this.§#7§ != _loc2_ && this.§#7§ != -1)
         {
            _loc3_ = Math.abs(this.§#7§ - _loc2_);
            _loc5_ = (!!(_loc4_ = _loc2_ < this.§#7§ ? false : true) ? "+" : "-") + _loc3_.toString();
            _loc6_ = !!_loc4_ ? §7"5§ : §@#3§;
            TextField(this.§3!m§.mClip.coinIcon.changeInfo.titleClip.title).text = _loc5_;
            this.§3!m§.mClip.coinIcon.gotoAndPlay(_loc6_);
         }
         this.§3!m§.mClip.balance.htmlText = this.§>"b§(_loc2_.toString());
         this.§#7§ = _loc2_;
      }
      
      private function §>"b§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §?X§(param1:§8"U§) : void
      {
         var _loc2_:§3!§ = null;
         switch(param1.§5!u§.toUpperCase())
         {
            case "BUY_COINS":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               _loc2_ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§+! §);
               §4"#§.singleton.popupManager.openPopup(_loc2_,true,true);
         }
      }
   }
}
