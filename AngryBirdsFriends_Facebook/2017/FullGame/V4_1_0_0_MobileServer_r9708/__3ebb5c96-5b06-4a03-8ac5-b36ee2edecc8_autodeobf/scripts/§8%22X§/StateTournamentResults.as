package §8"X§
{
   import § "$§.§'"R§;
   import § o§.§%"!§;
   import § o§.TournamentResultSharePopUp;
   import §"!y§.§`"B§;
   import §%#A§.§]!_§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§%"E§;
   import §&"J§.§3!3§;
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §&"J§.§8h§;
   import §&"J§.§?$6§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §+">§.§#"d§;
   import §+#t§.§>J§;
   import §0c§.§!$,§;
   import §1#W§.§!#&§;
   import §1#W§.§0#>§;
   import §1#W§.§5I§;
   import §1#W§.§`#+§;
   import §5"?§.§4"-§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§?!=§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §9"1§.§+!x§;
   import §9"1§.§]"5§;
   import §94§.§@"X§;
   import §94§.§`"z§;
   import §;#r§.§"g§;
   import §<!b§.§8-§;
   import §<!b§.§>#&§;
   import §<"1§.§'"S§;
   import §<#m§.§^#o§;
   import §@#§.§^#Q§;
   import §[§.§]"w§;
   import §[0§.§5#;§;
   import §[0§.§8k§;
   import §[0§.§;$-§;
   import §]#p§.§%!?§;
   import §]#p§.§4!J§;
   import §];§.§-!t§;
   import §^#]§.§@!g§;
   import §`!R§.§&"8§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class StateTournamentResults extends §`"z§ implements §]"w§, §8[§
   {
      
      public static const STATE_NAME:String = "StateTournamentResults";
      
      private static const §>"+§:int = 370;
      
      public static const §2!?§:int = 1;
      
      public static const §4"D§:int = 2;
      
      private static var §"!z§:int = 1;
      
      private static var §"#;§:Boolean;
      
      public static var §&b§:Boolean = false;
      
      public static const §,$5§:uint = 1;
      
      public static const §0$3§:uint = 2;
      
      public static const CASE_STAR_PROMOTION:uint = 3;
      
      public static const CASE_FRIENDS_1ST:uint = 4;
      
      public static const CASE_FRIENDS_2ND:uint = 5;
      
      public static const CASE_FRIENDS_3RD:uint = 6;
      
      private static const §-#e§:String = "TournamentResultSoundChannel";
       
      
      private var §#8§:§8h§;
      
      private var §""N§:§8k§;
      
      private var §`"I§:§8k§;
      
      private var §,!O§:§8k§;
      
      private var §3#§:§8k§;
      
      private var §+"=§:§8k§;
      
      private var §0"1§:§8k§;
      
      private var §2!!§:§8k§;
      
      private var §+!<§:§8k§;
      
      protected var §2L§:Font;
      
      private var §0"Y§:§`"B§;
      
      private const §?!E§:String = "ACTIVE";
      
      private const §+!o§:String = "INACTIVE";
      
      private var §]0§:Boolean = true;
      
      private var §9"I§:MovieClip;
      
      private var §;!Y§:MovieClip;
      
      private var §<$'§:Array;
      
      protected var §,$0§:§8-§;
      
      protected var §&O§:Vector.<§8-§>;
      
      private var §0!k§:Number;
      
      private var §9"B§:Timer;
      
      private var §7"8§:Timer;
      
      private var §]R§:Class;
      
      private var §"#E§:MovieClip;
      
      private var §7"O§:MovieClip;
      
      private var §2$5§:Array;
      
      private var §3!B§:Wallet;
      
      private var §7!X§:Number;
      
      private var §<#=§:§-#C§;
      
      private var §5X§:§-#C§;
      
      private var §@!w§:Object;
      
      private var mPlayerPreviousPositionInLeague:Object;
      
      private var §3!'§:§-#C§;
      
      private var §7H§:Array;
      
      private var §%!"§:Array;
      
      private var mPreviousResult:Object = null;
      
      private var §9#x§:Boolean = false;
      
      private var §0k§:Number = 0.2;
      
      private var §7`§:Number = 0.2;
      
      private var §%#o§:Boolean;
      
      private var §`!o§:Number = 0.2;
      
      private var §]$§:Number = 1.2;
      
      private var §3#0§:Number = 20.0;
      
      private var LEAGUE_WIN:uint = 1;
      
      private var §9T§:uint = 2;
      
      private var §>#P§:uint = 3;
      
      private var §,"%§:uint;
      
      private var §&m§:Object;
      
      private var §!"+§:Array;
      
      private var mPromotionAnimation:LeaguePromotionAnimation;
      
      private var §"!s§:Timer;
      
      public function StateTournamentResults(param1:§^#Q§, param2:Boolean, param3:§+#!§)
      {
         this.§2L§ = new AngryBirdsFont();
         this.§<$'§ = [0,0.25,0.5,0.75,1];
         this.§2$5§ = [0,0];
         this.§%!"§ = [false,false];
         super(param1,param2,STATE_NAME,param3);
      }
      
      public static function get §>#K§() : int
      {
         return §"!z§;
      }
      
      public static function set §>#K§(param1:int) : void
      {
         §"!z§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§]R§ = §+$#§.§["`§("GiftCarousel");
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_Tournament_Results[0]);
         this.§0"Y§ = new §`"B§(§?Q§);
         this.§;!Y§ = §?Q§.getItemByName("FriendsResult").mClip;
         this.§9"I§ = §?Q§.getItemByName("LeaguesResult").mClip;
      }
      
      private function §+!;§(param1:Boolean = false) : void
      {
         this.§0"Y§.removeEventListener(§]"5§.§["B§,this.§9"A§);
         this.§0"Y§.addEventListener(§]"5§.§["B§,this.§9"A§);
         this.§0"Y§.§>"`§(this.mPreviousResult,§"!z§,param1);
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§5I§ = null;
         var _loc3_:§0#>§ = null;
         super.activate(param1);
         this.§1$=§();
         this.§]$=§();
         this.§8$ §();
         this.§0!<§();
         this.§]!k§();
         this.§8"t§();
         this.§95§();
         this.§<$8§();
         this.§>#r§();
         this.§8$,§();
         this.§[t§();
         this.§3"X§();
         this.§+!;§();
         this.§8!2§();
         this.§5";§();
         this.§`#§();
         this.§%!"§ = [false,false];
         this.§9#x§ = false;
         this.§%#o§ = false;
         if(§"!z§ == §2!?§ && (§;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.l || §;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.t))
         {
            §;$-§.§ "D§.§6!'§();
            §!#&§.§!"k§(§-#e§,10,0.8);
            §!#&§.playSound("BirdsApplause",§-#e§);
            _loc2_ = §!#&§.§3!c§(AngryBirdsBase.§2#a§);
            if(_loc2_.§>$"§ <= 0)
            {
               _loc3_ = §-#+§.§;!$§.§]D§();
               _loc3_.§;"@§(§`#+§.§[#!§);
            }
         }
         §?Q§.getItemByName("loadingResults").setVisibility(false);
         AngryBirdsBase.singleton.playThemeMusic();
         this.§45§();
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§ #Y§);
      }
      
      private function §45§() : void
      {
         var _loc3_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = false;
         var _loc11_:* = false;
         if(§>#K§ != §2!?§)
         {
            return;
         }
         var _loc1_:Object = §;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.t && §;$-§.§ "D§.§&,§.t.players ? §;$-§.§ "D§.§&,§.t : this.§^#B§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         for each(_loc6_ in _loc1_.players)
         {
            if(_loc6_.uid == _loc2_)
            {
               _loc3_ = _loc6_;
            }
            else if(_loc6_.uid == §>J§.BIRD_BOT_1)
            {
               _loc4_ = _loc6_.p;
            }
            if(_loc6_.uid == §>J§.BIRD_BOT_2)
            {
               _loc5_ = _loc6_.p;
            }
         }
         if(_loc1_.a)
         {
            _loc7_ = _loc1_.a.tid;
            _loc8_ = _loc1_.a.lc;
            _loc9_ = _loc1_.a.s;
            _loc10_ = _loc3_.p > _loc4_;
            _loc11_ = _loc3_.p > _loc5_;
            §?!=§.§3!q§().§6"A§(_loc7_,_loc8_,_loc10_,_loc11_,_loc1_.players.length,_loc3_.r,_loc3_.p,_loc9_);
         }
      }
      
      private function §5";§() : void
      {
         if(this.mPromotionAnimation != null)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
            this.mPromotionAnimation = null;
         }
         if(§"!z§ == §4"D§)
         {
            §?Q§.getItemByName("Promotion_Main_Anim").setVisibility(false);
         }
         else
         {
            this.mPromotionAnimation = new LeaguePromotionAnimation(§]!_§(§?Q§.getItemByName("Promotion_Main_Anim")));
            this.mPromotionAnimation.activate();
         }
      }
      
      private function §3"X§() : void
      {
         var _loc1_:Number = this.§?#l§();
         var _loc2_:Number = this.§<"N§();
         if(this.§0"Y§)
         {
            this.§0"Y§.§ m§ = _loc1_;
            this.§0"Y§.§["4§ = _loc2_;
         }
      }
      
      private function §`#§() : void
      {
         this.§##Y§(new Wallet(this,true,false));
         this.§3!B§.§[!R§.scaleY = 1.3;
         this.§3!B§.§[!R§.scaleX = 1.3;
         this.§7!X§ = §`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§;
         this.§3!B§.setCoinsAmountText(this.§7!X§);
      }
      
      private function §0!<§() : void
      {
         §?Q§.setText("" + §;$-§.§ "D§.bronzeTrophies,"BronzeTrophiesTextfield");
         §?Q§.setText("" + §;$-§.§ "D§.silverTrophies,"SilverTrophiesTextfield");
         §?Q§.setText("" + §;$-§.§ "D§.goldTrophies,"GoldTrophiesTextfield");
         this.§7H§ = new Array();
         this.§7H§.push(§;$-§.§ "D§.goldTrophies);
         this.§7H§.push(§;$-§.§ "D§.silverTrophies);
         this.§7H§.push(§;$-§.§ "D§.bronzeTrophies);
      }
      
      private function §>#r§() : void
      {
         AngryBirdsBase.singleton.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§=#L§);
         AngryBirdsBase.singleton.stage.addEventListener(Event.RESIZE,this.§3=§);
         if(this.§]0§)
         {
            §;$-§.§ "D§.addEventListener(§+!x§.§0!m§,this.§4"a§);
         }
         else
         {
            §-!t§.§ "D§.addEventListener(§'"R§.§<!7§,this.§<p§);
            §;$-§.§ "D§.addEventListener(§+!x§.§3$"§,this.§8!k§);
         }
         §;$-§.§ "D§.addEventListener(§+!x§.§<!J§,this.§0#;§);
      }
      
      private function §]$=§() : void
      {
         this.§#8§ = new §8h§();
         this.§#8§.first = this.§3"I§(1);
         this.§#8§.second = this.§3"I§(2);
         this.§#8§.§?!m§ = this.§3"I§(3);
         this.§#8§.§""%§ = this.§3"I§(4);
         §?Q§.getItemByName("FriendsFirst").mClip.gotoAndStop(0);
         §?Q§.getItemByName("FriendsSecond").mClip.gotoAndStop(0);
         §?Q§.getItemByName("FriendsThird").mClip.gotoAndStop(0);
         §?Q§.getItemByName("LeagueFirst").mClip.gotoAndStop(0);
         §?Q§.getItemByName("LeagueSecond").mClip.gotoAndStop(0);
         §?Q§.getItemByName("LeagueNotPodium").mClip.gotoAndStop(0);
      }
      
      private function §1$=§() : void
      {
         §?Q§.getItemByName("loadingResults").setVisibility(true);
         §?Q§.getItemByName("loadingResults").goToFrame(1,true);
         §?Q§.getItemByName("Banner_LastWeek").setVisibility(§"!z§ == §4"D§);
         §?Q§.getItemByName("Button_Back").setVisibility(§"!z§ == §4"D§);
         if(AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN || AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
         {
            §"#;§ = true;
         }
      }
      
      private function §8$ §() : void
      {
         this.§&O§ = new Vector.<§8-§>();
         this.§"#E§ = new this.§]R§();
         this.§7"O§ = new this.§]R§();
         this.§5X§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§3#0§,§6"w§.§ # §);
         this.§<#=§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§3#0§,§6"w§.§ # §);
      }
      
      private function §"$!§() : void
      {
         this.§5X§ = null;
         this.§5X§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§3#0§,§6"w§.§ # §);
         this.§5X§.onComplete = this.§"$!§;
         this.§5X§.play();
      }
      
      private function §1L§() : void
      {
         this.§<#=§ = null;
         this.§<#=§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§3#0§,§6"w§.§ # §);
         this.§<#=§.onComplete = this.§1L§;
         this.§<#=§.play();
      }
      
      private function §95§() : void
      {
         if(§"!z§ == §4"D§)
         {
            if(§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.t)
            {
               §?Q§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
            }
            if(§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.l)
            {
               §?Q§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
            }
         }
         else
         {
            §?Q§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
            §?Q§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         }
      }
      
      private function §>!B§() : void
      {
         §?Q§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §?Q§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §?Q§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
         §?Q§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
      }
      
      private function §<$8§() : void
      {
         §?Q§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = false;
         §?Q§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = false;
         §?Q§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = true;
         §?Q§.getItemByName("LeagueFirst").setVisibility(true);
         §?Q§.getItemByName("LeagueSecond").setVisibility(true);
         §?Q§.getItemByName("LeagueNotPodium").setVisibility(true);
      }
      
      private function §,5§() : void
      {
         §?Q§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         §?Q§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = true;
         §?Q§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.text = "Complete any level in the weekly tournament to join a league!";
         §?Q§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = true;
         §?Q§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = false;
         §?Q§.getItemByName("LeagueFirst").setVisibility(false);
         §?Q§.getItemByName("LeagueSecond").setVisibility(false);
         §?Q§.getItemByName("LeagueNotPodium").setVisibility(false);
         §&b§ = true;
      }
      
      private function §8"t§() : void
      {
         §?Q§.getItemByName("LeagueRewards").mClip.btnClaimLeagueReward.visible = false;
         §?Q§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
      }
      
      protected function §3=§(param1:Event) : void
      {
         §"#;§ = true;
      }
      
      protected function §=#L§(param1:FullScreenEvent) : void
      {
         §"#;§ = true;
      }
      
      private function §<#@§() : void
      {
         this.§;!Y§.x = §!#A§.§4#2§() * this.§<$'§[1] - this.§;!Y§.width * 0.5;
         this.§9"I§.x = §!#A§.§4#2§() * this.§<$'§[3] - this.§9"I§.width * 0.5;
         this.§"#E§.x = §?Q§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§"#E§.y = §?Q§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§?Q§.getItemByName("FriendsRewards").mClip.height * 0.5)).y;
         this.§7"O§.x = §?Q§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§7"O§.y = §?Q§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§?Q§.getItemByName("LeagueRewards").mClip.height * 0.5)).y;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:§8-§ = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:uint = 0;
         super.update(param1);
         if(this.§&m§ && (this.mPromotionAnimation && !this.mPromotionAnimation.running))
         {
            for each(_loc4_ in this.§&m§)
            {
               for each(_loc5_ in §#"d§.§@"M§)
               {
                  if(_loc5_[§#"d§.§9#F§].toUpperCase() == _loc4_.i.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new §#"d§(_loc5_[§#"d§.§9#F§],§#"d§.§#@§));
                  }
               }
            }
            this.§&m§ = null;
         }
         if(§"!z§ == §2!?§)
         {
            if(§&b§)
            {
               if(!AngryBirdsBase.singleton.popupManager.§`$§())
               {
                  §&b§ = false;
                  §?Q§.getItemByName("Button_Back").setVisibility(true);
                  this.§7#Q§();
               }
            }
         }
         if(this.mPromotionAnimation && this.mPromotionAnimation.running)
         {
            if((_loc6_ = this.mPromotionAnimation.update()) == LeaguePromotionAnimation.ACTION_SHARE)
            {
               this.§<!V§();
            }
            else if(_loc6_ == LeaguePromotionAnimation.ACTION_SKIP)
            {
               this.mPromotionAnimation.stop();
            }
         }
         if(this.§9#x§)
         {
            this.§9#x§ = false;
            if(!this.§%#o§)
            {
               this.§<"'§();
            }
         }
         if(!this.§0"Y§.§=!-§() || §"#;§)
         {
            §"#;§ = false;
         }
         if(this.§0"Y§)
         {
            this.§0"Y§.update(param1);
         }
         var _loc2_:Number = getTimer() - this.§0!k§;
         this.§0!k§ = getTimer();
         for each(_loc3_ in this.§&O§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §8!2§() : void
      {
         var _loc5_:§3!3§ = null;
         var _loc6_:Object = null;
         var _loc7_:§4!J§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         if(§"!z§ == §2!?§)
         {
            if(!§;$-§.§ "D§.§&,§ || §;$-§.§ "D§.§&,§.t && !§;$-§.§ "D§.§&,§.t.players)
            {
               (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§=E§,_loc1_);
               return;
            }
         }
         else if(!§;$-§.§ "D§.§=#s§ || §;$-§.§ "D§.§=#s§.t && !§;$-§.§ "D§.§=#s§.t.players)
         {
            (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§=E§,_loc1_);
            return;
         }
         var _loc4_:Object = null;
         if(§"!z§ == §2!?§)
         {
            if(§;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.t && §;$-§.§ "D§.§&,§.t.players)
            {
               _loc4_ = §;$-§.§ "D§.§&,§.t.players;
            }
         }
         else if(§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.t && §;$-§.§ "D§.§=#s§.t.players)
         {
            _loc4_ = §;$-§.§ "D§.§=#s§.t.players;
         }
         if(_loc4_)
         {
            for each(_loc6_ in _loc4_)
            {
               _loc6_.c = _loc6_.r - 1 < this.§!"+§.length ? this.§!"+§[_loc6_.r - 1] : this.§!"+§[this.§!"+§.length - 1];
               _loc5_ = §%"E§.§2u§(_loc6_);
               if(§%"E§(_loc5_) != null)
               {
                  §%"E§(_loc5_).§5L§ = "";
               }
               if(_loc7_ = §%!?§.§ $;§(_loc6_.uid))
               {
                  _loc5_.userName = _loc7_.name;
               }
               _loc1_.push(_loc5_);
            }
         }
         if(§;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.l && §;$-§.§ "D§.§&,§.l.p)
         {
            for each(_loc6_ in §;$-§.§ "D§.§&,§.l.p)
            {
               _loc5_ = §?$6§.§2u§(_loc6_);
               _loc3_.push(_loc5_);
            }
         }
         if(§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.l && §;$-§.§ "D§.§=#s§.l.p)
         {
            for each(_loc6_ in §;$-§.§ "D§.§=#s§.l.p)
            {
               _loc5_ = §?$6§.§2u§(_loc6_);
               _loc2_.push(_loc5_);
            }
         }
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§=E§,_loc1_);
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§!#4§,_loc2_);
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§ k§,_loc3_);
      }
      
      private function §?"M§(param1:Object = null) : void
      {
         if(!param1 || !param1.l)
         {
            this.§,5§();
         }
         else
         {
            this.§<$8§();
         }
      }
      
      private function §]!k§() : void
      {
         this.§!"+§ = §>#K§ == §2!?§ ? (§;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.t && §;$-§.§ "D§.§&,§.t.prizeCounts ? §;$-§.§ "D§.§&,§.t.prizeCounts : this.§?"z§()) : this.§?"z§();
      }
      
      private function §8$,§() : void
      {
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:§%"E§ = null;
         this.§@!w§ = {};
         var _loc1_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID;
         var _loc2_:Object = §>#K§ == §2!?§ ? (§;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.t && §;$-§.§ "D§.§&,§.t.players ? §;$-§.§ "D§.§&,§.t : this.§^#B§()) : this.§^#B§();
         if(_loc2_)
         {
            for each(_loc7_ in _loc2_.players)
            {
               if(_loc1_ == _loc7_.uid)
               {
                  this.§@!w§ = _loc7_;
                  break;
               }
            }
            var _loc3_:MovieClip = §?Q§.getItemByName("FriendsFirst").mClip;
            _loc3_.gotoAndStop(this.§+!o§);
            if(this.§@!w§ && this.§@!w§.r == 1)
            {
               _loc3_.gotoAndStop(this.§?!E§);
            }
            if(this.§#8§.first)
            {
               this.§""N§ = new §8k§(_loc3_.getChildByName("AvatarImage") as MovieClip,this.§#8§.first);
               §@!g§.§["1§(_loc3_.getChildByName("txtName") as TextField,this.§#8§.first.userName,§>"+§);
            }
            var _loc4_:TextField;
            (_loc4_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = this.§!"+§[0].toString();
            (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = this.§#8§.first != null;
            (_loc3_.getChildByName("txtName") as TextField).visible = this.§#8§.first != null;
            var _loc5_:MovieClip;
            (_loc5_ = §?Q§.getItemByName("FriendsSecond").mClip).gotoAndStop(this.§+!o§);
            if(this.§@!w§ && this.§@!w§.r == 2)
            {
               _loc5_.gotoAndStop(this.§?!E§);
            }
            if(this.§#8§.second)
            {
               this.§`"I§ = new §8k§(_loc5_.getChildByName("AvatarImage") as MovieClip,this.§#8§.second);
               §@!g§.§["1§(_loc5_.getChildByName("txtName") as TextField,this.§#8§.second.userName,§>"+§);
            }
            (_loc4_ = (_loc5_.getChildByName("rewardText") as MovieClip).text).text = this.§!"+§[1].toString();
            (_loc5_.getChildByName("AvatarImage") as MovieClip).visible = this.§#8§.second != null;
            (_loc5_.getChildByName("txtName") as TextField).visible = this.§#8§.second != null;
            var _loc6_:MovieClip;
            (_loc6_ = §?Q§.getItemByName("FriendsThird").mClip).gotoAndStop(this.§+!o§);
            if(this.§@!w§ && this.§@!w§.r == 3)
            {
               _loc6_.gotoAndStop(this.§?!E§);
            }
            if(this.§#8§.§?!m§)
            {
               this.§,!O§ = new §8k§(_loc6_.getChildByName("AvatarImage") as MovieClip,this.§#8§.§?!m§);
               §@!g§.§["1§(_loc6_.getChildByName("txtName") as TextField,this.§#8§.§?!m§.userName,§>"+§);
            }
            (_loc4_ = (_loc6_.getChildByName("rewardText") as MovieClip).text).text = this.§!"+§[2].toString();
            (_loc6_.getChildByName("AvatarImage") as MovieClip).visible = this.§#8§.§?!m§ != null;
            (_loc6_.getChildByName("txtName") as TextField).visible = this.§#8§.§?!m§ != null;
            if(this.§@!w§ && this.§@!w§.r)
            {
               if((_loc8_ = this.§@!w§.r - 1) >= 3)
               {
                  _loc8_ = 3;
                  _loc6_.gotoAndStop(this.§?!E§);
                  (_loc6_.getChildByName("txtRank") as TextField).visible = true;
                  (_loc6_.getChildByName("txtRank") as TextField).text = this.§=#n§(this.§@!w§.r);
                  _loc6_.getChildByName("mcTrophyBronze").visible = false;
                  if(_loc9_ = this.§3"I§(this.§@!w§.r))
                  {
                     this.§,!O§ = new §8k§(_loc6_.getChildByName("AvatarImage") as MovieClip,_loc9_);
                     §@!g§.§["1§(_loc6_.getChildByName("txtName") as TextField,_loc9_.userName,§>"+§);
                     _loc4_.text = this.§!"+§[_loc8_];
                  }
               }
               else
               {
                  (_loc6_.getChildByName("txtRank") as TextField).visible = false;
                  _loc6_.getChildByName("mcTrophyBronze").visible = true;
                  if(_loc8_ == 0)
                  {
                     _loc4_ = (_loc3_.getChildByName("rewardText") as MovieClip).text;
                  }
                  else if(_loc8_ == 1)
                  {
                     _loc4_ = (_loc5_.getChildByName("rewardText") as MovieClip).text;
                  }
                  _loc4_.text = this.§!"+§[_loc8_];
               }
               (§?Q§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = this.§!"+§[_loc8_] + "x";
               this.§2$5§[0] = this.§!"+§[_loc8_];
               §?Q§.getItemByName("FriendsRewards").mClip.mcCoin.visible = true;
               if(§>#K§ == §2!?§)
               {
                  §?Q§.getItemByName("FriendsRewards").mClip.RewardShine.visible = true;
                  if(§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.t && (!§;$-§.§ "D§.§&,§ || !§;$-§.§ "D§.§&,§.t))
                  {
                     this.§5X§.stop();
                  }
                  else
                  {
                     this.§5X§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§3#0§,§6"w§.§ # §);
                     this.§5X§.onComplete = this.§"$!§;
                     this.§5X§.play();
                  }
               }
               else
               {
                  §?Q§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
               }
            }
            else
            {
               (§?Q§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = "";
               §?Q§.getItemByName("FriendsRewards").mClip.mcCoin.visible = false;
               §?Q§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
            }
            return;
         }
      }
      
      private function §<"'§() : void
      {
         var _loc1_:MovieClip = null;
         if(§>#K§ == §2!?§ && (this.§@!w§ && this.§@!w§.r >= 1 && this.§@!w§.r <= 3))
         {
            _loc1_ = this.§@!w§ && this.§@!w§.r == 1 ? §?Q§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§@!w§ && this.§@!w§.r == 2 ? §?Q§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §?Q§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
            _loc1_.visible = true;
            _loc1_.parent.setChildIndex(_loc1_,_loc1_.parent.numChildren - 1);
            if(this.§3!'§)
            {
               this.§3!'§.stop();
               this.§3!'§ = null;
            }
            this.§3!'§ = §6"w§.§ "D§.§""3§(_loc1_,{
               "scaleX":1.5,
               "scaleY":1.5
            },{
               "scaleX":1,
               "scaleY":1
            },this.§0k§,§6"w§.§1#h§,this.§7`§);
            this.§3!'§.onComplete = this.§1$7§;
            this.§3!'§.play();
            §!#&§.playSound("Get_Coins",§-#e§);
         }
         else if(§>#K§ == §2!?§ && !this.§%#o§)
         {
            this.§@#B§();
         }
      }
      
      private function §1$7§() : void
      {
         if(this.§3!'§)
         {
            this.§3!'§.stop();
            this.§3!'§ = null;
         }
         if(this.§@!w§)
         {
            if(this.§@!w§.r == 1)
            {
               §?Q§.setText("" + (this.§7H§[0] + 1),"GoldTrophiesTextfield");
            }
            if(this.§@!w§.r == 2)
            {
               §?Q§.setText("" + (this.§7H§[1] + 1),"SilverTrophiesTextfield");
            }
            if(this.§@!w§.r == 3)
            {
               §?Q§.setText("" + (this.§7H§[2] + 1),"BronzeTrophiesTextfield");
            }
         }
         var _loc1_:MovieClip = this.§@!w§.r == 1 ? §?Q§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§@!w§.r == 2 ? §?Q§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §?Q§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
         var _loc2_:§-#C§ = §6"w§.§ "D§.§""3§(_loc1_,{"scaleX":1.5},null,0.1);
         this.§3!'§ = §6"w§.§ "D§.§""3§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.5,
            "scaleY":1.5
         },this.§0k§,§6"w§.§1#h§);
         var _loc3_:§-#C§ = §6"w§.§ "D§.§=!b§(_loc2_,this.§3!'§);
         _loc3_.onComplete = this.§@#B§;
         _loc3_.play();
      }
      
      private function §@#B§() : void
      {
         if(this.§%!"§[0])
         {
            this.§%#o§ = true;
            this.§8#U§();
            this.§"!s§ = new Timer(200,1);
            this.§"!s§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§4!]§);
            this.§"!s§.start();
            this.§%!"§[0] = false;
         }
      }
      
      private function §4!]§(param1:TimerEvent) : void
      {
         this.§"!s§ = null;
         this.§"#2§();
      }
      
      protected function §9"A§(param1:§]"5§) : void
      {
         if(this.§%!"§[1])
         {
            this.§%!"§[1] = false;
         }
         §4"W§.§ "D§.§@!z§();
      }
      
      private function §^#B§() : Object
      {
         return §;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.t && §;$-§.§ "D§.§=#s§.t.players ? §;$-§.§ "D§.§=#s§.t : null;
      }
      
      private function §?"z§() : Array
      {
         return §;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.t && §;$-§.§ "D§.§=#s§.t.prizeCounts ? §;$-§.§ "D§.§=#s§.t.prizeCounts : [0,0,0];
      }
      
      private function §[t§() : void
      {
         var _loc6_:Object = null;
         var _loc7_:§?$6§ = null;
         var _loc8_:§?$6§ = null;
         var _loc9_:§?$6§ = null;
         this.mPlayerPreviousPositionInLeague = {};
         var _loc1_:MovieClip = §?Q§.getItemByName("LeagueFirst").mClip;
         _loc1_.gotoAndStop(this.§+!o§);
         var _loc2_:MovieClip = §?Q§.getItemByName("LeagueSecond").mClip;
         _loc2_.gotoAndStop(this.§+!o§);
         var _loc3_:MovieClip = §?Q§.getItemByName("LeagueNotPodium").mClip;
         _loc3_.gotoAndStop(this.§+!o§);
         var _loc4_:Object = §;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.l ? §;$-§.§ "D§.§&,§ : §;$-§.§ "D§.§=#s§;
         if(§;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.l)
         {
            _loc4_.lastResult = true;
         }
         else if(_loc4_)
         {
            _loc4_.lastResult = false;
         }
         this.mPreviousResult = _loc4_;
         if(!_loc4_ || !_loc4_.l || !_loc4_.l.p || !_loc4_.lastResult && §"!z§ == §2!?§ && !_loc4_.l)
         {
            this.§?"M§(_loc4_);
            return;
         }
         var _loc5_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID;
         for each(_loc6_ in _loc4_.l.p)
         {
            if(_loc5_ == _loc6_.u)
            {
               this.mPlayerPreviousPositionInLeague = _loc6_;
               break;
            }
         }
         _loc7_ = this.§0#p§(1);
         _loc8_ = this.§0#p§(2);
         _loc9_ = this.§0#p§(3);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            _loc1_.gotoAndStop(this.§?!E§);
         }
         if(_loc7_)
         {
            this.§+"=§ = new §8k§(_loc1_.getChildByName("AvatarImage") as MovieClip,_loc7_);
            §@!g§.§["1§(_loc1_.getChildByName("txtName") as TextField,_loc7_.userName,§>"+§);
         }
         var _loc10_:TextField;
         (_loc10_ = (_loc1_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[0] && _loc4_.l.p[0].c ? _loc4_.l.p[0].c.toString() : "0";
         _loc10_.visible = true;
         (_loc1_.getChildByName("AvatarImage") as MovieClip).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtName") as TextField).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtRank") as TextField).text = this.§=#n§(1);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 2)
         {
            _loc2_.gotoAndStop(this.§?!E§);
         }
         if(_loc8_)
         {
            this.§0"1§ = new §8k§(_loc2_.getChildByName("AvatarImage") as MovieClip,_loc8_);
            §@!g§.§["1§(_loc2_.getChildByName("txtName") as TextField,_loc8_.userName,§>"+§);
         }
         (_loc10_ = (_loc2_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[1] && _loc4_.l.p[1].c ? _loc4_.l.p[1].c.toString() : "0";
         (_loc2_.getChildByName("AvatarImage") as MovieClip).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtName") as TextField).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtRank") as TextField).text = this.§=#n§(2);
         var _loc11_:Number = 2;
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r >= 3)
         {
            _loc3_.gotoAndStop(this.§?!E§);
            if(this.mPlayerPreviousPositionInLeague.r > 3)
            {
               _loc9_ = this.§0#p§(this.mPlayerPreviousPositionInLeague.r);
               _loc11_ = this.mPlayerPreviousPositionInLeague.r - 1;
            }
         }
         if(_loc9_)
         {
            §?Q§.getItemByName("LeagueNotPodium").setVisibility(true);
            this.§+!<§ = new §8k§(_loc3_.getChildByName("AvatarImage") as MovieClip,_loc9_);
            §@!g§.§["1§(_loc3_.getChildByName("txtName") as TextField,_loc9_.userName,§>"+§);
            §?Q§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = true;
            §?Q§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = true;
            §?Q§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = true;
         }
         (_loc10_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].c ? _loc4_.l.p[_loc11_].c.toString() : "0";
         (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtName") as TextField).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtRank") as TextField).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].r ? this.§=#n§(_loc4_.l.p[_loc11_].r) : "";
         if(!_loc9_)
         {
            §?Q§.getItemByName("LeagueNotPodium").setVisibility(false);
            §?Q§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = false;
            §?Q§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = false;
            §?Q§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = false;
         }
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.c)
         {
            this.§2$5§[1] = this.mPlayerPreviousPositionInLeague.c;
            (§?Q§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = this.mPlayerPreviousPositionInLeague.c + "x";
            §?Q§.getItemByName("LeagueRewards").mClip.mcCoin.visible = true;
            if(§>#K§ == §2!?§)
            {
               §?Q§.getItemByName("LeagueRewards").mClip.RewardShine.visible = true;
               if(§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.l && (!§;$-§.§ "D§.§&,§ || !§;$-§.§ "D§.§&,§.l))
               {
                  this.§<#=§.stop();
               }
               else
               {
                  this.§<#=§ = §6"w§.§ "D§.§""3§(§?Q§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§3#0§,§6"w§.§ # §);
                  this.§<#=§.onComplete = this.§1L§;
                  this.§<#=§.play();
               }
            }
            else
            {
               §?Q§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
            }
         }
         else
         {
            (§?Q§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = "";
            §?Q§.getItemByName("LeagueRewards").mClip.mcCoin.visible = false;
            §?Q§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
         }
         this.§?"M§(_loc4_);
      }
      
      private function §=!2§(param1:Object, param2:Object) : Boolean
      {
         var _loc4_:uint = 0;
         var _loc3_:Boolean = false;
         if(param2.s && param2.s > 0)
         {
            _loc4_ = param2.s;
            if(param2.lrc > 0)
            {
               _loc3_ = true;
               if(_loc4_ == 1)
               {
                  this.mPromotionAnimation.startLeagueToStarPromotionAnim(param1.pli.tn,param2.s);
               }
               else
               {
                  this.mPromotionAnimation.startStarLeaguePromotionAnim(param1.pli.tn,param2.s);
               }
            }
         }
         return _loc3_;
      }
      
      private function §7#Q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:TournamentResultSharePopUp = null;
         var _loc1_:Object = §;$-§.§ "D§.§&,§.l;
         if(!(_loc1_ && _loc1_.pli && _loc1_.pli.tn == §5#;§.§1$+§.id))
         {
            if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r && this.mPlayerPreviousPositionInLeague.r == 1)
            {
               this.§,"%§ = this.LEAGUE_WIN;
               _loc2_ = this.§=!2§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
            else if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.p && this.mPlayerPreviousPositionInLeague.p == "u")
            {
               this.§,"%§ = this.§>#P§;
               _loc2_ = this.§=!2§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.§,"%§ = this.§9T§;
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
            else if(this.§@!w§ && this.§@!w§.r && this.§@!w§.r <= 3)
            {
               switch(this.§@!w§.r)
               {
                  case 1:
                     _loc3_ = §!$,§.TOURNAMENT_RESULT_SHARE_1ST_FRIENDS_HEADER;
                     _loc4_ = §!$,§.TOURNAMENT_RESULT_SHARE_1ST_FRIENDS_BODY;
                     _loc5_ = CASE_FRIENDS_1ST;
                     break;
                  case 2:
                     _loc3_ = §!$,§.TOURNAMENT_RESULT_SHARE_2ND_FRIENDS_HEADER;
                     _loc4_ = §!$,§.TOURNAMENT_RESULT_SHARE_2ND_FRIENDS_BODY;
                     _loc5_ = CASE_FRIENDS_2ND;
                     break;
                  case 3:
                     _loc3_ = §!$,§.TOURNAMENT_RESULT_SHARE_3RD_FRIENDS_HEADER;
                     _loc4_ = §!$,§.TOURNAMENT_RESULT_SHARE_3RD_FRIENDS_BODY;
                     _loc5_ = CASE_FRIENDS_3RD;
               }
               _loc6_ = new TournamentResultSharePopUp(§%"!§.§4!P§,§^#o§.TOP,_loc3_,_loc4_,_loc5_);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
            }
         }
      }
      
      private function §<!V§() : void
      {
         var caseId:uint = 0;
         var fn:Function = null;
         switch(this.§,"%§)
         {
            case this.LEAGUE_WIN:
               caseId = §,$5§;
               break;
            case this.§9T§:
               caseId = §0$3§;
               break;
            case this.§>#P§:
               caseId = CASE_STAR_PROMOTION;
         }
         fn = function(param1:String):void
         {
            var _loc2_:String = null;
            § "8§.§+#R§("permissionRequestComplete",fn);
            if(param1 == "true")
            {
               mPromotionAnimation.stop();
               _loc2_ = §5#;§.§9"h§(mPreviousResult.l.li.tn).name;
               § "8§.§ "§("shareTournamentResult",caseId,caseId == CASE_STAR_PROMOTION ? mPlayerPreviousPositionInLeague.s : _loc2_);
            }
         };
         § "8§.addCallback("permissionRequestComplete",fn);
         § "8§.§ "§("askForPublishStreamPermission");
      }
      
      private function §=#n§(param1:int) : String
      {
         return param1 + ".";
      }
      
      private function §3"I§(param1:int) : §%"E§
      {
         var _loc3_:Object = null;
         var _loc4_:§4!J§ = null;
         if(§>#K§ == §4"D§)
         {
            return this.§&"e§(param1);
         }
         var _loc2_:Object = §;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.t ? §;$-§.§ "D§.§&,§.t : (§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.t ? §;$-§.§ "D§.§=#s§.t : null);
         if(_loc2_)
         {
            if(_loc2_.players)
            {
               if(param1 <= _loc2_.players.length)
               {
                  _loc3_ = _loc2_.players[param1 - 1];
                  if(_loc3_)
                  {
                     if(_loc4_ = §%!?§.§ $;§(_loc3_.uid))
                     {
                        _loc3_.n = _loc4_.name;
                     }
                     return §%"E§.§2u§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §&"e§(param1:int) : §%"E§
      {
         var _loc2_:Object = null;
         var _loc3_:§4!J§ = null;
         if(§;$-§.§ "D§.§=#s§ && §;$-§.§ "D§.§=#s§.t)
         {
            if(§;$-§.§ "D§.§=#s§.t.players)
            {
               if(param1 <= §;$-§.§ "D§.§=#s§.t.players.length)
               {
                  _loc2_ = §;$-§.§ "D§.§=#s§.t.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §%!?§.§ $;§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §%"E§.§2u§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §0#p§(param1:int) : §?$6§
      {
         var _loc3_:Object = null;
         var _loc2_:Object = §;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.l ? §;$-§.§ "D§.§&,§.l : §;$-§.§ "D§.§=#s§.l;
         if(_loc2_)
         {
            if(_loc2_.p)
            {
               if(param1 <= _loc2_.p.length)
               {
                  _loc3_ = _loc2_.p[param1 - 1];
                  if(_loc3_)
                  {
                     return §?$6§.§2u§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CLAIM":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               break;
            case "BACK":
               §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
               §5"p§(§^!E§.STATE_NAME);
               break;
            case "showCredits":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(§@"X§.STATE_NAME);
               break;
            default:
               if(this.mPromotionAnimation)
               {
                  this.mPromotionAnimation.onUIInteraction(param1,param2,param3);
                  break;
               }
         }
      }
      
      override public function deActivate() : void
      {
         this.§%#o§ = false;
         super.deActivate();
         if(this.§,!O§)
         {
            this.§,!O§.dispose();
         }
         if(this.§`"I§)
         {
            this.§`"I§.dispose();
         }
         if(this.§""N§)
         {
            this.§""N§.dispose();
         }
         if(this.§3#§)
         {
            this.§3#§.dispose();
         }
         if(this.§2!!§)
         {
            this.§2!!§.dispose();
         }
         if(this.§0"1§)
         {
            this.§0"1§.dispose();
         }
         if(this.§+"=§)
         {
            this.§+"=§.dispose();
         }
         if(this.§+!<§)
         {
            this.§+!<§.dispose();
         }
         if(this.mPromotionAnimation)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
         }
         this.§"#H§(this.§3!B§);
         AngryBirdsBase.singleton.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§=#L§);
         AngryBirdsBase.singleton.stage.removeEventListener(Event.RESIZE,this.§3=§);
         §!#&§.§4#J§(§-#e§);
         if(this.§]0§)
         {
            §;$-§.§ "D§.removeEventListener(§+!x§.§0!m§,this.§4"a§);
         }
         else
         {
            §;$-§.§ "D§.removeEventListener(§+!x§.§3$"§,this.§8!k§);
            §-!t§.§ "D§.removeEventListener(§'"R§.§<!7§,this.§<p§);
         }
         this.§&" §();
         this.§#$&§();
         §;$-§.§ "D§.removeEventListener(§+!x§.§<!J§,this.§0#;§);
         §;$-§.§ "D§.§1"V§();
         if(this.§0"Y§)
         {
            this.§0"Y§.deActivate();
         }
      }
      
      private function §&" §() : void
      {
         this.§9"B§ = null;
         this.§7"8§ = null;
         if(§?Q§ && §?Q§.contains(this.§7"O§))
         {
            §?Q§.removeChild(this.§7"O§);
         }
         if(§?Q§ && §?Q§.contains(this.§"#E§))
         {
            §?Q§.removeChild(this.§"#E§);
         }
         this.§7"O§ = null;
         this.§"#E§ = null;
      }
      
      protected function §=#$§(param1:MouseEvent) : void
      {
      }
      
      protected function §4"a§(param1:§+!x§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:§"g§ = null;
         if(param1.type == §+!x§.§0!m§)
         {
            §;$-§.§ "D§.removeEventListener(§+!x§.§0!m§,this.§4"a§);
            if(param1.data.t)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.t.items;
               _loc4_ = param1.data.t.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §"g§();
                  this.§%!"§[0] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §6$0§.§3#j§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§>"j§ = §?!=§.§+[§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §4"W§.§ "D§.§+#<§(param1.data.t,true,_loc2_);
            }
            if(param1.data.l)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.l.items;
               _loc4_ = param1.data.l.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §"g§();
                  this.§%!"§[1] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §6$0§.§3#j§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§>"j§ = §?!=§.§["n§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §4"W§.§ "D§.§+#<§(param1.data.l,true,_loc2_);
               this.§&m§ = param1.data.l.items;
            }
            this.§9#x§ = true;
         }
      }
      
      protected function §8!k§(param1:§+!x§) : void
      {
         var _loc2_:§"g§ = null;
         if(param1.type == §+!x§.§3$"§)
         {
            _loc2_ = new §"g§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§2$5§[1];
            _loc2_.currency = "IVC";
            _loc2_.§>"j§ = "LEAGUE_REWARD";
            _loc2_.itemType = §6$0§.§3#j§;
            §4"W§.§ "D§.§+#<§(param1.data,false,[_loc2_]);
            this.§"#2§();
            §4"W§.§ "D§.§@!z§();
         }
      }
      
      protected function §<p§(param1:§'"R§) : void
      {
         var _loc2_:§"g§ = null;
         var _loc3_:Array = null;
         if(param1.type == §'"R§.§<!7§)
         {
            §?Q§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
            _loc2_ = new §"g§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§2$5§[0];
            _loc2_.currency = "IVC";
            _loc2_.§>"j§ = "TOURNAMENT_REWARD";
            _loc2_.itemType = §6$0§.§3#j§;
            _loc3_ = [_loc2_];
            §4"W§.§ "D§.§+#<§(param1.data,false,_loc3_);
            this.§8#U§();
            §4"W§.§ "D§.§@!z§();
         }
      }
      
      protected function §0#;§(param1:§+!x§) : void
      {
         this.§[t§();
      }
      
      private function §8#U§() : void
      {
         if(this.§9"B§)
         {
            this.§9"B§.reset();
            this.§9"B§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^!f§);
            this.§9"B§ = null;
         }
         this.§9"B§ = new Timer(100,1);
         this.§9"B§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^!f§);
         this.§9"B§.start();
      }
      
      protected function §^!f§(param1:TimerEvent) : void
      {
         var _loc2_:Point = null;
         if(this.§9"B§)
         {
            this.§9"B§.reset();
            this.§9"B§.removeEventListener(TimerEvent.TIMER,this.§^!f§);
            this.§9"B§ = null;
         }
         if(this.§"#E§)
         {
            this.§"#E§.txtRewardAmount.text = this.§2$5§[0] + " x";
         }
         this.§7!X§ = §`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§;
         this.§3!B§.setCoinsAmountText(this.§7!X§);
         this.§3!B§.animateGotCoins(this.§2$5§[0]);
         if(this.§"#E§)
         {
            if(§?Q§ && §?Q§.contains(this.§"#E§))
            {
               §?Q§.removeChild(this.§"#E§);
            }
            this.§"#E§.scaleY = 0;
            this.§"#E§.scaleX = 0;
            _loc2_ = new Point(§?Q§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(§?Q§.getItemByName("FriendsRewards").mClip.width * 0.5,0)).x,§?Q§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§?Q§.getItemByName("FriendsRewards").mClip.height * 0.5)).y + 20);
            this.§,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§8-§.§1!z§,§8-§.§=#M§,§>#&§.§'!4§);
            §?Q§.addChild(this.§,$0§);
            this.§&O§.push(this.§,$0§);
            this.§?";§();
         }
      }
      
      private function §?";§() : void
      {
         §?Q§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
         §?Q§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
         this.§0"Y§.§ m§ = this.§?#l§();
         this.§0"Y§.§["4§ = this.§<"N§();
         this.§+!;§(true);
      }
      
      private function §"#2§() : void
      {
         if(this.§7"8§)
         {
            this.§7"8§.reset();
            this.§7"8§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§-#r§);
            this.§7"8§ = null;
         }
         this.§7"8§ = new Timer(100,1);
         this.§7"8§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-#r§);
         this.§7"8§.start();
      }
      
      protected function §-#r§(param1:TimerEvent) : void
      {
         if(this.§7"8§)
         {
            this.§7"8§.reset();
            this.§7"8§.removeEventListener(TimerEvent.TIMER,this.§-#r§);
            this.§7"8§ = null;
         }
         this.§7!X§ = §`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§;
         this.§3!B§.setCoinsAmountText(this.§7!X§);
         this.§3!B§.animateGotCoins(this.§2$5§[1]);
         if(this.§7"O§)
         {
            this.§7"O§.txtRewardAmount.text = this.§2$5§[1] + " x";
            if(§?Q§ && §?Q§.contains(this.§7"O§))
            {
               §?Q§.removeChild(this.§7"O§);
            }
            this.§7"O§.scaleY = 0;
            this.§7"O§.scaleX = 0;
         }
         var _loc2_:Point = new Point(§?Q§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(§?Q§.getItemByName("LeagueRewards").mClip.width * 0.5,0)).x,§?Q§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§?Q§.getItemByName("LeagueRewards").mClip.height * 0.5)).y + 20);
         if(§;$-§.§ "D§.§&,§ && §;$-§.§ "D§.§&,§.l)
         {
            this.§,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§8-§.§1!z§,§8-§.§=#M§,§>#&§.§'!4§);
            §?Q§.addChild(this.§,$0§);
            this.§&O§.push(this.§,$0§);
            this.§9!S§();
         }
      }
      
      private function §9!S§() : void
      {
         §?Q§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
         §?Q§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
      }
      
      private function §#$&§() : void
      {
         var _loc1_:§8-§ = null;
         for each(_loc1_ in this.§&O§)
         {
            if(§?Q§ && §?Q§.contains(_loc1_))
            {
               §?Q§.removeChild(_loc1_);
            }
            _loc1_.§;!?§();
         }
         this.§&O§ = new Vector.<§8-§>();
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §?Q§.getItemByName("walletContainer").mClip;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      private function §<"N§() : Number
      {
         var _loc2_:Object = null;
         var _loc1_:Number = 0;
         if(this.mPreviousResult && this.mPreviousResult.l)
         {
            for each(_loc2_ in this.mPreviousResult.l.p)
            {
               if(_loc2_.me && _loc2_.lrc)
               {
                  _loc1_ = _loc2_.lrc;
                  break;
               }
            }
         }
         return _loc1_;
      }
      
      private function §?#l§() : Number
      {
         var _loc2_:Object = null;
         var _loc1_:Number = -1;
         if(this.mPreviousResult && this.mPreviousResult.l && this.mPreviousResult.l.p)
         {
            for each(_loc2_ in this.mPreviousResult.l.p)
            {
               if(_loc2_.me)
               {
                  if(_loc2_.s && Number(_loc2_.s) >= 0)
                  {
                     _loc1_ = Number(_loc2_.s);
                     break;
                  }
                  _loc1_ = -1;
               }
            }
         }
         return _loc1_;
      }
      
      public function §!";§() : void
      {
         this.§8$,§();
      }
   }
}

import §%#A§.§]!_§;
import §1#W§.§!#&§;
import §<"1§.§'"S§;
import §<"1§.§[!K§;
import §[0§.§5#;§;
import com.rovio.assets.§+$#§;
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.MovieClip;
import flash.text.TextField;

class LeaguePromotionAnimation
{
   
   private static const CLASS_DIAMOND_WITH_STAR_LINKAGE_NAME:String = "DiamondWithStar";
   
   private static const TXT_RATING_FIELD_NAME:String = "txtStarRating";
   
   private static const ACTION_NONE:uint = 0;
   
   private static const ACTION_SHARE:uint = 1;
   
   private static const ACTION_SKIP:uint = 2;
   
   private static const PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL:String = "PromotionAnimationEndFrameChannel_";
   
   private static const PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL:String = "PromotionAnimationDefaultChannel";
    
   
   private var mUserAction:uint = 0;
   
   private var mComponent:§]!_§;
   
   private var mClip:MovieClip;
   
   private var _mRunning:Boolean;
   
   private var mSkipButton:§[!K§;
   
   private var mShareButton:§[!K§;
   
   private var mBadgeFrom:DisplayObjectContainer;
   
   private var mBadgeTo:DisplayObjectContainer;
   
   private var mActivePromotionSounds:Array;
   
   private var mNextLeagueTextToLowerBanner:String;
   
   function LeaguePromotionAnimation(param1:§]!_§)
   {
      super();
      this.mComponent = param1;
      this.mClip = param1.mClip;
      this.mComponent.setVisibility(false);
      this.mShareButton = this.mComponent.getItemByName("Button_ShareToWall");
      this.mSkipButton = this.mComponent.getItemByName("Button_Skip");
   }
   
   private function activate() : void
   {
   }
   
   private function deActivate() : void
   {
      var _loc1_:int = 0;
      §!#&§.§4#J§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL);
      if(this.mActivePromotionSounds)
      {
         _loc1_ = 0;
         while(_loc1_ < this.mActivePromotionSounds.length)
         {
            §!#&§.§4#J§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc1_);
            _loc1_++;
         }
      }
   }
   
   private function startLeagueToStarPromotionAnim(param1:String, param2:uint) : void
   {
      if(!this._mRunning)
      {
         this.resetVisual();
         this.mBadgeFrom.addChild(this.getBadgeDsp(param1,1.5));
         this.mBadgeTo.addChild(this.getDiamondWithStarBadge(param2,1.5));
         this.initPromotionAnimationSounds();
         this.mNextLeagueTextToLowerBanner = param1;
         this.mNextLeagueTextToLowerBanner = §5#;§.§##W§.id;
      }
   }
   
   private function startStarLeaguePromotionAnim(param1:String, param2:uint) : void
   {
      if(!this._mRunning)
      {
         this.resetVisual();
         this.mBadgeFrom.addChild(this.getDiamondWithStarBadge(param2 - 1,1.5));
         this.mBadgeTo.addChild(this.getDiamondWithStarBadge(param2,1.5));
         this.initPromotionAnimationSounds();
         this.mNextLeagueTextToLowerBanner = param1;
         this.mNextLeagueTextToLowerBanner = §5#;§.§##W§.id;
      }
   }
   
   private function startLeaguePromotionAnim(param1:String, param2:String) : void
   {
      if(!this._mRunning)
      {
         this.resetVisual();
         this.mBadgeFrom.addChild(this.getBadgeDsp(param1,1.5));
         this.mBadgeTo.addChild(this.getBadgeDsp(param2,1.5));
         this.initPromotionAnimationSounds();
         this.mNextLeagueTextToLowerBanner = param2;
      }
   }
   
   private function resetVisual() : void
   {
      this.setButtonsVisiblity(false);
      this.mUserAction = ACTION_NONE;
      this.mComponent.setVisibility(true);
      this.mClip.gotoAndPlay(0);
      this._mRunning = true;
      this.mBadgeFrom = this.mClip.Badge1;
      this.mBadgeTo = this.mClip.Badge2;
      this.mBadgeFrom.removeChildren();
      this.mBadgeTo.removeChildren();
   }
   
   private function getBadgeDsp(param1:String, param2:Number) : DisplayObject
   {
      var _loc3_:Class = §+$#§.§["`§(param1);
      var _loc4_:DisplayObject = new _loc3_();
      _loc4_.scaleX = _loc4_.scaleY = param2;
      _loc4_.x -= _loc4_.width >> 1;
      _loc4_.y -= _loc4_.height >> 1;
      return _loc4_;
   }
   
   private function getDiamondWithStarBadge(param1:uint, param2:Number) : DisplayObject
   {
      var _loc3_:DisplayObjectContainer = DisplayObjectContainer(this.getBadgeDsp(CLASS_DIAMOND_WITH_STAR_LINKAGE_NAME,param2));
      ((_loc3_.getChildByName("StarPromotionIcon") as DisplayObjectContainer).getChildByName(TXT_RATING_FIELD_NAME) as TextField).text = param1.toString();
      return _loc3_;
   }
   
   private function setButtonsVisiblity(param1:Boolean) : void
   {
      this.mShareButton.setVisibility(param1);
      this.mSkipButton.setVisibility(param1);
   }
   
   private function get running() : Boolean
   {
      return this._mRunning;
   }
   
   private function update() : uint
   {
      var _loc2_:int = 0;
      var _loc3_:Object = null;
      if(this.mClip && this.mClip.currentFrame >= 250)
      {
         this.setButtonsVisiblity(true);
      }
      var _loc1_:uint = this.mUserAction;
      this.mUserAction = ACTION_NONE;
      if(this.mActivePromotionSounds)
      {
         _loc2_ = 0;
         while(_loc2_ < this.mActivePromotionSounds.length)
         {
            _loc3_ = this.mActivePromotionSounds[_loc2_];
            if(!_loc3_.started)
            {
               if(_loc3_.startFrame <= this.mClip.currentFrame)
               {
                  if(_loc3_.endFrame)
                  {
                     §!#&§.§!"k§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,1,0.8);
                     §!#&§.playSound(_loc3_.name,PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,int.MAX_VALUE);
                  }
                  else
                  {
                     §!#&§.playSound(_loc3_.name,PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,0);
                  }
                  _loc3_.started = true;
               }
            }
            else if(_loc3_.endFrame <= this.mClip.currentFrame)
            {
               §!#&§.§4#J§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_);
            }
            _loc2_++;
         }
      }
      if(this.mNextLeagueTextToLowerBanner)
      {
         if(this.mClip.LowerBanner)
         {
            (this.mClip.LowerBanner as MovieClip).gotoAndStop(this.mNextLeagueTextToLowerBanner);
            this.mNextLeagueTextToLowerBanner = null;
         }
      }
      return _loc1_;
   }
   
   private function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
   {
      switch(param2)
      {
         case "SHARE_PROMOTION":
            this.mUserAction = ACTION_SHARE;
            break;
         case "SKIP_SHARE_PROMOTION":
            this.mUserAction = ACTION_SKIP;
      }
   }
   
   public function stop() : void
   {
      this.mClip.gotoAndStop(0);
      this.mComponent.setVisibility(false);
      this.mUserAction = ACTION_NONE;
      this._mRunning = false;
   }
   
   private function initPromotionAnimationSounds() : void
   {
      this.mActivePromotionSounds = new Array();
      this.mActivePromotionSounds.push({
         "name":"league_promotion_glow",
         "startFrame":0
      });
      this.mActivePromotionSounds.push({
         "name":"wood_rolling",
         "startFrame":93,
         "endFrame":154
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":30
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":80
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":88
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":98
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":109
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":119
      });
      this.mActivePromotionSounds.push({
         "name":"star_1_coins",
         "startFrame":133
      });
      this.mActivePromotionSounds.push({
         "name":"league_promotion_diamond",
         "startFrame":148
      });
      this.mActivePromotionSounds.push({
         "name":"bird_shot-a1",
         "startFrame":250
      });
      §!#&§.§!"k§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,this.mActivePromotionSounds.length,0.8);
   }
}
