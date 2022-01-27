package §="<§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §#!k§.§4!4§;
   import §%W§.§[!h§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §1!o§.§<"]§;
   import §1!o§.§?!f§;
   import §1!o§.§^!#§;
   import §5§.§-c§;
   import §;q§.§ true§;
   import §;q§.§-<§;
   import §;q§.§<"d§;
   import §]!,§.§^!U§;
   import §`"8§.§-!w§;
   import §`"8§.§@T§;
   import §`"8§.§[F§;
   import §`"8§.§^x§;
   import flash.events.Event;
   
   public class §>"C§ extends §-c§
   {
      
      public static const §9"U§:int = 1;
      
      private static const §;"Y§:String = "subscription";
      
      private static const §&"Z§:String = "nonsubscription";
       
      
      private var §'§:§2"8§;
      
      private var §;!I§:§<`§;
      
      private var §!#&§:§,m§;
      
      private var §52§:§,m§;
      
      private var §-##§:§2"8§;
      
      private var §5!o§:§,m§;
      
      private var §-!"§:§2"8§;
      
      private var §3"§:§>!%§;
      
      private var mButtonEnergy0:§>!%§;
      
      private var mButtonEnergy1:§>!%§;
      
      private var §`"R§:Vector.<§5"U§>;
      
      private var §#"%§:Vector.<§5"U§>;
      
      private var §,6§:§[!h§;
      
      private var §]S§:§-!w§;
      
      private var §6"3§:§>!%§;
      
      public function §>"C§(param1:§,m§, param2:§="B§)
      {
         super(param1,param2);
      }
      
      override protected function init() : void
      {
         var _loc4_:§5"U§ = null;
         this.§]S§ = §-!w§(§;"@§.singleton.dataModel);
         var _loc1_:§[F§ = this.§]S§.§!#%§;
         §6!J§ = false;
         this.§6"3§ = null;
         this.§'§ = §2"8§(§=5§.getItemByName("Button_Tab"));
         this.§;!I§ = §<`§(§=5§.getItemByName("MovieClip_Loading"));
         this.§!#&§ = §,m§(§=5§.getItemByName("Container_SubscriptionInfo"));
         this.§52§ = §,m§(§=5§.getItemByName("Container_Bundle"));
         var _loc2_:int = §-!w§(§;"@§.singleton.dataModel).§2!J§.§@"C§;
         this.§52§.mClip.tournamentIcons_Container.gotoAndStop(_loc2_);
         this.§!#&§.mClip.tournamentIcons_Container.gotoAndStop(_loc2_);
         this.§-##§ = §2"8§(this.§!#&§.getItemByName("Button_Cancel"));
         var _loc3_:§2"8§ = §2"8§(§=5§.getItemByName("Button_BuyFriends"));
         this.§3"§ = new §>!%§(_loc3_,§8-§,_loc1_,0,§@T§.§`!z§,null,§>!%§.§;!d§,-1);
         _loc3_ = §2"8§(§=5§.getItemByName("Button_Buy0"));
         this.mButtonEnergy0 = new §>!%§(_loc3_,§8-§,_loc1_,0,§@T§.§`!z§,null,§>!%§.§>"P§,-1);
         _loc3_ = §2"8§(§=5§.getItemByName("Button_Buy1"));
         this.mButtonEnergy1 = new §>!%§(_loc3_,§8-§,_loc1_,1,§@T§.§`!z§,null,§>!%§.§>"P§,-1);
         this.§`"R§ = new Vector.<§5"U§>(0);
         this.§#"%§ = new Vector.<§5"U§>(0);
         var _loc5_:int = 0;
         while(_loc5_ < §^x§.§!!u§)
         {
            _loc3_ = §2"8§(§=5§.getItemByName("Button_Subscription" + _loc5_));
            _loc4_ = new §5"U§(_loc3_,§8-§,_loc1_,§^x§.§,!%§,null);
            this.§`"R§.push(_loc4_);
            if(_loc5_ == 0)
            {
               _loc3_ = §2"8§(§=5§.getItemByName("Button_Renew" + _loc5_));
               _loc4_ = new §5"U§(_loc3_,§8-§,_loc1_,§^x§.§%4§,null);
               this.§#"%§.push(_loc4_);
            }
            _loc5_++;
         }
         this.§5!o§ = §,m§(§=5§.getItemByName("Container_OutOfEnergy"));
         this.§-!"§ = §2"8§(§=5§.getItemByName("Button_Check"));
         this.refresh();
      }
      
      override public function dispose() : void
      {
         this.§]S§.§`!§.removeEventListener(§^!#§.§4f§,this.§ "]§);
         this.§]S§.§?v§.removeEventListener(§?!f§.§4f§,this.§0!5§);
         this.§]S§.§9"1§.removeEventListener(§<"]§.§"A§,this.§ "]§);
         this.§]S§.§9"1§.removeEventListener(§<"]§.§2"S§,this.§]#6§);
         this.§]S§ = null;
         §=5§.removeEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.removeEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§ = null;
         this.§`"R§.length = 0;
         this.§#"%§.length = 0;
      }
      
      override public function disable() : void
      {
         this.§]S§.§`!§.removeEventListener(§^!#§.§4f§,this.§ "]§);
         this.§]S§.§?v§.removeEventListener(§?!f§.§4f§,this.§0!5§);
         this.§]S§.§9"1§.removeEventListener(§<"]§.§"A§,this.§ "]§);
         this.§]S§.§9"1§.removeEventListener(§<"]§.§2"S§,this.§]#6§);
         §=5§.removeEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.addEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.setEnabled(true);
         super.disable();
      }
      
      override public function enable(param1:String = "") : void
      {
         §=5§.addEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.removeEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.setEnabled(false);
         this.§]S§.§9"1§.addEventListener(§<"]§.§"A§,this.§ "]§);
         this.§]S§.§9"1§.addEventListener(§<"]§.§2"S§,this.§]#6§);
         this.§]S§.§`!§.addEventListener(§^!#§.§4f§,this.§ "]§);
         this.§]S§.§?v§.addEventListener(§?!f§.§4f§,this.§0!5§);
         this.refresh();
         if(this.§,6§)
         {
            this.§;!I§.setVisibility(false);
         }
         else
         {
            this.§;!I§.setVisibility(true);
         }
         super.enable();
      }
      
      override public function initData(param1:§[!h§) : void
      {
         this.§,6§ = param1;
         §6!J§ = true;
         if(!§1!?§)
         {
            this.§;!I§.setVisibility(false);
         }
         this.refresh();
      }
      
      override public function purchaseAccepted(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§6"3§ = null;
         }
      }
      
      private function §]#6§(param1:§<"]§) : void
      {
         if(this.§6"3§)
         {
            this.§6"3§.§&!y§();
            this.§6"3§ = null;
         }
      }
      
      private function § "]§(param1:Event) : void
      {
         this.refresh();
      }
      
      private function §0!5§(param1:Event) : void
      {
         this.refresh();
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§<"d§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:§-<§ = null;
         var _loc4_:§-<§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:§5"U§ = null;
         var _loc8_:§5"U§ = null;
         var _loc9_:* = false;
         if(this.§,6§)
         {
            _loc1_ = this.§,6§.energies[§@T§.§`!z§];
            _loc2_ = this.§@!]§(_loc1_);
            this.§3"§.prices = new § true§(§@T§.§`!z§,1,25);
            this.§3"§.refresh();
            this.mButtonEnergy0.singlePrice = _loc2_;
            this.mButtonEnergy0.prices = !!_loc1_.prices[0] ? _loc1_.prices[0] : null;
            this.mButtonEnergy0.refresh();
            this.mButtonEnergy1.singlePrice = _loc2_;
            this.mButtonEnergy1.prices = !!_loc1_.prices[1] ? _loc1_.prices[1] : null;
            this.mButtonEnergy1.refresh();
            _loc3_ = this.§,6§.§8"H§[§^x§.§,!%§];
            if(_loc3_)
            {
               _loc6_ = 0;
               while(_loc6_ < this.§`"R§.length)
               {
                  (_loc7_ = this.§`"R§[_loc6_]).prices = !!_loc3_.prices[_loc6_] ? _loc3_.prices[_loc6_] : null;
                  _loc7_.refresh();
                  _loc6_++;
               }
            }
            if(_loc4_ = this.§,6§.§8"H§[§^x§.§%4§])
            {
               _loc6_ = 0;
               while(_loc6_ < this.§#"%§.length)
               {
                  (_loc8_ = this.§#"%§[_loc6_]).prices = !!_loc4_.prices[_loc6_] ? _loc4_.prices[_loc6_] : null;
                  _loc8_.refresh();
                  _loc6_++;
               }
            }
            if((_loc5_ = this.§]S§.§?v§.§-o§(§^x§.§,!%§)) >= 0)
            {
               _loc9_ = _loc5_ == 0;
               this.§!#&§.mClip.tfTitle.visible = !_loc9_;
               this.§!#&§.mClip.counter.visible = !_loc9_;
               if(_loc5_ == 1)
               {
                  this.§!#&§.mClip.tfDay.visible = !_loc9_;
                  this.§!#&§.mClip.tfDays.visible = false;
               }
               else
               {
                  this.§!#&§.mClip.tfDay.visible = false;
                  this.§!#&§.mClip.tfDays.visible = !_loc9_;
               }
               this.§!#&§.mClip.tfGalacticBundleExpiresSoon.visible = _loc9_;
               if(!_loc9_)
               {
                  this.§!#&§.mClip.counter.htmlText = this.§!!%§(_loc5_.toString());
               }
               this.§7"C§(§;"Y§);
            }
            else
            {
               this.§7"C§(§&"Z§);
            }
            this.§5!o§.visible = false;
         }
      }
      
      protected function §!!%§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §@!]§(param1:§<"d§) : Number
      {
         var _loc3_:§ true§ = null;
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
      
      private function §7"C§(param1:String) : void
      {
         if(param1 == §;"Y§)
         {
            this.§!#&§.visible = true;
            this.§52§.visible = false;
            this.§3"§.visible = false;
            this.mButtonEnergy0.visible = false;
            this.mButtonEnergy1.visible = false;
         }
         else
         {
            this.§!#&§.visible = false;
            this.§52§.visible = true;
            this.§3"§.visible = true;
            this.mButtonEnergy0.visible = true;
            this.mButtonEnergy1.visible = true;
         }
      }
      
      private function §"#&§(param1:§4!4§) : void
      {
         var _loc2_:§ true§ = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         if(param1.§84§ == "")
         {
            return;
         }
         if(param1.§84§.toUpperCase().indexOf("BUY_") == 0)
         {
            if(param1.§84§.toUpperCase().indexOf("SUBSCRIPTION") != -1)
            {
               _loc3_ = "BUY_SUBSCRIPTION_";
               _loc4_ = parseInt(param1.§84§.substring(_loc3_.length));
               if((_loc5_ = param1.§-w§.targetSprite.name.toLowerCase()).indexOf("renew") != -1)
               {
                  _loc2_ = this.§#"%§[_loc4_].prices;
               }
               else
               {
                  _loc2_ = this.§`"R§[_loc4_].prices;
               }
               §@§.§=Y§("misc_menubuttonproceed_1");
               dispatchEvent(new §^!U§(§^!U§.§""!§,_loc2_));
               return;
            }
            switch(param1.§84§.toUpperCase())
            {
               case "BUY_ENERGY_FRIEND":
                  this.§6"3§ = this.§3"§;
                  _loc2_ = this.§3"§.prices;
                  §@§.§=Y§("misc_menubuttonproceed_1");
                  dispatchEvent(new §^!U§(§^!U§.§0i§,_loc2_));
                  return;
               case "BUY_ENERGY_0":
                  this.§6"3§ = this.mButtonEnergy0;
                  _loc2_ = this.mButtonEnergy0.prices;
                  break;
               case "BUY_ENERGY_1":
                  this.§6"3§ = this.mButtonEnergy1;
                  _loc2_ = this.mButtonEnergy1.prices;
            }
            if(_loc2_)
            {
               §@§.§=Y§("misc_menubuttonproceed_1");
               dispatchEvent(new §^!U§(§^!U§.§?!i§,_loc2_));
               return;
            }
         }
         switch(param1.§84§.toUpperCase())
         {
            case "TAB_ENERGIES":
               if(§1!?§)
               {
                  dispatchEvent(new §^!U§(§^!U§.§'a§));
                  break;
               }
               break;
            case "CLOSE_ENERGY_NOTICE":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§5!o§.visible = false;
         }
      }
   }
}
