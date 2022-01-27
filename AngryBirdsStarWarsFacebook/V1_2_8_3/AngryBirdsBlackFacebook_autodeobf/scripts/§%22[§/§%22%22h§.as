package §"[§
{
   import §#O§.§@c§;
   import §&!j§.§5#+§;
   import §'"A§.§#F§;
   import §'"A§.§<"o§;
   import §,§.§;t§;
   import §8!h§.§%"z§;
   import §9"U§.§!!K§;
   import §9"U§.§,N§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §98§.§&T§;
   import §98§.§'"M§;
   import §98§.§;!"§;
   import §=!4§.§8"U§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?!u§.§9"D§;
   import §?!u§.§?b§;
   import §[! §.§<",§;
   import §`!D§.*;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §""h§ extends §^z§
   {
      
      public static const §%!m§:int = 0;
      
      private static const §5d§:String = "subscription";
      
      private static const §08§:String = "nonsubscription";
      
      private static const §%X§:String = "Button_Category";
      
      private static const §1"i§:String = "Button_Buy";
      
      private static const §51§:Array = [§[!b§.§]!F§,§<"o§.§=!o§,§[!b§.§5n§,§[!b§.§+!y§,§[!b§.§]!&§,§[!b§.§9!m§];
      
      private static const §@!_§:int = 4;
      
      private static const §!"'§:int = 6;
      
      private static const §#"^§:int = 1;
      
      private static var §>"c§:int = 0;
       
      
      private var §<H§:int = 0;
      
      private var §1W§:§;g§;
      
      private var §4!W§:§9!c§;
      
      private var §3"z§:§@!8§;
      
      private var §+3§:§<",§;
      
      private var §1"X§:Vector.<§@N§>;
      
      private var §'"f§:Vector.<§!l§>;
      
      private var §3"9§:Vector.<§;t§>;
      
      private var §@"h§:String;
      
      private var §]7§:§!l§;
      
      private var §?!$§:§7"1§;
      
      private var §%">§:§[!b§;
      
      public function §""h§(param1:§@!8§, param2:§5#+§)
      {
         super(param1,param2);
      }
      
      override protected function init() : void
      {
         var _loc3_:§;t§ = null;
         var _loc5_:§;g§ = null;
         var _loc6_:§;g§ = null;
         §?"Y§ = false;
         this.§]7§ = null;
         this.§?!$§ = §7"1§(§4"#§.singleton.dataModel);
         this.§%">§ = §7"1§(§4"#§.singleton.dataModel).§@!K§;
         this.§1W§ = §;g§(§3!m§.getItemByName("Button_Tab"));
         this.§4!W§ = §9!c§(§3!m§.getItemByName("MovieClip_Loading"));
         this.§3"z§ = §@!8§(§3!m§.getItemByName("Container_SubscriptionInfo"));
         var _loc1_:int = §7"1§(§4"#§.singleton.dataModel).§1z§.§,"z§;
         this.§3"z§.mClip.tournamentIcons_Container.gotoAndStop(_loc1_);
         var _loc2_:§,N§ = this.§?!$§.§=#1§;
         this.§3"9§ = new Vector.<§;t§>(0);
         var _loc4_:int = 0;
         if(_loc4_ < §!!K§.§=!J§)
         {
            _loc6_ = §;g§(§3!m§.getItemByName("Button_Renew" + _loc4_));
            _loc3_ = new §;t§(_loc6_,§-1§,_loc2_,§!!K§.§^"e§,null);
            this.§3"9§.push(_loc3_);
         }
         this.§1"X§ = new Vector.<§@N§>();
         _loc4_ = 0;
         while(_loc4_ < §!"'§)
         {
            _loc5_ = §;g§(§3!m§.getItemByName(§%X§ + _loc4_));
            if(_loc4_ >= §51§.length)
            {
               _loc5_.setVisibility(false);
               _loc5_.setEnabled(false);
            }
            else
            {
               this.§1"X§.push(new §@N§(_loc5_,§51§[_loc4_]));
            }
            _loc4_++;
         }
         this.§'"f§ = new Vector.<§!l§>();
         _loc4_ = 0;
         while(_loc4_ < §@!_§)
         {
            _loc5_ = §;g§(§3!m§.getItemByName(§1"i§ + _loc4_));
            this.§'"f§.push(new §!l§(_loc5_,"",null,-1));
            _loc4_++;
         }
         this.refresh();
      }
      
      override public function dispose() : void
      {
         this.§%">§.removeEventListener(§?b§.§6,§,this.§^!H§);
         this.§%">§ = null;
         this.§?!$§.§,!6§.removeEventListener(§9"D§.§3s§,this.§^"]§);
         this.§?!$§.§,!6§.removeEventListener(§9"D§.§#"7§,this.§^!H§);
         this.§?!$§ = null;
         §3!m§.removeEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.removeEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§ = null;
         this.§1"X§.length = 0;
         this.§3"9§.length = 0;
      }
      
      override public function disable() : void
      {
         this.§?!$§.§,!6§.removeEventListener(§9"D§.§3s§,this.§^"]§);
         this.§?!$§.§,!6§.removeEventListener(§9"D§.§#"7§,this.§^!H§);
         this.§%">§.removeEventListener(§?b§.§6,§,this.§^!H§);
         §3!m§.removeEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.addEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.setEnabled(true);
         super.disable();
      }
      
      override public function enable(param1:String = "") : void
      {
         var _loc2_:§@N§ = null;
         var _loc3_:int = 0;
         this.§?!$§.§,!6§.addEventListener(§9"D§.§#"7§,this.§^!H§);
         this.§?!$§.§,!6§.addEventListener(§9"D§.§3s§,this.§^"]§);
         this.§%">§.addEventListener(§?b§.§6,§,this.§^!H§);
         §3!m§.addEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.removeEventListener(§8"U§.§`n§,this.§?X§);
         this.§1W§.setEnabled(false);
         if(this.§+3§)
         {
            this.§4!W§.setVisibility(false);
         }
         else
         {
            this.§4!W§.setVisibility(true);
         }
         super.enable();
         if(param1 != "")
         {
            _loc3_ = 0;
            while(_loc3_ < this.§1"X§.length)
            {
               _loc2_ = this.§1"X§[_loc3_];
               if(_loc2_.dataID == param1)
               {
                  this.§@"h§ = param1;
                  this.§<H§ = _loc3_;
                  if(this.§+3§)
                  {
                     this.refresh();
                  }
                  return;
               }
               _loc3_++;
            }
         }
      }
      
      override public function initData(param1:§<",§) : void
      {
         this.§+3§ = param1;
         §?"Y§ = true;
         if(!§2@§)
         {
            this.§4!W§.setVisibility(false);
         }
         this.§"!D§(this.§<H§);
         this.refresh();
      }
      
      override public function purchaseAccepted(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§]7§ = null;
         }
      }
      
      protected function §"!D§(param1:int) : void
      {
         var _loc2_:§@N§ = null;
         var _loc3_:int = -1;
         var _loc4_:int = param1;
         while(_loc4_ < this.§1"X§.length)
         {
            _loc2_ = this.§1"X§[_loc4_];
            if(!_loc2_.isDisabled)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         if(_loc3_ == -1 && §>"c§ < §#"^§)
         {
            ++§>"c§;
            this.§"!D§(0);
         }
         §>"c§ = 0;
         this.§@"h§ = §51§[_loc4_];
      }
      
      protected function §?,§() : void
      {
         var _loc1_:§[!b§ = null;
         var _loc2_:§@N§ = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§!l§ = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(this.§+3§)
         {
            _loc1_ = this.§?!$§.§@!K§;
            _loc4_ = 0;
            while(_loc4_ < this.§1"X§.length)
            {
               _loc2_ = this.§1"X§[_loc4_];
               _loc3_ = false;
               _loc6_ = 0;
               for(_loc7_ in this.§+3§.§1"y§)
               {
                  if(_loc7_ == _loc2_.dataID)
                  {
                     _loc3_ = true;
                     _loc6_ = _loc1_.§6"0§(_loc7_);
                     _loc2_.count = _loc6_;
                     break;
                  }
               }
               if(!_loc3_)
               {
                  _loc2_.view.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
                  _loc2_.view.setVisibility(false);
               }
               _loc4_++;
            }
            for each(_loc5_ in this.§'"f§)
            {
               _loc5_.§'"0§();
            }
         }
      }
      
      protected function §6w§(param1:String) : Boolean
      {
         var _loc2_:§7"1§ = §7"1§(§4"#§.singleton.dataModel);
         var _loc3_:§#F§ = _loc2_.§4"-§.§#!n§(param1);
         var _loc4_:int = -1;
         if(_loc3_)
         {
            _loc4_ = _loc3_.daysLeft;
         }
         if(_loc4_ >= 0)
         {
            return true;
         }
         return false;
      }
      
      protected function §^v§() : Boolean
      {
         var _loc2_:§@N§ = null;
         var _loc3_:int = 0;
         var _loc1_:Boolean = false;
         if(this.§@"h§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§1"X§.length)
            {
               _loc2_ = this.§1"X§[_loc3_];
               if(_loc2_.§>"@§ && this.§@"h§ == _loc2_.dataID)
               {
                  _loc1_ = this.§6w§(_loc2_.dataID);
                  break;
               }
               _loc3_++;
            }
         }
         return _loc1_;
      }
      
      override protected function refresh() : void
      {
         var _loc3_:* = false;
         this.§?,§();
         this.§="C§();
         var _loc1_:Boolean = this.§^v§();
         var _loc2_:int = this.§?!$§.§4"-§.§-"w§(§!!K§.§7!;§);
         if(_loc2_ >= 0 && _loc1_)
         {
            _loc3_ = _loc2_ == 0;
            this.§3"z§.mClip.tfTitle.visible = !_loc3_;
            this.§3"z§.mClip.counter.visible = !_loc3_;
            if(_loc2_ == 1)
            {
               this.§3"z§.mClip.tfDay.visible = !_loc3_;
               this.§3"z§.mClip.tfDays.visible = false;
            }
            else
            {
               this.§3"z§.mClip.tfDay.visible = false;
               this.§3"z§.mClip.tfDays.visible = !_loc3_;
            }
            this.§3"z§.mClip.tfGalacticBundleExpiresSoon.visible = _loc3_;
            if(!_loc3_)
            {
               this.§3"z§.mClip.counter.htmlText = this.§>"b§(_loc2_.toString());
            }
            this.§@!%§(§5d§);
         }
         else
         {
            this.§@!%§(§08§);
         }
         this.§7!<§();
      }
      
      protected function §>"b§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §@!%§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§!l§ = null;
         if(param1 == §5d§)
         {
            this.§3"z§.visible = true;
            _loc2_ = 0;
            while(_loc2_ < this.§'"f§.length)
            {
               _loc3_ = this.§'"f§[_loc2_];
               _loc3_.view.setVisibility(false);
               _loc2_++;
            }
            §3!m§.mClip.title.visible = false;
            §3!m§.mClip.explanation.visible = false;
         }
         else
         {
            this.§3"z§.visible = false;
            this.§^"0§();
            §3!m§.mClip.title.visible = true;
            §3!m§.mClip.explanation.visible = true;
         }
      }
      
      private function §^"0§() : void
      {
         var _loc3_:§!l§ = null;
         var _loc4_:§;!"§ = null;
         var _loc1_:int = this.§6S§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'"f§.length)
         {
            _loc3_ = this.§'"f§[_loc2_];
            if(!this.§@"h§)
            {
               _loc3_.view.setVisibility(false);
            }
            else
            {
               _loc3_.dataID = this.§@"h§;
               if((_loc4_ = this.§+3§.§1"y§[this.§@"h§]).prices == null || _loc2_ >= _loc4_.prices.length)
               {
                  _loc3_.view.setVisibility(false);
               }
               else
               {
                  _loc3_.singlePrice = _loc1_;
                  _loc3_.prices = _loc4_.prices[_loc2_];
                  _loc3_.view.setVisibility(true);
               }
            }
            _loc2_++;
         }
      }
      
      private function §6S§() : Number
      {
         var _loc3_:§'"M§ = null;
         var _loc5_:Number = NaN;
         var _loc1_:Number = -1;
         if(!this.§+3§ || !this.§+3§.§1"y§ || !this.§@"h§)
         {
            return _loc1_;
         }
         var _loc2_:§;!"§ = this.§+3§.§1"y§[this.§@"h§];
         if(_loc2_.prices == null)
         {
            return _loc1_;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.prices.length)
         {
            if(_loc3_)
            {
               if(_loc2_.prices[_loc4_].quantity < _loc3_.quantity)
               {
                  _loc3_ = _loc2_.prices[_loc4_];
               }
            }
            else
            {
               _loc3_ = _loc2_.prices[_loc4_];
            }
            _loc4_++;
         }
         if(_loc3_)
         {
            _loc1_ = (_loc5_ = !!_loc3_.§4<§ ? Number(_loc3_.normalPrice) : Number(_loc3_.price)) / _loc3_.quantity;
         }
         return _loc1_;
      }
      
      private function §7!<§() : void
      {
         var _loc3_:§&T§ = null;
         var _loc4_:int = 0;
         var _loc5_:§;t§ = null;
         if(this.§+3§)
         {
            _loc3_ = this.§+3§.§9"5§[§!!K§.§^"e§];
            if(_loc3_)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§3"9§.length)
               {
                  (_loc5_ = this.§3"9§[_loc4_]).prices = !!_loc3_.prices[_loc4_] ? _loc3_.prices[_loc4_] : null;
                  _loc5_.refresh();
                  _loc4_++;
               }
            }
         }
         var _loc1_:TextField = TextField(§3!m§.mClip.title);
         var _loc2_:TextField = TextField(§3!m§.mClip.explanation);
         _loc1_.text = !!this.§@"h§ ? §-1§.getLocalizedString("shop_" + this.§@"h§.toLowerCase() + "_title") : "";
         _loc2_.text = !!this.§@"h§ ? §-1§.getLocalizedString("shop_" + this.§@"h§.toLowerCase() + "_description") : "";
         if(_loc2_.numLines >= 2)
         {
            _loc1_.y = -49;
            _loc2_.y = -21;
         }
         else
         {
            _loc1_.y = -40;
            _loc2_.y = -12;
         }
      }
      
      private function §="C§() : void
      {
         var _loc2_:§@N§ = null;
         var _loc1_:MovieClip = §]!O§.mClip.mc_selector;
         var _loc3_:int = 0;
         while(_loc3_ < this.§1"X§.length)
         {
            _loc2_ = this.§1"X§[_loc3_];
            if(_loc2_.dataID == this.§@"h§)
            {
               _loc2_.§>"@§ = true;
               _loc1_.x = _loc2_.view.mClip.x;
            }
            else
            {
               _loc2_.§>"@§ = false;
            }
            _loc3_++;
         }
      }
      
      private function §^!H§(param1:Event) : void
      {
         this.§?,§();
      }
      
      private function §^"]§(param1:§9"D§) : void
      {
         if(this.§]7§)
         {
            this.§]7§.§5"d§();
            this.§]7§ = null;
         }
      }
      
      private function §?X§(param1:§8"U§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§@N§ = null;
         var _loc4_:§!l§ = null;
         var _loc5_:String = null;
         if(param1.§5!u§ == "")
         {
            return;
         }
         if(param1.§5!u§.toUpperCase().indexOf("CATEGORY") == 0)
         {
            _loc2_ = parseInt(param1.§5!u§.substring(8));
            _loc3_ = this.§1"X§[_loc2_];
            if(_loc3_)
            {
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§@"h§ = _loc3_.dataID;
               this.§]7§ = null;
               this.refresh();
               return;
            }
         }
         if(param1.§5!u§.toUpperCase().indexOf("BUY") == 0)
         {
            if(param1.§5!u§.toUpperCase().indexOf("SUBSCRIPTION") != -1)
            {
               _loc5_ = "BUY_SUBSCRIPTION_";
               _loc2_ = parseInt(param1.§5!u§.substring(_loc5_.length));
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               dispatchEvent(new §@c§(§@c§.§[#+§,this.§3"9§[_loc2_].prices));
               return;
            }
            _loc2_ = parseInt(param1.§5!u§.substring(3));
            if(_loc4_ = this.§'"f§[_loc2_])
            {
               if(this.§]7§ == null)
               {
                  this.§]7§ = _loc4_;
               }
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               dispatchEvent(new §@c§(§@c§.§7Q§,_loc4_.prices));
               return;
            }
         }
         switch(param1.§5!u§.toUpperCase())
         {
            case "TAB_POWERUPS":
               if(§2@§)
               {
                  dispatchEvent(new §@c§(§@c§.§"!&§));
                  break;
               }
         }
      }
   }
}
