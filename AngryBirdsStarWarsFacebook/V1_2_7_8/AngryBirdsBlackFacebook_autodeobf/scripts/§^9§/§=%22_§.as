package §^9§
{
   import §""d§.§,m§;
   import §#!k§.§4!4§;
   import §,"v§.§@§;
   import §1!o§.§<"W§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §6"e§.§+!§;
   import §<"s§.§0u§;
   import §`"8§.§-!w§;
   import §`"8§.§6`§;
   import flash.text.TextField;
   
   public class §="_§
   {
      
      public static const §"#%§:String = "plus";
      
      public static const §=#'§:String = "minus";
       
      
      protected var §=5§:§,m§;
      
      protected var §+#'§:§6`§;
      
      protected var §2B§:int;
      
      public function §="_§(param1:§,m§)
      {
         super();
         this.§=5§ = param1;
         this.§=5§.addEventListener(§4!4§.§="n§,this.§"#&§);
         this.§+#'§ = §-!w§(§;"@§.singleton.dataModel).§;L§;
         this.§+#'§.addEventListener(§<"W§.§4f§,this.§+i§);
         this.§=5§.mClip.coinIcon.gotoAndStop(1);
         this.§=5§.mClip.coinIcon.mouseChildren = false;
         this.§=5§.mClip.coinIcon.mouseEnabled = false;
         this.§2B§ = -1;
         this.§+i§();
      }
      
      public function dispose() : void
      {
         this.§+#'§.removeEventListener(§<"W§.§4f§,this.§+i§);
         this.§=5§.removeEventListener(§4!4§.§="n§,this.§"#&§);
      }
      
      private function §+i§(param1:§<"W§ = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         this.§=5§.mClip.balance.htmlText = this.§!!%§(this.§+#'§.starCoins.toString());
         var _loc2_:int = this.§+#'§.starCoins;
         if(this.§2B§ != _loc2_ && this.§2B§ != -1)
         {
            _loc3_ = Math.abs(this.§2B§ - _loc2_);
            _loc5_ = (!!(_loc4_ = _loc2_ < this.§2B§ ? false : true) ? "+" : "-") + _loc3_.toString();
            _loc6_ = !!_loc4_ ? §"#%§ : §=#'§;
            TextField(this.§=5§.mClip.coinIcon.changeInfo.titleClip.title).text = _loc5_;
            this.§=5§.mClip.coinIcon.gotoAndPlay(_loc6_);
         }
         this.§=5§.mClip.balance.htmlText = this.§!!%§(_loc2_.toString());
         this.§2B§ = _loc2_;
      }
      
      private function §!!%§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §"#&§(param1:§4!4§) : void
      {
         var _loc2_:§5!R§ = null;
         switch(param1.§84§.toUpperCase())
         {
            case "BUY_COINS":
               §@§.§=Y§("misc_menubuttonproceed_1");
               _loc2_ = new §+!§(§0u§.§1"J§,§^T§.TOP,§+!§.§!v§);
               §;"@§.singleton.popupManager.openPopup(_loc2_,true,true);
         }
      }
   }
}
