package §'y§
{
   import §!"W§.§="g§;
   import §!"W§.§@!X§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §,"N§.§6"w§;
   import §,"N§.§<!9§;
   import §,"N§.§@#B§;
   import §6!H§.§-"b§;
   import §6!H§.§9!!§;
   import §7K§.§#!E§;
   import §7K§.§,T§;
   import §7K§.§-I§;
   import §8#I§.§5`§;
   import §;"Y§.§1"z§;
   import §;@§.*;
   import §<o§.§^i§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §>"$§.§?g§;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §^!B§ extends §2#C§
   {
      
      public static const §0#"§:int = 0;
      
      private static const §^t§:String = "subscription";
      
      private static const §["q§:String = "nonsubscription";
      
      private static const §#!?§:String = "Button_Category";
      
      private static const §<!j§:String = "Button_Buy";
      
      private static const §]#G§:Array = [§6"w§.§1!m§,§-"b§.§2"u§,§6"w§.§,!4§,§6"w§.§3"F§,§6"w§.§ !p§,§6"w§.§+!G§];
      
      private static const §%!m§:int = 4;
      
      private static const §;W§:int = 6;
      
      private static const §0#L§:int = 1;
      
      private static var §"f§:int = 0;
       
      
      private var §@!4§:int = 0;
      
      private var §`1§:§^"m§;
      
      private var §'! §:§0"$§;
      
      private var §!"z§:§ #^§;
      
      private var §%4§:§?g§;
      
      private var §6'§:Vector.<§!8§>;
      
      private var §"!X§:Vector.<§7!,§>;
      
      private var §!e§:Vector.<§5`§>;
      
      private var §0n§:String;
      
      private var §%"e§:§7!,§;
      
      private var §4#J§:§@#B§;
      
      private var §1!x§:§6"w§;
      
      public function §^!B§(param1:§ #^§, param2:§5"H§)
      {
         super(param1,param2);
      }
      
      override protected function init() : void
      {
         var _loc3_:§5`§ = null;
         var _loc5_:§^"m§ = null;
         var _loc6_:§^"m§ = null;
         §7"p§ = false;
         this.§%"e§ = null;
         this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
         this.§1!x§ = §@#B§(§4#;§.singleton.dataModel).§]"<§;
         this.§`1§ = §^"m§(§=#=§.getItemByName("Button_Tab"));
         this.§'! § = §0"$§(§=#=§.getItemByName("MovieClip_Loading"));
         this.§!"z§ = § #^§(§=#=§.getItemByName("Container_SubscriptionInfo"));
         var _loc1_:int = §@#B§(§4#;§.singleton.dataModel).§!!C§.§"#'§;
         this.§!"z§.mClip.tournamentIcons_Container.gotoAndStop(_loc1_);
         var _loc2_:§%"[§ = this.§4#J§.§&"9§;
         this.§!e§ = new Vector.<§5`§>(0);
         var _loc4_:int = 0;
         if(_loc4_ < §<!9§.§3!&§)
         {
            _loc6_ = §^"m§(§=#=§.getItemByName("Button_Renew" + _loc4_));
            _loc3_ = new §5`§(_loc6_,§^"N§,_loc2_,§<!9§.§^#T§,null);
            this.§!e§.push(_loc3_);
         }
         this.§6'§ = new Vector.<§!8§>();
         _loc4_ = 0;
         while(_loc4_ < §;W§)
         {
            _loc5_ = §^"m§(§=#=§.getItemByName(§#!?§ + _loc4_));
            if(_loc4_ >= §]#G§.length)
            {
               _loc5_.setVisibility(false);
               _loc5_.setEnabled(false);
            }
            else
            {
               this.§6'§.push(new §!8§(_loc5_,§]#G§[_loc4_]));
            }
            _loc4_++;
         }
         this.§"!X§ = new Vector.<§7!,§>();
         _loc4_ = 0;
         while(_loc4_ < §%!m§)
         {
            _loc5_ = §^"m§(§=#=§.getItemByName(§<!j§ + _loc4_));
            this.§"!X§.push(new §7!,§(_loc5_,"",null,-1));
            _loc4_++;
         }
         this.refresh();
      }
      
      override public function dispose() : void
      {
         this.§1!x§.removeEventListener(§@!X§.§1c§,this.§0"D§);
         this.§1!x§ = null;
         this.§4#J§.§1!f§.removeEventListener(§="g§.§=#2§,this.§?K§);
         this.§4#J§.§1!f§.removeEventListener(§="g§.§>#9§,this.§0"D§);
         this.§4#J§ = null;
         §=#=§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§ = null;
         this.§6'§.length = 0;
         this.§!e§.length = 0;
      }
      
      override public function disable() : void
      {
         this.§4#J§.§1!f§.removeEventListener(§="g§.§=#2§,this.§?K§);
         this.§4#J§.§1!f§.removeEventListener(§="g§.§>#9§,this.§0"D§);
         this.§1!x§.removeEventListener(§@!X§.§1c§,this.§0"D§);
         §=#=§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.addEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.setEnabled(true);
         super.disable();
      }
      
      override public function enable(param1:String = "") : void
      {
         var _loc2_:§!8§ = null;
         var _loc3_:int = 0;
         this.§4#J§.§1!f§.addEventListener(§="g§.§>#9§,this.§0"D§);
         this.§4#J§.§1!f§.addEventListener(§="g§.§=#2§,this.§?K§);
         this.§1!x§.addEventListener(§@!X§.§1c§,this.§0"D§);
         §=#=§.addEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.removeEventListener(§6#'§.§+!>§,this.§[!q§);
         this.§`1§.setEnabled(false);
         if(this.§%4§)
         {
            this.§'! §.setVisibility(false);
         }
         else
         {
            this.§'! §.setVisibility(true);
         }
         super.enable();
         if(param1 != "")
         {
            _loc3_ = 0;
            while(_loc3_ < this.§6'§.length)
            {
               _loc2_ = this.§6'§[_loc3_];
               if(_loc2_.dataID == param1)
               {
                  this.§0n§ = param1;
                  this.§@!4§ = _loc3_;
                  if(this.§%4§)
                  {
                     this.refresh();
                  }
                  return;
               }
               _loc3_++;
            }
         }
      }
      
      override public function initData(param1:§?g§) : void
      {
         this.§%4§ = param1;
         §7"p§ = true;
         if(!§]"u§)
         {
            this.§'! §.setVisibility(false);
         }
         this.§'"U§(this.§@!4§);
         this.refresh();
      }
      
      override public function purchaseAccepted(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§%"e§ = null;
         }
      }
      
      protected function §'"U§(param1:int) : void
      {
         var _loc2_:§!8§ = null;
         var _loc3_:int = -1;
         var _loc4_:int = param1;
         while(_loc4_ < this.§6'§.length)
         {
            _loc2_ = this.§6'§[_loc4_];
            if(!_loc2_.isDisabled)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         if(_loc3_ == -1 && §"f§ < §0#L§)
         {
            ++§"f§;
            this.§'"U§(0);
         }
         §"f§ = 0;
         this.§0n§ = §]#G§[_loc4_];
      }
      
      protected function §4"6§() : void
      {
         var _loc1_:§6"w§ = null;
         var _loc2_:§!8§ = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§7!,§ = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(this.§%4§)
         {
            _loc1_ = this.§4#J§.§]"<§;
            _loc4_ = 0;
            while(_loc4_ < this.§6'§.length)
            {
               _loc2_ = this.§6'§[_loc4_];
               _loc3_ = false;
               _loc6_ = 0;
               for(_loc7_ in this.§%4§.§-h§)
               {
                  if(_loc7_ == _loc2_.dataID)
                  {
                     _loc3_ = true;
                     _loc6_ = _loc1_.§8#K§(_loc7_);
                     _loc2_.count = _loc6_;
                     break;
                  }
               }
               if(!_loc3_)
               {
                  _loc2_.view.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
                  _loc2_.view.setVisibility(false);
               }
               _loc4_++;
            }
            for each(_loc5_ in this.§"!X§)
            {
               _loc5_.§&5§();
            }
         }
      }
      
      protected function §9!5§(param1:String) : Boolean
      {
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         var _loc3_:§9!!§ = _loc2_.§4"Z§.§"!B§(param1);
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
      
      protected function §4k§() : Boolean
      {
         var _loc2_:§!8§ = null;
         var _loc3_:int = 0;
         var _loc1_:Boolean = false;
         if(this.§0n§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§6'§.length)
            {
               _loc2_ = this.§6'§[_loc3_];
               if(_loc2_.§0!H§ && this.§0n§ == _loc2_.dataID)
               {
                  _loc1_ = this.§9!5§(_loc2_.dataID);
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
         this.§4"6§();
         this.§&"6§();
         var _loc1_:Boolean = this.§4k§();
         var _loc2_:int = this.§4#J§.§4"Z§.§@#3§(§<!9§.§ v§);
         if(_loc2_ >= 0 && _loc1_)
         {
            _loc3_ = _loc2_ == 0;
            this.§!"z§.mClip.tfTitle.visible = !_loc3_;
            this.§!"z§.mClip.counter.visible = !_loc3_;
            if(_loc2_ == 1)
            {
               this.§!"z§.mClip.tfDay.visible = !_loc3_;
               this.§!"z§.mClip.tfDays.visible = false;
            }
            else
            {
               this.§!"z§.mClip.tfDay.visible = false;
               this.§!"z§.mClip.tfDays.visible = !_loc3_;
            }
            this.§!"z§.mClip.tfGalacticBundleExpiresSoon.visible = _loc3_;
            if(!_loc3_)
            {
               this.§!"z§.mClip.counter.htmlText = this.§?"6§(_loc2_.toString());
            }
            this.§6!,§(§^t§);
         }
         else
         {
            this.§6!,§(§["q§);
         }
         this.§4#C§();
      }
      
      protected function §?"6§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §6!,§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§7!,§ = null;
         if(param1 == §^t§)
         {
            this.§!"z§.visible = true;
            _loc2_ = 0;
            while(_loc2_ < this.§"!X§.length)
            {
               _loc3_ = this.§"!X§[_loc2_];
               _loc3_.view.setVisibility(false);
               _loc2_++;
            }
            §=#=§.mClip.title.visible = false;
            §=#=§.mClip.explanation.visible = false;
         }
         else
         {
            this.§!"z§.visible = false;
            this.§=#^§();
            §=#=§.mClip.title.visible = true;
            §=#=§.mClip.explanation.visible = true;
         }
      }
      
      private function §=#^§() : void
      {
         var _loc3_:§7!,§ = null;
         var _loc4_:§#!E§ = null;
         var _loc1_:int = this.§9"$§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!X§.length)
         {
            _loc3_ = this.§"!X§[_loc2_];
            if(!this.§0n§)
            {
               _loc3_.view.setVisibility(false);
            }
            else
            {
               _loc3_.dataID = this.§0n§;
               if((_loc4_ = this.§%4§.§-h§[this.§0n§]).prices == null || _loc2_ >= _loc4_.prices.length)
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
      
      private function §9"$§() : Number
      {
         var _loc3_:§,T§ = null;
         var _loc5_:Number = NaN;
         var _loc1_:Number = -1;
         if(!this.§%4§ || !this.§%4§.§-h§ || !this.§0n§)
         {
            return _loc1_;
         }
         var _loc2_:§#!E§ = this.§%4§.§-h§[this.§0n§];
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
            _loc1_ = (_loc5_ = !!_loc3_.§%D§ ? Number(_loc3_.normalPrice) : Number(_loc3_.price)) / _loc3_.quantity;
         }
         return _loc1_;
      }
      
      private function §4#C§() : void
      {
         var _loc3_:§-I§ = null;
         var _loc4_:int = 0;
         var _loc5_:§5`§ = null;
         if(this.§%4§)
         {
            _loc3_ = this.§%4§.§7"z§[§<!9§.§^#T§];
            if(_loc3_)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§!e§.length)
               {
                  (_loc5_ = this.§!e§[_loc4_]).prices = !!_loc3_.prices[_loc4_] ? _loc3_.prices[_loc4_] : null;
                  _loc5_.refresh();
                  _loc4_++;
               }
            }
         }
         var _loc1_:TextField = TextField(§=#=§.mClip.title);
         var _loc2_:TextField = TextField(§=#=§.mClip.explanation);
         _loc1_.text = !!this.§0n§ ? §^"N§.getLocalizedString("shop_" + this.§0n§.toLowerCase() + "_title") : "";
         _loc2_.text = !!this.§0n§ ? §^"N§.getLocalizedString("shop_" + this.§0n§.toLowerCase() + "_description") : "";
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
      
      private function §&"6§() : void
      {
         var _loc2_:§!8§ = null;
         var _loc1_:MovieClip = §`Z§.mClip.mc_selector;
         var _loc3_:int = 0;
         while(_loc3_ < this.§6'§.length)
         {
            _loc2_ = this.§6'§[_loc3_];
            if(_loc2_.dataID == this.§0n§)
            {
               _loc2_.§0!H§ = true;
               _loc1_.x = _loc2_.view.mClip.x;
            }
            else
            {
               _loc2_.§0!H§ = false;
            }
            _loc3_++;
         }
      }
      
      private function §0"D§(param1:Event) : void
      {
         this.§4"6§();
      }
      
      private function §?K§(param1:§="g§) : void
      {
         if(this.§%"e§)
         {
            this.§%"e§.§3"&§();
            this.§%"e§ = null;
         }
      }
      
      private function §[!q§(param1:§6#'§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§!8§ = null;
         var _loc4_:§7!,§ = null;
         var _loc5_:String = null;
         if(param1.§=!k§ == "")
         {
            return;
         }
         if(param1.§=!k§.toUpperCase().indexOf("CATEGORY") == 0)
         {
            _loc2_ = parseInt(param1.§=!k§.substring(8));
            _loc3_ = this.§6'§[_loc2_];
            if(_loc3_)
            {
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§0n§ = _loc3_.dataID;
               this.§%"e§ = null;
               this.refresh();
               return;
            }
         }
         if(param1.§=!k§.toUpperCase().indexOf("BUY") == 0)
         {
            if(param1.§=!k§.toUpperCase().indexOf("SUBSCRIPTION") != -1)
            {
               _loc5_ = "BUY_SUBSCRIPTION_";
               _loc2_ = parseInt(param1.§=!k§.substring(_loc5_.length));
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               dispatchEvent(new §^i§(§^i§.§5!B§,this.§!e§[_loc2_].prices));
               return;
            }
            _loc2_ = parseInt(param1.§=!k§.substring(3));
            if(_loc4_ = this.§"!X§[_loc2_])
            {
               if(this.§%"e§ == null)
               {
                  this.§%"e§ = _loc4_;
               }
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               dispatchEvent(new §^i§(§^i§.§+]§,_loc4_.prices));
               return;
            }
         }
         switch(param1.§=!k§.toUpperCase())
         {
            case "TAB_POWERUPS":
               if(§]"u§)
               {
                  dispatchEvent(new §^i§(§^i§.§-#>§));
               }
         }
      }
   }
}
