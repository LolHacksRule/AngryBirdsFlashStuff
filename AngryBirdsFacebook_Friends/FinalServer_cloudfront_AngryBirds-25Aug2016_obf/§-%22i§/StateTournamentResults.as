package §-"i§
{
   import §!!G§.§0§;
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §#v§.§#!?§;
   import §%$!§.§%!2§;
   import §%$!§.§%h§;
   import §%$!§.§&!S§;
   import §%$!§.§+3§;
   import §%$!§.§8!t§;
   import §%$!§.§9$6§;
   import §%$!§.§=]§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §+"%§.§6X§;
   import §,!=§.§"$6§;
   import §,!=§.§7"S§;
   import §,"&§.§2!A§;
   import §,n§.§`"d§;
   import §0#d§.§<#u§;
   import §1!@§.§&#a§;
   import §2V§.§%#E§;
   import §3!B§.§9##§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §5"$§.§]!m§;
   import §6"r§.§0"<§;
   import §7g§.§4!q§;
   import §7g§.§4Q§;
   import §7g§.§`!b§;
   import §7z§.§2"U§;
   import §7z§.§7"m§;
   import §8§.§ ;§;
   import §8§.§#$+§;
   import §8§.§,#`§;
   import §8§.§7#!§;
   import §<!=§.§#!A§;
   import §<!=§.§`#w§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §<!g§.§&$1§;
   import §<!g§.§0$!§;
   import §>!#§.§-#A§;
   import §>"-§.§0K§;
   import §?"R§.TournamentResultSharePopUp;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§@`§;
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
   
   public class StateTournamentResults extends §7"S§ implements §@#@§, §@J§
   {
      
      public static const STATE_NAME:String = "StateTournamentResults";
      
      private static const §2#0§:int = 370;
      
      public static const §#"8§:int = 1;
      
      public static const §3!i§:int = 2;
      
      private static var §[!>§:int = 1;
      
      private static var §>#d§:Boolean;
      
      public static var §7#=§:Boolean = false;
      
      public static const §>#]§:uint = 1;
      
      public static const §0!S§:uint = 2;
      
      public static const CASE_STAR_PROMOTION:uint = 3;
      
      public static const CASE_FRIENDS_1ST:uint = 4;
      
      public static const CASE_FRIENDS_2ND:uint = 5;
      
      public static const CASE_FRIENDS_3RD:uint = 6;
       
      
      private var §8!m§:§&!S§;
      
      private var §^R§:§4Q§;
      
      private var §>;§:§4Q§;
      
      private var §%k§:§4Q§;
      
      private var §6!9§:§4Q§;
      
      private var §1b§:§4Q§;
      
      private var §0!1§:§4Q§;
      
      private var §,#"§:§4Q§;
      
      private var §,!#§:§4Q§;
      
      protected var §<#s§:Font;
      
      private var §+!v§:§2!A§;
      
      private const §'R§:String = "ACTIVE";
      
      private const §>"4§:String = "INACTIVE";
      
      private var §>!0§:Boolean = true;
      
      private var §'"9§:MovieClip;
      
      private var §5"_§:MovieClip;
      
      private var §!#5§:Array;
      
      protected var §^!F§:§#!A§;
      
      protected var §'#X§:Vector.<§#!A§>;
      
      private var §8!]§:Number;
      
      private var §"!b§:Timer;
      
      private var § #W§:Timer;
      
      private var §2"'§:Class;
      
      private var §[#D§:MovieClip;
      
      private var §`#b§:MovieClip;
      
      private var §`#!§:Array;
      
      private var §^m§:Wallet;
      
      private var §`#n§:Number;
      
      private var §]!c§:§+,§;
      
      private var §"W§:§+,§;
      
      private var §>y§:Object;
      
      private var mPlayerPreviousPositionInLeague:Object;
      
      private var §6"d§:§+,§;
      
      private var § i§:Array;
      
      private var §6$7§:Array;
      
      private var mPreviousResult:Object = null;
      
      private var §?>§:Boolean = false;
      
      private var §3%§:Number = 0.2;
      
      private var §8m§:Number = 0.2;
      
      private var §3!X§:Boolean;
      
      private var §3"§:Number = 0.2;
      
      private var §1! §:Number = 1.2;
      
      private var §=A§:Number = 20.0;
      
      private var LEAGUE_WIN:uint = 1;
      
      private var §1!`§:uint = 2;
      
      private var §+!n§:uint = 3;
      
      private var §`4§:uint;
      
      private var §+!7§:Object;
      
      private var §&#0§:Array;
      
      private var mPromotionAnimation:LeaguePromotionAnimation;
      
      private var §`#R§:Timer;
      
      public function StateTournamentResults(param1:§#!?§, param2:Boolean, param3:§]#[§)
      {
         this.§<#s§ = new AngryBirdsFont();
         this.§!#5§ = [0,0.25,0.5,0.75,1];
         this.§`#!§ = [0,0];
         this.§6$7§ = [false,false];
         super(param1,param2,STATE_NAME,param3);
      }
      
      public static function get §0$$§() : int
      {
         return §[!>§;
      }
      
      public static function set §0$$§(param1:int) : void
      {
         §[!>§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§2"'§ = §@`§.§4!i§("GiftCarousel");
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_Tournament_Results[0]);
         this.§+!v§ = new §2!A§(§!$§);
         this.§5"_§ = §!$§.getItemByName("FriendsResult").mClip;
         this.§'"9§ = §!$§.getItemByName("LeaguesResult").mClip;
      }
      
      private function §6!b§(param1:Boolean = false) : void
      {
         this.§+!v§.removeEventListener(§0$!§.§!0§,this.§2!G§);
         this.§+!v§.addEventListener(§0$!§.§!0§,this.§2!G§);
         this.§+!v§.§5#X§(this.mPreviousResult,§[!>§,param1);
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§7#!§ = null;
         var _loc3_:§,#`§ = null;
         super.activate(param1);
         (§>"$§.§<_§ as §8G§).§&#§.§`"n§(!§4!q§.§3!]§.active);
         this.§5">§();
         this.§!d§();
         this.§,>§();
         this.§!#D§();
         this.§#T§();
         this.§,#[§();
         this.§2!8§();
         this.§;Z§();
         this.§!"K§();
         this.§];§();
         this.§&!-§();
         this.§4!?§();
         this.§6!b§();
         this.§ #e§();
         this.§&"+§();
         this.§<n§();
         this.§6$7§ = [false,false];
         this.§?>§ = false;
         this.§3!X§ = false;
         if(§[!>§ == §#"8§ && (§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.l || §4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.t))
         {
            §4!q§.§3!]§.§[c§();
            §#$+§.playSound("Sound_BirdsApplause");
            _loc2_ = §#$+§.§#!C§("Channel_Theme");
            if(_loc2_.§^7§ <= 0)
            {
               _loc3_ = §8G§.§%#S§.§[A§();
               _loc3_.§6x§(§ ;§.§0e§);
            }
         }
         §!$§.getItemByName("loadingResults").setVisibility(false);
         AngryBirdsBase.singleton.playThemeMusic();
         this.§9!f§();
      }
      
      private function §9!f§() : void
      {
         var _loc3_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = false;
         var _loc11_:* = false;
         if(§0$$§ != §#"8§)
         {
            return;
         }
         var _loc1_:Object = §4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.t && §4!q§.§3!]§.§=$#§.t.players ? §4!q§.§3!]§.§=$#§.t : this.§'"6§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         for each(_loc6_ in _loc1_.players)
         {
            if(_loc6_.uid == _loc2_)
            {
               _loc3_ = _loc6_;
            }
            else if(_loc6_.uid == §`"d§.BIRD_BOT_1)
            {
               _loc4_ = _loc6_.p;
            }
            if(_loc6_.uid == §`"d§.BIRD_BOT_2)
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
            §-#A§.§6$2§().§9!A§(_loc7_,_loc8_,_loc10_,_loc11_,_loc1_.players.length,_loc3_.r,_loc3_.p,_loc9_);
         }
      }
      
      private function §&"+§() : void
      {
         if(this.mPromotionAnimation == null)
         {
            this.mPromotionAnimation = new LeaguePromotionAnimation(§0"<§(§!$§.getItemByName("Promotion_Main_Anim")));
         }
         this.mPromotionAnimation.activate();
      }
      
      private function §4!?§() : void
      {
         var _loc1_:Number = this.§6#p§();
         var _loc2_:Number = this.§<#2§();
         if(this.§+!v§)
         {
            this.§+!v§.§ !i§ = _loc1_;
            this.§+!v§.§]"l§ = _loc2_;
         }
      }
      
      private function §<n§() : void
      {
         this.§%#,§(new Wallet(this,true,false));
         this.§^m§.§<c§.visible = §[!>§ == §#"8§ && (§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.l || §4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.t);
         this.§^m§.§<c§.scaleX = this.§^m§.§<c§.scaleY = 1.3;
         this.§`#n§ = §+3§(§8G§.§%#S§.dataModel).§<$&§.§[#u§;
         this.§^m§.§9"'§(this.§`#n§);
      }
      
      private function §!#D§() : void
      {
         §!$§.setText("" + §4!q§.§3!]§.bronzeTrophies,"BronzeTrophiesTextfield");
         §!$§.setText("" + §4!q§.§3!]§.silverTrophies,"SilverTrophiesTextfield");
         §!$§.setText("" + §4!q§.§3!]§.goldTrophies,"GoldTrophiesTextfield");
         this.§ i§ = new Array();
         this.§ i§.push(§4!q§.§3!]§.goldTrophies);
         this.§ i§.push(§4!q§.§3!]§.silverTrophies);
         this.§ i§.push(§4!q§.§3!]§.bronzeTrophies);
      }
      
      private function §!"K§() : void
      {
         AngryBirdsBase.singleton.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§`E§);
         AngryBirdsBase.singleton.stage.addEventListener(Event.RESIZE,this.§'"'§);
         if(this.§>!0§)
         {
            §4!q§.§3!]§.addEventListener(§&$1§.§>#t§,this.§!`§);
         }
         else
         {
            §]!m§.§3!]§.addEventListener(§0#3§.§2!U§,this.§""w§);
            §4!q§.§3!]§.addEventListener(§&$1§.§7s§,this.§&"W§);
         }
         §4!q§.§3!]§.addEventListener(§&$1§.§@K§,this.§6#_§);
      }
      
      private function §!d§() : void
      {
         this.§8!m§ = new §&!S§();
         this.§8!m§.first = this.§`#<§(1);
         this.§8!m§.second = this.§`#<§(2);
         this.§8!m§.§;m§ = this.§`#<§(3);
         this.§8!m§.§5§ = this.§`#<§(4);
         §!$§.getItemByName("FriendsFirst").mClip.gotoAndStop(0);
         §!$§.getItemByName("FriendsSecond").mClip.gotoAndStop(0);
         §!$§.getItemByName("FriendsThird").mClip.gotoAndStop(0);
         §!$§.getItemByName("LeagueFirst").mClip.gotoAndStop(0);
         §!$§.getItemByName("LeagueSecond").mClip.gotoAndStop(0);
         §!$§.getItemByName("LeagueNotPodium").mClip.gotoAndStop(0);
      }
      
      private function §5">§() : void
      {
         §!$§.getItemByName("loadingResults").setVisibility(true);
         §!$§.getItemByName("loadingResults").goToFrame(1,true);
         §!$§.getItemByName("Banner_LastWeek").setVisibility(§[!>§ == §3!i§);
         §!$§.getItemByName("Button_Back").setVisibility(§[!>§ == §3!i§);
         if(AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN || AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
         {
            §>#d§ = true;
         }
      }
      
      private function §,>§() : void
      {
         this.§'#X§ = new Vector.<§#!A§>();
         this.§[#D§ = new this.§2"'§();
         this.§`#b§ = new this.§2"'§();
         this.§"W§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§=A§,§""Z§.§?!Y§);
         this.§]!c§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§=A§,§""Z§.§?!Y§);
      }
      
      private function §<"§() : void
      {
         this.§"W§ = null;
         this.§"W§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§=A§,§""Z§.§?!Y§);
         this.§"W§.onComplete = this.§<"§;
         this.§"W§.play();
      }
      
      private function §,=§() : void
      {
         this.§]!c§ = null;
         this.§]!c§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§=A§,§""Z§.§?!Y§);
         this.§]!c§.onComplete = this.§,=§;
         this.§]!c§.play();
      }
      
      private function §2!8§() : void
      {
         if(§[!>§ == §3!i§)
         {
            if(§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.t)
            {
               §!$§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
            }
            if(§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.l)
            {
               §!$§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
            }
         }
         else
         {
            §!$§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
            §!$§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         }
      }
      
      private function §#`§() : void
      {
         §!$§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §!$§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §!$§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
         §!$§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
      }
      
      private function §;Z§() : void
      {
         §!$§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = false;
         §!$§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = false;
         §!$§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = true;
         §!$§.getItemByName("LeagueFirst").setVisibility(true);
         §!$§.getItemByName("LeagueSecond").setVisibility(true);
         §!$§.getItemByName("LeagueNotPodium").setVisibility(true);
      }
      
      private function §2!J§() : void
      {
         §!$§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         §!$§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = true;
         §!$§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.text = "Complete any level in the weekly tournament to join a league!";
         §!$§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = true;
         §!$§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = false;
         §!$§.getItemByName("LeagueFirst").setVisibility(false);
         §!$§.getItemByName("LeagueSecond").setVisibility(false);
         §!$§.getItemByName("LeagueNotPodium").setVisibility(false);
         §7#=§ = true;
      }
      
      private function §,#[§() : void
      {
         §!$§.getItemByName("LeagueRewards").mClip.btnClaimLeagueReward.visible = false;
         §!$§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
      }
      
      protected function §'"'§(param1:Event) : void
      {
         §>#d§ = true;
      }
      
      protected function §`E§(param1:FullScreenEvent) : void
      {
         §>#d§ = true;
      }
      
      private function §6"0§() : void
      {
         this.§5"_§.x = §>"$§.§="§() * this.§!#5§[1] - this.§5"_§.width * 0.5;
         this.§'"9§.x = §>"$§.§="§() * this.§!#5§[3] - this.§'"9§.width * 0.5;
         this.§[#D§.x = §!$§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§[#D§.y = §!$§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§!$§.getItemByName("FriendsRewards").mClip.height * 0.5)).y;
         this.§`#b§.x = §!$§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§`#b§.y = §!$§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§!$§.getItemByName("LeagueRewards").mClip.height * 0.5)).y;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:§#!A§ = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:uint = 0;
         super.update(param1);
         if(this.§+!7§ && !this.mPromotionAnimation.running)
         {
            for each(_loc4_ in this.§+!7§)
            {
               for each(_loc5_ in §%#E§.§ !B§)
               {
                  if(_loc5_[§%#E§.§-!E§].toUpperCase() == _loc4_.i.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new §%#E§(_loc5_[§%#E§.§-!E§],§%#E§.§ !F§));
                  }
               }
            }
            this.§+!7§ = null;
         }
         if(§[!>§ == §#"8§)
         {
            if(§7#=§)
            {
               if(!AngryBirdsBase.singleton.popupManager.§5"'§())
               {
                  §7#=§ = false;
                  §!$§.getItemByName("Button_Back").setVisibility(true);
                  this.§&#n§();
               }
            }
         }
         if(this.mPromotionAnimation && this.mPromotionAnimation.running)
         {
            if((_loc6_ = this.mPromotionAnimation.update()) == LeaguePromotionAnimation.ACTION_SHARE)
            {
               this.§"n§();
            }
            else if(_loc6_ == LeaguePromotionAnimation.ACTION_SKIP)
            {
               this.mPromotionAnimation.stop();
            }
         }
         if(this.§?>§)
         {
            this.§?>§ = false;
            if(!this.§3!X§)
            {
               this.§@!g§();
            }
         }
         if(!this.§+!v§.§"#Z§() || §>#d§)
         {
            §>#d§ = false;
         }
         if(this.§+!v§)
         {
            this.§+!v§.update(param1);
         }
         var _loc2_:Number = getTimer() - this.§8!]§;
         this.§8!]§ = getTimer();
         for each(_loc3_ in this.§'#X§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function § #e§() : void
      {
         var _loc5_:§9$6§ = null;
         var _loc6_:Object = null;
         var _loc7_:§2"U§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         if(§[!>§ == §#"8§)
         {
            if(!§4!q§.§3!]§.§=$#§ || §4!q§.§3!]§.§=$#§.t && !§4!q§.§3!]§.§=$#§.t.players)
            {
               (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§^c§,_loc1_);
               return;
            }
         }
         else if(!§4!q§.§3!]§.§;"c§ || §4!q§.§3!]§.§;"c§.t && !§4!q§.§3!]§.§;"c§.t.players)
         {
            (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§^c§,_loc1_);
            return;
         }
         var _loc4_:Object = null;
         if(§[!>§ == §#"8§)
         {
            if(§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.t && §4!q§.§3!]§.§=$#§.t.players)
            {
               _loc4_ = §4!q§.§3!]§.§=$#§.t.players;
            }
         }
         else if(§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.t && §4!q§.§3!]§.§;"c§.t.players)
         {
            _loc4_ = §4!q§.§3!]§.§;"c§.t.players;
         }
         if(_loc4_)
         {
            for each(_loc6_ in _loc4_)
            {
               _loc6_.c = _loc6_.r - 1 < this.§&#0§.length ? this.§&#0§[_loc6_.r - 1] : this.§&#0§[this.§&#0§.length - 1];
               _loc5_ = §8!t§.§>!§(_loc6_);
               if(§8!t§(_loc5_) != null)
               {
                  §8!t§(_loc5_).§+"t§ = "";
               }
               if(_loc7_ = §7"m§.§;#F§(_loc6_.uid))
               {
                  _loc5_.userName = _loc7_.name;
               }
               _loc1_.push(_loc5_);
            }
         }
         if(§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.l && §4!q§.§3!]§.§=$#§.l.p)
         {
            for each(_loc6_ in §4!q§.§3!]§.§=$#§.l.p)
            {
               _loc5_ = §%!2§.§>!§(_loc6_);
               _loc3_.push(_loc5_);
            }
         }
         if(§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.l && §4!q§.§3!]§.§;"c§.l.p)
         {
            for each(_loc6_ in §4!q§.§3!]§.§;"c§.l.p)
            {
               _loc5_ = §%!2§.§>!§(_loc6_);
               _loc2_.push(_loc5_);
            }
         }
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§^c§,_loc1_);
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§5#n§,_loc2_);
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§3b§,_loc3_);
      }
      
      private function § #i§(param1:Object = null) : void
      {
         if(!param1 || !param1.l)
         {
            this.§2!J§();
         }
         else
         {
            this.§;Z§();
         }
      }
      
      private function §#T§() : void
      {
         this.§&#0§ = §0$$§ == §#"8§ ? (§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.t && §4!q§.§3!]§.§=$#§.t.prizeCounts ? §4!q§.§3!]§.§=$#§.t.prizeCounts : this.§@=§()) : this.§@=§();
      }
      
      private function §];§() : void
      {
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:§8!t§ = null;
         this.§>y§ = {};
         var _loc1_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID;
         var _loc2_:Object = §0$$§ == §#"8§ ? (§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.t && §4!q§.§3!]§.§=$#§.t.players ? §4!q§.§3!]§.§=$#§.t : this.§'"6§()) : this.§'"6§();
         if(_loc2_)
         {
            for each(_loc7_ in _loc2_.players)
            {
               if(_loc1_ == _loc7_.uid)
               {
                  this.§>y§ = _loc7_;
                  break;
               }
            }
            var _loc3_:MovieClip = §!$§.getItemByName("FriendsFirst").mClip;
            _loc3_.gotoAndStop(this.§>"4§);
            if(this.§>y§ && this.§>y§.r == 1)
            {
               _loc3_.gotoAndStop(this.§'R§);
            }
            if(this.§8!m§.first)
            {
               this.§^R§ = new §4Q§(_loc3_.getChildByName("AvatarImage") as MovieClip,this.§8!m§.first);
               §&#a§.§^E§(_loc3_.getChildByName("txtName") as TextField,this.§8!m§.first.userName,§2#0§);
            }
            var _loc4_:TextField;
            (_loc4_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = this.§&#0§[0].toString();
            (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = this.§8!m§.first != null;
            (_loc3_.getChildByName("txtName") as TextField).visible = this.§8!m§.first != null;
            var _loc5_:MovieClip;
            (_loc5_ = §!$§.getItemByName("FriendsSecond").mClip).gotoAndStop(this.§>"4§);
            if(this.§>y§ && this.§>y§.r == 2)
            {
               _loc5_.gotoAndStop(this.§'R§);
            }
            if(this.§8!m§.second)
            {
               this.§>;§ = new §4Q§(_loc5_.getChildByName("AvatarImage") as MovieClip,this.§8!m§.second);
               §&#a§.§^E§(_loc5_.getChildByName("txtName") as TextField,this.§8!m§.second.userName,§2#0§);
            }
            (_loc4_ = (_loc5_.getChildByName("rewardText") as MovieClip).text).text = this.§&#0§[1].toString();
            (_loc5_.getChildByName("AvatarImage") as MovieClip).visible = this.§8!m§.second != null;
            (_loc5_.getChildByName("txtName") as TextField).visible = this.§8!m§.second != null;
            var _loc6_:MovieClip;
            (_loc6_ = §!$§.getItemByName("FriendsThird").mClip).gotoAndStop(this.§>"4§);
            if(this.§>y§ && this.§>y§.r == 3)
            {
               _loc6_.gotoAndStop(this.§'R§);
            }
            if(this.§8!m§.§;m§)
            {
               this.§%k§ = new §4Q§(_loc6_.getChildByName("AvatarImage") as MovieClip,this.§8!m§.§;m§);
               §&#a§.§^E§(_loc6_.getChildByName("txtName") as TextField,this.§8!m§.§;m§.userName,§2#0§);
            }
            (_loc4_ = (_loc6_.getChildByName("rewardText") as MovieClip).text).text = this.§&#0§[2].toString();
            (_loc6_.getChildByName("AvatarImage") as MovieClip).visible = this.§8!m§.§;m§ != null;
            (_loc6_.getChildByName("txtName") as TextField).visible = this.§8!m§.§;m§ != null;
            if(this.§>y§ && this.§>y§.r)
            {
               if((_loc8_ = this.§>y§.r - 1) >= 3)
               {
                  _loc8_ = 3;
                  _loc6_.gotoAndStop(this.§'R§);
                  (_loc6_.getChildByName("txtRank") as TextField).visible = true;
                  (_loc6_.getChildByName("txtRank") as TextField).text = this.§=!p§(this.§>y§.r);
                  _loc6_.getChildByName("mcTrophyBronze").visible = false;
                  if(_loc9_ = this.§`#<§(this.§>y§.r))
                  {
                     this.§%k§ = new §4Q§(_loc6_.getChildByName("AvatarImage") as MovieClip,_loc9_);
                     §&#a§.§^E§(_loc6_.getChildByName("txtName") as TextField,_loc9_.userName,§2#0§);
                     _loc4_.text = this.§&#0§[_loc8_];
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
                  _loc4_.text = this.§&#0§[_loc8_];
               }
               (§!$§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = this.§&#0§[_loc8_] + "x";
               this.§`#!§[0] = this.§&#0§[_loc8_];
               §!$§.getItemByName("FriendsRewards").mClip.mcCoin.visible = true;
               if(§0$$§ == §#"8§)
               {
                  §!$§.getItemByName("FriendsRewards").mClip.RewardShine.visible = true;
                  if(§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.t && (!§4!q§.§3!]§.§=$#§ || !§4!q§.§3!]§.§=$#§.t))
                  {
                     this.§"W§.stop();
                  }
                  else
                  {
                     this.§"W§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§=A§,§""Z§.§?!Y§);
                     this.§"W§.onComplete = this.§<"§;
                     this.§"W§.play();
                  }
               }
               else
               {
                  §!$§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
               }
            }
            else
            {
               (§!$§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = "";
               §!$§.getItemByName("FriendsRewards").mClip.mcCoin.visible = false;
               §!$§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
            }
            return;
         }
      }
      
      private function §@!g§() : void
      {
         var _loc1_:MovieClip = null;
         if(§0$$§ == §#"8§ && (this.§>y§ && this.§>y§.r >= 1 && this.§>y§.r <= 3))
         {
            _loc1_ = this.§>y§ && this.§>y§.r == 1 ? §!$§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§>y§ && this.§>y§.r == 2 ? §!$§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §!$§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
            _loc1_.visible = true;
            _loc1_.parent.setChildIndex(_loc1_,_loc1_.parent.numChildren - 1);
            if(this.§6"d§)
            {
               this.§6"d§.stop();
               this.§6"d§ = null;
            }
            this.§6"d§ = §""Z§.§3!]§.§5"0§(_loc1_,{
               "scaleX":1.5,
               "scaleY":1.5
            },{
               "scaleX":1,
               "scaleY":1
            },this.§3%§,§""Z§.§8O§,this.§8m§);
            this.§6"d§.onComplete = this.§5[§;
            this.§6"d§.play();
            §#$+§.playSound("Get_Coins",§#$+§.§'!o§);
         }
         else if(§0$$§ == §#"8§ && !this.§3!X§)
         {
            this.§'!L§();
         }
      }
      
      private function §5[§() : void
      {
         if(this.§6"d§)
         {
            this.§6"d§.stop();
            this.§6"d§ = null;
         }
         if(this.§>y§)
         {
            if(this.§>y§.r == 1)
            {
               §!$§.setText("" + (this.§ i§[0] + 1),"GoldTrophiesTextfield");
            }
            if(this.§>y§.r == 2)
            {
               §!$§.setText("" + (this.§ i§[1] + 1),"SilverTrophiesTextfield");
            }
            if(this.§>y§.r == 3)
            {
               §!$§.setText("" + (this.§ i§[2] + 1),"BronzeTrophiesTextfield");
            }
         }
         var _loc1_:MovieClip = this.§>y§.r == 1 ? §!$§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§>y§.r == 2 ? §!$§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §!$§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
         var _loc2_:§+,§ = §""Z§.§3!]§.§5"0§(_loc1_,{"scaleX":1.5},null,0.1);
         this.§6"d§ = §""Z§.§3!]§.§5"0§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.5,
            "scaleY":1.5
         },this.§3%§,§""Z§.§8O§);
         var _loc3_:§+,§ = §""Z§.§3!]§.§[#h§(_loc2_,this.§6"d§);
         _loc3_.onComplete = this.§'!L§;
         _loc3_.play();
      }
      
      private function §'!L§() : void
      {
         if(this.§6$7§[0])
         {
            this.§3!X§ = true;
            this.§&"l§();
            this.§`#R§ = new Timer(200,1);
            this.§`#R§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§6!4§);
            this.§`#R§.start();
            this.§6$7§[0] = false;
         }
      }
      
      private function §6!4§(param1:TimerEvent) : void
      {
         this.§`#R§ = null;
         this.§?!]§();
      }
      
      protected function §2!G§(param1:§0$!§) : void
      {
         if(this.§6$7§[1])
         {
            this.§6$7§[1] = false;
         }
         §%h§.§3!]§.§=L§();
      }
      
      private function §'"6§() : Object
      {
         return §4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.t && §4!q§.§3!]§.§;"c§.t.players ? §4!q§.§3!]§.§;"c§.t : null;
      }
      
      private function §@=§() : Array
      {
         return §4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.t && §4!q§.§3!]§.§;"c§.t.prizeCounts ? §4!q§.§3!]§.§;"c§.t.prizeCounts : [0,0,0];
      }
      
      private function §&!-§() : void
      {
         var _loc6_:Object = null;
         var _loc7_:§%!2§ = null;
         var _loc8_:§%!2§ = null;
         var _loc9_:§%!2§ = null;
         this.mPlayerPreviousPositionInLeague = {};
         var _loc1_:MovieClip = §!$§.getItemByName("LeagueFirst").mClip;
         _loc1_.gotoAndStop(this.§>"4§);
         var _loc2_:MovieClip = §!$§.getItemByName("LeagueSecond").mClip;
         _loc2_.gotoAndStop(this.§>"4§);
         var _loc3_:MovieClip = §!$§.getItemByName("LeagueNotPodium").mClip;
         _loc3_.gotoAndStop(this.§>"4§);
         var _loc4_:Object = §4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.l ? §4!q§.§3!]§.§=$#§ : §4!q§.§3!]§.§;"c§;
         if(§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.l)
         {
            _loc4_.lastResult = true;
         }
         else if(_loc4_)
         {
            _loc4_.lastResult = false;
         }
         this.mPreviousResult = _loc4_;
         if(!_loc4_ || !_loc4_.l || !_loc4_.l.p || !_loc4_.lastResult && §[!>§ == §#"8§ && !_loc4_.l)
         {
            this.§ #i§(_loc4_);
            return;
         }
         var _loc5_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID;
         for each(_loc6_ in _loc4_.l.p)
         {
            if(_loc5_ == _loc6_.u)
            {
               this.mPlayerPreviousPositionInLeague = _loc6_;
               break;
            }
         }
         _loc7_ = this.§@E§(1);
         _loc8_ = this.§@E§(2);
         _loc9_ = this.§@E§(3);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            _loc1_.gotoAndStop(this.§'R§);
         }
         if(_loc7_)
         {
            this.§1b§ = new §4Q§(_loc1_.getChildByName("AvatarImage") as MovieClip,_loc7_);
            §&#a§.§^E§(_loc1_.getChildByName("txtName") as TextField,_loc7_.userName,§2#0§);
         }
         var _loc10_:TextField;
         (_loc10_ = (_loc1_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[0] && _loc4_.l.p[0].c ? _loc4_.l.p[0].c.toString() : "0";
         _loc10_.visible = true;
         (_loc1_.getChildByName("AvatarImage") as MovieClip).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtName") as TextField).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtRank") as TextField).text = this.§=!p§(1);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 2)
         {
            _loc2_.gotoAndStop(this.§'R§);
         }
         if(_loc8_)
         {
            this.§0!1§ = new §4Q§(_loc2_.getChildByName("AvatarImage") as MovieClip,_loc8_);
            §&#a§.§^E§(_loc2_.getChildByName("txtName") as TextField,_loc8_.userName,§2#0§);
         }
         (_loc10_ = (_loc2_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[1] && _loc4_.l.p[1].c ? _loc4_.l.p[1].c.toString() : "0";
         (_loc2_.getChildByName("AvatarImage") as MovieClip).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtName") as TextField).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtRank") as TextField).text = this.§=!p§(2);
         var _loc11_:Number = 2;
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r >= 3)
         {
            _loc3_.gotoAndStop(this.§'R§);
            if(this.mPlayerPreviousPositionInLeague.r > 3)
            {
               _loc9_ = this.§@E§(this.mPlayerPreviousPositionInLeague.r);
               _loc11_ = this.mPlayerPreviousPositionInLeague.r - 1;
            }
         }
         if(_loc9_)
         {
            §!$§.getItemByName("LeagueNotPodium").setVisibility(true);
            this.§,!#§ = new §4Q§(_loc3_.getChildByName("AvatarImage") as MovieClip,_loc9_);
            §&#a§.§^E§(_loc3_.getChildByName("txtName") as TextField,_loc9_.userName,§2#0§);
            §!$§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = true;
            §!$§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = true;
            §!$§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = true;
         }
         (_loc10_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].c ? _loc4_.l.p[_loc11_].c.toString() : "0";
         (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtName") as TextField).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtRank") as TextField).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].r ? this.§=!p§(_loc4_.l.p[_loc11_].r) : "";
         if(!_loc9_)
         {
            §!$§.getItemByName("LeagueNotPodium").setVisibility(false);
            §!$§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = false;
            §!$§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = false;
            §!$§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = false;
         }
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.c)
         {
            this.§`#!§[1] = this.mPlayerPreviousPositionInLeague.c;
            (§!$§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = this.mPlayerPreviousPositionInLeague.c + "x";
            §!$§.getItemByName("LeagueRewards").mClip.mcCoin.visible = true;
            if(§0$$§ == §#"8§)
            {
               §!$§.getItemByName("LeagueRewards").mClip.RewardShine.visible = true;
               if(§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.l && (!§4!q§.§3!]§.§=$#§ || !§4!q§.§3!]§.§=$#§.l))
               {
                  this.§]!c§.stop();
               }
               else
               {
                  this.§]!c§ = §""Z§.§3!]§.§5"0§(§!$§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§=A§,§""Z§.§?!Y§);
                  this.§]!c§.onComplete = this.§,=§;
                  this.§]!c§.play();
               }
            }
            else
            {
               §!$§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
            }
         }
         else
         {
            (§!$§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = "";
            §!$§.getItemByName("LeagueRewards").mClip.mcCoin.visible = false;
            §!$§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
         }
         this.§ #i§(_loc4_);
      }
      
      private function §+"8§(param1:Object, param2:Object) : Boolean
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
      
      private function §&#n§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:TournamentResultSharePopUp = null;
         var _loc1_:Object = §4!q§.§3!]§.§=$#§.l;
         if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            this.§`4§ = this.LEAGUE_WIN;
            _loc2_ = this.§+"8§(_loc1_,this.mPlayerPreviousPositionInLeague);
            if(!_loc2_)
            {
               this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
            }
         }
         else if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.p && this.mPlayerPreviousPositionInLeague.p == "u")
         {
            this.§`4§ = this.§+!n§;
            _loc2_ = this.§+"8§(_loc1_,this.mPlayerPreviousPositionInLeague);
            if(!_loc2_)
            {
               this.§`4§ = this.§1!`§;
               this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
            }
         }
         else if(this.§>y§ && this.§>y§.r && this.§>y§.r <= 3)
         {
            switch(this.§>y§.r)
            {
               case 1:
                  _loc3_ = §0K§.TOURNAMENT_RESULT_SHARE_1ST_FRIENDS_HEADER;
                  _loc4_ = §0K§.TOURNAMENT_RESULT_SHARE_1ST_FRIENDS_BODY;
                  _loc5_ = CASE_FRIENDS_1ST;
                  break;
               case 2:
                  _loc3_ = §0K§.TOURNAMENT_RESULT_SHARE_2ND_FRIENDS_HEADER;
                  _loc4_ = §0K§.TOURNAMENT_RESULT_SHARE_2ND_FRIENDS_BODY;
                  _loc5_ = CASE_FRIENDS_2ND;
                  break;
               case 3:
                  _loc3_ = §0K§.TOURNAMENT_RESULT_SHARE_3RD_FRIENDS_HEADER;
                  _loc4_ = §0K§.TOURNAMENT_RESULT_SHARE_3RD_FRIENDS_BODY;
                  _loc5_ = CASE_FRIENDS_3RD;
            }
            _loc6_ = new TournamentResultSharePopUp(§[W§.§5Z§,§<d§.TOP,_loc3_,_loc4_,_loc5_);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
         }
      }
      
      private function §"n§() : void
      {
         var caseId:uint = 0;
         var fn:Function = null;
         switch(this.§`4§)
         {
            case this.LEAGUE_WIN:
               caseId = §>#]§;
               break;
            case this.§1!`§:
               caseId = §0!S§;
               break;
            case this.§+!n§:
               caseId = CASE_STAR_PROMOTION;
         }
         fn = function(param1:String):void
         {
            var _loc2_:String = null;
            §6X§.§5!3§("permissionRequestComplete",fn);
            if(param1 == "true")
            {
               mPromotionAnimation.stop();
               _loc2_ = §`!b§.§"!I§(mPreviousResult.l.li.tn).name;
               §6X§.§3U§("shareTournamentResult",caseId,caseId == CASE_STAR_PROMOTION ? mPlayerPreviousPositionInLeague.s : _loc2_);
            }
         };
         §6X§.addCallback("permissionRequestComplete",fn);
         §6X§.§3U§("askForPublishStreamPermission");
      }
      
      private function §=!p§(param1:int) : String
      {
         return param1 + ".";
      }
      
      private function §`#<§(param1:int) : §8!t§
      {
         var _loc3_:Object = null;
         var _loc4_:§2"U§ = null;
         if(§0$$§ == §3!i§)
         {
            return this.§?Q§(param1);
         }
         var _loc2_:Object = §4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.t ? §4!q§.§3!]§.§=$#§.t : (§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.t ? §4!q§.§3!]§.§;"c§.t : null);
         if(_loc2_)
         {
            if(_loc2_.players)
            {
               if(param1 <= _loc2_.players.length)
               {
                  _loc3_ = _loc2_.players[param1 - 1];
                  if(_loc3_)
                  {
                     if(_loc4_ = §7"m§.§;#F§(_loc3_.uid))
                     {
                        _loc3_.n = _loc4_.name;
                     }
                     return §8!t§.§>!§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §?Q§(param1:int) : §8!t§
      {
         var _loc2_:Object = null;
         var _loc3_:§2"U§ = null;
         if(§4!q§.§3!]§.§;"c§ && §4!q§.§3!]§.§;"c§.t)
         {
            if(§4!q§.§3!]§.§;"c§.t.players)
            {
               if(param1 <= §4!q§.§3!]§.§;"c§.t.players.length)
               {
                  _loc2_ = §4!q§.§3!]§.§;"c§.t.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §7"m§.§;#F§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §8!t§.§>!§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §@E§(param1:int) : §%!2§
      {
         var _loc3_:Object = null;
         var _loc2_:Object = §4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.l ? §4!q§.§3!]§.§=$#§.l : §4!q§.§3!]§.§;"c§.l;
         if(_loc2_)
         {
            if(_loc2_.p)
            {
               if(param1 <= _loc2_.p.length)
               {
                  _loc3_ = _loc2_.p[param1 - 1];
                  if(_loc3_)
                  {
                     return §%!2§.§>!§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CLAIM":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               break;
            case "BACK":
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               §7P§(§%!'§.STATE_NAME);
               break;
            case "showCredits":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(§"$6§.STATE_NAME);
               break;
            default:
               this.mPromotionAnimation.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function deActivate() : void
      {
         this.§3!X§ = false;
         super.deActivate();
         if(this.§%k§)
         {
            this.§%k§.dispose();
         }
         if(this.§>;§)
         {
            this.§>;§.dispose();
         }
         if(this.§^R§)
         {
            this.§^R§.dispose();
         }
         if(this.§6!9§)
         {
            this.§6!9§.dispose();
         }
         if(this.§,#"§)
         {
            this.§,#"§.dispose();
         }
         if(this.§0!1§)
         {
            this.§0!1§.dispose();
         }
         if(this.§1b§)
         {
            this.§1b§.dispose();
         }
         if(this.§,!#§)
         {
            this.§,!#§.dispose();
         }
         this.mPromotionAnimation.deActivate();
         this.§]"]§(this.§^m§);
         AngryBirdsBase.singleton.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§`E§);
         AngryBirdsBase.singleton.stage.removeEventListener(Event.RESIZE,this.§'"'§);
         if(this.§>!0§)
         {
            §4!q§.§3!]§.removeEventListener(§&$1§.§>#t§,this.§!`§);
         }
         else
         {
            §4!q§.§3!]§.removeEventListener(§&$1§.§7s§,this.§&"W§);
            §]!m§.§3!]§.removeEventListener(§0#3§.§2!U§,this.§""w§);
         }
         this.§>#§();
         this.§=$§();
         §4!q§.§3!]§.removeEventListener(§&$1§.§@K§,this.§6#_§);
         §4!q§.§3!]§.§-!"§();
         if(this.§+!v§)
         {
            this.§+!v§.deActivate();
         }
      }
      
      private function §>#§() : void
      {
         this.§"!b§ = null;
         this.§ #W§ = null;
         if(§!$§ && §!$§.contains(this.§`#b§))
         {
            §!$§.removeChild(this.§`#b§);
         }
         if(§!$§ && §!$§.contains(this.§[#D§))
         {
            §!$§.removeChild(this.§[#D§);
         }
         this.§`#b§ = null;
         this.§[#D§ = null;
      }
      
      protected function §'!!§(param1:MouseEvent) : void
      {
      }
      
      protected function §!`§(param1:§&$1§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:§9##§ = null;
         if(param1.type == §&$1§.§>#t§)
         {
            §4!q§.§3!]§.removeEventListener(§&$1§.§>#t§,this.§!`§);
            if(param1.data.t)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.t.items;
               _loc4_ = param1.data.t.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §9##§();
                  this.§6$7§[0] = true;
                  _loc6_.§;"O§ = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §=]§.§;Q§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.gainType = §-#A§.§!"s§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §%h§.§3!]§.§1!0§(param1.data.t,true,_loc2_);
            }
            if(param1.data.l)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.l.items;
               _loc4_ = param1.data.l.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §9##§();
                  this.§6$7§[1] = true;
                  _loc6_.§;"O§ = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §=]§.§;Q§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.gainType = §-#A§.§'!,§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §%h§.§3!]§.§1!0§(param1.data.l,true,_loc2_);
               this.§+!7§ = param1.data.l.items;
            }
            this.§?>§ = true;
         }
      }
      
      protected function §&"W§(param1:§&$1§) : void
      {
         var _loc2_:§9##§ = null;
         if(param1.type == §&$1§.§7s§)
         {
            _loc2_ = new §9##§();
            _loc2_.§;"O§ = STATE_NAME;
            _loc2_.amount = this.§`#!§[1];
            _loc2_.currency = "IVC";
            _loc2_.gainType = "LEAGUE_REWARD";
            _loc2_.itemType = §=]§.§;Q§;
            §%h§.§3!]§.§1!0§(param1.data,false,[_loc2_]);
            this.§?!]§();
            §%h§.§3!]§.§=L§();
         }
      }
      
      protected function §""w§(param1:§0#3§) : void
      {
         var _loc2_:§9##§ = null;
         var _loc3_:Array = null;
         if(param1.type == §0#3§.§2!U§)
         {
            §!$§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
            _loc2_ = new §9##§();
            _loc2_.§;"O§ = STATE_NAME;
            _loc2_.amount = this.§`#!§[0];
            _loc2_.currency = "IVC";
            _loc2_.gainType = "TOURNAMENT_REWARD";
            _loc2_.itemType = §=]§.§;Q§;
            _loc3_ = [_loc2_];
            §%h§.§3!]§.§1!0§(param1.data,false,_loc3_);
            this.§&"l§();
            §%h§.§3!]§.§=L§();
         }
      }
      
      protected function §6#_§(param1:§&$1§) : void
      {
         this.§&!-§();
      }
      
      private function §&"l§() : void
      {
         if(this.§"!b§)
         {
            this.§"!b§.reset();
            this.§"!b§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§8!S§);
            this.§"!b§ = null;
         }
         this.§"!b§ = new Timer(100,1);
         this.§"!b§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§8!S§);
         this.§"!b§.start();
      }
      
      protected function §8!S§(param1:TimerEvent) : void
      {
         var _loc2_:Point = null;
         if(this.§"!b§)
         {
            this.§"!b§.reset();
            this.§"!b§.removeEventListener(TimerEvent.TIMER,this.§8!S§);
            this.§"!b§ = null;
         }
         if(this.§[#D§)
         {
            this.§[#D§.txtRewardAmount.text = this.§`#!§[0] + " x";
         }
         this.§`#n§ = §+3§(§8G§.§%#S§.dataModel).§<$&§.§[#u§;
         this.§^m§.§9"'§(this.§`#n§);
         this.§^m§.§ true§(this.§`#!§[0]);
         if(this.§[#D§)
         {
            if(§!$§ && §!$§.contains(this.§[#D§))
            {
               §!$§.removeChild(this.§[#D§);
            }
            this.§[#D§.scaleX = this.§[#D§.scaleY = 0;
            _loc2_ = new Point(§!$§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(§!$§.getItemByName("FriendsRewards").mClip.width * 0.5,0)).x,§!$§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§!$§.getItemByName("FriendsRewards").mClip.height * 0.5)).y + 20);
            this.§^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§#!A§.§&$<§,§#!A§.§1"y§,§`#w§.§8!_§);
            §!$§.addChild(this.§^!F§);
            this.§'#X§.push(this.§^!F§);
            this.§<![§();
         }
      }
      
      private function §<![§() : void
      {
         §!$§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
         §!$§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
         this.§+!v§.§ !i§ = this.§6#p§();
         this.§+!v§.§]"l§ = this.§<#2§();
         this.§6!b§(true);
      }
      
      private function §?!]§() : void
      {
         if(this.§ #W§)
         {
            this.§ #W§.reset();
            this.§ #W§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§'#N§);
            this.§ #W§ = null;
         }
         this.§ #W§ = new Timer(100,1);
         this.§ #W§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§'#N§);
         this.§ #W§.start();
      }
      
      protected function §'#N§(param1:TimerEvent) : void
      {
         if(this.§ #W§)
         {
            this.§ #W§.reset();
            this.§ #W§.removeEventListener(TimerEvent.TIMER,this.§'#N§);
            this.§ #W§ = null;
         }
         this.§`#n§ = §+3§(§8G§.§%#S§.dataModel).§<$&§.§[#u§;
         this.§^m§.§9"'§(this.§`#n§);
         this.§^m§.§ true§(this.§`#!§[1]);
         if(this.§`#b§)
         {
            this.§`#b§.txtRewardAmount.text = this.§`#!§[1] + " x";
            if(§!$§ && §!$§.contains(this.§`#b§))
            {
               §!$§.removeChild(this.§`#b§);
            }
            this.§`#b§.scaleX = this.§`#b§.scaleY = 0;
         }
         var _loc2_:Point = new Point(§!$§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(§!$§.getItemByName("LeagueRewards").mClip.width * 0.5,0)).x,§!$§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§!$§.getItemByName("LeagueRewards").mClip.height * 0.5)).y + 20);
         if(§4!q§.§3!]§.§=$#§ && §4!q§.§3!]§.§=$#§.l)
         {
            this.§^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§#!A§.§&$<§,§#!A§.§1"y§,§`#w§.§8!_§);
            §!$§.addChild(this.§^!F§);
            this.§'#X§.push(this.§^!F§);
            this.§`#>§();
         }
      }
      
      private function §`#>§() : void
      {
         §!$§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
         §!$§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
      }
      
      private function §=$§() : void
      {
         var _loc1_:§#!A§ = null;
         for each(_loc1_ in this.§'#X§)
         {
            if(§!$§ && §!$§.contains(_loc1_))
            {
               §!$§.removeChild(_loc1_);
            }
            _loc1_.§4#1§();
         }
         this.§'#X§ = new Vector.<§#!A§>();
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §!$§.getItemByName("walletContainer").mClip;
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
      
      private function §<#2§() : Number
      {
         var _loc2_:Object = null;
         var _loc1_:Number = 0;
         if(this.mPreviousResult && this.mPreviousResult.l)
         {
            for each(_loc2_ in this.mPreviousResult.l.p)
            {
               if(_loc2_.lrc)
               {
                  _loc1_ = _loc2_.lrc;
                  break;
               }
            }
         }
         return _loc1_;
      }
      
      private function §6#p§() : Number
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
      
      public function §5l§() : void
      {
         this.§];§();
      }
   }
}

import §'!U§.§0!?§;
import §'!U§.§>$$§;
import §6"r§.§0"<§;
import §7g§.§`!b§;
import §8§.§#$+§;
import com.rovio.assets.§@`§;
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
   
   private var mComponent:§0"<§;
   
   private var mClip:MovieClip;
   
   private var _mRunning:Boolean;
   
   private var mSkipButton:§>$$§;
   
   private var mShareButton:§>$$§;
   
   private var mBadgeFrom:DisplayObjectContainer;
   
   private var mBadgeTo:DisplayObjectContainer;
   
   private var mActivePromotionSounds:Array;
   
   private var mNextLeagueTextToLowerBanner:String;
   
   function LeaguePromotionAnimation(param1:§0"<§)
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
         this.mNextLeagueTextToLowerBanner = §`!b§.§-#;§.id;
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
         this.mNextLeagueTextToLowerBanner = §`!b§.§-#;§.id;
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
      var _loc3_:Class = §@`§.§4!i§(param1);
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
                     §#$+§.§9"]§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,1,1);
                     §#$+§.playSound(_loc3_.name,PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,int.MAX_VALUE,1);
                  }
                  else
                  {
                     §#$+§.playSound(_loc3_.name,PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,0,1);
                  }
                  _loc3_.started = true;
               }
            }
            else if(_loc3_.endFrame <= this.mClip.currentFrame)
            {
               §#$+§.§%!!§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_);
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
   
   private function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
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
         "name":"LeaguePromotionGlow1",
         "startFrame":0
      });
      this.mActivePromotionSounds.push({
         "name":"Wood_Rolling1",
         "startFrame":93,
         "endFrame":154
      });
      this.mActivePromotionSounds.push({
         "name":"Hiscore_Star_Splash1",
         "startFrame":30
      });
      this.mActivePromotionSounds.push({
         "name":"Hiscore_Star_Splash1",
         "startFrame":80
      });
      this.mActivePromotionSounds.push({
         "name":"Hiscore_Star_Splash1",
         "startFrame":88
      });
      this.mActivePromotionSounds.push({
         "name":"Hiscore_Star_Splash1",
         "startFrame":98
      });
      this.mActivePromotionSounds.push({
         "name":"Hiscore_Star_Splash1",
         "startFrame":109
      });
      this.mActivePromotionSounds.push({
         "name":"Hiscore_Star_Splash1",
         "startFrame":119
      });
      this.mActivePromotionSounds.push({
         "name":"Hiscore_Star_Splash1",
         "startFrame":133
      });
      this.mActivePromotionSounds.push({
         "name":"LeaguePromotionDiamond",
         "startFrame":148
      });
      this.mActivePromotionSounds.push({
         "name":"BirdShot1",
         "startFrame":250
      });
      §#$+§.§9"]§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,this.mActivePromotionSounds.length,1);
   }
}
