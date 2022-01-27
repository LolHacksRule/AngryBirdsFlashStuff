package §,§#6
{
   import §#O§.§@c§;
   import §&!j§.§5#+§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §6"-§.§^!Q§;
   import §9"U§.§!!K§;
   import §9"U§.§,!c§;
   import §9"U§.§,N§;
   import §9"U§.§7"1§;
   import §98§.§&T§;
   import §98§.§'"M§;
   import §98§.§="W§;
   import §=!4§.§8"U§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?!u§.§&"J§;
   import §?!u§.§9"D§;
   import §?!u§.§?!m§;
   import §[! §.§<",§;
   import §`!D§.§^z§;
   import §`"1§.§=Q§;
   import flash.events.Event;
   
   public class §["W§ extends §^z§
   {
      
      public static const §%!m§:int = 1;
      
      private static const §5d§:String = "subscription";
      
      private static const §08§:String = "nonsubscription";
       
      
      private var §1W§:§;g§;
      
      private var §4!W§:§9!c§;
      
      private var §^6§:§@!8§;
      
      private var §&%§:§@!8§;
      
      private var §0!m§:§;g§;
      
      private var §"#"§:§@!8§;
      
      private var § use§:§;g§;
      
      private var §,"`§:§?"a§;
      
      private var mButtonEnergy0:§?"a§;
      
      private var mButtonEnergy1:§?"a§;
      
      private var §3"9§:Vector.<§;t§>;
      
      private var §^"T§:Vector.<§;t§>;
      
      private var §+3§:§<",§;
      
      private var §?!$§:§7"1§;
      
      private var §]7§:§?"a§;
      
      public function §["W§(param1:§@!8§, param2:§5#+§)
      {
         super(param1,param2);
      }
      
      override protected function init() : void
      {
         var _loc4_:§;t§ = null;
         this.§?!$§ = §7"1§(§4"#§.singleton.dataModel);
         var _loc1_:§,N§ = this.§?!$§.§=#1§;
         §?"Y§ = false;
         this.§]7§ = null;
         this.§1W§ = §;g§(§3!m§.getItemByName("Button_Tab"));
         this.§4!W§ = §9!c§(§3!m§.getItemByName("MovieClip_Loading"));
         this.§^6§ = §@!8§(§3!m§.getItemByName("Container_SubscriptionInfo"));
         this.§&%§ = §@!8§(§3!m§.getItemByName("Container_Bundle"));
         var _loc2_:int = §7"1§(§4"#§.singleton.dataModel).§1z§.§,"z§;
         this.§&%§.mClip.tournamentIcons_Container.gotoAndStop(_loc2_);
         this.§^6§.mClip.tournamentIcons_Container.gotoAndStop(_loc2_);
         this.§0!m§ = §;g§(this.§^6§.getItemByName("Button_Cancel"));
         var _loc3_:§;g§ = §;g§(§3!m§.getItemByName("Button_BuyFriends"));
         this.§,"`§ = new §?"a§(_loc3_,§-1§,_loc1_,0,§,!c§.§%!e§,null,§?"a§.§>!Q§,-1);
         _loc3_ = §;g§(§3!m§.getItemByName("Button_Buy0"));
         this.mButtonEnergy0 = new §?"a§(_loc3_,§-1§,_loc1_,0,§,!c§.§%!e§,null,§?"a§.§=o§,-1);
         _loc3_ = §;g§(§3!m§.getItemByName("Button_Buy1"));
         this.mButtonEnergy1 = new §?"a§(_loc3_,§-1§,_loc1_,1,§,!c§.§%!e§,null,§?"a§.§=o§,-1);
         this.§3"9§ = new Vector.<§;t§>(0);
         this.§^"T§ = new Vector.<§;t§>(0);
         var _loc5_:int = 0;
         while(_loc5_ < §!!K§.§=!J§)
         {
            _loc3_ = §;g§(§3!m§.getItemByName("Button_Subscription" + _loc5_));
            _loc4_ = new §;t§(_loc3_,§-1§,_loc1_,§!!K§.§7!;§,null);
            this.§3"9§.push(_loc4_);
            if(_loc5_ == 0)
            {
               _loc3_ = §;g§(§3!m§.getItemByName("Button_Renew" + _loc5_));
               _loc4_ = new §;t§(_loc3_,§-1§,_loc1_,§!!K§.§^"e§,null);
               this.§^"T§.push(_loc4_);
            }
            _loc5_++;
         }
         this.§"#"§ = §@!8§(§3!m§.getItemByName("Container_OutOfEnergy"));
         this.§ use§ = §;g§(§3!m§.getItemByName("Button_Check"));
         this.refresh();
      }
      
      override public function dispose() : void
      {
         this.§?!$§.§9"$§.removeEventListener(§&"J§.§6,§,this.§+M§);
         this.§?!$§.§4"-§.removeEventListener(§?!m§.§6,§,this.§0" §);
         this.§?!$§.§,!6§.removeEventListener(§9"D§.§#"7§,this.§+M§);
         this.§?!$§.§,!6§.removeEventListener(§9"D§.§3s§,this.§^"]§);
         this.§?!$§ = null;
         §3!m§.removeEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.removeEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§ = null;
         this.§3"9§.length = 0;
         this.§^"T§.length = 0;
      }
      
      override public function disable() : void
      {
         this.§?!$§.§9"$§.removeEventListener(§&"J§.§6,§,this.§+M§);
         this.§?!$§.§4"-§.removeEventListener(§?!m§.§6,§,this.§0" §);
         this.§?!$§.§,!6§.removeEventListener(§9"D§.§#"7§,this.§+M§);
         this.§?!$§.§,!6§.removeEventListener(§9"D§.§3s§,this.§^"]§);
         §3!m§.removeEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.addEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.setEnabled(true);
         super.disable();
      }
      
      override public function enable(param1:String = "") : void
      {
         §3!m§.addEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.removeEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.setEnabled(false);
         this.§?!$§.§,!6§.addEventListener(§9"D§.§#"7§,this.§+M§);
         this.§?!$§.§,!6§.addEventListener(§9"D§.§3s§,this.§^"]§);
         this.§?!$§.§9"$§.addEventListener(§&"J§.§6,§,this.§+M§);
         this.§?!$§.§4"-§.addEventListener(§?!m§.§6,§,this.§0" §);
         this.refresh();
         if(this.§+3§)
         {
            this.§4!W§.setVisibility(false);
         }
         else
         {
            this.§4!W§.setVisibility(true);
         }
         super.enable();
      }
      
      override public function initData(param1:§<",§) : void
      {
         this.§+3§ = param1;
         §?"Y§ = true;
         if(!§2@§)
         {
            this.§4!W§.setVisibility(false);
         }
         this.refresh();
      }
      
      override public function purchaseAccepted(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§]7§ = null;
         }
      }
      
      private function §^"]§(param1:§9"D§) : void
      {
         if(this.§]7§)
         {
            this.§]7§.§5"d§();
            this.§]7§ = null;
         }
      }
      
      private function §+M§(param1:Event) : void
      {
         this.refresh();
      }
      
      private function §0" §(param1:Event) : void
      {
         this.refresh();
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§="W§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:§&T§ = null;
         var _loc4_:§&T§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:§;t§ = null;
         var _loc8_:§;t§ = null;
         var _loc9_:* = false;
         if(this.§+3§)
         {
            _loc1_ = this.§+3§.energies[§,!c§.§%!e§];
            _loc2_ = this.§6S§(_loc1_);
            this.§,"`§.prices = new §'"M§(§,!c§.§%!e§,1,25);
            this.§,"`§.refresh();
            this.mButtonEnergy0.singlePrice = _loc2_;
            this.mButtonEnergy0.prices = !!_loc1_.prices[0] ? _loc1_.prices[0] : null;
            this.mButtonEnergy0.refresh();
            this.mButtonEnergy1.singlePrice = _loc2_;
            this.mButtonEnergy1.prices = !!_loc1_.prices[1] ? _loc1_.prices[1] : null;
            this.mButtonEnergy1.refresh();
            _loc3_ = this.§+3§.§9"5§[§!!K§.§7!;§];
            if(_loc3_)
            {
               _loc6_ = 0;
               while(_loc6_ < this.§3"9§.length)
               {
                  (_loc7_ = this.§3"9§[_loc6_]).prices = !!_loc3_.prices[_loc6_] ? _loc3_.prices[_loc6_] : null;
                  _loc7_.refresh();
                  _loc6_++;
               }
            }
            if(_loc4_ = this.§+3§.§9"5§[§!!K§.§^"e§])
            {
               _loc6_ = 0;
               while(_loc6_ < this.§^"T§.length)
               {
                  (_loc8_ = this.§^"T§[_loc6_]).prices = !!_loc4_.prices[_loc6_] ? _loc4_.prices[_loc6_] : null;
                  _loc8_.refresh();
                  _loc6_++;
               }
            }
            if((_loc5_ = this.§?!$§.§4"-§.§-"w§(§!!K§.§7!;§)) >= 0)
            {
               _loc9_ = _loc5_ == 0;
               this.§^6§.mClip.tfTitle.visible = !_loc9_;
               this.§^6§.mClip.counter.visible = !_loc9_;
               if(_loc5_ == 1)
               {
                  this.§^6§.mClip.tfDay.visible = !_loc9_;
                  this.§^6§.mClip.tfDays.visible = false;
               }
               else
               {
                  this.§^6§.mClip.tfDay.visible = false;
                  this.§^6§.mClip.tfDays.visible = !_loc9_;
               }
               this.§^6§.mClip.tfGalacticBundleExpiresSoon.visible = _loc9_;
               if(!_loc9_)
               {
                  this.§^6§.mClip.counter.htmlText = this.§>"b§(_loc5_.toString());
               }
               this.§@!%§(§5d§);
            }
            else
            {
               this.§@!%§(§08§);
            }
            this.§"#"§.visible = false;
         }
      }
      
      protected function §>"b§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §6S§(param1:§="W§) : Number
      {
         var _loc3_:§'"M§ = null;
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
      
      private function §@!%§(param1:String) : void
      {
         if(param1 == §5d§)
         {
            this.§^6§.visible = true;
            this.§&%§.visible = false;
            this.§,"`§.visible = false;
            this.mButtonEnergy0.visible = false;
            this.mButtonEnergy1.visible = false;
         }
         else
         {
            this.§^6§.visible = false;
            this.§&%§.visible = true;
            this.§,"`§.visible = true;
            this.mButtonEnergy0.visible = true;
            this.mButtonEnergy1.visible = true;
         }
      }
      
      private function §?X§(param1:§8"U§) : void
      {
         var _loc2_:§'"M§ = null;
         var _loc3_:§3!§ = null;
         if(param1.§5!u§ == "")
         {
            return;
         }
         if(param1.§5!u§.toUpperCase().indexOf("BUY_") == 0)
         {
            if(param1.§5!u§.toUpperCase().indexOf("SUBSCRIPTION") != -1)
            {
               _loc3_ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§+! §);
               §4"#§.singleton.popupManager.openPopup(_loc3_,true,true);
            }
            switch(param1.§5!u§.toUpperCase())
            {
               case "BUY_ENERGY_FRIEND":
                  this.§]7§ = this.§,"`§;
                  _loc2_ = this.§,"`§.prices;
                  §=Q§.§`!A§("misc_menubuttonproceed_1");
                  dispatchEvent(new §@c§(§@c§.§8N§,_loc2_));
                  return;
               case "BUY_ENERGY_0":
                  this.§]7§ = this.mButtonEnergy0;
                  _loc2_ = this.mButtonEnergy0.prices;
                  break;
               case "BUY_ENERGY_1":
                  this.§]7§ = this.mButtonEnergy1;
                  _loc2_ = this.mButtonEnergy1.prices;
            }
            if(_loc2_)
            {
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               dispatchEvent(new §@c§(§@c§.§%!k§,_loc2_));
               return;
            }
         }
         switch(param1.§5!u§.toUpperCase())
         {
            case "TAB_ENERGIES":
               if(§2@§)
               {
                  dispatchEvent(new §@c§(§@c§.§"!&§));
                  break;
               }
               break;
            case "CLOSE_ENERGY_NOTICE":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§"#"§.visible = false;
         }
      }
   }
}
