package §9#B§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §"!@§.§ !K§;
   import §"!@§.§@"S§;
   import §"$!§.§ $A§;
   import §"$!§.§7#U§;
   import §"S§.§<#q§;
   import §%!x§.§^!K§;
   import §%#w§.§2#s§;
   import §%#w§.§?"z§;
   import §%#w§.§@"m§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §'",§.§8$7§;
   import §'",§.§@#e§;
   import §+$?§.§%!k§;
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §2G§.§"G§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §2G§.§1T§;
   import §2G§.§4O§;
   import §2G§.§5$4§;
   import §2G§.§9!m§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5"7§.§+$"§;
   import §5P§.§""C§;
   import §6"O§.§ #S§;
   import §7!%§.§,^§;
   import §7!%§.§4"I§;
   import §8#!§.§5`§;
   import §9"r§.§1#e§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   import §?P§.TournamentResultSharePopUp;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@!M§.§0!p§;
   import §@!M§.§8`§;
   import §@!M§.§<"t§;
   import §@r§.§6§;
   import §[#[§.§=#Q§;
   import §`7§.§ try§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§!"f§;
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
   
   public class StateTournamentResults extends §@"S§ implements §8#§, §9#a§
   {
      
      public static const STATE_NAME:String = "StateTournamentResults";
      
      private static const §`"6§:int = 370;
      
      public static const § "-§:int = 1;
      
      public static const §<"H§:int = 2;
      
      private static var §,"+§:int = 1;
      
      private static var §5$8§:Boolean;
      
      public static var §]Y§:Boolean = false;
      
      public static const §,#=§:uint = 1;
      
      public static const §@9§:uint = 2;
      
      public static const CASE_STAR_PROMOTION:uint = 3;
      
      public static const CASE_FRIENDS_1ST:uint = 4;
      
      public static const CASE_FRIENDS_2ND:uint = 5;
      
      public static const CASE_FRIENDS_3RD:uint = 6;
      
      private static const §1!^§:String = "TournamentResultSoundChannel";
       
      
      private var §=c§:§1T§;
      
      private var §!_§:§@"m§;
      
      private var §9Y§:§@"m§;
      
      private var §?!Y§:§@"m§;
      
      private var §7!2§:§@"m§;
      
      private var §1!i§:§@"m§;
      
      private var §'!3§:§@"m§;
      
      private var §^"$§:§@"m§;
      
      private var §%$A§:§@"m§;
      
      protected var §2"M§:Font;
      
      private var § -§:§ #S§;
      
      private const § !M§:String = "ACTIVE";
      
      private const §^"@§:String = "INACTIVE";
      
      private var §[!l§:Boolean = true;
      
      private var §=!S§:MovieClip;
      
      private var §2h§:MovieClip;
      
      private var §9!&§:Array;
      
      protected var §!$9§:§8$7§;
      
      protected var §;!g§:Vector.<§8$7§>;
      
      private var §["v§:Number;
      
      private var §%"E§:Timer;
      
      private var §@"$§:Timer;
      
      private var §'c§:Class;
      
      private var §9!g§:MovieClip;
      
      private var §1![§:MovieClip;
      
      private var §7#F§:Array;
      
      private var §&"K§:Wallet;
      
      private var §@$ §:Number;
      
      private var §!V§:§4[§;
      
      private var §<"I§:§4[§;
      
      private var §5"^§:Object;
      
      private var mPlayerPreviousPositionInLeague:Object;
      
      private var §"""§:§4[§;
      
      private var §1"<§:Array;
      
      private var §-"y§:Array;
      
      private var mPreviousResult:Object = null;
      
      private var §2"K§:Boolean = false;
      
      private var §0"%§:Number = 0.2;
      
      private var §7!`§:Number = 0.2;
      
      private var §9$?§:Boolean;
      
      private var §3!H§:Number = 0.2;
      
      private var §<!E§:Number = 1.2;
      
      private var §4#O§:Number = 20.0;
      
      private var LEAGUE_WIN:uint = 1;
      
      private var §0"f§:uint = 2;
      
      private var §!0§:uint = 3;
      
      private var §^#q§:uint;
      
      private var get:Object;
      
      private var §?#%§:Array;
      
      private var mPromotionAnimation:LeaguePromotionAnimation;
      
      private var §[#?§:Timer;
      
      public function StateTournamentResults(param1:§8=§, param2:Boolean, param3:§""C§)
      {
         this.§2"M§ = new AngryBirdsFont();
         this.§9!&§ = [0,0.25,0.5,0.75,1];
         this.§7#F§ = [0,0];
         this.§-"y§ = [false,false];
         super(param1,param2,STATE_NAME,param3);
      }
      
      public static function get §,!%§() : int
      {
         return §,"+§;
      }
      
      public static function set §,!%§(param1:int) : void
      {
         §,"+§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'c§ = §!"f§.§##?§("GiftCarousel");
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_Tournament_Results[0]);
         this.§ -§ = new § #S§(§`!H§);
         this.§2h§ = §`!H§.getItemByName("FriendsResult").mClip;
         this.§=!S§ = §`!H§.getItemByName("LeaguesResult").mClip;
      }
      
      private function §""a§(param1:Boolean = false) : void
      {
         this.§ -§.removeEventListener(§ $A§.§4#9§,this.§1#"§);
         this.§ -§.addEventListener(§ $A§.§4#9§,this.§1#"§);
         this.§ -§.§+O§(this.mPreviousResult,§,"+§,param1);
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§0!p§ = null;
         var _loc3_:§8`§ = null;
         super.activate(param1);
         this.§?#j§();
         this.§"8§();
         this.§4#q§();
         this.§""w§();
         this.§"#2§();
         this.§["^§();
         this.§!!=§();
         this.§8!-§();
         this.§+#§();
         this.§;#x§();
         this.§3#4§();
         this.§6!,§();
         this.§""a§();
         this.§,"$§();
         this.§-"L§();
         this.§`!J§();
         this.§-"y§ = [false,false];
         this.§2"K§ = false;
         this.§9$?§ = false;
         if(§,"+§ == § "-§ && (§2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.l || §2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.t))
         {
            §2#s§.§6!§.§4#Q§();
            §!"p§.§5#4§(§1!^§,10,0.8);
            §!"p§.playSound("BirdsApplause",§1!^§);
            _loc2_ = §!"p§.§;!b§(AngryBirdsBase.§<!f§);
            if(_loc2_.§3$§ <= 0)
            {
               _loc3_ = §,A§.§2#O§.§3!S§();
               _loc3_.§"$;§(§<"t§.§,"_§);
            }
         }
         §`!H§.getItemByName("loadingResults").setVisibility(false);
         AngryBirdsBase.singleton.playThemeMusic();
         this.§=!§();
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§6"'§);
      }
      
      private function §=!§() : void
      {
         var _loc3_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = false;
         var _loc11_:* = false;
         if(§,!%§ != § "-§)
         {
            return;
         }
         var _loc1_:Object = §2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.t && §2#s§.§6!§.§6m§.t.players ? §2#s§.§6!§.§6m§.t : this.§!&§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         for each(_loc6_ in _loc1_.players)
         {
            if(_loc6_.uid == _loc2_)
            {
               _loc3_ = _loc6_;
            }
            else if(_loc6_.uid == §%!k§.BIRD_BOT_1)
            {
               _loc4_ = _loc6_.p;
            }
            if(_loc6_.uid == §%!k§.BIRD_BOT_2)
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
            § try§.§!!t§().§7"$§(_loc7_,_loc8_,_loc10_,_loc11_,_loc1_.players.length,_loc3_.r,_loc3_.p,_loc9_);
         }
      }
      
      private function §-"L§() : void
      {
         if(this.mPromotionAnimation != null)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
            this.mPromotionAnimation = null;
         }
         if(§,"+§ == §<"H§)
         {
            §`!H§.getItemByName("Promotion_Main_Anim").setVisibility(false);
         }
         else
         {
            this.mPromotionAnimation = new LeaguePromotionAnimation(§[#K§(§`!H§.getItemByName("Promotion_Main_Anim")));
            this.mPromotionAnimation.activate();
         }
      }
      
      private function §6!,§() : void
      {
         var _loc1_:Number = this.§3b§();
         var _loc2_:Number = this.§[!v§();
         if(this.§ -§)
         {
            this.§ -§.§1"d§ = _loc1_;
            this.§ -§.§2"f§ = _loc2_;
         }
      }
      
      private function §`!J§() : void
      {
         this.§[?§(new Wallet(this,true,false));
         this.§&"K§.§=#-§.scaleY = 1.3;
         this.§&"K§.§=#-§.scaleX = 1.3;
         this.§@$ § = §#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§;
         this.§&"K§.setCoinsAmountText(this.§@$ §);
      }
      
      private function §""w§() : void
      {
         §`!H§.setText("" + §2#s§.§6!§.bronzeTrophies,"BronzeTrophiesTextfield");
         §`!H§.setText("" + §2#s§.§6!§.silverTrophies,"SilverTrophiesTextfield");
         §`!H§.setText("" + §2#s§.§6!§.goldTrophies,"GoldTrophiesTextfield");
         this.§1"<§ = new Array();
         this.§1"<§.push(§2#s§.§6!§.goldTrophies);
         this.§1"<§.push(§2#s§.§6!§.silverTrophies);
         this.§1"<§.push(§2#s§.§6!§.bronzeTrophies);
      }
      
      private function §+#§() : void
      {
         AngryBirdsBase.singleton.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§+#]§);
         AngryBirdsBase.singleton.stage.addEventListener(Event.RESIZE,this.§3!4§);
         if(this.§[!l§)
         {
            §2#s§.§6!§.addEventListener(§7#U§.§^i§,this.§,!5§);
         }
         else
         {
            §5`§.§6!§.addEventListener(§1#e§.§&t§,this.§!#_§);
            §2#s§.§6!§.addEventListener(§7#U§.§ !y§,this.§ "W§);
         }
         §2#s§.§6!§.addEventListener(§7#U§.§5$+§,this.§&"5§);
      }
      
      private function §"8§() : void
      {
         this.§=c§ = new §1T§();
         this.§=c§.first = this.§3$4§(1);
         this.§=c§.second = this.§3$4§(2);
         this.§=c§.§^!y§ = this.§3$4§(3);
         this.§=c§.§@!7§ = this.§3$4§(4);
         §`!H§.getItemByName("FriendsFirst").mClip.gotoAndStop(0);
         §`!H§.getItemByName("FriendsSecond").mClip.gotoAndStop(0);
         §`!H§.getItemByName("FriendsThird").mClip.gotoAndStop(0);
         §`!H§.getItemByName("LeagueFirst").mClip.gotoAndStop(0);
         §`!H§.getItemByName("LeagueSecond").mClip.gotoAndStop(0);
         §`!H§.getItemByName("LeagueNotPodium").mClip.gotoAndStop(0);
      }
      
      private function §?#j§() : void
      {
         §`!H§.getItemByName("loadingResults").setVisibility(true);
         §`!H§.getItemByName("loadingResults").goToFrame(1,true);
         §`!H§.getItemByName("Banner_LastWeek").setVisibility(§,"+§ == §<"H§);
         §`!H§.getItemByName("Button_Back").setVisibility(§,"+§ == §<"H§);
         if(AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN || AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
         {
            §5$8§ = true;
         }
      }
      
      private function §4#q§() : void
      {
         this.§;!g§ = new Vector.<§8$7§>();
         this.§9!g§ = new this.§'c§();
         this.§1![§ = new this.§'c§();
         this.§<"I§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§4#O§,§&"H§.§-t§);
         this.§!V§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§4#O§,§&"H§.§-t§);
      }
      
      private function §^"P§() : void
      {
         this.§<"I§ = null;
         this.§<"I§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§4#O§,§&"H§.§-t§);
         this.§<"I§.onComplete = this.§^"P§;
         this.§<"I§.play();
      }
      
      private function §?"Z§() : void
      {
         this.§!V§ = null;
         this.§!V§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§4#O§,§&"H§.§-t§);
         this.§!V§.onComplete = this.§?"Z§;
         this.§!V§.play();
      }
      
      private function §!!=§() : void
      {
         if(§,"+§ == §<"H§)
         {
            if(§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.t)
            {
               §`!H§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
            }
            if(§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.l)
            {
               §`!H§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
            }
         }
         else
         {
            §`!H§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
            §`!H§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         }
      }
      
      private function §6!2§() : void
      {
         §`!H§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §`!H§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §`!H§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
         §`!H§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
      }
      
      private function §8!-§() : void
      {
         §`!H§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = false;
         §`!H§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = false;
         §`!H§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = true;
         §`!H§.getItemByName("LeagueFirst").setVisibility(true);
         §`!H§.getItemByName("LeagueSecond").setVisibility(true);
         §`!H§.getItemByName("LeagueNotPodium").setVisibility(true);
      }
      
      private function §1w§() : void
      {
         §`!H§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         §`!H§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = true;
         §`!H§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.text = "Complete any level to join the league";
         §`!H§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = true;
         §`!H§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = false;
         §`!H§.getItemByName("LeagueFirst").setVisibility(false);
         §`!H§.getItemByName("LeagueSecond").setVisibility(false);
         §`!H§.getItemByName("LeagueNotPodium").setVisibility(false);
         §]Y§ = true;
      }
      
      private function §["^§() : void
      {
         §`!H§.getItemByName("LeagueRewards").mClip.btnClaimLeagueReward.visible = false;
         §`!H§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
      }
      
      protected function §3!4§(param1:Event) : void
      {
         §5$8§ = true;
      }
      
      protected function §+#]§(param1:FullScreenEvent) : void
      {
         §5$8§ = true;
      }
      
      private function §;"q§() : void
      {
         this.§2h§.x = §3#U§.§5j§() * this.§9!&§[1] - this.§2h§.width * 0.5;
         this.§=!S§.x = §3#U§.§5j§() * this.§9!&§[3] - this.§=!S§.width * 0.5;
         this.§9!g§.x = §`!H§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§9!g§.y = §`!H§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§`!H§.getItemByName("FriendsRewards").mClip.height * 0.5)).y;
         this.§1![§.x = §`!H§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§1![§.y = §`!H§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§`!H§.getItemByName("LeagueRewards").mClip.height * 0.5)).y;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:§8$7§ = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:uint = 0;
         super.update(param1);
         if(this.get && (this.mPromotionAnimation && !this.mPromotionAnimation.running))
         {
            for each(_loc4_ in this.get)
            {
               for each(_loc5_ in §6#1§.§[#9§)
               {
                  if(_loc5_[§6#1§.§3!>§].toUpperCase() == _loc4_.i.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new §6#1§(_loc5_[§6#1§.§3!>§],§6#1§.§[[§));
                  }
               }
            }
            this.get = null;
         }
         if(§,"+§ == § "-§)
         {
            if(§]Y§)
            {
               if(!AngryBirdsBase.singleton.popupManager.§#"q§())
               {
                  §]Y§ = false;
                  §`!H§.getItemByName("Button_Back").setVisibility(true);
                  this.§5!L§();
               }
            }
         }
         if(this.mPromotionAnimation && this.mPromotionAnimation.running)
         {
            if((_loc6_ = this.mPromotionAnimation.update()) == LeaguePromotionAnimation.ACTION_SHARE)
            {
               this.§^# §();
            }
            else if(_loc6_ == LeaguePromotionAnimation.ACTION_SKIP)
            {
               this.mPromotionAnimation.stop();
            }
         }
         if(this.§2"K§)
         {
            this.§2"K§ = false;
            if(!this.§9$?§)
            {
               this.§5!G§();
            }
         }
         if(!this.§ -§.§0"0§() || §5$8§)
         {
            §5$8§ = false;
         }
         if(this.§ -§)
         {
            this.§ -§.update(param1);
         }
         var _loc2_:Number = getTimer() - this.§["v§;
         this.§["v§ = getTimer();
         for each(_loc3_ in this.§;!g§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §,"$§() : void
      {
         var _loc5_:§4O§ = null;
         var _loc6_:Object = null;
         var _loc7_:§,^§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         if(§,"+§ == § "-§)
         {
            if(!§2#s§.§6!§.§6m§ || §2#s§.§6!§.§6m§.t && !§2#s§.§6!§.§6m§.t.players)
            {
               (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§&!7§,_loc1_);
               return;
            }
         }
         else if(!§2#s§.§6!§.§[#V§ || §2#s§.§6!§.§[#V§.t && !§2#s§.§6!§.§[#V§.t.players)
         {
            (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§&!7§,_loc1_);
            return;
         }
         var _loc4_:Object = null;
         if(§,"+§ == § "-§)
         {
            if(§2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.t && §2#s§.§6!§.§6m§.t.players)
            {
               _loc4_ = §2#s§.§6!§.§6m§.t.players;
            }
         }
         else if(§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.t && §2#s§.§6!§.§[#V§.t.players)
         {
            _loc4_ = §2#s§.§6!§.§[#V§.t.players;
         }
         if(_loc4_)
         {
            for each(_loc6_ in _loc4_)
            {
               _loc6_.c = _loc6_.r - 1 < this.§?#%§.length ? this.§?#%§[_loc6_.r - 1] : this.§?#%§[this.§?#%§.length - 1];
               _loc5_ = §5$4§.§+!@§(_loc6_);
               if(§5$4§(_loc5_) != null)
               {
                  §5$4§(_loc5_).§6"X§ = "";
               }
               if(_loc7_ = §4"I§.§2!K§(_loc6_.uid))
               {
                  _loc5_.userName = _loc7_.name;
               }
               _loc1_.push(_loc5_);
            }
         }
         if(§2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.l && §2#s§.§6!§.§6m§.l.p)
         {
            for each(_loc6_ in §2#s§.§6!§.§6m§.l.p)
            {
               _loc5_ = §9!m§.§+!@§(_loc6_);
               _loc3_.push(_loc5_);
            }
         }
         if(§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.l && §2#s§.§6!§.§[#V§.l.p)
         {
            for each(_loc6_ in §2#s§.§6!§.§[#V§.l.p)
            {
               _loc5_ = §9!m§.§+!@§(_loc6_);
               _loc2_.push(_loc5_);
            }
         }
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§&!7§,_loc1_);
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§+A§,_loc2_);
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§true §,_loc3_);
      }
      
      private function § "J§(param1:Object = null) : void
      {
         if(!param1 || !param1.l)
         {
            this.§1w§();
         }
         else
         {
            this.§8!-§();
         }
      }
      
      private function §"#2§() : void
      {
         this.§?#%§ = §,!%§ == § "-§ ? (§2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.t && §2#s§.§6!§.§6m§.t.prizeCounts ? §2#s§.§6!§.§6m§.t.prizeCounts : this.§ V§()) : this.§ V§();
      }
      
      private function §;#x§() : void
      {
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:§5$4§ = null;
         this.§5"^§ = {};
         var _loc1_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID;
         var _loc2_:Object = §,!%§ == § "-§ ? (§2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.t && §2#s§.§6!§.§6m§.t.players ? §2#s§.§6!§.§6m§.t : this.§!&§()) : this.§!&§();
         if(_loc2_)
         {
            for each(_loc7_ in _loc2_.players)
            {
               if(_loc1_ == _loc7_.uid)
               {
                  this.§5"^§ = _loc7_;
                  break;
               }
            }
            var _loc3_:MovieClip = §`!H§.getItemByName("FriendsFirst").mClip;
            _loc3_.gotoAndStop(this.§^"@§);
            if(this.§5"^§ && this.§5"^§.r == 1)
            {
               _loc3_.gotoAndStop(this.§ !M§);
            }
            if(this.§=c§.first)
            {
               this.§!_§ = new §@"m§(_loc3_.getChildByName("AvatarImage") as MovieClip,this.§=c§.first);
               §=#Q§.§0$,§(_loc3_.getChildByName("txtName") as TextField,this.§=c§.first.userName,§`"6§);
            }
            var _loc4_:TextField;
            (_loc4_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = this.§?#%§[0].toString();
            (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = this.§=c§.first != null;
            (_loc3_.getChildByName("txtName") as TextField).visible = this.§=c§.first != null;
            var _loc5_:MovieClip;
            (_loc5_ = §`!H§.getItemByName("FriendsSecond").mClip).gotoAndStop(this.§^"@§);
            if(this.§5"^§ && this.§5"^§.r == 2)
            {
               _loc5_.gotoAndStop(this.§ !M§);
            }
            if(this.§=c§.second)
            {
               this.§9Y§ = new §@"m§(_loc5_.getChildByName("AvatarImage") as MovieClip,this.§=c§.second);
               §=#Q§.§0$,§(_loc5_.getChildByName("txtName") as TextField,this.§=c§.second.userName,§`"6§);
            }
            (_loc4_ = (_loc5_.getChildByName("rewardText") as MovieClip).text).text = this.§?#%§[1].toString();
            (_loc5_.getChildByName("AvatarImage") as MovieClip).visible = this.§=c§.second != null;
            (_loc5_.getChildByName("txtName") as TextField).visible = this.§=c§.second != null;
            var _loc6_:MovieClip;
            (_loc6_ = §`!H§.getItemByName("FriendsThird").mClip).gotoAndStop(this.§^"@§);
            if(this.§5"^§ && this.§5"^§.r == 3)
            {
               _loc6_.gotoAndStop(this.§ !M§);
            }
            if(this.§=c§.§^!y§)
            {
               this.§?!Y§ = new §@"m§(_loc6_.getChildByName("AvatarImage") as MovieClip,this.§=c§.§^!y§);
               §=#Q§.§0$,§(_loc6_.getChildByName("txtName") as TextField,this.§=c§.§^!y§.userName,§`"6§);
            }
            (_loc4_ = (_loc6_.getChildByName("rewardText") as MovieClip).text).text = this.§?#%§[2].toString();
            (_loc6_.getChildByName("AvatarImage") as MovieClip).visible = this.§=c§.§^!y§ != null;
            (_loc6_.getChildByName("txtName") as TextField).visible = this.§=c§.§^!y§ != null;
            if(this.§5"^§ && this.§5"^§.r)
            {
               if((_loc8_ = this.§5"^§.r - 1) >= 3)
               {
                  _loc8_ = 3;
                  _loc6_.gotoAndStop(this.§ !M§);
                  (_loc6_.getChildByName("txtRank") as TextField).visible = true;
                  (_loc6_.getChildByName("txtRank") as TextField).text = this.§?"$§(this.§5"^§.r);
                  _loc6_.getChildByName("mcTrophyBronze").visible = false;
                  if(_loc9_ = this.§3$4§(this.§5"^§.r))
                  {
                     this.§?!Y§ = new §@"m§(_loc6_.getChildByName("AvatarImage") as MovieClip,_loc9_);
                     §=#Q§.§0$,§(_loc6_.getChildByName("txtName") as TextField,_loc9_.userName,§`"6§);
                     _loc4_.text = this.§?#%§[_loc8_];
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
                  _loc4_.text = this.§?#%§[_loc8_];
               }
               (§`!H§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = this.§?#%§[_loc8_] + "x";
               this.§7#F§[0] = this.§?#%§[_loc8_];
               §`!H§.getItemByName("FriendsRewards").mClip.mcCoin.visible = true;
               if(§,!%§ == § "-§)
               {
                  §`!H§.getItemByName("FriendsRewards").mClip.RewardShine.visible = true;
                  if(§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.t && (!§2#s§.§6!§.§6m§ || !§2#s§.§6!§.§6m§.t))
                  {
                     this.§<"I§.stop();
                  }
                  else
                  {
                     this.§<"I§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§4#O§,§&"H§.§-t§);
                     this.§<"I§.onComplete = this.§^"P§;
                     this.§<"I§.play();
                  }
               }
               else
               {
                  §`!H§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
               }
            }
            else
            {
               (§`!H§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = "";
               §`!H§.getItemByName("FriendsRewards").mClip.mcCoin.visible = false;
               §`!H§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
            }
            return;
         }
      }
      
      private function §5!G§() : void
      {
         var _loc1_:MovieClip = null;
         if(§,!%§ == § "-§ && (this.§5"^§ && this.§5"^§.r >= 1 && this.§5"^§.r <= 3))
         {
            _loc1_ = this.§5"^§ && this.§5"^§.r == 1 ? §`!H§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§5"^§ && this.§5"^§.r == 2 ? §`!H§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §`!H§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
            _loc1_.visible = true;
            _loc1_.parent.setChildIndex(_loc1_,_loc1_.parent.numChildren - 1);
            if(this.§"""§)
            {
               this.§"""§.stop();
               this.§"""§ = null;
            }
            this.§"""§ = §&"H§.§6!§.§6C§(_loc1_,{
               "scaleX":1.5,
               "scaleY":1.5
            },{
               "scaleX":1,
               "scaleY":1
            },this.§0"%§,§&"H§.§=>§,this.§7!`§);
            this.§"""§.onComplete = this.§+P§;
            this.§"""§.play();
            §!"p§.playSound("Get_Coins",§1!^§);
         }
         else if(§,!%§ == § "-§ && !this.§9$?§)
         {
            this.§;T§();
         }
      }
      
      private function §+P§() : void
      {
         if(this.§"""§)
         {
            this.§"""§.stop();
            this.§"""§ = null;
         }
         if(this.§5"^§)
         {
            if(this.§5"^§.r == 1)
            {
               §`!H§.setText("" + (this.§1"<§[0] + 1),"GoldTrophiesTextfield");
            }
            if(this.§5"^§.r == 2)
            {
               §`!H§.setText("" + (this.§1"<§[1] + 1),"SilverTrophiesTextfield");
            }
            if(this.§5"^§.r == 3)
            {
               §`!H§.setText("" + (this.§1"<§[2] + 1),"BronzeTrophiesTextfield");
            }
         }
         var _loc1_:MovieClip = this.§5"^§.r == 1 ? §`!H§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§5"^§.r == 2 ? §`!H§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §`!H§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
         var _loc2_:§4[§ = §&"H§.§6!§.§6C§(_loc1_,{"scaleX":1.5},null,0.1);
         this.§"""§ = §&"H§.§6!§.§6C§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.5,
            "scaleY":1.5
         },this.§0"%§,§&"H§.§=>§);
         var _loc3_:§4[§ = §&"H§.§6!§.§>##§(_loc2_,this.§"""§);
         _loc3_.onComplete = this.§;T§;
         _loc3_.play();
      }
      
      private function §;T§() : void
      {
         if(this.§-"y§[0])
         {
            this.§9$?§ = true;
            this.§?!o§();
            this.§[#?§ = new Timer(200,1);
            this.§[#?§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2,§);
            this.§[#?§.start();
            this.§-"y§[0] = false;
         }
      }
      
      private function §2,§(param1:TimerEvent) : void
      {
         this.§[#?§ = null;
         this.§^!P§();
      }
      
      protected function §1#"§(param1:§ $A§) : void
      {
         if(this.§-"y§[1])
         {
            this.§-"y§[1] = false;
         }
         §-#+§.§6!§.§<"k§();
      }
      
      private function §!&§() : Object
      {
         return §2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.t && §2#s§.§6!§.§[#V§.t.players ? §2#s§.§6!§.§[#V§.t : null;
      }
      
      private function § V§() : Array
      {
         return §2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.t && §2#s§.§6!§.§[#V§.t.prizeCounts ? §2#s§.§6!§.§[#V§.t.prizeCounts : [0,0,0];
      }
      
      private function §3#4§() : void
      {
         var _loc6_:Object = null;
         var _loc7_:§9!m§ = null;
         var _loc8_:§9!m§ = null;
         var _loc9_:§9!m§ = null;
         this.mPlayerPreviousPositionInLeague = {};
         var _loc1_:MovieClip = §`!H§.getItemByName("LeagueFirst").mClip;
         _loc1_.gotoAndStop(this.§^"@§);
         var _loc2_:MovieClip = §`!H§.getItemByName("LeagueSecond").mClip;
         _loc2_.gotoAndStop(this.§^"@§);
         var _loc3_:MovieClip = §`!H§.getItemByName("LeagueNotPodium").mClip;
         _loc3_.gotoAndStop(this.§^"@§);
         var _loc4_:Object = §2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.l ? §2#s§.§6!§.§6m§ : §2#s§.§6!§.§[#V§;
         if(§2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.l)
         {
            _loc4_.lastResult = true;
         }
         else if(_loc4_)
         {
            _loc4_.lastResult = false;
         }
         this.mPreviousResult = _loc4_;
         if(!_loc4_ || !_loc4_.l || !_loc4_.l.p || !_loc4_.lastResult && §,"+§ == § "-§ && !_loc4_.l)
         {
            this.§ "J§(_loc4_);
            return;
         }
         var _loc5_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID;
         for each(_loc6_ in _loc4_.l.p)
         {
            if(_loc5_ == _loc6_.u)
            {
               this.mPlayerPreviousPositionInLeague = _loc6_;
               break;
            }
         }
         _loc7_ = this.§`"c§(1);
         _loc8_ = this.§`"c§(2);
         _loc9_ = this.§`"c§(3);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            _loc1_.gotoAndStop(this.§ !M§);
         }
         if(_loc7_)
         {
            this.§1!i§ = new §@"m§(_loc1_.getChildByName("AvatarImage") as MovieClip,_loc7_);
            §=#Q§.§0$,§(_loc1_.getChildByName("txtName") as TextField,_loc7_.userName,§`"6§);
         }
         var _loc10_:TextField;
         (_loc10_ = (_loc1_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[0] && _loc4_.l.p[0].c ? _loc4_.l.p[0].c.toString() : "0";
         _loc10_.visible = true;
         (_loc1_.getChildByName("AvatarImage") as MovieClip).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtName") as TextField).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtRank") as TextField).text = this.§?"$§(1);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 2)
         {
            _loc2_.gotoAndStop(this.§ !M§);
         }
         if(_loc8_)
         {
            this.§'!3§ = new §@"m§(_loc2_.getChildByName("AvatarImage") as MovieClip,_loc8_);
            §=#Q§.§0$,§(_loc2_.getChildByName("txtName") as TextField,_loc8_.userName,§`"6§);
         }
         (_loc10_ = (_loc2_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[1] && _loc4_.l.p[1].c ? _loc4_.l.p[1].c.toString() : "0";
         (_loc2_.getChildByName("AvatarImage") as MovieClip).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtName") as TextField).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtRank") as TextField).text = this.§?"$§(2);
         var _loc11_:Number = 2;
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r >= 3)
         {
            _loc3_.gotoAndStop(this.§ !M§);
            if(this.mPlayerPreviousPositionInLeague.r > 3)
            {
               _loc9_ = this.§`"c§(this.mPlayerPreviousPositionInLeague.r);
               _loc11_ = this.mPlayerPreviousPositionInLeague.r - 1;
            }
         }
         if(_loc9_)
         {
            §`!H§.getItemByName("LeagueNotPodium").setVisibility(true);
            this.§%$A§ = new §@"m§(_loc3_.getChildByName("AvatarImage") as MovieClip,_loc9_);
            §=#Q§.§0$,§(_loc3_.getChildByName("txtName") as TextField,_loc9_.userName,§`"6§);
            §`!H§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = true;
            §`!H§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = true;
            §`!H§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = true;
         }
         (_loc10_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].c ? _loc4_.l.p[_loc11_].c.toString() : "0";
         (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtName") as TextField).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtRank") as TextField).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].r ? this.§?"$§(_loc4_.l.p[_loc11_].r) : "";
         if(!_loc9_)
         {
            §`!H§.getItemByName("LeagueNotPodium").setVisibility(false);
            §`!H§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = false;
            §`!H§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = false;
            §`!H§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = false;
         }
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.c)
         {
            this.§7#F§[1] = this.mPlayerPreviousPositionInLeague.c;
            (§`!H§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = this.mPlayerPreviousPositionInLeague.c + "x";
            §`!H§.getItemByName("LeagueRewards").mClip.mcCoin.visible = true;
            if(§,!%§ == § "-§)
            {
               §`!H§.getItemByName("LeagueRewards").mClip.RewardShine.visible = true;
               if(§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.l && (!§2#s§.§6!§.§6m§ || !§2#s§.§6!§.§6m§.l))
               {
                  this.§!V§.stop();
               }
               else
               {
                  this.§!V§ = §&"H§.§6!§.§6C§(§`!H§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§4#O§,§&"H§.§-t§);
                  this.§!V§.onComplete = this.§?"Z§;
                  this.§!V§.play();
               }
            }
            else
            {
               §`!H§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
            }
         }
         else
         {
            (§`!H§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = "";
            §`!H§.getItemByName("LeagueRewards").mClip.mcCoin.visible = false;
            §`!H§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
         }
         this.§ "J§(_loc4_);
      }
      
      private function §'$A§(param1:Object, param2:Object) : Boolean
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
      
      private function §5!L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:TournamentResultSharePopUp = null;
         var _loc1_:Object = §2#s§.§6!§.§6m§.l;
         if(!(_loc1_ && _loc1_.pli && _loc1_.pli.tn == §?"z§.§%#>§.id))
         {
            if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r && this.mPlayerPreviousPositionInLeague.r == 1)
            {
               this.§^#q§ = this.LEAGUE_WIN;
               _loc2_ = this.§'$A§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
            else if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.p && this.mPlayerPreviousPositionInLeague.p == "u")
            {
               this.§^#q§ = this.§!0§;
               _loc2_ = this.§'$A§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.§^#q§ = this.§0"f§;
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
            else if(this.§5"^§ && this.§5"^§.r && this.§5"^§.r <= 3)
            {
               switch(this.§5"^§.r)
               {
                  case 1:
                     _loc3_ = §<#q§.TOURNAMENT_RESULT_SHARE_1ST_FRIENDS_HEADER;
                     _loc4_ = §<#q§.TOURNAMENT_RESULT_SHARE_1ST_FRIENDS_BODY;
                     _loc5_ = CASE_FRIENDS_1ST;
                     break;
                  case 2:
                     _loc3_ = §<#q§.TOURNAMENT_RESULT_SHARE_2ND_FRIENDS_HEADER;
                     _loc4_ = §<#q§.TOURNAMENT_RESULT_SHARE_2ND_FRIENDS_BODY;
                     _loc5_ = CASE_FRIENDS_2ND;
                     break;
                  case 3:
                     _loc3_ = §<#q§.TOURNAMENT_RESULT_SHARE_3RD_FRIENDS_HEADER;
                     _loc4_ = §<#q§.TOURNAMENT_RESULT_SHARE_3RD_FRIENDS_BODY;
                     _loc5_ = CASE_FRIENDS_3RD;
               }
               _loc6_ = new TournamentResultSharePopUp(§]"$§.§[#=§,§^"U§.TOP,_loc3_,_loc4_,_loc5_);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
            }
         }
      }
      
      private function §^# §() : void
      {
         var caseId:uint = 0;
         var fn:Function = null;
         switch(this.§^#q§)
         {
            case this.LEAGUE_WIN:
               caseId = §,#=§;
               break;
            case this.§0"f§:
               caseId = §@9§;
               break;
            case this.§!0§:
               caseId = CASE_STAR_PROMOTION;
         }
         fn = function(param1:String):void
         {
            var _loc2_:String = null;
            §^!K§.§,"i§("permissionRequestComplete",fn);
            if(param1 == "true")
            {
               mPromotionAnimation.stop();
               _loc2_ = §?"z§.§-M§(mPreviousResult.l.li.tn).name;
               §^!K§.§+"D§("shareTournamentResult",caseId,caseId == CASE_STAR_PROMOTION ? mPlayerPreviousPositionInLeague.s : _loc2_);
            }
         };
         §^!K§.addCallback("permissionRequestComplete",fn);
         §^!K§.§+"D§("askForPublishStreamPermission");
      }
      
      private function §?"$§(param1:int) : String
      {
         return param1 + ".";
      }
      
      private function §3$4§(param1:int) : §5$4§
      {
         var _loc3_:Object = null;
         var _loc4_:§,^§ = null;
         if(§,!%§ == §<"H§)
         {
            return this.§]"+§(param1);
         }
         var _loc2_:Object = §2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.t ? §2#s§.§6!§.§6m§.t : (§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.t ? §2#s§.§6!§.§[#V§.t : null);
         if(_loc2_)
         {
            if(_loc2_.players)
            {
               if(param1 <= _loc2_.players.length)
               {
                  _loc3_ = _loc2_.players[param1 - 1];
                  if(_loc3_)
                  {
                     if(_loc4_ = §4"I§.§2!K§(_loc3_.uid))
                     {
                        _loc3_.n = _loc4_.name;
                     }
                     return §5$4§.§+!@§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §]"+§(param1:int) : §5$4§
      {
         var _loc2_:Object = null;
         var _loc3_:§,^§ = null;
         if(§2#s§.§6!§.§[#V§ && §2#s§.§6!§.§[#V§.t)
         {
            if(§2#s§.§6!§.§[#V§.t.players)
            {
               if(param1 <= §2#s§.§6!§.§[#V§.t.players.length)
               {
                  _loc2_ = §2#s§.§6!§.§[#V§.t.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §4"I§.§2!K§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §5$4§.§+!@§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §`"c§(param1:int) : §9!m§
      {
         var _loc3_:Object = null;
         var _loc2_:Object = §2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.l ? §2#s§.§6!§.§6m§.l : §2#s§.§6!§.§[#V§.l;
         if(_loc2_)
         {
            if(_loc2_.p)
            {
               if(param1 <= _loc2_.p.length)
               {
                  _loc3_ = _loc2_.p[param1 - 1];
                  if(_loc3_)
                  {
                     return §9!m§.§+!@§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CLAIM":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               break;
            case "BACK":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               §1"h§(§=!L§.STATE_NAME);
               break;
            case "showCredits":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(§ !K§.STATE_NAME);
               break;
            default:
               if(this.mPromotionAnimation)
               {
                  this.mPromotionAnimation.onUIInteraction(param1,param2,param3);
               }
         }
      }
      
      override public function deActivate() : void
      {
         this.§9$?§ = false;
         super.deActivate();
         if(this.§?!Y§)
         {
            this.§?!Y§.dispose();
         }
         if(this.§9Y§)
         {
            this.§9Y§.dispose();
         }
         if(this.§!_§)
         {
            this.§!_§.dispose();
         }
         if(this.§7!2§)
         {
            this.§7!2§.dispose();
         }
         if(this.§^"$§)
         {
            this.§^"$§.dispose();
         }
         if(this.§'!3§)
         {
            this.§'!3§.dispose();
         }
         if(this.§1!i§)
         {
            this.§1!i§.dispose();
         }
         if(this.§%$A§)
         {
            this.§%$A§.dispose();
         }
         if(this.mPromotionAnimation)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
         }
         this.§8!3§(this.§&"K§);
         AngryBirdsBase.singleton.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§+#]§);
         AngryBirdsBase.singleton.stage.removeEventListener(Event.RESIZE,this.§3!4§);
         §!"p§.§5#u§(§1!^§);
         if(this.§[!l§)
         {
            §2#s§.§6!§.removeEventListener(§7#U§.§^i§,this.§,!5§);
         }
         else
         {
            §2#s§.§6!§.removeEventListener(§7#U§.§ !y§,this.§ "W§);
            §5`§.§6!§.removeEventListener(§1#e§.§&t§,this.§!#_§);
         }
         this.§`!r§();
         this.§ #_§();
         §2#s§.§6!§.removeEventListener(§7#U§.§5$+§,this.§&"5§);
         §2#s§.§6!§.§<!J§();
         if(this.§ -§)
         {
            this.§ -§.deActivate();
         }
      }
      
      private function §`!r§() : void
      {
         this.§%"E§ = null;
         this.§@"$§ = null;
         if(§`!H§ && §`!H§.contains(this.§1![§))
         {
            §`!H§.removeChild(this.§1![§);
         }
         if(§`!H§ && §`!H§.contains(this.§9!g§))
         {
            §`!H§.removeChild(this.§9!g§);
         }
         this.§1![§ = null;
         this.§9!g§ = null;
      }
      
      protected function §;#v§(param1:MouseEvent) : void
      {
      }
      
      protected function §,!5§(param1:§7#U§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:§+$"§ = null;
         if(param1.type == §7#U§.§^i§)
         {
            §2#s§.§6!§.removeEventListener(§7#U§.§^i§,this.§,!5§);
            if(param1.data.t)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.t.items;
               _loc4_ = param1.data.t.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §+$"§();
                  this.§-"y§[0] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §"G§.§6!@§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§2>§ = § try§.§5"=§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §-#+§.§6!§.§,"0§(param1.data.t,true,_loc2_);
            }
            if(param1.data.l)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.l.items;
               _loc4_ = param1.data.l.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §+$"§();
                  this.§-"y§[1] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §"G§.§6!@§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§2>§ = § try§.§^"&§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §-#+§.§6!§.§,"0§(param1.data.l,true,_loc2_);
               this.get = param1.data.l.items;
            }
            this.§2"K§ = true;
         }
      }
      
      protected function § "W§(param1:§7#U§) : void
      {
         var _loc2_:§+$"§ = null;
         if(param1.type == §7#U§.§ !y§)
         {
            _loc2_ = new §+$"§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§7#F§[1];
            _loc2_.currency = "IVC";
            _loc2_.§2>§ = "LEAGUE_REWARD";
            _loc2_.itemType = §"G§.§6!@§;
            §-#+§.§6!§.§,"0§(param1.data,false,[_loc2_]);
            this.§^!P§();
            §-#+§.§6!§.§<"k§();
         }
      }
      
      protected function §!#_§(param1:§1#e§) : void
      {
         var _loc2_:§+$"§ = null;
         var _loc3_:Array = null;
         if(param1.type == §1#e§.§&t§)
         {
            §`!H§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
            _loc2_ = new §+$"§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§7#F§[0];
            _loc2_.currency = "IVC";
            _loc2_.§2>§ = "TOURNAMENT_REWARD";
            _loc2_.itemType = §"G§.§6!@§;
            _loc3_ = [_loc2_];
            §-#+§.§6!§.§,"0§(param1.data,false,_loc3_);
            this.§?!o§();
            §-#+§.§6!§.§<"k§();
         }
      }
      
      protected function §&"5§(param1:§7#U§) : void
      {
         this.§3#4§();
      }
      
      private function §?!o§() : void
      {
         if(this.§%"E§)
         {
            this.§%"E§.reset();
            this.§%"E§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§<"0§);
            this.§%"E§ = null;
         }
         this.§%"E§ = new Timer(100,1);
         this.§%"E§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§<"0§);
         this.§%"E§.start();
      }
      
      protected function §<"0§(param1:TimerEvent) : void
      {
         var _loc2_:Point = null;
         if(this.§%"E§)
         {
            this.§%"E§.reset();
            this.§%"E§.removeEventListener(TimerEvent.TIMER,this.§<"0§);
            this.§%"E§ = null;
         }
         if(this.§9!g§)
         {
            this.§9!g§.txtRewardAmount.text = this.§7#F§[0] + " x";
         }
         this.§@$ § = §#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§;
         this.§&"K§.setCoinsAmountText(this.§@$ §);
         this.§&"K§.animateGotCoins(this.§7#F§[0]);
         if(this.§9!g§)
         {
            if(§`!H§ && §`!H§.contains(this.§9!g§))
            {
               §`!H§.removeChild(this.§9!g§);
            }
            this.§9!g§.scaleY = 0;
            this.§9!g§.scaleX = 0;
            _loc2_ = new Point(§`!H§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(§`!H§.getItemByName("FriendsRewards").mClip.width * 0.5,0)).x,§`!H§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§`!H§.getItemByName("FriendsRewards").mClip.height * 0.5)).y + 20);
            this.§!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§8$7§.§-"4§,§8$7§.§8#s§,§@#e§.§<"h§);
            §`!H§.addChild(this.§!$9§);
            this.§;!g§.push(this.§!$9§);
            this.§1"D§();
         }
      }
      
      private function §1"D§() : void
      {
         §`!H§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
         §`!H§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
         this.§ -§.§1"d§ = this.§3b§();
         this.§ -§.§2"f§ = this.§[!v§();
         this.§""a§(true);
      }
      
      private function §^!P§() : void
      {
         if(this.§@"$§)
         {
            this.§@"$§.reset();
            this.§@"$§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§-!§);
            this.§@"$§ = null;
         }
         this.§@"$§ = new Timer(100,1);
         this.§@"$§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-!§);
         this.§@"$§.start();
      }
      
      protected function §-!§(param1:TimerEvent) : void
      {
         if(this.§@"$§)
         {
            this.§@"$§.reset();
            this.§@"$§.removeEventListener(TimerEvent.TIMER,this.§-!§);
            this.§@"$§ = null;
         }
         this.§@$ § = §#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§;
         this.§&"K§.setCoinsAmountText(this.§@$ §);
         this.§&"K§.animateGotCoins(this.§7#F§[1]);
         if(this.§1![§)
         {
            this.§1![§.txtRewardAmount.text = this.§7#F§[1] + " x";
            if(§`!H§ && §`!H§.contains(this.§1![§))
            {
               §`!H§.removeChild(this.§1![§);
            }
            this.§1![§.scaleY = 0;
            this.§1![§.scaleX = 0;
         }
         var _loc2_:Point = new Point(§`!H§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(§`!H§.getItemByName("LeagueRewards").mClip.width * 0.5,0)).x,§`!H§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§`!H§.getItemByName("LeagueRewards").mClip.height * 0.5)).y + 20);
         if(§2#s§.§6!§.§6m§ && §2#s§.§6!§.§6m§.l)
         {
            this.§!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§8$7§.§-"4§,§8$7§.§8#s§,§@#e§.§<"h§);
            §`!H§.addChild(this.§!$9§);
            this.§;!g§.push(this.§!$9§);
            this.§6$#§();
         }
      }
      
      private function §6$#§() : void
      {
         §`!H§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
         §`!H§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
      }
      
      private function § #_§() : void
      {
         var _loc1_:§8$7§ = null;
         for each(_loc1_ in this.§;!g§)
         {
            if(§`!H§ && §`!H§.contains(_loc1_))
            {
               §`!H§.removeChild(_loc1_);
            }
            _loc1_.§,"I§();
         }
         this.§;!g§ = new Vector.<§8$7§>();
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §`!H§.getItemByName("walletContainer").mClip;
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
      
      private function §[!v§() : Number
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
      
      private function §3b§() : Number
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
      
      public function §""1§() : void
      {
         this.§;#x§();
      }
   }
}

import §%#w§.§?"z§;
import §3#T§.§'§;
import §3#T§.§@"!§;
import §<h§.§[#K§;
import §@!M§.§!"p§;
import com.rovio.assets.§!"f§;
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
   
   private var mComponent:§[#K§;
   
   private var mClip:MovieClip;
   
   private var _mRunning:Boolean;
   
   private var mSkipButton:§@"!§;
   
   private var mShareButton:§@"!§;
   
   private var mBadgeFrom:DisplayObjectContainer;
   
   private var mBadgeTo:DisplayObjectContainer;
   
   private var mActivePromotionSounds:Array;
   
   private var mNextLeagueTextToLowerBanner:String;
   
   function LeaguePromotionAnimation(param1:§[#K§)
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
      §!"p§.§5#u§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL);
      if(this.mActivePromotionSounds)
      {
         _loc1_ = 0;
         while(_loc1_ < this.mActivePromotionSounds.length)
         {
            §!"p§.§5#u§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc1_);
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
         this.mNextLeagueTextToLowerBanner = §?"z§.§`#A§.id;
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
         this.mNextLeagueTextToLowerBanner = §?"z§.§`#A§.id;
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
      var _loc3_:Class = §!"f§.§##?§(param1);
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
                     §!"p§.§5#4§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,1,0.8);
                     §!"p§.playSound(_loc3_.name,PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,int.MAX_VALUE);
                  }
                  else
                  {
                     §!"p§.playSound(_loc3_.name,PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,0);
                  }
                  _loc3_.started = true;
               }
            }
            else if(_loc3_.endFrame <= this.mClip.currentFrame)
            {
               §!"p§.§5#u§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_);
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
   
   private function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
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
      §!"p§.§5#4§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,this.mActivePromotionSounds.length,0.8);
   }
}
