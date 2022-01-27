package §8#I§
{
   import §!"W§.§#"[§;
   import §!"W§.§="g§;
   import §!"W§.§[!y§;
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §,"N§.§<!9§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §7K§.§&"=§;
   import §7K§.§,T§;
   import §7K§.§-I§;
   import §;@§.§2#C§;
   import §<o§.§^i§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §>"$§.§?g§;
   import §>@§.§5"H§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.events.Event;
   
   public class § q§ extends §2#C§
   {
      
      public static const §0#"§:int = 1;
      
      private static const §^t§:String = "subscription";
      
      private static const §["q§:String = "nonsubscription";
       
      
      private var §`1§:§^"m§;
      
      private var §'! §:§0"$§;
      
      private var §+!O§:§ #^§;
      
      private var §1!X§:§ #^§;
      
      private var §## §:§^"m§;
      
      private var §>0§:§ #^§;
      
      private var §&!v§:§^"m§;
      
      private var §+"+§:§>#+§;
      
      private var mButtonEnergy0:§>#+§;
      
      private var mButtonEnergy1:§>#+§;
      
      private var §!e§:Vector.<§5`§>;
      
      private var §]L§:Vector.<§5`§>;
      
      private var §%4§:§?g§;
      
      private var §4#J§:§@#B§;
      
      private var §%"e§:§>#+§;
      
      public function § q§(param1:§ #^§, param2:§5"H§)
      {
         super(param1,param2);
      }
      
      override protected function init() : void
      {
         var _loc4_:§5`§ = null;
         this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
         var _loc1_:§%"[§ = this.§4#J§.§&"9§;
         §7"p§ = false;
         this.§%"e§ = null;
         this.§`1§ = §^"m§(§=#=§.getItemByName("Button_Tab"));
         this.§'! § = §0"$§(§=#=§.getItemByName("MovieClip_Loading"));
         this.§+!O§ = § #^§(§=#=§.getItemByName("Container_SubscriptionInfo"));
         this.§1!X§ = § #^§(§=#=§.getItemByName("Container_Bundle"));
         var _loc2_:int = §@#B§(§4#;§.singleton.dataModel).§!!C§.§"#'§;
         this.§1!X§.mClip.tournamentIcons_Container.gotoAndStop(_loc2_);
         this.§+!O§.mClip.tournamentIcons_Container.gotoAndStop(_loc2_);
         this.§## § = §^"m§(this.§+!O§.getItemByName("Button_Cancel"));
         var _loc3_:§^"m§ = §^"m§(§=#=§.getItemByName("Button_BuyFriends"));
         this.§+"+§ = new §>#+§(_loc3_,§^"N§,_loc1_,0,§?v§.§5"=§,null,§>#+§.§2#W§,-1);
         _loc3_ = §^"m§(§=#=§.getItemByName("Button_Buy0"));
         this.mButtonEnergy0 = new §>#+§(_loc3_,§^"N§,_loc1_,0,§?v§.§5"=§,null,§>#+§.§ !0§,-1);
         _loc3_ = §^"m§(§=#=§.getItemByName("Button_Buy1"));
         this.mButtonEnergy1 = new §>#+§(_loc3_,§^"N§,_loc1_,1,§?v§.§5"=§,null,§>#+§.§ !0§,-1);
         this.§!e§ = new Vector.<§5`§>(0);
         this.§]L§ = new Vector.<§5`§>(0);
         var _loc5_:int = 0;
         while(_loc5_ < §<!9§.§3!&§)
         {
            _loc3_ = §^"m§(§=#=§.getItemByName("Button_Subscription" + _loc5_));
            _loc4_ = new §5`§(_loc3_,§^"N§,_loc1_,§<!9§.§ v§,null);
            this.§!e§.push(_loc4_);
            if(_loc5_ == 0)
            {
               _loc3_ = §^"m§(§=#=§.getItemByName("Button_Renew" + _loc5_));
               _loc4_ = new §5`§(_loc3_,§^"N§,_loc1_,§<!9§.§^#T§,null);
               this.§]L§.push(_loc4_);
            }
            _loc5_++;
         }
         this.§>0§ = § #^§(§=#=§.getItemByName("Container_OutOfEnergy"));
         this.§&!v§ = §^"m§(§=#=§.getItemByName("Button_Check"));
         this.refresh();
      }
      
      override public function dispose() : void
      {
         this.§4#J§.§^"J§.removeEventListener(§#"[§.§1c§,this.§8!n§);
         this.§4#J§.§4"Z§.removeEventListener(§[!y§.§1c§,this.§=K§);
         this.§4#J§.§1!f§.removeEventListener(§="g§.§>#9§,this.§8!n§);
         this.§4#J§.§1!f§.removeEventListener(§="g§.§=#2§,this.§?K§);
         this.§4#J§ = null;
         §=#=§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§ = null;
         this.§!e§.length = 0;
         this.§]L§.length = 0;
      }
      
      override public function disable() : void
      {
         this.§4#J§.§^"J§.removeEventListener(§#"[§.§1c§,this.§8!n§);
         this.§4#J§.§4"Z§.removeEventListener(§[!y§.§1c§,this.§=K§);
         this.§4#J§.§1!f§.removeEventListener(§="g§.§>#9§,this.§8!n§);
         this.§4#J§.§1!f§.removeEventListener(§="g§.§=#2§,this.§?K§);
         §=#=§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.addEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.setEnabled(true);
         super.disable();
      }
      
      override public function enable(param1:String = "") : void
      {
         §=#=§.addEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.setEnabled(false);
         this.§4#J§.§1!f§.addEventListener(§="g§.§>#9§,this.§8!n§);
         this.§4#J§.§1!f§.addEventListener(§="g§.§=#2§,this.§?K§);
         this.§4#J§.§^"J§.addEventListener(§#"[§.§1c§,this.§8!n§);
         this.§4#J§.§4"Z§.addEventListener(§[!y§.§1c§,this.§=K§);
         this.refresh();
         if(this.§%4§)
         {
            this.§'! §.setVisibility(false);
         }
         else
         {
            this.§'! §.setVisibility(true);
         }
         super.enable();
      }
      
      override public function initData(param1:§?g§) : void
      {
         this.§%4§ = param1;
         §7"p§ = true;
         if(!§]"u§)
         {
            this.§'! §.setVisibility(false);
         }
         this.refresh();
      }
      
      override public function purchaseAccepted(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§%"e§ = null;
         }
      }
      
      private function §?K§(param1:§="g§) : void
      {
         if(this.§%"e§)
         {
            this.§%"e§.§3"&§();
            this.§%"e§ = null;
         }
      }
      
      private function §8!n§(param1:Event) : void
      {
         this.refresh();
      }
      
      private function §=K§(param1:Event) : void
      {
         this.refresh();
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§&"=§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:§-I§ = null;
         var _loc4_:§-I§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:§5`§ = null;
         var _loc8_:§5`§ = null;
         var _loc9_:* = false;
         if(this.§%4§)
         {
            _loc1_ = this.§%4§.energies[§?v§.§5"=§];
            _loc2_ = this.§9"$§(_loc1_);
            this.§+"+§.prices = new §,T§(§?v§.§5"=§,1,25);
            this.§+"+§.refresh();
            this.mButtonEnergy0.singlePrice = _loc2_;
            this.mButtonEnergy0.prices = !!_loc1_.prices[0] ? _loc1_.prices[0] : null;
            this.mButtonEnergy0.refresh();
            this.mButtonEnergy1.singlePrice = _loc2_;
            this.mButtonEnergy1.prices = !!_loc1_.prices[1] ? _loc1_.prices[1] : null;
            this.mButtonEnergy1.refresh();
            _loc3_ = this.§%4§.§7"z§[§<!9§.§ v§];
            if(_loc3_)
            {
               _loc6_ = 0;
               while(_loc6_ < this.§!e§.length)
               {
                  (_loc7_ = this.§!e§[_loc6_]).prices = !!_loc3_.prices[_loc6_] ? _loc3_.prices[_loc6_] : null;
                  _loc7_.refresh();
                  _loc6_++;
               }
            }
            if(_loc4_ = this.§%4§.§7"z§[§<!9§.§^#T§])
            {
               _loc6_ = 0;
               while(_loc6_ < this.§]L§.length)
               {
                  (_loc8_ = this.§]L§[_loc6_]).prices = !!_loc4_.prices[_loc6_] ? _loc4_.prices[_loc6_] : null;
                  _loc8_.refresh();
                  _loc6_++;
               }
            }
            if((_loc5_ = this.§4#J§.§4"Z§.§@#3§(§<!9§.§ v§)) >= 0)
            {
               _loc9_ = _loc5_ == 0;
               this.§+!O§.mClip.tfTitle.visible = !_loc9_;
               this.§+!O§.mClip.counter.visible = !_loc9_;
               if(_loc5_ == 1)
               {
                  this.§+!O§.mClip.tfDay.visible = !_loc9_;
                  this.§+!O§.mClip.tfDays.visible = false;
               }
               else
               {
                  this.§+!O§.mClip.tfDay.visible = false;
                  this.§+!O§.mClip.tfDays.visible = !_loc9_;
               }
               this.§+!O§.mClip.tfGalacticBundleExpiresSoon.visible = _loc9_;
               if(!_loc9_)
               {
                  this.§+!O§.mClip.counter.htmlText = this.§?"6§(_loc5_.toString());
               }
               this.§6!,§(§^t§);
            }
            else
            {
               this.§6!,§(§["q§);
            }
            this.§>0§.visible = false;
         }
      }
      
      protected function §?"6§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §9"$§(param1:§&"=§) : Number
      {
         var _loc3_:§,T§ = null;
         var _loc2_:Number = -1;
         if(!param1)
         {
            return _loc2_;
         }
         var _loc4_:int = 0;
         while(_loc4_ < param1.prices.length)
         {
            if(_loc3_)
            {
               if(param1.prices[_loc4_].quantity < _loc3_.quantity)
               {
                  _loc3_ = param1.prices[_loc4_];
               }
            }
            else
            {
               _loc3_ = param1.prices[_loc4_];
            }
            _loc4_++;
         }
         if(_loc3_)
         {
            _loc2_ = _loc3_.price / _loc3_.quantity;
         }
         return _loc2_;
      }
      
      private function §6!,§(param1:String) : void
      {
         if(param1 == §^t§)
         {
            this.§+!O§.visible = true;
            this.§1!X§.visible = false;
            this.§+"+§.visible = false;
            this.mButtonEnergy0.visible = false;
            this.mButtonEnergy1.visible = false;
         }
         else
         {
            this.§+!O§.visible = false;
            this.§1!X§.visible = true;
            this.§+"+§.visible = true;
            this.mButtonEnergy0.visible = true;
            this.mButtonEnergy1.visible = true;
         }
      }
      
      private function §[!q§(param1:§6#'§) : void
      {
         var _loc2_:§,T§ = null;
         var _loc3_:§[!j§ = null;
         if(param1.§=!k§ == "")
         {
            return;
         }
         if(param1.§=!k§.toUpperCase().indexOf("BUY_") == 0)
         {
            if(param1.§=!k§.toUpperCase().indexOf("SUBSCRIPTION") != -1)
            {
               _loc3_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§8Z§);
               §4#;§.singleton.popupManager.openPopup(_loc3_,true,true);
            }
            switch(param1.§=!k§.toUpperCase())
            {
               case "BUY_ENERGY_FRIEND":
                  this.§%"e§ = this.§+"+§;
                  _loc2_ = this.§+"+§.prices;
                  §?!r§.§"#_§("misc_menubuttonproceed_1");
                  dispatchEvent(new §^i§(§^i§.§@"v§,_loc2_));
                  return;
               case "BUY_ENERGY_0":
                  this.§%"e§ = this.mButtonEnergy0;
                  _loc2_ = this.mButtonEnergy0.prices;
                  break;
               case "BUY_ENERGY_1":
                  this.§%"e§ = this.mButtonEnergy1;
                  _loc2_ = this.mButtonEnergy1.prices;
            }
            if(_loc2_)
            {
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               dispatchEvent(new §^i§(§^i§.§?!A§,_loc2_));
               return;
            }
         }
         switch(param1.§=!k§.toUpperCase())
         {
            case "TAB_ENERGIES":
               if(§]"u§)
               {
                  dispatchEvent(new §^i§(§^i§.§-#>§));
                  break;
               }
               break;
            case "CLOSE_ENERGY_NOTICE":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§>0§.visible = false;
         }
      }
   }
}
