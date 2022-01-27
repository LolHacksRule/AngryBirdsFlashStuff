package §7#+§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §#!k§.§4!4§;
   import §%W§.§[!h§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §1!o§.§#"y§;
   import §1!o§.§<"]§;
   import §4##§.§7!Y§;
   import §5§.*;
   import §;q§.§ true§;
   import §;q§.§-<§;
   import §;q§.§`"b§;
   import §="<§.§5"U§;
   import §@b§.§!]§;
   import §@b§.§`"5§;
   import §]!,§.§^!U§;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import §`"8§.§[F§;
   import §`"8§.§^x§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class §[##§ extends §-c§
   {
      
      public static const §9"U§:int = 0;
      
      private static const §;"Y§:String = "subscription";
      
      private static const §&"Z§:String = "nonsubscription";
      
      private static const §8",§:String = "Button_Category";
      
      private static const §'K§:String = "Button_Buy";
      
      private static const §>!f§:Array = [§#f§.§]"i§,§!]§.§9!#§,§#f§.§!"L§,§#f§.§]Z§,§#f§.§0"v§,§#f§.§"X§];
      
      private static const §&l§:int = 4;
      
      private static const §,[§:int = 6;
      
      private static const §3W§:int = 1;
      
      private static var §]!L§:int = 0;
       
      
      private var §'!D§:int = 0;
      
      private var §'§:§2"8§;
      
      private var §;!I§:§<`§;
      
      private var §%G§:§,m§;
      
      private var §,6§:§[!h§;
      
      private var §,d§:Vector.<§^!]§>;
      
      private var §1!x§:Vector.<§5!b§>;
      
      private var §`"R§:Vector.<§5"U§>;
      
      private var §?!8§:String;
      
      private var §6"3§:§5!b§;
      
      private var §]S§:§-!w§;
      
      private var §+"q§:§#f§;
      
      public function §[##§(param1:§,m§, param2:§="B§)
      {
         super(param1,param2);
      }
      
      override protected function init() : void
      {
         var _loc3_:§5"U§ = null;
         var _loc5_:§2"8§ = null;
         var _loc6_:§2"8§ = null;
         §6!J§ = false;
         this.§6"3§ = null;
         this.§]S§ = §-!w§(§;"@§.singleton.dataModel);
         this.§+"q§ = §-!w§(§;"@§.singleton.dataModel).§=>§;
         this.§'§ = §2"8§(§=5§.getItemByName("Button_Tab"));
         this.§;!I§ = §<`§(§=5§.getItemByName("MovieClip_Loading"));
         this.§%G§ = §,m§(§=5§.getItemByName("Container_SubscriptionInfo"));
         var _loc1_:int = §-!w§(§;"@§.singleton.dataModel).§2!J§.§@"C§;
         this.§%G§.mClip.tournamentIcons_Container.gotoAndStop(_loc1_);
         var _loc2_:§[F§ = this.§]S§.§!#%§;
         this.§`"R§ = new Vector.<§5"U§>(0);
         var _loc4_:int = 0;
         if(_loc4_ < §^x§.§!!u§)
         {
            _loc6_ = §2"8§(§=5§.getItemByName("Button_Renew" + _loc4_));
            _loc3_ = new §5"U§(_loc6_,§8-§,_loc2_,§^x§.§%4§,null);
            this.§`"R§.push(_loc3_);
         }
         this.§,d§ = new Vector.<§^!]§>();
         _loc4_ = 0;
         while(_loc4_ < §,[§)
         {
            _loc5_ = §2"8§(§=5§.getItemByName(§8",§ + _loc4_));
            if(_loc4_ >= §>!f§.length)
            {
               _loc5_.setVisibility(false);
               _loc5_.setEnabled(false);
            }
            else
            {
               this.§,d§.push(new §^!]§(_loc5_,§>!f§[_loc4_]));
            }
            _loc4_++;
         }
         this.§1!x§ = new Vector.<§5!b§>();
         _loc4_ = 0;
         while(_loc4_ < §&l§)
         {
            _loc5_ = §2"8§(§=5§.getItemByName(§'K§ + _loc4_));
            this.§1!x§.push(new §5!b§(_loc5_,"",null,-1));
            _loc4_++;
         }
         this.refresh();
      }
      
      override public function dispose() : void
      {
         this.§+"q§.removeEventListener(§#"y§.§4f§,this.§1#7§);
         this.§+"q§ = null;
         this.§]S§.§9"1§.removeEventListener(§<"]§.§2"S§,this.§]#6§);
         this.§]S§.§9"1§.removeEventListener(§<"]§.§"A§,this.§1#7§);
         this.§]S§ = null;
         §=5§.removeEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.removeEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§ = null;
         this.§,d§.length = 0;
         this.§`"R§.length = 0;
      }
      
      override public function disable() : void
      {
         this.§]S§.§9"1§.removeEventListener(§<"]§.§2"S§,this.§]#6§);
         this.§]S§.§9"1§.removeEventListener(§<"]§.§"A§,this.§1#7§);
         this.§+"q§.removeEventListener(§#"y§.§4f§,this.§1#7§);
         §=5§.removeEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.addEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.setEnabled(true);
         super.disable();
      }
      
      override public function enable(param1:String = "") : void
      {
         var _loc2_:§^!]§ = null;
         var _loc3_:int = 0;
         this.§]S§.§9"1§.addEventListener(§<"]§.§"A§,this.§1#7§);
         this.§]S§.§9"1§.addEventListener(§<"]§.§2"S§,this.§]#6§);
         this.§+"q§.addEventListener(§#"y§.§4f§,this.§1#7§);
         §=5§.addEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.removeEventListener(§4!4§.§="n§,this.§"#&§);
         this.§'§.setEnabled(false);
         if(this.§,6§)
         {
            this.§;!I§.setVisibility(false);
         }
         else
         {
            this.§;!I§.setVisibility(true);
         }
         super.enable();
         if(param1 != "")
         {
            _loc3_ = 0;
            while(_loc3_ < this.§,d§.length)
            {
               _loc2_ = this.§,d§[_loc3_];
               if(_loc2_.dataID == param1)
               {
                  this.§?!8§ = param1;
                  this.§'!D§ = _loc3_;
                  if(this.§,6§)
                  {
                     this.refresh();
                  }
                  return;
               }
               _loc3_++;
            }
         }
      }
      
      override public function initData(param1:§[!h§) : void
      {
         this.§,6§ = param1;
         §6!J§ = true;
         if(!§1!?§)
         {
            this.§;!I§.setVisibility(false);
         }
         this.§!!5§(this.§'!D§);
         this.refresh();
      }
      
      override public function purchaseAccepted(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§6"3§ = null;
         }
      }
      
      protected function §!!5§(param1:int) : void
      {
         var _loc2_:§^!]§ = null;
         var _loc3_:int = -1;
         var _loc4_:int = param1;
         while(_loc4_ < this.§,d§.length)
         {
            _loc2_ = this.§,d§[_loc4_];
            if(!_loc2_.isDisabled)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         if(_loc3_ == -1 && §]!L§ < §3W§)
         {
            ++§]!L§;
            this.§!!5§(0);
         }
         §]!L§ = 0;
         this.§?!8§ = §>!f§[_loc4_];
      }
      
      protected function §<$§() : void
      {
         var _loc1_:§#f§ = null;
         var _loc2_:§^!]§ = null;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:§5!b§ = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(this.§,6§)
         {
            _loc1_ = this.§]S§.§=>§;
            _loc4_ = 0;
            while(_loc4_ < this.§,d§.length)
            {
               _loc2_ = this.§,d§[_loc4_];
               _loc3_ = false;
               _loc6_ = 0;
               for(_loc7_ in this.§,6§.§#?§)
               {
                  if(_loc7_ == _loc2_.dataID)
                  {
                     _loc3_ = true;
                     _loc6_ = _loc1_.§"!V§(_loc7_);
                     _loc2_.count = _loc6_;
                     break;
                  }
               }
               if(!_loc3_)
               {
                  _loc2_.view.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
                  _loc2_.view.setVisibility(false);
               }
               _loc4_++;
            }
            for each(_loc5_ in this.§1!x§)
            {
               _loc5_.§<"A§();
            }
         }
      }
      
      protected function §9"E§(param1:String) : Boolean
      {
         var _loc2_:§-!w§ = §-!w§(§;"@§.singleton.dataModel);
         var _loc3_:§`"5§ = _loc2_.§?v§.§@!P§(param1);
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
      
      protected function §9!2§() : Boolean
      {
         var _loc2_:§^!]§ = null;
         var _loc3_:int = 0;
         var _loc1_:Boolean = false;
         if(this.§?!8§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§,d§.length)
            {
               _loc2_ = this.§,d§[_loc3_];
               if(_loc2_.§,#§ && this.§?!8§ == _loc2_.dataID)
               {
                  _loc1_ = this.§9"E§(_loc2_.dataID);
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
         this.§<$§();
         this.§^"M§();
         var _loc1_:Boolean = this.§9!2§();
         var _loc2_:int = this.§]S§.§?v§.§-o§(§^x§.§,!%§);
         if(_loc2_ >= 0 && _loc1_)
         {
            _loc3_ = _loc2_ == 0;
            this.§%G§.mClip.tfTitle.visible = !_loc3_;
            this.§%G§.mClip.counter.visible = !_loc3_;
            if(_loc2_ == 1)
            {
               this.§%G§.mClip.tfDay.visible = !_loc3_;
               this.§%G§.mClip.tfDays.visible = false;
            }
            else
            {
               this.§%G§.mClip.tfDay.visible = false;
               this.§%G§.mClip.tfDays.visible = !_loc3_;
            }
            this.§%G§.mClip.tfGalacticBundleExpiresSoon.visible = _loc3_;
            if(!_loc3_)
            {
               this.§%G§.mClip.counter.htmlText = this.§!!%§(_loc2_.toString());
            }
            this.§7"C§(§;"Y§);
         }
         else
         {
            this.§7"C§(§&"Z§);
         }
         this.§?!#§();
      }
      
      protected function §!!%§(param1:String) : String
      {
         return "<b>" + param1 + "</b>";
      }
      
      private function §7"C§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§5!b§ = null;
         if(param1 == §;"Y§)
         {
            this.§%G§.visible = true;
            _loc2_ = 0;
            while(_loc2_ < this.§1!x§.length)
            {
               _loc3_ = this.§1!x§[_loc2_];
               _loc3_.view.setVisibility(false);
               _loc2_++;
            }
            §=5§.mClip.title.visible = false;
            §=5§.mClip.explanation.visible = false;
         }
         else
         {
            this.§%G§.visible = false;
            this.§'"Y§();
            §=5§.mClip.title.visible = true;
            §=5§.mClip.explanation.visible = true;
         }
      }
      
      private function §'"Y§() : void
      {
         var _loc3_:§5!b§ = null;
         var _loc4_:§`"b§ = null;
         var _loc1_:int = this.§@!]§();
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!x§.length)
         {
            _loc3_ = this.§1!x§[_loc2_];
            if(!this.§?!8§)
            {
               _loc3_.view.setVisibility(false);
            }
            else
            {
               _loc3_.dataID = this.§?!8§;
               if((_loc4_ = this.§,6§.§#?§[this.§?!8§]).prices == null || _loc2_ >= _loc4_.prices.length)
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
      
      private function §@!]§() : Number
      {
         var _loc3_:§ true§ = null;
         var _loc5_:Number = NaN;
         var _loc1_:Number = -1;
         if(!this.§,6§ || !this.§,6§.§#?§ || !this.§?!8§)
         {
            return _loc1_;
         }
         var _loc2_:§`"b§ = this.§,6§.§#?§[this.§?!8§];
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
            _loc1_ = (_loc5_ = !!_loc3_.§`"p§ ? Number(_loc3_.normalPrice) : Number(_loc3_.price)) / _loc3_.quantity;
         }
         return _loc1_;
      }
      
      private function §?!#§() : void
      {
         var _loc3_:§-<§ = null;
         var _loc4_:int = 0;
         var _loc5_:§5"U§ = null;
         if(this.§,6§)
         {
            _loc3_ = this.§,6§.§8"H§[§^x§.§%4§];
            if(_loc3_)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§`"R§.length)
               {
                  (_loc5_ = this.§`"R§[_loc4_]).prices = !!_loc3_.prices[_loc4_] ? _loc3_.prices[_loc4_] : null;
                  _loc5_.refresh();
                  _loc4_++;
               }
            }
         }
         var _loc1_:TextField = TextField(§=5§.mClip.title);
         var _loc2_:TextField = TextField(§=5§.mClip.explanation);
         _loc1_.text = !!this.§?!8§ ? §8-§.getLocalizedString("shop_" + this.§?!8§.toLowerCase() + "_title") : "";
         _loc2_.text = !!this.§?!8§ ? §8-§.getLocalizedString("shop_" + this.§?!8§.toLowerCase() + "_description") : "";
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
      
      private function §^"M§() : void
      {
         var _loc2_:§^!]§ = null;
         var _loc1_:MovieClip = §@"A§.mClip.mc_selector;
         var _loc3_:int = 0;
         while(_loc3_ < this.§,d§.length)
         {
            _loc2_ = this.§,d§[_loc3_];
            if(_loc2_.dataID == this.§?!8§)
            {
               _loc2_.§,#§ = true;
               _loc1_.x = _loc2_.view.mClip.x;
            }
            else
            {
               _loc2_.§,#§ = false;
            }
            _loc3_++;
         }
      }
      
      private function §1#7§(param1:Event) : void
      {
         this.§<$§();
      }
      
      private function §]#6§(param1:§<"]§) : void
      {
         if(this.§6"3§)
         {
            this.§6"3§.§&!y§();
            this.§6"3§ = null;
         }
      }
      
      private function §"#&§(param1:§4!4§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^!]§ = null;
         var _loc4_:§5!b§ = null;
         var _loc5_:String = null;
         if(param1.§84§ == "")
         {
            return;
         }
         if(param1.§84§.toUpperCase().indexOf("CATEGORY") == 0)
         {
            _loc2_ = parseInt(param1.§84§.substring(8));
            _loc3_ = this.§,d§[_loc2_];
            if(_loc3_)
            {
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§?!8§ = _loc3_.dataID;
               this.§6"3§ = null;
               this.refresh();
               return;
            }
         }
         if(param1.§84§.toUpperCase().indexOf("BUY") == 0)
         {
            if(param1.§84§.toUpperCase().indexOf("SUBSCRIPTION") != -1)
            {
               _loc5_ = "BUY_SUBSCRIPTION_";
               _loc2_ = parseInt(param1.§84§.substring(_loc5_.length));
               §@§.§=Y§("misc_menubuttonproceed_1");
               dispatchEvent(new §^!U§(§^!U§.§""!§,this.§`"R§[_loc2_].prices));
               return;
            }
            _loc2_ = parseInt(param1.§84§.substring(3));
            if(_loc4_ = this.§1!x§[_loc2_])
            {
               if(this.§6"3§ == null)
               {
                  this.§6"3§ = _loc4_;
               }
               §@§.§=Y§("misc_menubuttonproceed_1");
               dispatchEvent(new §^!U§(§^!U§.§4?§,_loc4_.prices));
               return;
            }
         }
         switch(param1.§84§.toUpperCase())
         {
            case "TAB_POWERUPS":
               if(§1!?§)
               {
                  dispatchEvent(new §^!U§(§^!U§.§'a§));
                  break;
               }
         }
      }
   }
}
