package §["#§
{
   import § "v§.§4$4§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §!!H§.§ $4§;
   import §#!G§.§-#]§;
   import §#!G§.§9$§;
   import §-"S§.§>#G§;
   import §-"Y§.§,#B§;
   import §-"Y§.§9#B§;
   import §2E§.§%!6§;
   import §2E§.§'@§;
   import §2E§.§,!8§;
   import §2E§.§]!P§;
   import §4#$§.§&#f§;
   import §4#$§.§5"L§;
   import §9!6§.AbstractPopup;
   import §9x§.§1"^§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §=!&§.§<$!§;
   import §>#Y§.§!",§;
   import §>#Y§.§#!&§;
   import §>#Y§.§%<§;
   import §>#Y§.§,#b§;
   import §>#Y§.§2$8§;
   import §[#A§.§&n§;
   import §[#v§.§4e§;
   import §]!4§.§=#c§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TournamentResultsPopup extends AbstractPopup implements §;"P§
   {
      
      public static const ID:String = "TournamentResultsPopup";
      
      private static var §^!r§:§%<§;
      
      private static var §3$6§:Boolean;
       
      
      protected var §>#+§:Timer;
      
      private var §1"w§:Wallet;
      
      private var §7$4§:Boolean;
      
      private var §>"c§:int;
      
      protected var §?c§:§9#B§;
      
      protected var §'!2§:Vector.<§9#B§>;
      
      private var §;##§:Number;
      
      public function TournamentResultsPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§7$4§ = param3;
         §3$6§ = false;
         super(param1,param2,this.getViewXML(),ID);
         §5"L§.§3"1§.addEventListener(§<$!§.§'#n§,this.§6#S§);
      }
      
      public static function §6!z§() : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         if(!§5"L§.§3"1§.lastResult)
         {
            return false;
         }
         §^!r§ = new §%<§();
         var _loc1_:int = 1;
         for each(_loc2_ in §5"L§.§3"1§.lastResult.players)
         {
            if(_loc2_.uid == userProgress.userID)
            {
               §^!r§.§0#A§ = §#!&§.§5!I§(_loc2_);
               §^!r§.§0#A§.rank = _loc1_;
               break;
            }
            _loc1_++;
         }
         §^!r§.first = §#!i§(1);
         §^!r§.second = §#!i§(2);
         §^!r§.§=#v§ = §#!i§(3);
         §^!r§.§7"A§ = §2$8§.§,"p§;
         _loc3_ = §^!r§.§0#A§.rank - 1;
         if(§^!r§.§0#A§.rank >= 4)
         {
            _loc3_ = 3;
         }
         §^!r§.§;!v§ = §5"L§.§3"1§.lastResult.prizeCounts[_loc3_];
         §'@§.§<v§(§5"L§.§3"1§.lastResult.players.length);
         §'@§.§ "?§(§'@§.§3!p§,§2$8§.§,"p§,§^!r§.§;!v§);
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in §5"L§.§3"1§.lastResult.players)
         {
            if(_loc8_.uid == §1"^§.BIRD_BOT_1)
            {
               _loc6_ = §#!&§.§5!I§(_loc8_).§<"A§;
            }
            if(_loc8_.uid == §1"^§.BIRD_BOT_2)
            {
               _loc7_ = §#!&§.§5!I§(_loc8_).§<"A§;
            }
         }
         if(§5"L§.§3"1§.lastResult.a)
         {
            _loc9_ = §5"L§.§3"1§.lastResult.a.tid;
            _loc10_ = §5"L§.§3"1§.lastResult.a.lc;
            _loc11_ = §5"L§.§3"1§.lastResult.a.s;
            if(§^!r§.§0#A§.§<"A§ > _loc6_)
            {
               _loc4_ = true;
            }
            if(§^!r§.§0#A§.§<"A§ > _loc7_)
            {
               _loc5_ = true;
            }
            §]!P§.§1!7§().§'"J§(_loc9_,_loc10_,_loc4_,_loc5_,§5"L§.§3"1§.lastResult.players.length,§^!r§.§0#A§.rank,§^!r§.§0#A§.§<"A§,_loc11_);
         }
         return true;
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      private static function §#!i§(param1:int) : §#!&§
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:§9$§ = null;
         if(§5"L§.§3"1§.lastResult)
         {
            if(§5"L§.§3"1§.lastResult.players)
            {
               _loc2_ = 1;
               for each(_loc3_ in §5"L§.§3"1§.lastResult.players)
               {
                  if(_loc3_ != null)
                  {
                     if(_loc2_ == param1)
                     {
                        if(_loc4_ = §-#]§.§0B§(_loc3_.uid))
                        {
                           _loc3_.n = _loc4_.name;
                        }
                        return §#!&§.§5!I§(_loc3_);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         return null;
      }
      
      public static function get §;!S§() : Boolean
      {
         return §^!r§ != null;
      }
      
      protected function §6#S§(param1:§<$!§) : void
      {
         this.§5"W§();
         §3$6§ = true;
         §5"L§.§3"1§.§]"m§();
      }
      
      protected function update(param1:Event) : void
      {
         var _loc3_:§9#B§ = null;
         var _loc2_:Number = getTimer() - this.§;##§;
         this.§;##§ = getTimer();
         for each(_loc3_ in this.§'!2§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §&n§.§7a§.Views.PopupView_TournamentLastResults[0];
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               §'o§.getItemByName("ClaimPrizeButton").mClip.alpha = 0.5;
               §'o§.getItemByName("ClaimPrizeButton").setEnabled(false);
               §5"L§.§3"1§.§4&§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsBase.singleton.exitFullScreen();
               _loc5_ = (_loc4_ = §^!r§.§0#A§.rank) + §%!6§.§<$;§(_loc4_);
               §=#c§.§<!t§("shareTournamentRank",_loc5_,§,!8§.§1"h§(§^!r§.§0#A§.§<"A§));
               close();
               break;
            case "CLOSE_POPUP":
               close();
         }
      }
      
      private function §5"W§() : void
      {
         if(!§^!r§)
         {
            close();
            return;
         }
         if(!§'o§)
         {
            return;
         }
         §'o§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §'o§.getItemByName("GiftCarouselContainer").setVisibility(false);
         §'o§.mClip.GiftCarouselContainer.mouseChildren = false;
         §'o§.mClip.GiftCarouselContainer.mouseEnabled = false;
         §'o§.mClip.getChildByName("GiftBox").visible = false;
         this.§>#+§ = new Timer(400,1);
         this.§>#+§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§5"w§);
         this.§>#+§.start();
      }
      
      private function §5"w§(param1:TimerEvent) : void
      {
         this.§>#+§.reset();
         this.§>#+§.removeEventListener(TimerEvent.TIMER,this.§5"w§);
         §'o§.getItemByName("GiftCarouselContainer").setVisibility(true);
         this.§1"w§.setCoinsAmountText(this.§>"c§ + §^!r§.§;!v§);
         this.§1"w§.animateGotCoins(§^!r§.§;!v§);
         §'o§.mClip.GiftCarouselContainer.txtRewardAmount.text = §^!r§.§;!v§ + " x";
         var _loc2_:Point = new Point(this.walletContainer.x + this.walletContainer.width / 2,this.walletContainer.y + this.walletContainer.height / 2);
         §'o§.mClip.GiftCarouselContainer.x = _loc2_.x - 20;
         §'o§.mClip.GiftCarouselContainer.y = _loc2_.y;
         var _loc4_:§@#5§ = §5"<§.§3"1§.§3#§(§'o§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },0.4,§5"<§.§&"1§);
         var _loc5_:§@#5§ = §5"<§.§3"1§.§3#§(§'o§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },2.5,§5"<§.§5!p§);
         var _loc6_:§@#5§ = §5"<§.§3"1§.§3#§(§'o§.mClip.GiftCarouselContainer,{
            "alpha":0,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },0.4,§5"<§.§&"1§);
         §5"<§.§3"1§.§]#6§(_loc4_,_loc5_,_loc6_).play();
         this.§?c§ = new §9#B§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§9#B§.§9h§,§9#B§.§?-§,§,#B§.§+#+§);
         §'o§.mClip.addChild(this.§?c§);
         this.§'!2§.push(this.§?c§);
         §!",§.§3"1§.§,"&§();
         this.final();
      }
      
      private function final() : void
      {
         §'o§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §'o§.mClip.getChildByName("GiftBox").visible = false;
         §'o§.getItemByName("Button_Close").setVisibility(true);
         if(§^!r§.§0#A§.rank <= 3)
         {
            §'o§.getItemByName("ShareTournamentButton").setVisibility(true);
         }
         if(this.§7$4§)
         {
            this.§1"w§.setCoinsAmountText(this.§>"c§ + §^!r§.§;!v§);
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.show(param1);
         §'o§.mClip.addEventListener(Event.ENTER_FRAME,this.update);
         this.§'!2§ = new Vector.<§9#B§>();
         this.§>"c§ = §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§;
         if(this.§7$4§)
         {
            this.§>"c§ -= §^!r§.§;!v§;
         }
         this.§ "@§(new Wallet(this,false,false));
         this.§1"w§.setCoinsAmountText(this.§>"c§);
         §4$4§.playSound("BirdsApplause");
         if(§;!S§)
         {
            this.§["G§();
            _loc2_ = §5"L§.§3"1§.§&u§;
            §'o§.mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            §'o§.mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            §'o§.mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
         if(§3$6§)
         {
            this.final();
         }
      }
      
      public function §["G§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(§^!r§.§=#v§)
         {
            _loc3_ = §'o§.mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            new §&#f§(_loc3_,§^!r§.§=#v§);
            § $4§.§'#d§(§'o§.mClip.PodiumContainer.TextField_Podium3.text,§^!r§.§=#v§.userName);
         }
         if(§^!r§.second)
         {
            _loc5_ = §'o§.mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            new §&#f§(_loc5_,§^!r§.second);
            § $4§.§'#d§(§'o§.mClip.PodiumContainer.TextField_Podium2.text,§^!r§.second.userName);
         }
         if(§^!r§.first)
         {
            _loc7_ = §'o§.mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            new §&#f§(_loc7_,§^!r§.first);
            § $4§.§'#d§(§'o§.mClip.PodiumContainer.TextField_Podium1.text,§^!r§.first.userName);
         }
         var _loc2_:int = §^!r§.§0#A§.rank;
         _loc1_ = §%!6§.§<$;§(_loc2_);
         §'o§.mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§^!r§.§0#A§.rank > 3)
         {
            (_loc9_ = §'o§.mClip.getChildByName("OwnAvatarHolder") as MovieClip).visible = true;
            new §&#f§(_loc9_,§^!r§.§0#A§);
         }
         else
         {
            §'o§.mClip.getChildByName("OwnAvatarHolder").visible = false;
            §'o§.mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §'o§.mClip.walletContainer;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      override public function dispose() : void
      {
         this.§2"p§();
         §'o§.mClip.removeEventListener(Event.ENTER_FRAME,this.update);
         §^"a§.§9!h§.§%!?§(§4e§.STATE_NAME);
         §!",§.§3"1§.§,"&§();
         this.§+E§(this.§1"w§);
         if(this.§>#+§)
         {
            this.§>#+§.removeEventListener(TimerEvent.TIMER,this.§5"w§);
            this.§>#+§.reset();
         }
         this.§>#+§ = null;
         super.dispose();
      }
      
      private function §2"p§() : void
      {
         var _loc1_:§9#B§ = null;
         for each(_loc1_ in this.§'!2§)
         {
            if(§'o§ && §'o§.mClip && §'o§.mClip.contains(_loc1_))
            {
               §'o§.mClip.removeChild(_loc1_);
            }
            _loc1_.§ !1§();
         }
         this.§'!2§ = new Vector.<§9#B§>();
      }
   }
}
