package §;#N§
{
   import § $0§.AbstractPopup;
   import §!!L§.§ !8§;
   import §!L§.§`#u§;
   import §"#X§.§"5§;
   import §"#X§.§8#g§;
   import §";§.§false§;
   import §#"4§.§'Z§;
   import §#"4§.§3";§;
   import §#"4§.§6!B§;
   import §#"4§.§<"G§;
   import §#$?§.§7!b§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §,#,§.§2§;
   import §,#,§.§=#o§;
   import §,#,§.§>#§;
   import §,#,§.§>#g§;
   import §,#,§.§]§;
   import §-#;§.§;!t§;
   import §-#;§.§>",§;
   import §1#`§.§&#m§;
   import §2G§.§"A§;
   import §3"V§.§ b§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §^"3§.§`$4§;
   import §`"t§.§7"U§;
   import §`,§.§7!$§;
   import §`,§.§[!h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TournamentResultsPopup extends AbstractPopup implements §+#?§
   {
      
      public static const ID:String = "TournamentResultsPopup";
      
      private static var §>O§:§>#§;
      
      private static var §>D§:Boolean;
       
      
      protected var §'#3§:Timer;
      
      private var §"#W§:Wallet;
      
      private var §%"o§:Boolean;
      
      private var §+"8§:int;
      
      protected var §1=§:§;!t§;
      
      protected var §2!^§:Vector.<§;!t§>;
      
      private var §finally§:Number;
      
      public function TournamentResultsPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§%"o§ = param3;
         §>D§ = false;
         super(param1,param2,this.getViewXML(),ID);
         §7!$§.§+!,§.addEventListener(§&#m§.§8#?§,this.§8y§);
      }
      
      public static function §0"7§() : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         if(!§7!$§.§+!,§.lastResult)
         {
            return false;
         }
         §>O§ = new §>#§();
         var _loc1_:int = 1;
         for each(_loc2_ in §7!$§.§+!,§.lastResult.players)
         {
            if(_loc2_.uid == userProgress.userID)
            {
               §>O§.§]!@§ = §2#9§.§"!U§(_loc2_);
               §>O§.§]!@§.rank = _loc1_;
               break;
            }
            _loc1_++;
         }
         §>O§.first = § K§(1);
         §>O§.second = § K§(2);
         §>O§.§]"j§ = § K§(3);
         §>O§.§,!t§ = §>#g§.§=-§;
         _loc3_ = §>O§.§]!@§.rank - 1;
         if(§>O§.§]!@§.rank >= 4)
         {
            _loc3_ = 3;
         }
         §>O§.§!#n§ = §7!$§.§+!,§.lastResult.prizeCounts[_loc3_];
         §<"G§.§'#,§(§7!$§.§+!,§.lastResult.players.length);
         §<"G§.§%!V§(§<"G§.§'T§,§>#g§.§=-§,§>O§.§!#n§);
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in §7!$§.§+!,§.lastResult.players)
         {
            if(_loc8_.uid == §"A§.BIRD_BOT_1)
            {
               _loc6_ = §2#9§.§"!U§(_loc8_).§;#<§;
            }
            if(_loc8_.uid == §"A§.BIRD_BOT_2)
            {
               _loc7_ = §2#9§.§"!U§(_loc8_).§;#<§;
            }
         }
         if(§7!$§.§+!,§.lastResult.a)
         {
            _loc9_ = §7!$§.§+!,§.lastResult.a.tid;
            _loc10_ = §7!$§.§+!,§.lastResult.a.lc;
            _loc11_ = §7!$§.§+!,§.lastResult.a.s;
            if(§>O§.§]!@§.§;#<§ > _loc6_)
            {
               _loc4_ = true;
            }
            if(§>O§.§]!@§.§;#<§ > _loc7_)
            {
               _loc5_ = true;
            }
            §3";§.§#"'§().§+m§(_loc9_,_loc10_,_loc4_,_loc5_,§7!$§.§+!,§.lastResult.players.length,§>O§.§]!@§.rank,§>O§.§]!@§.§;#<§,_loc11_);
         }
         return true;
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      private static function § K§(param1:int) : §2#9§
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:§"5§ = null;
         if(§7!$§.§+!,§.lastResult)
         {
            if(§7!$§.§+!,§.lastResult.players)
            {
               _loc2_ = 1;
               for each(_loc3_ in §7!$§.§+!,§.lastResult.players)
               {
                  if(_loc3_ != null)
                  {
                     if(_loc2_ == param1)
                     {
                        if(_loc4_ = §8#g§.§^!O§(_loc3_.uid))
                        {
                           _loc3_.n = _loc4_.name;
                        }
                        return §2#9§.§"!U§(_loc3_);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         return null;
      }
      
      public static function get §,"i§() : Boolean
      {
         return §>O§ != null;
      }
      
      protected function §8y§(param1:§&#m§) : void
      {
         this.§6"H§();
         §>D§ = true;
         §7!$§.§+!,§.§;#I§();
      }
      
      protected function update(param1:Event) : void
      {
         var _loc3_:§;!t§ = null;
         var _loc2_:Number = getTimer() - this.§finally§;
         this.§finally§ = getTimer();
         for each(_loc3_ in this.§2!^§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §false§.§4#;§.Views.PopupView_TournamentLastResults[0];
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               §;#'§.getItemByName("ClaimPrizeButton").mClip.alpha = 0.5;
               §;#'§.getItemByName("ClaimPrizeButton").setEnabled(false);
               §7!$§.§+!,§.§=!W§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsBase.singleton.exitFullScreen();
               _loc5_ = (_loc4_ = §>O§.§]!@§.rank) + §'Z§.§`"S§(_loc4_);
               §7!b§.§7@§("shareTournamentRank",_loc5_,§6!B§.§^"O§(§>O§.§]!@§.§;#<§));
               close();
               break;
            case "CLOSE_POPUP":
               close();
         }
      }
      
      private function §6"H§() : void
      {
         if(!§>O§)
         {
            close();
            return;
         }
         if(!§;#'§)
         {
            return;
         }
         §;#'§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §;#'§.getItemByName("GiftCarouselContainer").setVisibility(false);
         §;#'§.mClip.GiftCarouselContainer.mouseChildren = false;
         §;#'§.mClip.GiftCarouselContainer.mouseEnabled = false;
         §;#'§.mClip.getChildByName("GiftBox").visible = false;
         this.§'#3§ = new Timer(400,1);
         this.§'#3§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-#[§);
         this.§'#3§.start();
      }
      
      private function §-#[§(param1:TimerEvent) : void
      {
         this.§'#3§.reset();
         this.§'#3§.removeEventListener(TimerEvent.TIMER,this.§-#[§);
         §;#'§.getItemByName("GiftCarouselContainer").setVisibility(true);
         this.§"#W§.setCoinsAmountText(this.§+"8§ + §>O§.§!#n§);
         this.§"#W§.animateGotCoins(§>O§.§!#n§);
         §;#'§.mClip.GiftCarouselContainer.txtRewardAmount.text = §>O§.§!#n§ + " x";
         var _loc2_:Point = new Point(this.walletContainer.x + this.walletContainer.width / 2,this.walletContainer.y + this.walletContainer.height / 2);
         §;#'§.mClip.GiftCarouselContainer.x = _loc2_.x - 20;
         §;#'§.mClip.GiftCarouselContainer.y = _loc2_.y;
         var _loc4_:§@$-§ = §6"W§.§+!,§.§9!n§(§;#'§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },0.4,§6"W§.§9"$§);
         var _loc5_:§@$-§ = §6"W§.§+!,§.§9!n§(§;#'§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },2.5,§6"W§.§[X§);
         var _loc6_:§@$-§ = §6"W§.§+!,§.§9!n§(§;#'§.mClip.GiftCarouselContainer,{
            "alpha":0,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },0.4,§6"W§.§9"$§);
         var _loc7_:§@$-§;
         (_loc7_ = §6"W§.§+!,§.§9S§(_loc4_,_loc5_,_loc6_)).play();
         this.§1=§ = new §;!t§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§;!t§.§[#4§,§;!t§.§=;§,§>",§.§+!y§);
         §;#'§.mClip.addChild(this.§1=§);
         this.§2!^§.push(this.§1=§);
         §]#0§.§+!,§.§@!z§();
         this.§-!1§();
      }
      
      private function §-!1§() : void
      {
         §;#'§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §;#'§.mClip.getChildByName("GiftBox").visible = false;
         §;#'§.getItemByName("Button_Close").setVisibility(true);
         if(§>O§.§]!@§.rank <= 3)
         {
            §;#'§.getItemByName("ShareTournamentButton").setVisibility(true);
         }
         if(this.§%"o§)
         {
            this.§"#W§.setCoinsAmountText(this.§+"8§ + §>O§.§!#n§);
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.show(param1);
         §;#'§.mClip.addEventListener(Event.ENTER_FRAME,this.update);
         this.§2!^§ = new Vector.<§;!t§>();
         this.§+"8§ = §=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§;
         if(this.§%"o§)
         {
            this.§+"8§ -= §>O§.§!#n§;
         }
         this.§6"h§(new Wallet(this,false,false));
         this.§"#W§.setCoinsAmountText(this.§+"8§);
         § b§.playSound("BirdsApplause");
         if(§,"i§)
         {
            this.§,!k§();
            _loc2_ = §7!$§.§+!,§.§[$<§;
            §;#'§.mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            §;#'§.mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            §;#'§.mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
         if(§>D§)
         {
            this.§-!1§();
         }
      }
      
      public function §,!k§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§[!h§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:§[!h§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§[!h§ = null;
         var _loc9_:MovieClip = null;
         var _loc10_:§[!h§ = null;
         if(§>O§.§]"j§)
         {
            _loc3_ = §;#'§.mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            _loc4_ = new §[!h§(_loc3_,§>O§.§]"j§);
            §7"U§.§+$5§(§;#'§.mClip.PodiumContainer.TextField_Podium3.text,§>O§.§]"j§.userName);
         }
         if(§>O§.second)
         {
            _loc5_ = §;#'§.mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            _loc6_ = new §[!h§(_loc5_,§>O§.second);
            §7"U§.§+$5§(§;#'§.mClip.PodiumContainer.TextField_Podium2.text,§>O§.second.userName);
         }
         if(§>O§.first)
         {
            _loc7_ = §;#'§.mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            _loc8_ = new §[!h§(_loc7_,§>O§.first);
            §7"U§.§+$5§(§;#'§.mClip.PodiumContainer.TextField_Podium1.text,§>O§.first.userName);
         }
         var _loc2_:int = §>O§.§]!@§.rank;
         _loc1_ = §'Z§.§`"S§(_loc2_);
         §;#'§.mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§>O§.§]!@§.rank > 3)
         {
            (_loc9_ = §;#'§.mClip.getChildByName("OwnAvatarHolder") as MovieClip).visible = true;
            _loc10_ = new §[!h§(_loc9_,§>O§.§]!@§);
         }
         else
         {
            §;#'§.mClip.getChildByName("OwnAvatarHolder").visible = false;
            §;#'§.mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;#'§.mClip.walletContainer;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      override public function dispose() : void
      {
         this.§-#`§();
         §;#'§.mClip.removeEventListener(Event.ENTER_FRAME,this.update);
         §@z§.§ !D§.§3#§(§ !8§.STATE_NAME);
         §]#0§.§+!,§.§@!z§();
         this.§7=§(this.§"#W§);
         if(this.§'#3§)
         {
            this.§'#3§.removeEventListener(TimerEvent.TIMER,this.§-#[§);
            this.§'#3§.reset();
         }
         this.§'#3§ = null;
         super.dispose();
      }
      
      private function §-#`§() : void
      {
         var _loc1_:§;!t§ = null;
         for each(_loc1_ in this.§2!^§)
         {
            if(§;#'§ && §;#'§.mClip && §;#'§.mClip.contains(_loc1_))
            {
               §;#'§.mClip.removeChild(_loc1_);
            }
            _loc1_.§<![§();
         }
         this.§2!^§ = new Vector.<§;!t§>();
      }
   }
}
