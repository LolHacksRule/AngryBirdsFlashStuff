package §'$%§
{
   import §!!G§.§0§;
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §%$!§.§%h§;
   import §%$!§.§&!S§;
   import §%$!§.§+3§;
   import §%$!§.§8!t§;
   import §%$!§.§=]§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §+"%§.§6X§;
   import §,n§.§`"d§;
   import §-"i§.§%!'§;
   import §1!@§.§&#a§;
   import §4q§.§!#Q§;
   import §5"$§.§+#Y§;
   import §5"$§.§]!m§;
   import §7z§.§2"U§;
   import §7z§.§7"m§;
   import §8§.§#$+§;
   import §<!=§.§#!A§;
   import §<!=§.§`#w§;
   import §<!O§.§@#`§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §>!#§.§0"V§;
   import §>!#§.§9#a§;
   import §?§.§>"$§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TournamentResultsPopup extends AbstractPopup implements §@J§
   {
      
      public static const ID:String = "TournamentResultsPopup";
      
      private static var §!#z§:§&!S§;
      
      private static var §5k§:Boolean;
       
      
      protected var §"#D§:Timer;
      
      private var §^m§:Wallet;
      
      private var §@#G§:Boolean;
      
      private var §1"N§:int;
      
      protected var §^!F§:§#!A§;
      
      protected var §'#X§:Vector.<§#!A§>;
      
      private var §8!]§:Number;
      
      public function TournamentResultsPopup(param1:int, param2:int, param3:Boolean)
      {
         this.§@#G§ = param3;
         §5k§ = false;
         super(param1,param2,this.getViewXML(),ID);
         §]!m§.§3!]§.addEventListener(§0#3§.§2!U§,this.§""w§);
      }
      
      public static function § !r§() : Boolean
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         if(!§]!m§.§3!]§.lastResult)
         {
            return false;
         }
         §!#z§ = new §&!S§();
         var _loc1_:int = 1;
         for each(_loc2_ in §]!m§.§3!]§.lastResult.players)
         {
            if(_loc2_.uid == userProgress.userID)
            {
               §!#z§.§&#l§ = §8!t§.§>!§(_loc2_);
               §!#z§.§&#l§.rank = _loc1_;
               break;
            }
            _loc1_++;
         }
         §!#z§.first = § _§(1);
         §!#z§.second = § _§(2);
         §!#z§.§;m§ = § _§(3);
         §!#z§.§?![§ = §=]§.§;Q§;
         _loc3_ = §!#z§.§&#l§.rank - 1;
         if(§!#z§.§&#l§.rank >= 4)
         {
            _loc3_ = 3;
         }
         §!#z§.§#$,§ = §]!m§.§3!]§.lastResult.prizeCounts[_loc3_];
         §,"W§.§6"R§(§]!m§.§3!]§.lastResult.players.length);
         §,"W§.§'&§(§,"W§.§ $&§,§=]§.§;Q§,§!#z§.§#$,§);
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in §]!m§.§3!]§.lastResult.players)
         {
            if(_loc8_.uid == §`"d§.BIRD_BOT_1)
            {
               _loc6_ = §8!t§.§>!§(_loc8_).§[Q§;
            }
            if(_loc8_.uid == §`"d§.BIRD_BOT_2)
            {
               _loc7_ = §8!t§.§>!§(_loc8_).§[Q§;
            }
         }
         if(§]!m§.§3!]§.lastResult.a)
         {
            _loc9_ = §]!m§.§3!]§.lastResult.a.tid;
            _loc10_ = §]!m§.§3!]§.lastResult.a.lc;
            _loc11_ = §]!m§.§3!]§.lastResult.a.s;
            if(§!#z§.§&#l§.§[Q§ > _loc6_)
            {
               _loc4_ = true;
            }
            if(§!#z§.§&#l§.§[Q§ > _loc7_)
            {
               _loc5_ = true;
            }
            §-#A§.§6$2§().§9!A§(_loc9_,_loc10_,_loc4_,_loc5_,§]!m§.§3!]§.lastResult.players.length,§!#z§.§&#l§.rank,§!#z§.§&#l§.§[Q§,_loc11_);
         }
         return true;
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      private static function § _§(param1:int) : §8!t§
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:§2"U§ = null;
         if(§]!m§.§3!]§.lastResult)
         {
            if(§]!m§.§3!]§.lastResult.players)
            {
               _loc2_ = 1;
               for each(_loc3_ in §]!m§.§3!]§.lastResult.players)
               {
                  if(_loc3_ != null)
                  {
                     if(_loc2_ == param1)
                     {
                        if(_loc4_ = §7"m§.§;#F§(_loc3_.uid))
                        {
                           _loc3_.n = _loc4_.name;
                        }
                        return §8!t§.§>!§(_loc3_);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         return null;
      }
      
      public static function get §2"Z§() : Boolean
      {
         return §!#z§ != null;
      }
      
      protected function §""w§(param1:§0#3§) : void
      {
         this.§#!'§();
         §5k§ = true;
         §]!m§.§3!]§.§-!"§();
      }
      
      protected function update(param1:Event) : void
      {
         var _loc3_:§#!A§ = null;
         var _loc2_:Number = getTimer() - this.§8!]§;
         this.§8!]§ = getTimer();
         for each(_loc3_ in this.§'#X§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      protected function getViewXML() : XML
      {
         return §@#`§.§#!c§.Views.PopupView_TournamentLastResults[0];
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         switch(param2)
         {
            case "CLAIM_PRIZE":
               §7!j§.getItemByName("ClaimPrizeButton").mClip.alpha = 0.5;
               §7!j§.getItemByName("ClaimPrizeButton").setEnabled(false);
               §]!m§.§3!]§.§`#m§();
               break;
            case "SHARE_TOURNAMENT":
               AngryBirdsBase.singleton.exitFullScreen();
               _loc5_ = (_loc4_ = §!#z§.§&#l§.rank) + §0"V§.§["$§(_loc4_);
               §6X§.§3U§("shareTournamentRank",_loc5_,§9#a§.§^#&§(§!#z§.§&#l§.§[Q§));
               close();
               break;
            case "CLOSE_POPUP":
               close();
         }
      }
      
      private function §#!'§() : void
      {
         if(!§!#z§)
         {
            close();
            return;
         }
         if(!§7!j§)
         {
            return;
         }
         §7!j§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §7!j§.getItemByName("GiftCarouselContainer").setVisibility(false);
         §7!j§.mClip.GiftCarouselContainer.mouseChildren = false;
         §7!j§.mClip.GiftCarouselContainer.mouseEnabled = false;
         §7!j§.mClip.getChildByName("GiftBox").visible = false;
         this.§"#D§ = new Timer(400,1);
         this.§"#D§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§8!c§);
         this.§"#D§.start();
      }
      
      private function §8!c§(param1:TimerEvent) : void
      {
         this.§"#D§.reset();
         this.§"#D§.removeEventListener(TimerEvent.TIMER,this.§8!c§);
         §7!j§.getItemByName("GiftCarouselContainer").setVisibility(true);
         this.§^m§.§9"'§(this.§1"N§ + §!#z§.§#$,§);
         this.§^m§.§ true§(§!#z§.§#$,§);
         §7!j§.mClip.GiftCarouselContainer.txtRewardAmount.text = §!#z§.§#$,§ + " x";
         var _loc2_:Point = new Point(this.walletContainer.x + this.walletContainer.width / 2,this.walletContainer.y + this.walletContainer.height / 2);
         §7!j§.mClip.GiftCarouselContainer.x = _loc2_.x - 20;
         §7!j§.mClip.GiftCarouselContainer.y = _loc2_.y;
         var _loc4_:§+,§ = §""Z§.§3!]§.§5"0§(§7!j§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },0.4,§""Z§.§0"2§);
         var _loc5_:§+,§ = §""Z§.§3!]§.§5"0§(§7!j§.mClip.GiftCarouselContainer,{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },2.5,§""Z§.§?!Y§);
         var _loc6_:§+,§ = §""Z§.§3!]§.§5"0§(§7!j§.mClip.GiftCarouselContainer,{
            "alpha":0,
            "scaleX":0.6,
            "scaleY":0.6
         },{
            "alpha":1,
            "scaleX":0.6,
            "scaleY":0.6
         },0.4,§""Z§.§0"2§);
         §""Z§.§3!]§.§[#h§(_loc4_,_loc5_,_loc6_).play();
         this.§^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§#!A§.§&$<§,§#!A§.§1"y§,§`#w§.§8!_§);
         §7!j§.mClip.addChild(this.§^!F§);
         this.§'#X§.push(this.§^!F§);
         §%h§.§3!]§.§=L§();
         this.§?l§();
      }
      
      private function §?l§() : void
      {
         §7!j§.getItemByName("ClaimPrizeButton").setVisibility(false);
         §7!j§.mClip.getChildByName("GiftBox").visible = false;
         §7!j§.getItemByName("Button_Close").setVisibility(true);
         if(§!#z§.§&#l§.rank <= 3)
         {
            §7!j§.getItemByName("ShareTournamentButton").setVisibility(true);
         }
         if(this.§@#G§)
         {
            this.§^m§.§9"'§(this.§1"N§ + §!#z§.§#$,§);
            (§>"$§.§<_§ as §8G§).§&#§.§`#$§.§9"'§(this.§1"N§ + §!#z§.§#$,§);
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         super.show(param1);
         §7!j§.mClip.addEventListener(Event.ENTER_FRAME,this.update);
         this.§'#X§ = new Vector.<§#!A§>();
         this.§1"N§ = §+3§(§8G§.§%#S§.dataModel).§<$&§.§[#u§;
         if(this.§@#G§)
         {
            this.§1"N§ -= §!#z§.§#$,§;
            (§>"$§.§<_§ as §8G§).§&#§.§`#$§.§9"'§(this.§1"N§);
         }
         this.§%#,§(new Wallet(this,false,false));
         this.§^m§.§9"'§(this.§1"N§);
         §#$+§.playSound("Sound_BirdsApplause");
         if(§2"Z§)
         {
            this.§^#5§();
            _loc2_ = §]!m§.§3!]§.§%#+§;
            §7!j§.mClip.PodiumContainer.firstPlaceText.text.text = _loc2_[0];
            §7!j§.mClip.PodiumContainer.secondPlaceText.text.text = _loc2_[1];
            §7!j§.mClip.PodiumContainer.thirdPlaceText.text.text = _loc2_[2];
         }
         if(§5k§)
         {
            this.§?l§();
         }
      }
      
      public function §^#5§() : void
      {
         var _loc1_:String = null;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc7_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(§!#z§.§;m§)
         {
            _loc3_ = §7!j§.mClip.PodiumContainer.getChildByName("BronzeAvatarHolder") as MovieClip;
            new §+#Y§(_loc3_,§!#z§.§;m§);
            §&#a§.§^E§(§7!j§.mClip.PodiumContainer.TextField_Podium3.text,§!#z§.§;m§.userName);
         }
         if(§!#z§.second)
         {
            _loc5_ = §7!j§.mClip.PodiumContainer.getChildByName("SilverAvatarHolder") as MovieClip;
            new §+#Y§(_loc5_,§!#z§.second);
            §&#a§.§^E§(§7!j§.mClip.PodiumContainer.TextField_Podium2.text,§!#z§.second.userName);
         }
         if(§!#z§.first)
         {
            _loc7_ = §7!j§.mClip.PodiumContainer.getChildByName("GoldAvatarHolder") as MovieClip;
            new §+#Y§(_loc7_,§!#z§.first);
            §&#a§.§^E§(§7!j§.mClip.PodiumContainer.TextField_Podium1.text,§!#z§.first.userName);
         }
         var _loc2_:int = §!#z§.§&#l§.rank;
         _loc1_ = §0"V§.§["$§(_loc2_);
         §7!j§.mClip.YourRankTextfield.text = "Your Rank: " + _loc2_ + _loc1_;
         if(§!#z§.§&#l§.rank > 3)
         {
            (_loc9_ = §7!j§.mClip.getChildByName("OwnAvatarHolder") as MovieClip).visible = true;
            new §+#Y§(_loc9_,§!#z§.§&#l§);
         }
         else
         {
            §7!j§.mClip.getChildByName("OwnAvatarHolder").visible = false;
            §7!j§.mClip.getChildByName("GiftBox").visible = false;
         }
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §7!j§.mClip.walletContainer;
      }
      
      public function §]"]§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §`#$§() : Wallet
      {
         return this.§^m§;
      }
      
      override public function dispose() : void
      {
         this.§=$§();
         §7!j§.mClip.removeEventListener(Event.ENTER_FRAME,this.update);
         §8G§.§%#S§.§7P§(§%!'§.STATE_NAME);
         §%h§.§3!]§.§=L§();
         this.§]"]§(this.§^m§);
         if(this.§"#D§)
         {
            this.§"#D§.removeEventListener(TimerEvent.TIMER,this.§8!c§);
            this.§"#D§.reset();
         }
         this.§"#D§ = null;
         super.dispose();
      }
      
      private function §=$§() : void
      {
         var _loc1_:§#!A§ = null;
         for each(_loc1_ in this.§'#X§)
         {
            if(§7!j§ && §7!j§.mClip && §7!j§.mClip.contains(_loc1_))
            {
               §7!j§.mClip.removeChild(_loc1_);
            }
            _loc1_.§4#1§();
         }
         this.§'#X§ = new Vector.<§#!A§>();
      }
   }
}
