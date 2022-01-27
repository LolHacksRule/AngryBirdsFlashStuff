package §;! §
{
   import §!"W§.§="5§;
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.text.TextField;
   
   public class §4!l§
   {
      
      public static const §"#F§:String = "plus";
      
      public static const §]"c§:String = "minus";
       
      
      protected var §=#=§:§ #^§;
      
      protected var §@!E§:§=o§;
      
      protected var §8!,§:int;
      
      public function §4!l§(param1:§ #^§)
      {
         super();
         this.§=#=§ = param1;
         this.§=#=§.addEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
         this.§@!E§.addEventListener(§="5§.§1c§,this.§-!b§);
         this.§=#=§.mClip.coinIcon.gotoAndStop(1);
         this.§=#=§.mClip.coinIcon.mouseChildren = false;
         this.§=#=§.mClip.coinIcon.mouseEnabled = false;
         this.§8!,§ = -1;
         this.§-!b§();
      }
      
      public function dispose() : void
      {
         this.§@!E§.removeEventListener(§="5§.§1c§,this.§-!b§);
         this.§=#=§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
      }
      
      private function §-!b§(param1:§="5§ = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         this.§=#=§.mClip.balance.htmlText = this.§?"6§(this.§@!E§.starCoins.toString());
         var _loc2_:int = this.§@!E§.starCoins;
         if(this.§8!,§ != _loc2_ && this.§8!,§ != -1)
         {
            _loc3_ = Math.abs(this.§8!,§ - _loc2_);
            _loc5_ = (!!(_loc4_ = _loc2_ < this.§8!,§ ? false : true) ? "+" : "-") + _loc3_.toString();
            _loc6_ = !!_loc4_ ? §"#F§ : §]"c§;
            TextField(this.§=#=§.mClip.coinIcon.changeInfo.titleClip.title).text = _loc5_;
            this.§=#=§.mClip.coinIcon.gotoAndPlay(_loc6_);
         }
         this.§=#=§.mClip.balance.htmlText = this.§?"6§(_loc2_.toString());
         this.§8!,§ = _loc2_;
      }
      
      private function §?"6§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §[!q§(param1:§6#'§) : void
      {
         var _loc2_:§[!j§ = null;
         switch(param1.§=!k§.toUpperCase())
         {
            case "BUY_COINS":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               _loc2_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§8Z§);
               §4#;§.singleton.popupManager.openPopup(_loc2_,true,true);
         }
      }
   }
}
