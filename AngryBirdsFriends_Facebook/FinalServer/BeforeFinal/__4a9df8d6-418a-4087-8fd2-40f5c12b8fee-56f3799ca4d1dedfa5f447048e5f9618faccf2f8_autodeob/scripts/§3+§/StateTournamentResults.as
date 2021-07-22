package §3+§
{
   import § !j§.§4#c§;
   import §!#C§.§ $?§;
   import §!#C§.§&%§;
   import §!#C§.§0#;§;
   import §!#C§.§3" §;
   import §!#C§.§3"?§;
   import §!#C§.§4!Q§;
   import §!#C§.§[§;
   import §!#C§.§null§;
   import §"!n§.§;"x§;
   import §"",§.§3"k§;
   import §"",§.§4#Q§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §##Z§.§'#N§;
   import §##Z§.§;J§;
   import §##Z§.§<$2§;
   import §#,§.§]$+§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §'4§.LeagueProgressBar;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §1"l§.§`""§;
   import §2";§.§'#J§;
   import §2";§.§7!z§;
   import §2";§.§95§;
   import §2J§.§]#@§;
   import §5"t§.§7"J§;
   import §5"t§.§7"Y§;
   import §7R§.§ #`§;
   import §8#K§.§ case§;
   import §8#K§.§3Z§;
   import §8#K§.§4"s§;
   import §8#K§.§@!m§;
   import §;#l§.§!!'§;
   import §<!r§.§'##§;
   import §=E§.§<T§;
   import §=E§.§@u§;
   import §?!a§.§2!-§;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import §`"3§.§^!Z§;
   import §`#@§.§7n§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§6$A§;
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
   
   public class StateTournamentResults extends §7!z§ implements §%!#§, §&>§
   {
      
      public static const STATE_NAME:String = "StateTournamentResults";
      
      private static const §4#I§:int = 370;
      
      public static const §="M§:int = 1;
      
      public static const §!!l§:int = 2;
      
      private static var §]!o§:int = 1;
      
      private static var §%!j§:Boolean;
      
      public static var §%§:Boolean = false;
      
      private static const §=!>§:int = 10000;
      
      public static var §<#%§:int = 0;
      
      public static const §0!R§:uint = 1;
      
      public static const §<J§:uint = 2;
      
      public static const CASE_STAR_PROMOTION:uint = 3;
      
      public static const CASE_FRIENDS_1ST:uint = 4;
      
      public static const CASE_FRIENDS_2ND:uint = 5;
      
      public static const CASE_FRIENDS_3RD:uint = 6;
      
      private static const §[#I§:String = "TournamentResultSoundChannel";
       
      
      private var §1",§:§3"?§;
      
      private var §;#w§:§;J§;
      
      private var §3#,§:§;J§;
      
      private var §;"g§:§;J§;
      
      private var §,!R§:§;J§;
      
      private var §;$7§:§;J§;
      
      private var §,"3§:§;J§;
      
      private var § !8§:§;J§;
      
      private var §8J§:§;J§;
      
      protected var §+!B§:Font;
      
      private var §^#Q§:LeagueProgressBar;
      
      private const §[[§:String = "ACTIVE";
      
      private const §<!`§:String = "INACTIVE";
      
      private var §<#p§:Boolean = true;
      
      private var §%#v§:MovieClip;
      
      private var §&$4§:MovieClip;
      
      private var §^!@§:Array;
      
      protected var §;#x§:§7"J§;
      
      protected var §#! §:Vector.<§7"J§>;
      
      private var §;!6§:Number;
      
      private var §6!c§:Timer;
      
      private var §,"L§:Timer;
      
      private var §##U§:Class;
      
      private var §6$4§:MovieClip;
      
      private var §9#p§:MovieClip;
      
      private var §?#U§:Array;
      
      private var §1!B§:Wallet;
      
      private var §?=§:Number;
      
      private var §'";§:§7$C§;
      
      private var §3"q§:§7$C§;
      
      private var §%!V§:Object;
      
      private var mPlayerPreviousPositionInLeague:Object;
      
      private var §5h§:§7$C§;
      
      private var §1C§:Array;
      
      private var § !i§:Array;
      
      private var mPreviousResult:Object = null;
      
      private var §"#W§:Boolean = false;
      
      private var §[!M§:Number = 0.2;
      
      private var §!!M§:Number = 0.2;
      
      private var §3#J§:Boolean;
      
      private var §>o§:Number = 0.2;
      
      private var §"!u§:Number = 1.2;
      
      private var §?"P§:Number = 20.0;
      
      private var LEAGUE_WIN:uint = 1;
      
      private var §0!&§:uint = 2;
      
      private var §3!r§:uint = 3;
      
      private var §[t§:uint;
      
      private var §="C§:Object;
      
      private var §@"O§:Array;
      
      private var mPromotionAnimation:LeaguePromotionAnimation;
      
      private var §""4§:int = 0;
      
      private var §="8§:Timer;
      
      private var §]$B§:Boolean = false;
      
      public function StateTournamentResults(param1:§;"n§, param2:Boolean, param3:§4#c§)
      {
         this.§+!B§ = new AngryBirdsFont();
         this.§^!@§ = [0,0.25,0.5,0.75,1];
         this.§?#U§ = [0,0];
         this.§ !i§ = [false,false];
         super(param1,param2,STATE_NAME,param3);
      }
      
      public static function get §2!x§() : int
      {
         return §]!o§;
      }
      
      public static function set §2!x§(param1:int) : void
      {
         §]!o§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§##U§ = §6$A§.§1!m§("GiftCarousel");
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_Tournament_Results[0]);
         this.§^#Q§ = new LeagueProgressBar(§[$5§);
         this.§&$4§ = §[$5§.getItemByName("FriendsResult").mClip;
         this.§%#v§ = §[$5§.getItemByName("LeaguesResult").mClip;
      }
      
      private function §7#r§(param1:Boolean = false) : void
      {
         this.§^#Q§.removeEventListener(§3"k§.§<§,this.§+"m§);
         this.§^#Q§.addEventListener(§3"k§.§<§,this.§+"m§);
         this.§^#Q§.§6"]§(this.mPreviousResult,§]!o§,param1);
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§@!m§ = null;
         var _loc3_:§ case§ = null;
         super.activate(param1);
         this.§]$B§ = §'##§.§`"H§.§;!q§();
         this.§4"j§();
         this.§0'§();
         this.§6U§();
         this.§!$D§();
         this.§=$9§();
         this.§'!w§();
         this.§^!#§();
         this.§6#C§();
         this.§[#H§();
         this.§,#W§();
         this.§+"Y§();
         this.§<h§();
         this.§7#r§();
         this.§0$4§();
         this.§ "v§();
         this.§=3§();
         this.§ !i§ = [false,false];
         this.§"#W§ = false;
         this.§3#J§ = false;
         if(§]!o§ == §="M§ && (§<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.l || §<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.t || !§<$2§.§`"H§.§-"y§()))
         {
            §<$2§.§`"H§.§<6§(§<#%§);
            §<#%§ = 0;
            §3Z§.§'#E§(§[#I§,10,0.8);
            §3Z§.playSound("BirdsApplause",§[#I§);
            _loc2_ = §3Z§.§["C§(AngryBirdsBase.§?#7§);
            if(_loc2_.§?S§ <= 0)
            {
               _loc3_ = § #v§.§1!!§.§`Z§();
               _loc3_.§?s§(§4"s§.§60§);
            }
         }
         §[$5§.getItemByName("loadingResults").setVisibility(false);
         AngryBirdsBase.singleton.playThemeMusic();
         this.§]A§();
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
         this.§""4§ = 0;
      }
      
      private function §]A§() : void
      {
         var _loc3_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = false;
         var _loc11_:* = false;
         if(§2!x§ != §="M§)
         {
            return;
         }
         var _loc1_:Object = §<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.t && §<$2§.§`"H§.§>!L§.t.players ? §<$2§.§`"H§.§>!L§.t : this.§9#E§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         for each(_loc6_ in _loc1_.players)
         {
            if(_loc6_.uid == _loc2_)
            {
               _loc3_ = _loc6_;
            }
            else if(_loc6_.uid == §2!-§.BIRD_BOT_1)
            {
               _loc4_ = _loc6_.p;
            }
            if(_loc6_.uid == §2!-§.BIRD_BOT_2)
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
            §!!K§.§%#S§().§<#t§(_loc7_,_loc8_,_loc10_,_loc11_,_loc1_.players.length,_loc3_.r,_loc3_.p,_loc9_);
         }
      }
      
      private function § "v§() : void
      {
         if(this.mPromotionAnimation != null)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
            this.mPromotionAnimation = null;
         }
         if(§]!o§ == §!!l§)
         {
            §[$5§.getItemByName("Promotion_Main_Anim").setVisibility(false);
         }
         else
         {
            this.mPromotionAnimation = new LeaguePromotionAnimation(§]$+§(§[$5§.getItemByName("Promotion_Main_Anim")));
            this.mPromotionAnimation.activate();
         }
      }
      
      private function §<h§() : void
      {
         var _loc1_:Number = this.§0#-§();
         var _loc2_:Number = this.§4@§();
         if(this.§^#Q§)
         {
            this.§^#Q§.§!"7§ = _loc1_;
            this.§^#Q§.§11§ = _loc2_;
         }
      }
      
      private function §=3§() : void
      {
         this.§0!A§(new Wallet(this,true,false));
         this.§1!B§.§+F§.scaleY = 1.3;
         this.§1!B§.§+F§.scaleX = 1.3;
         this.§?=§ = §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§;
         this.§1!B§.setCoinsAmountText(this.§?=§);
      }
      
      private function §!$D§() : void
      {
         §[$5§.setText("" + §<$2§.§`"H§.bronzeTrophies,"BronzeTrophiesTextfield");
         §[$5§.setText("" + §<$2§.§`"H§.silverTrophies,"SilverTrophiesTextfield");
         §[$5§.setText("" + §<$2§.§`"H§.goldTrophies,"GoldTrophiesTextfield");
         this.§1C§ = new Array();
         this.§1C§.push(§<$2§.§`"H§.goldTrophies);
         this.§1C§.push(§<$2§.§`"H§.silverTrophies);
         this.§1C§.push(§<$2§.§`"H§.bronzeTrophies);
      }
      
      private function §[#H§() : void
      {
         AngryBirdsBase.singleton.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§%!d§);
         AngryBirdsBase.singleton.stage.addEventListener(Event.RESIZE,this.§9"`§);
         if(this.§<#p§)
         {
            §<$2§.§`"H§.addEventListener(§4#Q§.§"#0§,this.§@!^§);
         }
         else
         {
            §'##§.§`"H§.addEventListener(§]#@§.§%!+§,this.§20§);
            §<$2§.§`"H§.addEventListener(§4#Q§.§]"8§,this.§#!Y§);
         }
         §<$2§.§`"H§.addEventListener(§4#Q§.§>#n§,this.§[8§);
      }
      
      private function §0'§() : void
      {
         this.§1",§ = new §3"?§();
         this.§1",§.first = this.§3v§(1);
         this.§1",§.second = this.§3v§(2);
         this.§1",§.§9$<§ = this.§3v§(3);
         this.§1",§.§""R§ = this.§3v§(4);
         §[$5§.getItemByName("FriendsFirst").mClip.gotoAndStop(0);
         §[$5§.getItemByName("FriendsSecond").mClip.gotoAndStop(0);
         §[$5§.getItemByName("FriendsThird").mClip.gotoAndStop(0);
         §[$5§.getItemByName("LeagueFirst").mClip.gotoAndStop(0);
         §[$5§.getItemByName("LeagueSecond").mClip.gotoAndStop(0);
         §[$5§.getItemByName("LeagueNotPodium").mClip.gotoAndStop(0);
      }
      
      private function §4"j§() : void
      {
         §[$5§.getItemByName("loadingResults").setVisibility(true);
         §[$5§.getItemByName("loadingResults").goToFrame(1,true);
         §[$5§.getItemByName("Banner_LastWeek").setVisibility(§]!o§ == §!!l§);
         §[$5§.getItemByName("Button_Back").setVisibility(§]!o§ == §!!l§);
         if(AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN || AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
         {
            §%!j§ = true;
         }
      }
      
      private function §6U§() : void
      {
         this.§#! § = new Vector.<§7"J§>();
         this.§6$4§ = new this.§##U§();
         this.§9#p§ = new this.§##U§();
         this.§3"q§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§?"P§,§"!&§.§="L§);
         this.§'";§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§?"P§,§"!&§.§="L§);
      }
      
      private function §?$C§() : void
      {
         this.§3"q§ = null;
         this.§3"q§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§?"P§,§"!&§.§="L§);
         this.§3"q§.onComplete = this.§?$C§;
         this.§3"q§.play();
      }
      
      private function §9#U§() : void
      {
         this.§'";§ = null;
         this.§'";§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§?"P§,§"!&§.§="L§);
         this.§'";§.onComplete = this.§9#U§;
         this.§'";§.play();
      }
      
      private function §^!#§() : void
      {
         if(§]!o§ == §!!l§)
         {
            if(§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.t)
            {
               §[$5§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
            }
            if(§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.l)
            {
               §[$5§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
            }
         }
         else
         {
            §[$5§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
            §[$5§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         }
      }
      
      private function §%"C§() : void
      {
         §[$5§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §[$5§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §[$5§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
         §[$5§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
      }
      
      private function §6#C§() : void
      {
         §[$5§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = false;
         §[$5§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = false;
         §[$5§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = true;
         §[$5§.getItemByName("LeagueFirst").setVisibility(true);
         §[$5§.getItemByName("LeagueSecond").setVisibility(true);
         §[$5§.getItemByName("LeagueNotPodium").setVisibility(true);
      }
      
      private function §^"K§() : void
      {
         §[$5§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         §[$5§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = true;
         §[$5§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.text = "Complete any level to join the league";
         §[$5§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = true;
         §[$5§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = false;
         §[$5§.getItemByName("LeagueFirst").setVisibility(false);
         §[$5§.getItemByName("LeagueSecond").setVisibility(false);
         §[$5§.getItemByName("LeagueNotPodium").setVisibility(false);
         §%§ = true;
      }
      
      private function §'!w§() : void
      {
         §[$5§.getItemByName("LeagueRewards").mClip.btnClaimLeagueReward.visible = false;
         §[$5§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
      }
      
      protected function §9"`§(param1:Event) : void
      {
         §%!j§ = true;
      }
      
      protected function §%!d§(param1:FullScreenEvent) : void
      {
         §%!j§ = true;
      }
      
      private function §4!v§() : void
      {
         this.§&$4§.x = §7n§.§]!M§() * this.§^!@§[1] - this.§&$4§.width * 0.5;
         this.§%#v§.x = §7n§.§]!M§() * this.§^!@§[3] - this.§%#v§.width * 0.5;
         this.§6$4§.x = §[$5§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§6$4§.y = §[$5§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§[$5§.getItemByName("FriendsRewards").mClip.height * 0.5)).y;
         this.§9#p§.x = §[$5§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§9#p§.y = §[$5§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§[$5§.getItemByName("LeagueRewards").mClip.height * 0.5)).y;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:§7"J§ = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:uint = 0;
         super.update(param1);
         if(this.§="C§ && (this.mPromotionAnimation && !this.mPromotionAnimation.running))
         {
            for each(_loc4_ in this.§="C§)
            {
               for each(_loc5_ in §!!'§.§1"c§)
               {
                  if(_loc5_[§!!'§.§]$1§].toUpperCase() == _loc4_.i.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new §!!'§(_loc5_[§!!'§.§]$1§],§!!'§.§@"V§));
                  }
               }
            }
            this.§="C§ = null;
         }
         if(§]!o§ == §="M§)
         {
            if(§%§)
            {
               if(!AngryBirdsBase.singleton.popupManager.§?"N§())
               {
                  §%§ = false;
                  §[$5§.getItemByName("Button_Back").setVisibility(true);
                  this.§'"1§();
               }
               this.§""4§ = §=!>§;
            }
            else if(this.§""4§ < §=!>§)
            {
               this.§""4§ += param1;
               if(this.§""4§ >= §=!>§)
               {
                  §[$5§.getItemByName("Button_Back").setVisibility(true);
               }
            }
         }
         if(this.mPromotionAnimation && this.mPromotionAnimation.running)
         {
            if((_loc6_ = this.mPromotionAnimation.update()) == LeaguePromotionAnimation.ACTION_SHARE)
            {
               this.§2!T§();
            }
            else if(_loc6_ == LeaguePromotionAnimation.ACTION_SKIP)
            {
               this.mPromotionAnimation.stop();
            }
         }
         if(this.§"#W§)
         {
            this.§"#W§ = false;
            if(!this.§3#J§)
            {
               this.§+"8§();
            }
         }
         if(!this.§^#Q§.§@"o§() || §%!j§)
         {
            §%!j§ = false;
         }
         if(this.§^#Q§)
         {
            this.§^#Q§.update(param1);
         }
         var _loc2_:Number = getTimer() - this.§;!6§;
         this.§;!6§ = getTimer();
         for each(_loc3_ in this.§#! §)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §0$4§() : void
      {
         var _loc5_:§0#;§ = null;
         var _loc6_:Object = null;
         var _loc7_:§@u§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         if(§]!o§ == §="M§)
         {
            if(!§<$2§.§`"H§.§>!L§ || §<$2§.§`"H§.§>!L§.t && !§<$2§.§`"H§.§>!L§.t.players)
            {
               (§7n§.§-$<§ as § #v§).§<z§(§`""§.§7#Z§,_loc1_);
               return;
            }
         }
         else if(!§<$2§.§`"H§.§&$B§ || §<$2§.§`"H§.§&$B§.t && !§<$2§.§`"H§.§&$B§.t.players)
         {
            (§7n§.§-$<§ as § #v§).§<z§(§`""§.§7#Z§,_loc1_);
            return;
         }
         var _loc4_:Object = null;
         if(§]!o§ == §="M§)
         {
            if(§<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.t && §<$2§.§`"H§.§>!L§.t.players)
            {
               _loc4_ = §<$2§.§`"H§.§>!L§.t.players;
            }
         }
         else if(§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.t && §<$2§.§`"H§.§&$B§.t.players)
         {
            _loc4_ = §<$2§.§`"H§.§&$B§.t.players;
         }
         if(_loc4_)
         {
            for each(_loc6_ in _loc4_)
            {
               _loc6_.c = _loc6_.r - 1 < this.§@"O§.length ? this.§@"O§[_loc6_.r - 1] : this.§@"O§[this.§@"O§.length - 1];
               _loc5_ = §3" §.§5+§(_loc6_);
               if(§3" §(_loc5_) != null)
               {
                  §3" §(_loc5_).§]"t§ = "";
               }
               if(_loc7_ = §<T§.§<#§(_loc6_.uid))
               {
                  _loc5_.userName = _loc7_.name;
               }
               _loc1_.push(_loc5_);
            }
         }
         if(§<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.l && §<$2§.§`"H§.§>!L§.l.p)
         {
            for each(_loc6_ in §<$2§.§`"H§.§>!L§.l.p)
            {
               _loc5_ = §[#8§.§5+§(_loc6_);
               _loc3_.push(_loc5_);
            }
         }
         if(§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.l && §<$2§.§`"H§.§&$B§.l.p)
         {
            for each(_loc6_ in §<$2§.§`"H§.§&$B§.l.p)
            {
               _loc5_ = §[#8§.§5+§(_loc6_);
               _loc2_.push(_loc5_);
            }
         }
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§7#Z§,_loc1_);
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§##k§,_loc2_);
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§;M§,_loc3_);
      }
      
      private function §8i§(param1:Object = null) : void
      {
         if(!param1 || !param1.l)
         {
            this.§^"K§();
         }
         else
         {
            this.§6#C§();
         }
      }
      
      private function §=$9§() : void
      {
         this.§@"O§ = §2!x§ == §="M§ ? (§<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.t && §<$2§.§`"H§.§>!L§.t.prizeCounts ? §<$2§.§`"H§.§>!L§.t.prizeCounts : this.§=#,§()) : this.§=#,§();
      }
      
      private function §,#W§() : void
      {
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:§3" § = null;
         this.§%!V§ = {};
         var _loc1_:String = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID;
         var _loc2_:Object = §2!x§ == §="M§ ? (§<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.t && §<$2§.§`"H§.§>!L§.t.players ? §<$2§.§`"H§.§>!L§.t : this.§9#E§()) : this.§9#E§();
         if(_loc2_)
         {
            for each(_loc7_ in _loc2_.players)
            {
               if(_loc1_ == _loc7_.uid)
               {
                  this.§%!V§ = _loc7_;
                  break;
               }
            }
            var _loc3_:MovieClip = §[$5§.getItemByName("FriendsFirst").mClip;
            _loc3_.gotoAndStop(this.§<!`§);
            if(this.§%!V§ && this.§%!V§.r == 1)
            {
               _loc3_.gotoAndStop(this.§[[§);
            }
            if(this.§1",§.first)
            {
               this.§;#w§ = new §;J§(_loc3_.getChildByName("AvatarImage") as MovieClip,this.§1",§.first);
               §;"x§.§+>§(_loc3_.getChildByName("txtName") as TextField,this.§1",§.first.userName,§4#I§);
            }
            var _loc4_:TextField;
            (_loc4_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = this.§@"O§[0].toString();
            (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = this.§1",§.first != null;
            (_loc3_.getChildByName("txtName") as TextField).visible = this.§1",§.first != null;
            var _loc5_:MovieClip;
            (_loc5_ = §[$5§.getItemByName("FriendsSecond").mClip).gotoAndStop(this.§<!`§);
            if(this.§%!V§ && this.§%!V§.r == 2)
            {
               _loc5_.gotoAndStop(this.§[[§);
            }
            if(this.§1",§.second)
            {
               this.§3#,§ = new §;J§(_loc5_.getChildByName("AvatarImage") as MovieClip,this.§1",§.second);
               §;"x§.§+>§(_loc5_.getChildByName("txtName") as TextField,this.§1",§.second.userName,§4#I§);
            }
            (_loc4_ = (_loc5_.getChildByName("rewardText") as MovieClip).text).text = this.§@"O§[1].toString();
            (_loc5_.getChildByName("AvatarImage") as MovieClip).visible = this.§1",§.second != null;
            (_loc5_.getChildByName("txtName") as TextField).visible = this.§1",§.second != null;
            var _loc6_:MovieClip;
            (_loc6_ = §[$5§.getItemByName("FriendsThird").mClip).gotoAndStop(this.§<!`§);
            if(this.§%!V§ && this.§%!V§.r == 3)
            {
               _loc6_.gotoAndStop(this.§[[§);
            }
            if(this.§1",§.§9$<§)
            {
               this.§;"g§ = new §;J§(_loc6_.getChildByName("AvatarImage") as MovieClip,this.§1",§.§9$<§);
               §;"x§.§+>§(_loc6_.getChildByName("txtName") as TextField,this.§1",§.§9$<§.userName,§4#I§);
            }
            (_loc4_ = (_loc6_.getChildByName("rewardText") as MovieClip).text).text = this.§@"O§[2].toString();
            (_loc6_.getChildByName("AvatarImage") as MovieClip).visible = this.§1",§.§9$<§ != null;
            (_loc6_.getChildByName("txtName") as TextField).visible = this.§1",§.§9$<§ != null;
            if(this.§%!V§ && this.§%!V§.r)
            {
               if((_loc8_ = this.§%!V§.r - 1) >= 3)
               {
                  _loc8_ = 3;
                  _loc6_.gotoAndStop(this.§[[§);
                  (_loc6_.getChildByName("txtRank") as TextField).visible = true;
                  (_loc6_.getChildByName("txtRank") as TextField).text = this.§-0§(this.§%!V§.r);
                  _loc6_.getChildByName("mcTrophyBronze").visible = false;
                  if(_loc9_ = this.§3v§(this.§%!V§.r))
                  {
                     this.§;"g§ = new §;J§(_loc6_.getChildByName("AvatarImage") as MovieClip,_loc9_);
                     §;"x§.§+>§(_loc6_.getChildByName("txtName") as TextField,_loc9_.userName,§4#I§);
                     _loc4_.text = this.§@"O§[_loc8_];
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
                  _loc4_.text = this.§@"O§[_loc8_];
               }
               (§[$5§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = this.§@"O§[_loc8_] + "x";
               this.§?#U§[0] = this.§@"O§[_loc8_];
               §[$5§.getItemByName("FriendsRewards").mClip.mcCoin.visible = true;
               if(§2!x§ == §="M§)
               {
                  §[$5§.getItemByName("FriendsRewards").mClip.RewardShine.visible = true;
                  if(§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.t && (!§<$2§.§`"H§.§>!L§ || !§<$2§.§`"H§.§>!L§.t))
                  {
                     this.§3"q§.stop();
                  }
                  else
                  {
                     this.§3"q§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§?"P§,§"!&§.§="L§);
                     this.§3"q§.onComplete = this.§?$C§;
                     this.§3"q§.play();
                  }
               }
               else
               {
                  §[$5§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
               }
            }
            else
            {
               (§[$5§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = "";
               §[$5§.getItemByName("FriendsRewards").mClip.mcCoin.visible = false;
               §[$5§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
            }
            return;
         }
      }
      
      private function §+"8§() : void
      {
         var _loc1_:MovieClip = null;
         if(§2!x§ == §="M§ && (this.§%!V§ && this.§%!V§.r >= 1 && this.§%!V§.r <= 3))
         {
            _loc1_ = this.§%!V§ && this.§%!V§.r == 1 ? §[$5§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§%!V§ && this.§%!V§.r == 2 ? §[$5§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §[$5§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
            _loc1_.visible = true;
            _loc1_.parent.setChildIndex(_loc1_,_loc1_.parent.numChildren - 1);
            if(this.§5h§)
            {
               this.§5h§.stop();
               this.§5h§ = null;
            }
            this.§5h§ = §"!&§.§`"H§.§1"W§(_loc1_,{
               "scaleX":1.5,
               "scaleY":1.5
            },{
               "scaleX":1,
               "scaleY":1
            },this.§[!M§,§"!&§.§^F§,this.§!!M§);
            this.§5h§.onComplete = this.§4!u§;
            this.§5h§.play();
            §3Z§.playSound("Get_Coins",§[#I§);
         }
         else if(§2!x§ == §="M§ && !this.§3#J§)
         {
            this.§4!k§();
         }
      }
      
      private function §4!u§() : void
      {
         if(this.§5h§)
         {
            this.§5h§.stop();
            this.§5h§ = null;
         }
         if(this.§%!V§)
         {
            if(this.§%!V§.r == 1)
            {
               §[$5§.setText("" + (this.§1C§[0] + 1),"GoldTrophiesTextfield");
            }
            if(this.§%!V§.r == 2)
            {
               §[$5§.setText("" + (this.§1C§[1] + 1),"SilverTrophiesTextfield");
            }
            if(this.§%!V§.r == 3)
            {
               §[$5§.setText("" + (this.§1C§[2] + 1),"BronzeTrophiesTextfield");
            }
         }
         var _loc1_:MovieClip = this.§%!V§.r == 1 ? §[$5§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§%!V§.r == 2 ? §[$5§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §[$5§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
         var _loc2_:§7$C§ = §"!&§.§`"H§.§1"W§(_loc1_,{"scaleX":1.5},null,0.1);
         this.§5h§ = §"!&§.§`"H§.§1"W§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.5,
            "scaleY":1.5
         },this.§[!M§,§"!&§.§^F§);
         var _loc3_:§7$C§ = §"!&§.§`"H§.§?"§(_loc2_,this.§5h§);
         _loc3_.onComplete = this.§4!k§;
         _loc3_.play();
      }
      
      private function §4!k§() : void
      {
         if(this.§ !i§[0])
         {
            this.§3#J§ = true;
            this.§>D§();
            this.§="8§ = new Timer(200,1);
            this.§="8§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;5§);
            this.§="8§.start();
            this.§ !i§[0] = false;
         }
      }
      
      private function §;5§(param1:TimerEvent) : void
      {
         this.§="8§ = null;
         this.§%"S§();
      }
      
      protected function §+"m§(param1:§3"k§) : void
      {
         if(this.§ !i§[1])
         {
            this.§ !i§[1] = false;
         }
         § $?§.§`"H§.§-!P§();
      }
      
      private function §9#E§() : Object
      {
         return §<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.t && §<$2§.§`"H§.§&$B§.t.players ? §<$2§.§`"H§.§&$B§.t : null;
      }
      
      private function §=#,§() : Array
      {
         return §<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.t && §<$2§.§`"H§.§&$B§.t.prizeCounts ? §<$2§.§`"H§.§&$B§.t.prizeCounts : [0,0,0];
      }
      
      private function §+"Y§() : void
      {
         var _loc6_:Object = null;
         var _loc7_:§[#8§ = null;
         var _loc8_:§[#8§ = null;
         var _loc9_:§[#8§ = null;
         this.mPlayerPreviousPositionInLeague = {};
         var _loc1_:MovieClip = §[$5§.getItemByName("LeagueFirst").mClip;
         _loc1_.gotoAndStop(this.§<!`§);
         var _loc2_:MovieClip = §[$5§.getItemByName("LeagueSecond").mClip;
         _loc2_.gotoAndStop(this.§<!`§);
         var _loc3_:MovieClip = §[$5§.getItemByName("LeagueNotPodium").mClip;
         _loc3_.gotoAndStop(this.§<!`§);
         var _loc4_:Object = §<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.l ? §<$2§.§`"H§.§>!L§ : §<$2§.§`"H§.§&$B§;
         if(§<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.l)
         {
            _loc4_.lastResult = true;
         }
         else if(_loc4_)
         {
            _loc4_.lastResult = false;
         }
         this.mPreviousResult = _loc4_;
         if(!_loc4_ || !_loc4_.l || !_loc4_.l.p || !_loc4_.lastResult && §]!o§ == §="M§ && !_loc4_.l)
         {
            this.§8i§(_loc4_);
            return;
         }
         var _loc5_:String = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID;
         for each(_loc6_ in _loc4_.l.p)
         {
            if(_loc5_ == _loc6_.u)
            {
               this.mPlayerPreviousPositionInLeague = _loc6_;
               break;
            }
         }
         _loc7_ = this.§9w§(1);
         _loc8_ = this.§9w§(2);
         _loc9_ = this.§9w§(3);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            _loc1_.gotoAndStop(this.§[[§);
         }
         if(_loc7_)
         {
            this.§;$7§ = new §;J§(_loc1_.getChildByName("AvatarImage") as MovieClip,_loc7_);
            §;"x§.§+>§(_loc1_.getChildByName("txtName") as TextField,_loc7_.userName,§4#I§);
         }
         var _loc10_:TextField;
         (_loc10_ = (_loc1_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[0] && _loc4_.l.p[0].c ? _loc4_.l.p[0].c.toString() : "0";
         _loc10_.visible = true;
         (_loc1_.getChildByName("AvatarImage") as MovieClip).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtName") as TextField).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtRank") as TextField).text = this.§-0§(1);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 2)
         {
            _loc2_.gotoAndStop(this.§[[§);
         }
         if(_loc8_)
         {
            this.§,"3§ = new §;J§(_loc2_.getChildByName("AvatarImage") as MovieClip,_loc8_);
            §;"x§.§+>§(_loc2_.getChildByName("txtName") as TextField,_loc8_.userName,§4#I§);
         }
         (_loc10_ = (_loc2_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[1] && _loc4_.l.p[1].c ? _loc4_.l.p[1].c.toString() : "0";
         (_loc2_.getChildByName("AvatarImage") as MovieClip).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtName") as TextField).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtRank") as TextField).text = this.§-0§(2);
         var _loc11_:Number = 2;
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r >= 3)
         {
            _loc3_.gotoAndStop(this.§[[§);
            if(this.mPlayerPreviousPositionInLeague.r > 3)
            {
               _loc9_ = this.§9w§(this.mPlayerPreviousPositionInLeague.r);
               _loc11_ = this.mPlayerPreviousPositionInLeague.r - 1;
            }
         }
         if(_loc9_)
         {
            §[$5§.getItemByName("LeagueNotPodium").setVisibility(true);
            this.§8J§ = new §;J§(_loc3_.getChildByName("AvatarImage") as MovieClip,_loc9_);
            §;"x§.§+>§(_loc3_.getChildByName("txtName") as TextField,_loc9_.userName,§4#I§);
            §[$5§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = true;
            §[$5§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = true;
            §[$5§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = true;
         }
         (_loc10_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].c ? _loc4_.l.p[_loc11_].c.toString() : "0";
         (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtName") as TextField).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtRank") as TextField).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].r ? this.§-0§(_loc4_.l.p[_loc11_].r) : "";
         if(!_loc9_)
         {
            §[$5§.getItemByName("LeagueNotPodium").setVisibility(false);
            §[$5§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = false;
            §[$5§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = false;
            §[$5§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = false;
         }
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.c)
         {
            this.§?#U§[1] = this.mPlayerPreviousPositionInLeague.c;
            (§[$5§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = this.mPlayerPreviousPositionInLeague.c + "x";
            §[$5§.getItemByName("LeagueRewards").mClip.mcCoin.visible = true;
            if(§2!x§ == §="M§)
            {
               §[$5§.getItemByName("LeagueRewards").mClip.RewardShine.visible = true;
               if(§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.l && (!§<$2§.§`"H§.§>!L§ || !§<$2§.§`"H§.§>!L§.l))
               {
                  this.§'";§.stop();
               }
               else
               {
                  this.§'";§ = §"!&§.§`"H§.§1"W§(§[$5§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§?"P§,§"!&§.§="L§);
                  this.§'";§.onComplete = this.§9#U§;
                  this.§'";§.play();
               }
            }
            else
            {
               §[$5§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
            }
         }
         else
         {
            (§[$5§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = "";
            §[$5§.getItemByName("LeagueRewards").mClip.mcCoin.visible = false;
            §[$5§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
         }
         this.§8i§(_loc4_);
      }
      
      private function §5!4§(param1:Object, param2:Object) : Boolean
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
      
      private function §'"1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:Object = §<$2§.§`"H§.§>!L§.l;
         if(!(_loc1_ && _loc1_.pli && _loc1_.pli.tn == §'#N§.§;#K§.id))
         {
            if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r && this.mPlayerPreviousPositionInLeague.r == 1)
            {
               this.§[t§ = this.LEAGUE_WIN;
               _loc2_ = this.§5!4§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
            else if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.p && this.mPlayerPreviousPositionInLeague.p == "u")
            {
               this.§[t§ = this.§3!r§;
               _loc2_ = this.§5!4§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.§[t§ = this.§0!&§;
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
         }
      }
      
      private function §2!T§() : void
      {
         var caseId:uint = 0;
         var fn:Function = null;
         switch(this.§[t§)
         {
            case this.LEAGUE_WIN:
               caseId = §0!R§;
               break;
            case this.§0!&§:
               caseId = §<J§;
               break;
            case this.§3!r§:
               caseId = CASE_STAR_PROMOTION;
         }
         fn = function(param1:String):void
         {
            var _loc2_:String = null;
            § !+§.§?!§("permissionRequestComplete",fn);
            if(param1 == "true")
            {
               mPromotionAnimation.stop();
               _loc2_ = §'#N§.§?!6§(mPreviousResult.l.li.tn).name;
               § !+§.§>$%§("shareTournamentResult",caseId,caseId == CASE_STAR_PROMOTION ? mPlayerPreviousPositionInLeague.s : _loc2_);
            }
         };
         § !+§.addCallback("permissionRequestComplete",fn);
         § !+§.§>$%§("askForPublishStreamPermission");
      }
      
      private function §-0§(param1:int) : String
      {
         return param1 + ".";
      }
      
      private function §3v§(param1:int) : §3" §
      {
         var _loc3_:Object = null;
         var _loc4_:§@u§ = null;
         if(§2!x§ == §!!l§)
         {
            return this.§'#A§(param1);
         }
         var _loc2_:Object = §<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.t ? §<$2§.§`"H§.§>!L§.t : (§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.t ? §<$2§.§`"H§.§&$B§.t : null);
         if(_loc2_)
         {
            if(_loc2_.players)
            {
               if(param1 <= _loc2_.players.length)
               {
                  _loc3_ = _loc2_.players[param1 - 1];
                  if(_loc3_)
                  {
                     if(_loc4_ = §<T§.§<#§(_loc3_.uid))
                     {
                        _loc3_.n = _loc4_.name;
                     }
                     return §3" §.§5+§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §'#A§(param1:int) : §3" §
      {
         var _loc2_:Object = null;
         var _loc3_:§@u§ = null;
         if(§<$2§.§`"H§.§&$B§ && §<$2§.§`"H§.§&$B§.t)
         {
            if(§<$2§.§`"H§.§&$B§.t.players)
            {
               if(param1 <= §<$2§.§`"H§.§&$B§.t.players.length)
               {
                  _loc2_ = §<$2§.§`"H§.§&$B§.t.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §<T§.§<#§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §3" §.§5+§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §9w§(param1:int) : §[#8§
      {
         var _loc3_:Object = null;
         var _loc2_:Object = §<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.l ? §<$2§.§`"H§.§>!L§.l : §<$2§.§`"H§.§&$B§.l;
         if(_loc2_)
         {
            if(_loc2_.p)
            {
               if(param1 <= _loc2_.p.length)
               {
                  _loc3_ = _loc2_.p[param1 - 1];
                  if(_loc3_)
                  {
                     return §[#8§.§5+§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CLAIM":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               break;
            case "BACK":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               if(§2!x§ == §="M§)
               {
                  §&%§.§;$@§();
                  if(§'##§.§`"H§.§;!q§())
                  {
                     §0!S§.§>!Q§();
                     §1!L§(§0!S§.STATE_NAME);
                  }
                  else
                  {
                     §;!H§.§4$%§();
                     §<$2§.§`"H§.§"g§();
                     §1!L§(§95§.STATE_NAME);
                  }
               }
               else if(§'##§.§`"H§.§;!q§())
               {
                  if(§'##§.§`"H§.§'"^§() <= 0)
                  {
                     §0!S§.§>!Q§();
                     §1!L§(§0!S§.STATE_NAME);
                  }
                  else
                  {
                     §1!L§(§;!H§.STATE_NAME);
                  }
               }
               else if(this.§]$B§)
               {
                  §1!L§(§95§.STATE_NAME);
               }
               else
               {
                  §1!L§(§;!H§.STATE_NAME);
               }
               break;
            case "showCredits":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(§'#J§.STATE_NAME);
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
         this.§3#J§ = false;
         super.deActivate();
         if(this.§;"g§)
         {
            this.§;"g§.dispose();
         }
         if(this.§3#,§)
         {
            this.§3#,§.dispose();
         }
         if(this.§;#w§)
         {
            this.§;#w§.dispose();
         }
         if(this.§,!R§)
         {
            this.§,!R§.dispose();
         }
         if(this.§ !8§)
         {
            this.§ !8§.dispose();
         }
         if(this.§,"3§)
         {
            this.§,"3§.dispose();
         }
         if(this.§;$7§)
         {
            this.§;$7§.dispose();
         }
         if(this.§8J§)
         {
            this.§8J§.dispose();
         }
         if(this.mPromotionAnimation)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
         }
         this.§&!U§(this.§1!B§);
         AngryBirdsBase.singleton.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§%!d§);
         AngryBirdsBase.singleton.stage.removeEventListener(Event.RESIZE,this.§9"`§);
         §3Z§.§&$?§(§[#I§);
         if(this.§<#p§)
         {
            §<$2§.§`"H§.removeEventListener(§4#Q§.§"#0§,this.§@!^§);
         }
         else
         {
            §<$2§.§`"H§.removeEventListener(§4#Q§.§]"8§,this.§#!Y§);
            §'##§.§`"H§.removeEventListener(§]#@§.§%!+§,this.§20§);
         }
         this.§>#4§();
         this.§>!v§();
         §<$2§.§`"H§.removeEventListener(§4#Q§.§>#n§,this.§[8§);
         §<$2§.§`"H§.§4"]§();
         if(this.§^#Q§)
         {
            this.§^#Q§.deActivate();
         }
      }
      
      private function §>#4§() : void
      {
         this.§6!c§ = null;
         this.§,"L§ = null;
         if(§[$5§ && §[$5§.contains(this.§9#p§))
         {
            §[$5§.removeChild(this.§9#p§);
         }
         if(§[$5§ && §[$5§.contains(this.§6$4§))
         {
            §[$5§.removeChild(this.§6$4§);
         }
         this.§9#p§ = null;
         this.§6$4§ = null;
      }
      
      protected function §`!p§(param1:MouseEvent) : void
      {
      }
      
      protected function §@!^§(param1:§4#Q§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:§^!Z§ = null;
         if(param1.type == §4#Q§.§"#0§)
         {
            §<$2§.§`"H§.removeEventListener(§4#Q§.§"#0§,this.§@!^§);
            if(param1.data.t)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.t.items;
               _loc4_ = param1.data.t.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §^!Z§();
                  this.§ !i§[0] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §null§.§%l§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§`"x§ = §!!K§.§'q§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               § $?§.§`"H§.§ !t§(param1.data.t,true,_loc2_);
            }
            if(param1.data.l)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.l.items;
               _loc4_ = param1.data.l.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §^!Z§();
                  this.§ !i§[1] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §null§.§%l§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§`"x§ = §!!K§.§;d§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               § $?§.§`"H§.§ !t§(param1.data.l,true,_loc2_);
               this.§="C§ = param1.data.l.items;
            }
            this.§"#W§ = true;
         }
      }
      
      protected function §#!Y§(param1:§4#Q§) : void
      {
         var _loc2_:§^!Z§ = null;
         if(param1.type == §4#Q§.§]"8§)
         {
            _loc2_ = new §^!Z§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§?#U§[1];
            _loc2_.currency = "IVC";
            _loc2_.§`"x§ = "LEAGUE_REWARD";
            _loc2_.itemType = §null§.§%l§;
            § $?§.§`"H§.§ !t§(param1.data,false,[_loc2_]);
            this.§%"S§();
            § $?§.§`"H§.§-!P§();
         }
      }
      
      protected function §20§(param1:§]#@§) : void
      {
         var _loc2_:§^!Z§ = null;
         var _loc3_:Array = null;
         if(param1.type == §]#@§.§%!+§)
         {
            §[$5§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
            _loc2_ = new §^!Z§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§?#U§[0];
            _loc2_.currency = "IVC";
            _loc2_.§`"x§ = "TOURNAMENT_REWARD";
            _loc2_.itemType = §null§.§%l§;
            _loc3_ = [_loc2_];
            § $?§.§`"H§.§ !t§(param1.data,false,_loc3_);
            this.§>D§();
            § $?§.§`"H§.§-!P§();
         }
      }
      
      protected function §[8§(param1:§4#Q§) : void
      {
         this.§+"Y§();
      }
      
      private function §>D§() : void
      {
         if(this.§6!c§)
         {
            this.§6!c§.reset();
            this.§6!c§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§6b§);
            this.§6!c§ = null;
         }
         this.§6!c§ = new Timer(100,1);
         this.§6!c§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§6b§);
         this.§6!c§.start();
      }
      
      protected function §6b§(param1:TimerEvent) : void
      {
         var _loc2_:Point = null;
         if(this.§6!c§)
         {
            this.§6!c§.reset();
            this.§6!c§.removeEventListener(TimerEvent.TIMER,this.§6b§);
            this.§6!c§ = null;
         }
         if(this.§6$4§)
         {
            this.§6$4§.txtRewardAmount.text = this.§?#U§[0] + " x";
         }
         this.§?=§ = §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§;
         this.§1!B§.setCoinsAmountText(this.§?=§);
         this.§1!B§.animateGotCoins(this.§?#U§[0]);
         if(this.§6$4§)
         {
            if(§[$5§ && §[$5§.contains(this.§6$4§))
            {
               §[$5§.removeChild(this.§6$4§);
            }
            this.§6$4§.scaleY = 0;
            this.§6$4§.scaleX = 0;
            _loc2_ = new Point(§[$5§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(§[$5§.getItemByName("FriendsRewards").mClip.width * 0.5,0)).x,§[$5§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§[$5§.getItemByName("FriendsRewards").mClip.height * 0.5)).y + 20);
            this.§;#x§ = new §7"J§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§7"J§.§3@§,§7"J§.§!A§,§7"Y§.§^#N§);
            §[$5§.addChild(this.§;#x§);
            this.§#! §.push(this.§;#x§);
            this.§0!B§();
         }
      }
      
      private function §0!B§() : void
      {
         §[$5§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
         §[$5§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
         this.§^#Q§.§!"7§ = this.§0#-§();
         this.§^#Q§.§11§ = this.§4@§();
         this.§7#r§(true);
      }
      
      private function §%"S§() : void
      {
         if(this.§,"L§)
         {
            this.§,"L§.reset();
            this.§,"L§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@"y§);
            this.§,"L§ = null;
         }
         this.§,"L§ = new Timer(100,1);
         this.§,"L§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§@"y§);
         this.§,"L§.start();
      }
      
      protected function §@"y§(param1:TimerEvent) : void
      {
         if(this.§,"L§)
         {
            this.§,"L§.reset();
            this.§,"L§.removeEventListener(TimerEvent.TIMER,this.§@"y§);
            this.§,"L§ = null;
         }
         this.§?=§ = §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§;
         this.§1!B§.setCoinsAmountText(this.§?=§);
         this.§1!B§.animateGotCoins(this.§?#U§[1]);
         if(this.§9#p§)
         {
            this.§9#p§.txtRewardAmount.text = this.§?#U§[1] + " x";
            if(§[$5§ && §[$5§.contains(this.§9#p§))
            {
               §[$5§.removeChild(this.§9#p§);
            }
            this.§9#p§.scaleY = 0;
            this.§9#p§.scaleX = 0;
         }
         var _loc2_:Point = new Point(§[$5§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(§[$5§.getItemByName("LeagueRewards").mClip.width * 0.5,0)).x,§[$5§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§[$5§.getItemByName("LeagueRewards").mClip.height * 0.5)).y + 20);
         if(§<$2§.§`"H§.§>!L§ && §<$2§.§`"H§.§>!L§.l)
         {
            this.§;#x§ = new §7"J§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§7"J§.§3@§,§7"J§.§!A§,§7"Y§.§^#N§);
            §[$5§.addChild(this.§;#x§);
            this.§#! §.push(this.§;#x§);
            this.§9$;§();
         }
      }
      
      private function §9$;§() : void
      {
         §[$5§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
         §[$5§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
      }
      
      private function §>!v§() : void
      {
         var _loc1_:§7"J§ = null;
         for each(_loc1_ in this.§#! §)
         {
            if(§[$5§ && §[$5§.contains(_loc1_))
            {
               §[$5§.removeChild(_loc1_);
            }
            _loc1_.§"#%§();
         }
         this.§#! § = new Vector.<§7"J§>();
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §[$5§.getItemByName("walletContainer").mClip;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      private function §4@§() : Number
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
      
      private function §0#-§() : Number
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
      
      public function §#8§() : void
      {
         this.§,#W§();
      }
   }
}

import §##Z§.§'#N§;
import §#,§.§]$+§;
import §,!Q§.§6"n§;
import §,!Q§.§8#=§;
import §8#K§.§3Z§;
import com.rovio.assets.§6$A§;
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
   
   private var mComponent:§]$+§;
   
   private var mClip:MovieClip;
   
   private var _mRunning:Boolean;
   
   private var mSkipButton:§8#=§;
   
   private var mBadgeFrom:DisplayObjectContainer;
   
   private var mBadgeTo:DisplayObjectContainer;
   
   private var mActivePromotionSounds:Array;
   
   private var mNextLeagueTextToLowerBanner:String;
   
   function LeaguePromotionAnimation(param1:§]$+§)
   {
      super();
      this.mComponent = param1;
      this.mClip = param1.mClip;
      this.mComponent.setVisibility(false);
      this.mSkipButton = this.mComponent.getItemByName("Button_Skip");
   }
   
   private function activate() : void
   {
   }
   
   private function deActivate() : void
   {
      var _loc1_:int = 0;
      §3Z§.§&$?§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL);
      if(this.mActivePromotionSounds)
      {
         _loc1_ = 0;
         while(_loc1_ < this.mActivePromotionSounds.length)
         {
            §3Z§.§&$?§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc1_);
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
         this.mNextLeagueTextToLowerBanner = §'#N§.§3"4§.id;
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
         this.mNextLeagueTextToLowerBanner = §'#N§.§3"4§.id;
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
      var _loc3_:Class = §6$A§.§1!m§(param1);
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
                     §3Z§.§'#E§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,1,0.8);
                     §3Z§.playSound(_loc3_.name,PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,int.MAX_VALUE);
                  }
                  else
                  {
                     §3Z§.playSound(_loc3_.name,PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,0);
                  }
                  _loc3_.started = true;
               }
            }
            else if(_loc3_.endFrame <= this.mClip.currentFrame)
            {
               §3Z§.§&$?§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_);
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
   
   private function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
   {
      switch(param2)
      {
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
      §3Z§.§'#E§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,this.mActivePromotionSounds.length,0.8);
   }
}
