package §&!w§
{
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §%!x§.§^!K§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §'",§.§8$7§;
   import §'",§.§@#e§;
   import §+$?§.§%!k§;
   import §-!S§.§##>§;
   import §1!=§.AbstractPopup;
   import §2G§.§"G§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §2G§.§1T§;
   import §2G§.§5$4§;
   import §3#T§.§'§;
   import §7!%§.§,^§;
   import §7!%§.§4"I§;
   import §8#!§.§!4§;
   import §8#!§.§5`§;
   import §9"r§.§1#e§;
   import §9#B§.§=!L§;
   import §@!M§.§!"p§;
   import §[#[§.§=#Q§;
   import §`7§.§ try§;
   import §`7§.§!"b§;
   import §`7§.§["7§;
   import §`7§.§`"x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TournamentResultsPopup extends AbstractPopup implements §9#a§
   {
      
      public static const ID:String = "TournamentResultsPopup";
      
      private static var §2!@§:§1T§;
      
      private static var §-!R§:Boolean;
       
      
      protected var §5"q§:Timer;
      
      private var §&"K§:Wallet;
      
      private var §^"3§:Boolean;
      
      private var §[#!§:int;
      
      protected var §!$9§:§8$7§;
      
      protected var §;!g§:Vector.<§8$7§>;
      
      private var §["v§:Number;
      
      public function TournamentResultsPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§^"3§ = param3;
         §-!R§ = false;
         super(param1,param2,this.getViewXML(),ID);
         §5`§.§6!§.addEventListener(§1#e§.§&t§,this.§!#_§);
      }
      
      public static function §`$?§() : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         if(!§5`§.§6!§.lastResult)
         {
            return false;
         }
         §2!@§ = new §1T§();
         var _loc1_:int = 1;
         for each(_loc2_ in §5`§.§6!§.lastResult.players)
         {
            if(_loc2_.uid == userProgress.userID)
            {
               §2!@§.§9#P§ = §5$4§.§+!@§(_loc2_);
               §2!@§.§9#P§.rank = _loc1_;
               break;
            }
            _loc1_++;
         }
         §2!@§.first = §="G§(1);
         §2!@§.second = §="G§(2);
         §2!@§.§^!y§ = §="G§(3);
         §2!@§.§`"]§ = §"G§.§6!@§;
         _loc3_ = §2!@§.§9#P§.rank - 1;
         if(§2!@§.§9#P§.rank >= 4)
         {
            _loc3_ = 3;
         }
         §2!@§.§<l§ = §5`§.§6!§.lastResult.prizeCounts[_loc3_];
         §`"x§.§?"Y§(§5`§.§6!§.lastResult.players.length);
         §`"x§.§[!d§(§`"x§.§;#^§,§"G§.§6!@§,§2!@§.§<l§);
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in §5`§.§6!§.lastResult.players)
         {
            if(_loc8_.uid == §%!k§.BIRD_BOT_1)
            {
               _loc6_ = §5$4§.§+!@§(_loc8_).§6"D§;
            }
            if(_loc8_.uid == §%!k§.BIRD_BOT_2)
            {
               _loc7_ = §5$4§.§+!@§(_loc8_).§6"D§;
            }
         }
         if(§5`§.§6!§.lastResult.a)
         {
            _loc9_ = §5`§.§6!§.lastResult.a.tid;
            _loc10_ = §5`§.§6!§.lastResult.a.lc;
            _loc11_ = §5`§.§6!§.lastResult.a.s;
            if(§2!@§.§9#P§.§6"D§ > _loc6_)
            {
               _loc4_ = true;
            }
            if(§2!@§.§9#P§.§6"D§ > _loc7_)
            {
               _loc5_ = true;
            }
            § try§.§!!t§().§7"$§(_loc9_,_loc10_,_loc4_,_loc5_,§5`§.§6!§.lastResult.players.length,§2!@§.§9#P§.rank,§2!@§.§9#P§.§6"D§,_loc11_);
         }
         return true;
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      private static function §="G§(param1:int) : §5$4§
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:§,^§ = null;
         if(§5`§.§6!§.lastResult)
         {
            if(§5`§.§6!§.lastResult.players)
            {
               _loc2_ = 1;
               for each(_loc3_ in §5`§.§6!§.lastResult.players)
               {
                  if(_loc3_ != null)
                  {
                     if(_loc2_ == param1)
                     {
                        if(_loc4_ = §4"I§.§2!K§(_loc3_.uid))
                        {
                           _loc3_.n = _loc4_.name;
                        }
                        return §5$4§.§+!@§(_loc3_);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         return null;
      }
      
      public static function get §6!v§() : Boolean
      {
         return §2!@§ != null;
      }
      
      protected function §!#_§(param1:§1#e§) : void
      {
         this.§0#h§();
         §-!R§ = true;
         §5`§.§6!§.§<!J§();
      }
      
      protected function update(param1:Event) : void
      {
         var _loc3_:§8$7§ = null;
         var _loc2_:Number = getTimer() - this.§["v§;
         this.§["v§ = getTimer();
         for each(_loc3_ in this.§;!g§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §1Q§.§5T§.Views.PopupView_TournamentLastResults[0];
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               §,#2§.getItemByName("ClaimPrizeButton").mClip.alpha = 0.5;
               §,#2§.getItemByName("ClaimPrizeButton").setEnabled(false);
               §5`§.§6!§.§^b§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsBase.singleton.exitFullScreen();
               _loc5_ = (_loc4_ = §2!@§.§9#P§.rank) + §["7§.§+H§(_loc4_);
               §^!K§.§+"D§("shareTournamentRank",_loc5_,§!"b§.§@]§(§2!@§.§9#P§.§6"D§));
               close();
               break;
            case "CLOSE_POPUP":
               close();
         }
      }
      
      private function §0#h§() : void
      {
         if(!§2!@§)
         {
            close();
            return;
         }
         if(!§,#2§)
         {
            return;
         }
         §,#2§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §,#2§.getItemByName("GiftCarouselContainer").setVisibility(false);
         §,#2§.mClip.GiftCarouselContainer.mouseChildren = false;
         §,#2§.mClip.GiftCarouselContainer.mouseEnabled = false;
         §,#2§.mClip.getChildByName("GiftBox").visible = false;
         this.§5"q§ = new Timer(400,1);
         this.§5"q§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§6"F§);
         this.§5"q§.start();
      }
      
      private function §6"F§(param1:TimerEvent) : void
      {
         this.§5"q§.reset();
         this.§5"q§.removeEventListener(TimerEvent.TIMER,this.§6"F§);
         §,#2§.getItemByName("GiftCarouselContainer").setVisibility(true);
         this.§&"K§.setCoinsAmountText(this.§[#!§ + §2!@§.§<l§);
         this.§&"K§.animateGotCoins(§2!@§.§<l§);
         §,#2§.mClip.GiftCarouselContainer.txtRewardAmount.text = §2!@§.§<l§ + " x";
         var _loc2_:Point = new Point(this.walletContainer.x + this.walletContainer.width / 2,this.walletContainer.y + this.walletContainer.height / 2);
         §,#2§.mClip.GiftCarouselContainer.x = _loc2_.x - 20;
         §,#2§.mClip.GiftCarouselContainer.y = _loc2_.y;
         var _loc4_:§4[§ = §&"H§.§6!§.§6C§(§,#2§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },0.4,§&"H§.§9"_§);
         var _loc5_:§4[§ = §&"H§.§6!§.§6C§(§,#2§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },2.5,§&"H§.§-t§);
         var _loc6_:§4[§ = §&"H§.§6!§.§6C§(§,#2§.mClip.GiftCarouselContainer,{
            "alpha":0,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },0.4,§&"H§.§9"_§);
         var _loc7_:§4[§;
         (_loc7_ = §&"H§.§6!§.§>##§(_loc4_,_loc5_,_loc6_)).play();
         this.§!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§8$7§.§-"4§,§8$7§.§8#s§,§@#e§.§<"h§);
         §,#2§.mClip.addChild(this.§!$9§);
         this.§;!g§.push(this.§!$9§);
         §-#+§.§6!§.§<"k§();
         this.§9M§();
      }
      
      private function §9M§() : void
      {
         §,#2§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §,#2§.mClip.getChildByName("GiftBox").visible = false;
         §,#2§.getItemByName("Button_Close").setVisibility(true);
         if(§2!@§.§9#P§.rank <= 3)
         {
            §,#2§.getItemByName("ShareTournamentButton").setVisibility(true);
         }
         if(this.§^"3§)
         {
            this.§&"K§.setCoinsAmountText(this.§[#!§ + §2!@§.§<l§);
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.show(param1);
         §,#2§.mClip.addEventListener(Event.ENTER_FRAME,this.update);
         this.§;!g§ = new Vector.<§8$7§>();
         this.§[#!§ = §#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§;
         if(this.§^"3§)
         {
            this.§[#!§ -= §2!@§.§<l§;
         }
         this.§[?§(new Wallet(this,false,false));
         this.§&"K§.setCoinsAmountText(this.§[#!§);
         §!"p§.playSound("BirdsApplause");
         if(§6!v§)
         {
            this.§02§();
            _loc2_ = §5`§.§6!§.§=!P§;
            §,#2§.mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            §,#2§.mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            §,#2§.mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
         if(§-!R§)
         {
            this.§9M§();
         }
      }
      
      public function §02§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§!4§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§!4§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§!4§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§!4§ = null;
         if(§2!@§.§^!y§)
         {
            _loc3_ = §,#2§.mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            _loc4_ = new §!4§(_loc3_,§2!@§.§^!y§);
            §=#Q§.§0$,§(§,#2§.mClip.PodiumContainer.TextField_Podium3.text,§2!@§.§^!y§.userName);
         }
         if(§2!@§.second)
         {
            _loc5_ = §,#2§.mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            _loc6_ = new §!4§(_loc5_,§2!@§.second);
            §=#Q§.§0$,§(§,#2§.mClip.PodiumContainer.TextField_Podium2.text,§2!@§.second.userName);
         }
         if(§2!@§.first)
         {
            _loc7_ = §,#2§.mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            _loc8_ = new §!4§(_loc7_,§2!@§.first);
            §=#Q§.§0$,§(§,#2§.mClip.PodiumContainer.TextField_Podium1.text,§2!@§.first.userName);
         }
         var _loc2_:int = §2!@§.§9#P§.rank;
         _loc1_ = §["7§.§+H§(_loc2_);
         §,#2§.mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§2!@§.§9#P§.rank > 3)
         {
            (_loc9_ = §,#2§.mClip.getChildByName("OwnAvatarHolder") as MovieClip).visible = true;
            _loc10_ = new §!4§(_loc9_,§2!@§.§9#P§);
         }
         else
         {
            §,#2§.mClip.getChildByName("OwnAvatarHolder").visible = false;
            §,#2§.mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §,#2§.mClip.walletContainer;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      override public function dispose() : void
      {
         this.§ #_§();
         §,#2§.mClip.removeEventListener(Event.ENTER_FRAME,this.update);
         §,A§.§2#O§.§1"h§(§=!L§.STATE_NAME);
         §-#+§.§6!§.§<"k§();
         this.§8!3§(this.§&"K§);
         if(this.§5"q§)
         {
            this.§5"q§.removeEventListener(TimerEvent.TIMER,this.§6"F§);
            this.§5"q§.reset();
         }
         this.§5"q§ = null;
         super.dispose();
      }
      
      private function § #_§() : void
      {
         var _loc1_:§8$7§ = null;
         for each(_loc1_ in this.§;!g§)
         {
            if(§,#2§ && §,#2§.mClip && §,#2§.mClip.contains(_loc1_))
            {
               §,#2§.mClip.removeChild(_loc1_);
            }
            _loc1_.§,"I§();
         }
         this.§;!g§ = new Vector.<§8$7§>();
      }
   }
}
