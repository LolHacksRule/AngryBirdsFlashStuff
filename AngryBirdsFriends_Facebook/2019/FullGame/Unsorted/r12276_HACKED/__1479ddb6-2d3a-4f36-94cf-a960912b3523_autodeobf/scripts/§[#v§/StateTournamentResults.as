package §[#v§
{
   import § ""§.§-&§;
   import § "v§.§4$4§;
   import § "v§.§5#=§;
   import § "v§.§8M§;
   import § "v§.§]#?§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §!!H§.§ $4§;
   import §#!G§.§-#]§;
   import §#!G§.§9$§;
   import §+!n§.§+!p§;
   import §,"_§.LeagueProgressBar;
   import §-"S§.§>#G§;
   import §-"Y§.§,#B§;
   import §-"Y§.§9#B§;
   import §1!1§.§!g§;
   import §1!1§.§<#M§;
   import §2$;§.§!"e§;
   import §2E§.§]!P§;
   import §4#$§.§5"L§;
   import §4$A§.§=$5§;
   import §7!3§.§-!>§;
   import §9x§.§1"^§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §=!&§.§<$!§;
   import §>#Y§.§!",§;
   import §>#Y§.§#!&§;
   import §>#Y§.§%<§;
   import §>#Y§.§,#b§;
   import §>#Y§.§1N§;
   import §>#Y§.§2"%§;
   import §>#Y§.§2$8§;
   import §>#Y§.§3"Q§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §]!4§.§=#c§;
   import §^#?§.§ !'§;
   import §^#?§.§#!T§;
   import §^#?§.§?#,§;
   import §^1§.§';§;
   import §^1§.§+!Y§;
   import §^1§.§[$2§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§=@§;
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
   
   public class StateTournamentResults extends §';§ implements §=$5§, §;"P§
   {
      
      public static const STATE_NAME:String = "StateTournamentResults";
      
      private static const § "7§:int = 370;
      
      public static const §9!@§:int = 1;
      
      public static const §with§:int = 2;
      
      private static var §1$B§:int = 1;
      
      private static var §=#V§:Boolean;
      
      public static var §<!n§:Boolean = false;
      
      private static const §]$!§:int = 10000;
      
      public static var §4"=§:int = 0;
      
      public static const §!!`§:uint = 1;
      
      public static const §+"E§:uint = 2;
      
      public static const CASE_STAR_PROMOTION:uint = 3;
      
      public static const CASE_FRIENDS_1ST:uint = 4;
      
      public static const CASE_FRIENDS_2ND:uint = 5;
      
      public static const CASE_FRIENDS_3RD:uint = 6;
      
      private static const §"$-§:String = "TournamentResultSoundChannel";
       
      
      private var §;!E§:§%<§;
      
      private var §-"z§:§ !'§;
      
      private var §;"a§:§ !'§;
      
      private var §3"G§:§ !'§;
      
      private var §<_§:§ !'§;
      
      private var §#"Q§:§ !'§;
      
      private var §<o§:§ !'§;
      
      private var §5"4§:§ !'§;
      
      private var §0j§:§ !'§;
      
      protected var §,#q§:Font;
      
      private var §5$'§:LeagueProgressBar;
      
      private const §&#N§:String = "ACTIVE";
      
      private const §>#W§:String = "INACTIVE";
      
      private var §<"e§:Boolean = true;
      
      private var §0!O§:MovieClip;
      
      private var §0#k§:MovieClip;
      
      private var §8W§:Array;
      
      protected var §?c§:§9#B§;
      
      protected var §'!2§:Vector.<§9#B§>;
      
      private var §;##§:Number;
      
      private var §]"H§:Timer;
      
      private var §0!8§:Timer;
      
      private var §&#q§:Class;
      
      private var §2!g§:MovieClip;
      
      private var §?#'§:MovieClip;
      
      private var §]"J§:Array;
      
      private var §1"w§:Wallet;
      
      private var §!X§:Number;
      
      private var §!!&§:§@#5§;
      
      private var §%!`§:§@#5§;
      
      private var §&"d§:Object;
      
      private var mPlayerPreviousPositionInLeague:Object;
      
      private var §6"M§:§@#5§;
      
      private var §6"q§:Array;
      
      private var §?x§:Array;
      
      private var mPreviousResult:Object = null;
      
      private var §>g§:Boolean = false;
      
      private var §%"n§:Number = 0.2;
      
      private var §^"V§:Number = 0.2;
      
      private var §;$,§:Boolean;
      
      private var §6!Q§:Number = 0.2;
      
      private var §#"M§:Number = 1.2;
      
      private var §-#`§:Number = 20.0;
      
      private var LEAGUE_WIN:uint = 1;
      
      private var §>"'§:uint = 2;
      
      private var §]"?§:uint = 3;
      
      private var §#"&§:uint;
      
      private var § "G§:Object;
      
      private var §;#-§:Array;
      
      private var mPromotionAnimation:LeaguePromotionAnimation;
      
      private var §-!x§:int = 0;
      
      private var §>E§:Timer;
      
      private var §7"t§:Boolean = false;
      
      public function StateTournamentResults(param1:§4#?§, param2:Boolean, param3:§?!>§)
      {
         this.§,#q§ = new AngryBirdsFont();
         this.§8W§ = [0,0.25,0.5,0.75,1];
         this.§]"J§ = [0,0];
         this.§?x§ = [false,false];
         super(param1,param2,STATE_NAME,param3);
      }
      
      public static function get §4!&§() : int
      {
         return §1$B§;
      }
      
      public static function set §4!&§(param1:int) : void
      {
         §1$B§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&#q§ = §=@§.§9!x§("GiftCarousel");
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_Tournament_Results[0]);
         this.§5$'§ = new LeagueProgressBar(§@!D§);
         this.§0#k§ = §@!D§.getItemByName("FriendsResult").mClip;
         this.§0!O§ = §@!D§.getItemByName("LeaguesResult").mClip;
      }
      
      private function §1#6§(param1:Boolean = false) : void
      {
         this.§5$'§.removeEventListener(§!g§.§8#D§,this.§8C§);
         this.§5$'§.addEventListener(§!g§.§8#D§,this.§8C§);
         this.§5$'§.§'#v§(this.mPreviousResult,§1$B§,param1);
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§8M§ = null;
         var _loc3_:§]#?§ = null;
         super.activate(param1);
         this.§7"t§ = §5"L§.§3"1§.§2o§();
         this.§["]§();
         this.§%"l§();
         this.§`#,§();
         this.§[&§();
         this.§%#y§();
         this.§ #n§();
         this.§[J§();
         this.§+!R§();
         this.§"!Y§();
         this.§##R§();
         this.§&"P§();
         this.§^"i§();
         this.§1#6§();
         this.§`1§();
         this.§!#"§();
         this.§-#y§();
         this.§?x§ = [false,false];
         this.§>g§ = false;
         this.§;$,§ = false;
         if(§1$B§ == §9!@§ && (§?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.l || §?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.t || !§?#,§.§3"1§.§9"m§()))
         {
            §?#,§.§3"1§.§,"y§(§4"=§);
            §4"=§ = 0;
            §4$4§.§<!A§(§"$-§,10,0.8);
            §4$4§.playSound("BirdsApplause",§"$-§);
            _loc2_ = §4$4§.§`!U§(AngryBirdsBase.§>"u§);
            if(_loc2_.§!!;§ <= 0)
            {
               _loc3_ = §^"a§.§9!h§.§^"C§();
               _loc3_.§4#v§(§5#=§.§&"^§);
            }
         }
         §@!D§.getItemByName("loadingResults").setVisibility(false);
         AngryBirdsBase.singleton.playThemeMusic();
         this.§,#s§();
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
         this.§-!x§ = 0;
      }
      
      private function §,#s§() : void
      {
         var _loc3_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = false;
         var _loc11_:* = false;
         if(§4!&§ != §9!@§)
         {
            return;
         }
         var _loc1_:Object = §?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.t && §?#,§.§3"1§.§7$?§.t.players ? §?#,§.§3"1§.§7$?§.t : this.§"Z§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         for each(_loc6_ in _loc1_.players)
         {
            if(_loc6_.uid == _loc2_)
            {
               _loc3_ = _loc6_;
            }
            else if(_loc6_.uid == §1"^§.BIRD_BOT_1)
            {
               _loc4_ = _loc6_.p;
            }
            if(_loc6_.uid == §1"^§.BIRD_BOT_2)
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
            §]!P§.§1!7§().§'"J§(_loc7_,_loc8_,_loc10_,_loc11_,_loc1_.players.length,_loc3_.r,_loc3_.p,_loc9_);
         }
      }
      
      private function §!#"§() : void
      {
         if(this.mPromotionAnimation != null)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
            this.mPromotionAnimation = null;
         }
         if(§1$B§ == §with§)
         {
            §@!D§.getItemByName("Promotion_Main_Anim").setVisibility(false);
         }
         else
         {
            this.mPromotionAnimation = new LeaguePromotionAnimation(§!"e§(§@!D§.getItemByName("Promotion_Main_Anim")));
            this.mPromotionAnimation.activate();
         }
      }
      
      private function §^"i§() : void
      {
         var _loc1_:Number = this.§^"[§();
         var _loc2_:Number = this.§^">§();
         if(this.§5$'§)
         {
            this.§5$'§.§`v§ = _loc1_;
            this.§5$'§.§'f§ = _loc2_;
         }
      }
      
      private function §-#y§() : void
      {
         this.§ "@§(new Wallet(this,true,false));
         this.§1"w§.§6""§.scaleY = 1.3;
         this.§1"w§.§6""§.scaleX = 1.3;
         this.§!X§ = §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§;
         this.§1"w§.setCoinsAmountText(this.§!X§);
      }
      
      private function §[&§() : void
      {
         §@!D§.setText("" + §?#,§.§3"1§.bronzeTrophies,"BronzeTrophiesTextfield");
         §@!D§.setText("" + §?#,§.§3"1§.silverTrophies,"SilverTrophiesTextfield");
         §@!D§.setText("" + §?#,§.§3"1§.goldTrophies,"GoldTrophiesTextfield");
         this.§6"q§ = new Array();
         this.§6"q§.push(§?#,§.§3"1§.goldTrophies);
         this.§6"q§.push(§?#,§.§3"1§.silverTrophies);
         this.§6"q§.push(§?#,§.§3"1§.bronzeTrophies);
      }
      
      private function §"!Y§() : void
      {
         AngryBirdsBase.singleton.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§1#4§);
         AngryBirdsBase.singleton.stage.addEventListener(Event.RESIZE,this.§&S§);
         if(this.§<"e§)
         {
            §?#,§.§3"1§.addEventListener(§<#M§.§2$A§,this.§6"j§);
         }
         else
         {
            §5"L§.§3"1§.addEventListener(§<$!§.§'#n§,this.§6#S§);
            §?#,§.§3"1§.addEventListener(§<#M§.§ !r§,this.§]!R§);
         }
         §?#,§.§3"1§.addEventListener(§<#M§.§-#4§,this.§;"%§);
      }
      
      private function §%"l§() : void
      {
         this.§;!E§ = new §%<§();
         this.§;!E§.first = this.§5!c§(1);
         this.§;!E§.second = this.§5!c§(2);
         this.§;!E§.§=#v§ = this.§5!c§(3);
         this.§;!E§.§[!9§ = this.§5!c§(4);
         §@!D§.getItemByName("FriendsFirst").mClip.gotoAndStop(0);
         §@!D§.getItemByName("FriendsSecond").mClip.gotoAndStop(0);
         §@!D§.getItemByName("FriendsThird").mClip.gotoAndStop(0);
         §@!D§.getItemByName("LeagueFirst").mClip.gotoAndStop(0);
         §@!D§.getItemByName("LeagueSecond").mClip.gotoAndStop(0);
         §@!D§.getItemByName("LeagueNotPodium").mClip.gotoAndStop(0);
      }
      
      private function §["]§() : void
      {
         §@!D§.getItemByName("loadingResults").setVisibility(true);
         §@!D§.getItemByName("loadingResults").goToFrame(1,true);
         §@!D§.getItemByName("Banner_LastWeek").setVisibility(§1$B§ == §with§);
         §@!D§.getItemByName("Button_Back").setVisibility(§1$B§ == §with§);
         if(AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN || AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
         {
            §=#V§ = true;
         }
      }
      
      private function §`#,§() : void
      {
         this.§'!2§ = new Vector.<§9#B§>();
         this.§2!g§ = new this.§&#q§();
         this.§?#'§ = new this.§&#q§();
         this.§%!`§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§-#`§,§5"<§.§5!p§);
         this.§!!&§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§-#`§,§5"<§.§5!p§);
      }
      
      private function §;"S§() : void
      {
         this.§%!`§ = null;
         this.§%!`§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§-#`§,§5"<§.§5!p§);
         this.§%!`§.onComplete = this.§;"S§;
         this.§%!`§.play();
      }
      
      private function §<P§() : void
      {
         this.§!!&§ = null;
         this.§!!&§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§-#`§,§5"<§.§5!p§);
         this.§!!&§.onComplete = this.§<P§;
         this.§!!&§.play();
      }
      
      private function §[J§() : void
      {
         if(§1$B§ == §with§)
         {
            if(§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.t)
            {
               §@!D§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
            }
            if(§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.l)
            {
               §@!D§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
            }
         }
         else
         {
            §@!D§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
            §@!D§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         }
      }
      
      private function §5"v§() : void
      {
         §@!D§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §@!D§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §@!D§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
         §@!D§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
      }
      
      private function §+!R§() : void
      {
         §@!D§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = false;
         §@!D§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = false;
         §@!D§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = true;
         §@!D§.getItemByName("LeagueFirst").setVisibility(true);
         §@!D§.getItemByName("LeagueSecond").setVisibility(true);
         §@!D§.getItemByName("LeagueNotPodium").setVisibility(true);
      }
      
      private function §8"@§() : void
      {
         §@!D§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         §@!D§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = true;
         §@!D§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.text = "Complete any level to join the league";
         §@!D§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = true;
         §@!D§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = false;
         §@!D§.getItemByName("LeagueFirst").setVisibility(false);
         §@!D§.getItemByName("LeagueSecond").setVisibility(false);
         §@!D§.getItemByName("LeagueNotPodium").setVisibility(false);
         §<!n§ = true;
      }
      
      private function § #n§() : void
      {
         §@!D§.getItemByName("LeagueRewards").mClip.btnClaimLeagueReward.visible = false;
         §@!D§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
      }
      
      protected function §&S§(param1:Event) : void
      {
         §=#V§ = true;
      }
      
      protected function §1#4§(param1:FullScreenEvent) : void
      {
         §=#V§ = true;
      }
      
      private function §>!>§() : void
      {
         this.§0#k§.x = §+!p§.§+#L§() * this.§8W§[1] - this.§0#k§.width * 0.5;
         this.§0!O§.x = §+!p§.§+#L§() * this.§8W§[3] - this.§0!O§.width * 0.5;
         this.§2!g§.x = §@!D§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§2!g§.y = §@!D§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§@!D§.getItemByName("FriendsRewards").mClip.height * 0.5)).y;
         this.§?#'§.x = §@!D§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§?#'§.y = §@!D§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§@!D§.getItemByName("LeagueRewards").mClip.height * 0.5)).y;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:§9#B§ = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:uint = 0;
         super.update(param1);
         if(this.§ "G§ && (this.mPromotionAnimation && !this.mPromotionAnimation.running))
         {
            for each(_loc4_ in this.§ "G§)
            {
               for each(_loc5_ in §-&§.§=!C§)
               {
                  if(_loc5_[§-&§.§7#9§].toUpperCase() == _loc4_.i.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new §-&§(_loc5_[§-&§.§7#9§],§-&§.§<`§));
                  }
               }
            }
            this.§ "G§ = null;
         }
         if(§1$B§ == §9!@§)
         {
            if(§<!n§)
            {
               if(!AngryBirdsBase.singleton.popupManager.§!=§())
               {
                  §<!n§ = false;
                  §@!D§.getItemByName("Button_Back").setVisibility(true);
                  this.§5a§();
               }
               this.§-!x§ = §]$!§;
            }
            else if(this.§-!x§ < §]$!§)
            {
               this.§-!x§ += param1;
               if(this.§-!x§ >= §]$!§)
               {
                  §@!D§.getItemByName("Button_Back").setVisibility(true);
               }
            }
         }
         if(this.mPromotionAnimation && this.mPromotionAnimation.running)
         {
            if((_loc6_ = this.mPromotionAnimation.update()) == LeaguePromotionAnimation.ACTION_SHARE)
            {
               this.§%#x§();
            }
            else if(_loc6_ == LeaguePromotionAnimation.ACTION_SKIP)
            {
               this.mPromotionAnimation.stop();
            }
         }
         if(this.§>g§)
         {
            this.§>g§ = false;
            if(!this.§;$,§)
            {
               this.§,"8§();
            }
         }
         if(!this.§5$'§.§[#?§() || §=#V§)
         {
            §=#V§ = false;
         }
         if(this.§5$'§)
         {
            this.§5$'§.update(param1);
         }
         var _loc2_:Number = getTimer() - this.§;##§;
         this.§;##§ = getTimer();
         for each(_loc3_ in this.§'!2§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §`1§() : void
      {
         var _loc5_:§1N§ = null;
         var _loc6_:Object = null;
         var _loc7_:§9$§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         if(§1$B§ == §9!@§)
         {
            if(!§?#,§.§3"1§.§7$?§ || §?#,§.§3"1§.§7$?§.t && !§?#,§.§3"1§.§7$?§.t.players)
            {
               (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§6$@§,_loc1_);
               return;
            }
         }
         else if(!§?#,§.§3"1§.§4"a§ || §?#,§.§3"1§.§4"a§.t && !§?#,§.§3"1§.§4"a§.t.players)
         {
            (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§6$@§,_loc1_);
            return;
         }
         var _loc4_:Object = null;
         if(§1$B§ == §9!@§)
         {
            if(§?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.t && §?#,§.§3"1§.§7$?§.t.players)
            {
               _loc4_ = §?#,§.§3"1§.§7$?§.t.players;
            }
         }
         else if(§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.t && §?#,§.§3"1§.§4"a§.t.players)
         {
            _loc4_ = §?#,§.§3"1§.§4"a§.t.players;
         }
         if(_loc4_)
         {
            for each(_loc6_ in _loc4_)
            {
               _loc6_.c = _loc6_.r - 1 < this.§;#-§.length ? this.§;#-§[_loc6_.r - 1] : this.§;#-§[this.§;#-§.length - 1];
               _loc5_ = §#!&§.§5!I§(_loc6_);
               if(§#!&§(_loc5_) != null)
               {
                  §#!&§(_loc5_).§=4§ = "";
               }
               if(_loc7_ = §-#]§.§0B§(_loc6_.uid))
               {
                  _loc5_.userName = _loc7_.name;
               }
               _loc1_.push(_loc5_);
            }
         }
         if(§?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.l && §?#,§.§3"1§.§7$?§.l.p)
         {
            for each(_loc6_ in §?#,§.§3"1§.§7$?§.l.p)
            {
               _loc5_ = §3"Q§.§5!I§(_loc6_);
               _loc3_.push(_loc5_);
            }
         }
         if(§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.l && §?#,§.§3"1§.§4"a§.l.p)
         {
            for each(_loc6_ in §?#,§.§3"1§.§4"a§.l.p)
            {
               _loc5_ = §3"Q§.§5!I§(_loc6_);
               _loc2_.push(_loc5_);
            }
         }
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§6$@§,_loc1_);
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§>$>§,_loc2_);
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§=$=§,_loc3_);
      }
      
      private function §4p§(param1:Object = null) : void
      {
         if(!param1 || !param1.l)
         {
            this.§8"@§();
         }
         else
         {
            this.§+!R§();
         }
      }
      
      private function §%#y§() : void
      {
         this.§;#-§ = §4!&§ == §9!@§ ? (§?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.t && §?#,§.§3"1§.§7$?§.t.prizeCounts ? §?#,§.§3"1§.§7$?§.t.prizeCounts : this.§=R§()) : this.§=R§();
      }
      
      private function §##R§() : void
      {
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:§#!&§ = null;
         this.§&"d§ = {};
         var _loc1_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID;
         var _loc2_:Object = §4!&§ == §9!@§ ? (§?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.t && §?#,§.§3"1§.§7$?§.t.players ? §?#,§.§3"1§.§7$?§.t : this.§"Z§()) : this.§"Z§();
         if(_loc2_)
         {
            for each(_loc7_ in _loc2_.players)
            {
               if(_loc1_ == _loc7_.uid)
               {
                  this.§&"d§ = _loc7_;
                  break;
               }
            }
            var _loc3_:MovieClip = §@!D§.getItemByName("FriendsFirst").mClip;
            _loc3_.gotoAndStop(this.§>#W§);
            if(this.§&"d§ && this.§&"d§.r == 1)
            {
               _loc3_.gotoAndStop(this.§&#N§);
            }
            if(this.§;!E§.first)
            {
               this.§-"z§ = new § !'§(_loc3_.getChildByName("AvatarImage") as MovieClip,this.§;!E§.first);
               § $4§.§'#d§(_loc3_.getChildByName("txtName") as TextField,this.§;!E§.first.userName,§ "7§);
            }
            var _loc4_:TextField;
            (_loc4_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = this.§;#-§[0].toString();
            (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = this.§;!E§.first != null;
            (_loc3_.getChildByName("txtName") as TextField).visible = this.§;!E§.first != null;
            var _loc5_:MovieClip;
            (_loc5_ = §@!D§.getItemByName("FriendsSecond").mClip).gotoAndStop(this.§>#W§);
            if(this.§&"d§ && this.§&"d§.r == 2)
            {
               _loc5_.gotoAndStop(this.§&#N§);
            }
            if(this.§;!E§.second)
            {
               this.§;"a§ = new § !'§(_loc5_.getChildByName("AvatarImage") as MovieClip,this.§;!E§.second);
               § $4§.§'#d§(_loc5_.getChildByName("txtName") as TextField,this.§;!E§.second.userName,§ "7§);
            }
            (_loc4_ = (_loc5_.getChildByName("rewardText") as MovieClip).text).text = this.§;#-§[1].toString();
            (_loc5_.getChildByName("AvatarImage") as MovieClip).visible = this.§;!E§.second != null;
            (_loc5_.getChildByName("txtName") as TextField).visible = this.§;!E§.second != null;
            var _loc6_:MovieClip;
            (_loc6_ = §@!D§.getItemByName("FriendsThird").mClip).gotoAndStop(this.§>#W§);
            if(this.§&"d§ && this.§&"d§.r == 3)
            {
               _loc6_.gotoAndStop(this.§&#N§);
            }
            if(this.§;!E§.§=#v§)
            {
               this.§3"G§ = new § !'§(_loc6_.getChildByName("AvatarImage") as MovieClip,this.§;!E§.§=#v§);
               § $4§.§'#d§(_loc6_.getChildByName("txtName") as TextField,this.§;!E§.§=#v§.userName,§ "7§);
            }
            (_loc4_ = (_loc6_.getChildByName("rewardText") as MovieClip).text).text = this.§;#-§[2].toString();
            (_loc6_.getChildByName("AvatarImage") as MovieClip).visible = this.§;!E§.§=#v§ != null;
            (_loc6_.getChildByName("txtName") as TextField).visible = this.§;!E§.§=#v§ != null;
            if(this.§&"d§ && this.§&"d§.r)
            {
               if((_loc8_ = this.§&"d§.r - 1) >= 3)
               {
                  _loc8_ = 3;
                  _loc6_.gotoAndStop(this.§&#N§);
                  (_loc6_.getChildByName("txtRank") as TextField).visible = true;
                  (_loc6_.getChildByName("txtRank") as TextField).text = this.§""7§(this.§&"d§.r);
                  _loc6_.getChildByName("mcTrophyBronze").visible = false;
                  if(_loc9_ = this.§5!c§(this.§&"d§.r))
                  {
                     this.§3"G§ = new § !'§(_loc6_.getChildByName("AvatarImage") as MovieClip,_loc9_);
                     § $4§.§'#d§(_loc6_.getChildByName("txtName") as TextField,_loc9_.userName,§ "7§);
                     _loc4_.text = this.§;#-§[_loc8_];
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
                  _loc4_.text = this.§;#-§[_loc8_];
               }
               (§@!D§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = this.§;#-§[_loc8_] + "x";
               this.§]"J§[0] = this.§;#-§[_loc8_];
               §@!D§.getItemByName("FriendsRewards").mClip.mcCoin.visible = true;
               if(§4!&§ == §9!@§)
               {
                  §@!D§.getItemByName("FriendsRewards").mClip.RewardShine.visible = true;
                  if(§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.t && (!§?#,§.§3"1§.§7$?§ || !§?#,§.§3"1§.§7$?§.t))
                  {
                     this.§%!`§.stop();
                  }
                  else
                  {
                     this.§%!`§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§-#`§,§5"<§.§5!p§);
                     this.§%!`§.onComplete = this.§;"S§;
                     this.§%!`§.play();
                  }
               }
               else
               {
                  §@!D§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
               }
            }
            else
            {
               (§@!D§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = "";
               §@!D§.getItemByName("FriendsRewards").mClip.mcCoin.visible = false;
               §@!D§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
            }
            return;
         }
      }
      
      private function §,"8§() : void
      {
         var _loc1_:MovieClip = null;
         if(§4!&§ == §9!@§ && (this.§&"d§ && this.§&"d§.r >= 1 && this.§&"d§.r <= 3))
         {
            _loc1_ = this.§&"d§ && this.§&"d§.r == 1 ? §@!D§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§&"d§ && this.§&"d§.r == 2 ? §@!D§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §@!D§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
            _loc1_.visible = true;
            _loc1_.parent.setChildIndex(_loc1_,_loc1_.parent.numChildren - 1);
            if(this.§6"M§)
            {
               this.§6"M§.stop();
               this.§6"M§ = null;
            }
            this.§6"M§ = §5"<§.§3"1§.§3#§(_loc1_,{
               "scaleX":1.5,
               "scaleY":1.5
            },{
               "scaleX":1,
               "scaleY":1
            },this.§%"n§,§5"<§.§[u§,this.§^"V§);
            this.§6"M§.onComplete = this.§?6§;
            this.§6"M§.play();
            §4$4§.playSound("Get_Coins",§"$-§);
         }
         else if(§4!&§ == §9!@§ && !this.§;$,§)
         {
            this.§8"G§();
         }
      }
      
      private function §?6§() : void
      {
         if(this.§6"M§)
         {
            this.§6"M§.stop();
            this.§6"M§ = null;
         }
         if(this.§&"d§)
         {
            if(this.§&"d§.r == 1)
            {
               §@!D§.setText("" + (this.§6"q§[0] + 1),"GoldTrophiesTextfield");
            }
            if(this.§&"d§.r == 2)
            {
               §@!D§.setText("" + (this.§6"q§[1] + 1),"SilverTrophiesTextfield");
            }
            if(this.§&"d§.r == 3)
            {
               §@!D§.setText("" + (this.§6"q§[2] + 1),"BronzeTrophiesTextfield");
            }
         }
         var _loc1_:MovieClip = this.§&"d§.r == 1 ? §@!D§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§&"d§.r == 2 ? §@!D§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §@!D§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
         var _loc2_:§@#5§ = §5"<§.§3"1§.§3#§(_loc1_,{"scaleX":1.5},null,0.1);
         this.§6"M§ = §5"<§.§3"1§.§3#§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.5,
            "scaleY":1.5
         },this.§%"n§,§5"<§.§[u§);
         var _loc3_:§@#5§ = §5"<§.§3"1§.§]#6§(_loc2_,this.§6"M§);
         _loc3_.onComplete = this.§8"G§;
         _loc3_.play();
      }
      
      private function §8"G§() : void
      {
         if(this.§?x§[0])
         {
            this.§;$,§ = true;
            this.§]"1§();
            this.§>E§ = new Timer(200,1);
            this.§>E§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§!!G§);
            this.§>E§.start();
            this.§?x§[0] = false;
         }
      }
      
      private function §!!G§(param1:TimerEvent) : void
      {
         this.§>E§ = null;
         this.§&L§();
      }
      
      protected function §8C§(param1:§!g§) : void
      {
         if(this.§?x§[1])
         {
            this.§?x§[1] = false;
         }
         §!",§.§3"1§.§,"&§();
      }
      
      private function §"Z§() : Object
      {
         return §?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.t && §?#,§.§3"1§.§4"a§.t.players ? §?#,§.§3"1§.§4"a§.t : null;
      }
      
      private function §=R§() : Array
      {
         return §?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.t && §?#,§.§3"1§.§4"a§.t.prizeCounts ? §?#,§.§3"1§.§4"a§.t.prizeCounts : [0,0,0];
      }
      
      private function §&"P§() : void
      {
         var _loc6_:Object = null;
         var _loc7_:§3"Q§ = null;
         var _loc8_:§3"Q§ = null;
         var _loc9_:§3"Q§ = null;
         this.mPlayerPreviousPositionInLeague = {};
         var _loc1_:MovieClip = §@!D§.getItemByName("LeagueFirst").mClip;
         _loc1_.gotoAndStop(this.§>#W§);
         var _loc2_:MovieClip = §@!D§.getItemByName("LeagueSecond").mClip;
         _loc2_.gotoAndStop(this.§>#W§);
         var _loc3_:MovieClip = §@!D§.getItemByName("LeagueNotPodium").mClip;
         _loc3_.gotoAndStop(this.§>#W§);
         var _loc4_:Object = §?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.l ? §?#,§.§3"1§.§7$?§ : §?#,§.§3"1§.§4"a§;
         if(§?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.l)
         {
            _loc4_.lastResult = true;
         }
         else if(_loc4_)
         {
            _loc4_.lastResult = false;
         }
         this.mPreviousResult = _loc4_;
         if(!_loc4_ || !_loc4_.l || !_loc4_.l.p || !_loc4_.lastResult && §1$B§ == §9!@§ && !_loc4_.l)
         {
            this.§4p§(_loc4_);
            return;
         }
         var _loc5_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID;
         for each(_loc6_ in _loc4_.l.p)
         {
            if(_loc5_ == _loc6_.u)
            {
               this.mPlayerPreviousPositionInLeague = _loc6_;
               break;
            }
         }
         _loc7_ = this.§6"7§(1);
         _loc8_ = this.§6"7§(2);
         _loc9_ = this.§6"7§(3);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            _loc1_.gotoAndStop(this.§&#N§);
         }
         if(_loc7_)
         {
            this.§#"Q§ = new § !'§(_loc1_.getChildByName("AvatarImage") as MovieClip,_loc7_);
            § $4§.§'#d§(_loc1_.getChildByName("txtName") as TextField,_loc7_.userName,§ "7§);
         }
         var _loc10_:TextField;
         (_loc10_ = (_loc1_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[0] && _loc4_.l.p[0].c ? _loc4_.l.p[0].c.toString() : "0";
         _loc10_.visible = true;
         (_loc1_.getChildByName("AvatarImage") as MovieClip).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtName") as TextField).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtRank") as TextField).text = this.§""7§(1);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 2)
         {
            _loc2_.gotoAndStop(this.§&#N§);
         }
         if(_loc8_)
         {
            this.§<o§ = new § !'§(_loc2_.getChildByName("AvatarImage") as MovieClip,_loc8_);
            § $4§.§'#d§(_loc2_.getChildByName("txtName") as TextField,_loc8_.userName,§ "7§);
         }
         (_loc10_ = (_loc2_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[1] && _loc4_.l.p[1].c ? _loc4_.l.p[1].c.toString() : "0";
         (_loc2_.getChildByName("AvatarImage") as MovieClip).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtName") as TextField).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtRank") as TextField).text = this.§""7§(2);
         var _loc11_:Number = 2;
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r >= 3)
         {
            _loc3_.gotoAndStop(this.§&#N§);
            if(this.mPlayerPreviousPositionInLeague.r > 3)
            {
               _loc9_ = this.§6"7§(this.mPlayerPreviousPositionInLeague.r);
               _loc11_ = this.mPlayerPreviousPositionInLeague.r - 1;
            }
         }
         if(_loc9_)
         {
            §@!D§.getItemByName("LeagueNotPodium").setVisibility(true);
            this.§0j§ = new § !'§(_loc3_.getChildByName("AvatarImage") as MovieClip,_loc9_);
            § $4§.§'#d§(_loc3_.getChildByName("txtName") as TextField,_loc9_.userName,§ "7§);
            §@!D§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = true;
            §@!D§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = true;
            §@!D§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = true;
         }
         (_loc10_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].c ? _loc4_.l.p[_loc11_].c.toString() : "0";
         (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtName") as TextField).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtRank") as TextField).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].r ? this.§""7§(_loc4_.l.p[_loc11_].r) : "";
         if(!_loc9_)
         {
            §@!D§.getItemByName("LeagueNotPodium").setVisibility(false);
            §@!D§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = false;
            §@!D§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = false;
            §@!D§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = false;
         }
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.c)
         {
            this.§]"J§[1] = this.mPlayerPreviousPositionInLeague.c;
            (§@!D§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = this.mPlayerPreviousPositionInLeague.c + "x";
            §@!D§.getItemByName("LeagueRewards").mClip.mcCoin.visible = true;
            if(§4!&§ == §9!@§)
            {
               §@!D§.getItemByName("LeagueRewards").mClip.RewardShine.visible = true;
               if(§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.l && (!§?#,§.§3"1§.§7$?§ || !§?#,§.§3"1§.§7$?§.l))
               {
                  this.§!!&§.stop();
               }
               else
               {
                  this.§!!&§ = §5"<§.§3"1§.§3#§(§@!D§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§-#`§,§5"<§.§5!p§);
                  this.§!!&§.onComplete = this.§<P§;
                  this.§!!&§.play();
               }
            }
            else
            {
               §@!D§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
            }
         }
         else
         {
            (§@!D§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = "";
            §@!D§.getItemByName("LeagueRewards").mClip.mcCoin.visible = false;
            §@!D§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
         }
         this.§4p§(_loc4_);
      }
      
      private function §#S§(param1:Object, param2:Object) : Boolean
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
      
      private function §5a§() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:Object = §?#,§.§3"1§.§7$?§.l;
         if(!(_loc1_ && _loc1_.pli && _loc1_.pli.tn == §#!T§.§7!9§.id))
         {
            if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r && this.mPlayerPreviousPositionInLeague.r == 1)
            {
               this.§#"&§ = this.LEAGUE_WIN;
               _loc2_ = this.§#S§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
            else if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.p && this.mPlayerPreviousPositionInLeague.p == "u")
            {
               this.§#"&§ = this.§]"?§;
               _loc2_ = this.§#S§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.§#"&§ = this.§>"'§;
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
         }
      }
      
      private function §%#x§() : void
      {
         var caseId:uint = 0;
         var fn:Function = null;
         switch(this.§#"&§)
         {
            case this.LEAGUE_WIN:
               caseId = §!!`§;
               break;
            case this.§>"'§:
               caseId = §+"E§;
               break;
            case this.§]"?§:
               caseId = CASE_STAR_PROMOTION;
         }
         fn = function(param1:String):void
         {
            var _loc2_:String = null;
            §=#c§.§`$ §("permissionRequestComplete",fn);
            if(param1 == "true")
            {
               mPromotionAnimation.stop();
               _loc2_ = §#!T§.§5!&§(mPreviousResult.l.li.tn).name;
               §=#c§.§<!t§("shareTournamentResult",caseId,caseId == CASE_STAR_PROMOTION ? mPlayerPreviousPositionInLeague.s : _loc2_);
            }
         };
         §=#c§.addCallback("permissionRequestComplete",fn);
         §=#c§.§<!t§("askForPublishStreamPermission");
      }
      
      private function §""7§(param1:int) : String
      {
         return param1 + ".";
      }
      
      private function §5!c§(param1:int) : §#!&§
      {
         var _loc3_:Object = null;
         var _loc4_:§9$§ = null;
         if(§4!&§ == §with§)
         {
            return this.§!c§(param1);
         }
         var _loc2_:Object = §?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.t ? §?#,§.§3"1§.§7$?§.t : (§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.t ? §?#,§.§3"1§.§4"a§.t : null);
         if(_loc2_)
         {
            if(_loc2_.players)
            {
               if(param1 <= _loc2_.players.length)
               {
                  _loc3_ = _loc2_.players[param1 - 1];
                  if(_loc3_)
                  {
                     if(_loc4_ = §-#]§.§0B§(_loc3_.uid))
                     {
                        _loc3_.n = _loc4_.name;
                     }
                     return §#!&§.§5!I§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §!c§(param1:int) : §#!&§
      {
         var _loc2_:Object = null;
         var _loc3_:§9$§ = null;
         if(§?#,§.§3"1§.§4"a§ && §?#,§.§3"1§.§4"a§.t)
         {
            if(§?#,§.§3"1§.§4"a§.t.players)
            {
               if(param1 <= §?#,§.§3"1§.§4"a§.t.players.length)
               {
                  _loc2_ = §?#,§.§3"1§.§4"a§.t.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §-#]§.§0B§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §#!&§.§5!I§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §6"7§(param1:int) : §3"Q§
      {
         var _loc3_:Object = null;
         var _loc2_:Object = §?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.l ? §?#,§.§3"1§.§7$?§.l : §?#,§.§3"1§.§4"a§.l;
         if(_loc2_)
         {
            if(_loc2_.p)
            {
               if(param1 <= _loc2_.p.length)
               {
                  _loc3_ = _loc2_.p[param1 - 1];
                  if(_loc3_)
                  {
                     return §3"Q§.§5!I§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CLAIM":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               break;
            case "BACK":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               if(§4!&§ == §9!@§)
               {
                  §2"%§.§+#E§();
                  if(§5"L§.§3"1§.§2o§())
                  {
                     §7"Z§.§,#M§();
                     §%!?§(§7"Z§.STATE_NAME);
                  }
                  else
                  {
                     §4e§.§;#@§();
                     §?#,§.§3"1§.§5!i§();
                     §%!?§(§[$2§.STATE_NAME);
                  }
               }
               else if(§5"L§.§3"1§.§2o§())
               {
                  if(§5"L§.§3"1§.§@!-§() <= 0)
                  {
                     §7"Z§.§,#M§();
                     §%!?§(§7"Z§.STATE_NAME);
                  }
                  else
                  {
                     §%!?§(§4e§.STATE_NAME);
                  }
               }
               else if(this.§7"t§)
               {
                  §%!?§(§[$2§.STATE_NAME);
               }
               else
               {
                  §%!?§(§4e§.STATE_NAME);
               }
               break;
            case "showCredits":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(§+!Y§.STATE_NAME);
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
         this.§;$,§ = false;
         super.deActivate();
         if(this.§3"G§)
         {
            this.§3"G§.dispose();
         }
         if(this.§;"a§)
         {
            this.§;"a§.dispose();
         }
         if(this.§-"z§)
         {
            this.§-"z§.dispose();
         }
         if(this.§<_§)
         {
            this.§<_§.dispose();
         }
         if(this.§5"4§)
         {
            this.§5"4§.dispose();
         }
         if(this.§<o§)
         {
            this.§<o§.dispose();
         }
         if(this.§#"Q§)
         {
            this.§#"Q§.dispose();
         }
         if(this.§0j§)
         {
            this.§0j§.dispose();
         }
         if(this.mPromotionAnimation)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
         }
         this.§+E§(this.§1"w§);
         AngryBirdsBase.singleton.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§1#4§);
         AngryBirdsBase.singleton.stage.removeEventListener(Event.RESIZE,this.§&S§);
         §4$4§.§'!?§(§"$-§);
         if(this.§<"e§)
         {
            §?#,§.§3"1§.removeEventListener(§<#M§.§2$A§,this.§6"j§);
         }
         else
         {
            §?#,§.§3"1§.removeEventListener(§<#M§.§ !r§,this.§]!R§);
            §5"L§.§3"1§.removeEventListener(§<$!§.§'#n§,this.§6#S§);
         }
         this.§'$3§();
         this.§2"p§();
         §?#,§.§3"1§.removeEventListener(§<#M§.§-#4§,this.§;"%§);
         §?#,§.§3"1§.§]"m§();
         if(this.§5$'§)
         {
            this.§5$'§.deActivate();
         }
      }
      
      private function §'$3§() : void
      {
         this.§]"H§ = null;
         this.§0!8§ = null;
         if(§@!D§ && §@!D§.contains(this.§?#'§))
         {
            §@!D§.removeChild(this.§?#'§);
         }
         if(§@!D§ && §@!D§.contains(this.§2!g§))
         {
            §@!D§.removeChild(this.§2!g§);
         }
         this.§?#'§ = null;
         this.§2!g§ = null;
      }
      
      protected function §`"@§(param1:MouseEvent) : void
      {
      }
      
      protected function §6"j§(param1:§<#M§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:§-!>§ = null;
         if(param1.type == §<#M§.§2$A§)
         {
            §?#,§.§3"1§.removeEventListener(§<#M§.§2$A§,this.§6"j§);
            if(param1.data.t)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.t.items;
               _loc4_ = param1.data.t.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §-!>§();
                  this.§?x§[0] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §2$8§.§,"p§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§'#w§ = §]!P§.§ !"§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §!",§.§3"1§.§"#t§(param1.data.t,true,_loc2_);
            }
            if(param1.data.l)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.l.items;
               _loc4_ = param1.data.l.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §-!>§();
                  this.§?x§[1] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §2$8§.§,"p§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§'#w§ = §]!P§.§+#O§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §!",§.§3"1§.§"#t§(param1.data.l,true,_loc2_);
               this.§ "G§ = param1.data.l.items;
            }
            this.§>g§ = true;
         }
      }
      
      protected function §]!R§(param1:§<#M§) : void
      {
         var _loc2_:§-!>§ = null;
         if(param1.type == §<#M§.§ !r§)
         {
            _loc2_ = new §-!>§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§]"J§[1];
            _loc2_.currency = "IVC";
            _loc2_.§'#w§ = "LEAGUE_REWARD";
            _loc2_.itemType = §2$8§.§,"p§;
            §!",§.§3"1§.§"#t§(param1.data,false,[_loc2_]);
            this.§&L§();
            §!",§.§3"1§.§,"&§();
         }
      }
      
      protected function §6#S§(param1:§<$!§) : void
      {
         var _loc2_:§-!>§ = null;
         var _loc3_:Array = null;
         if(param1.type == §<$!§.§'#n§)
         {
            §@!D§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
            _loc2_ = new §-!>§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§]"J§[0];
            _loc2_.currency = "IVC";
            _loc2_.§'#w§ = "TOURNAMENT_REWARD";
            _loc2_.itemType = §2$8§.§,"p§;
            _loc3_ = [_loc2_];
            §!",§.§3"1§.§"#t§(param1.data,false,_loc3_);
            this.§]"1§();
            §!",§.§3"1§.§,"&§();
         }
      }
      
      protected function §;"%§(param1:§<#M§) : void
      {
         this.§&"P§();
      }
      
      private function §]"1§() : void
      {
         if(this.§]"H§)
         {
            this.§]"H§.reset();
            this.§]"H§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^"r§);
            this.§]"H§ = null;
         }
         this.§]"H§ = new Timer(100,1);
         this.§]"H§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^"r§);
         this.§]"H§.start();
      }
      
      protected function §^"r§(param1:TimerEvent) : void
      {
         var _loc2_:Point = null;
         if(this.§]"H§)
         {
            this.§]"H§.reset();
            this.§]"H§.removeEventListener(TimerEvent.TIMER,this.§^"r§);
            this.§]"H§ = null;
         }
         if(this.§2!g§)
         {
            this.§2!g§.txtRewardAmount.text = this.§]"J§[0] + " x";
         }
         this.§!X§ = §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§;
         this.§1"w§.setCoinsAmountText(this.§!X§);
         this.§1"w§.animateGotCoins(this.§]"J§[0]);
         if(this.§2!g§)
         {
            if(§@!D§ && §@!D§.contains(this.§2!g§))
            {
               §@!D§.removeChild(this.§2!g§);
            }
            this.§2!g§.scaleY = 0;
            this.§2!g§.scaleX = 0;
            _loc2_ = new Point(§@!D§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(§@!D§.getItemByName("FriendsRewards").mClip.width * 0.5,0)).x,§@!D§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§@!D§.getItemByName("FriendsRewards").mClip.height * 0.5)).y + 20);
            this.§?c§ = new §9#B§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§9#B§.§9h§,§9#B§.§?-§,§,#B§.§+#+§);
            §@!D§.addChild(this.§?c§);
            this.§'!2§.push(this.§?c§);
            this.§=![§();
         }
      }
      
      private function §=![§() : void
      {
         §@!D§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
         §@!D§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
         this.§5$'§.§`v§ = this.§^"[§();
         this.§5$'§.§'f§ = this.§^">§();
         this.§1#6§(true);
      }
      
      private function §&L§() : void
      {
         if(this.§0!8§)
         {
            this.§0!8§.reset();
            this.§0!8§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^Z§);
            this.§0!8§ = null;
         }
         this.§0!8§ = new Timer(100,1);
         this.§0!8§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^Z§);
         this.§0!8§.start();
      }
      
      protected function §^Z§(param1:TimerEvent) : void
      {
         if(this.§0!8§)
         {
            this.§0!8§.reset();
            this.§0!8§.removeEventListener(TimerEvent.TIMER,this.§^Z§);
            this.§0!8§ = null;
         }
         this.§!X§ = §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§;
         this.§1"w§.setCoinsAmountText(this.§!X§);
         this.§1"w§.animateGotCoins(this.§]"J§[1]);
         if(this.§?#'§)
         {
            this.§?#'§.txtRewardAmount.text = this.§]"J§[1] + " x";
            if(§@!D§ && §@!D§.contains(this.§?#'§))
            {
               §@!D§.removeChild(this.§?#'§);
            }
            this.§?#'§.scaleY = 0;
            this.§?#'§.scaleX = 0;
         }
         var _loc2_:Point = new Point(§@!D§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(§@!D§.getItemByName("LeagueRewards").mClip.width * 0.5,0)).x,§@!D§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§@!D§.getItemByName("LeagueRewards").mClip.height * 0.5)).y + 20);
         if(§?#,§.§3"1§.§7$?§ && §?#,§.§3"1§.§7$?§.l)
         {
            this.§?c§ = new §9#B§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§9#B§.§9h§,§9#B§.§?-§,§,#B§.§+#+§);
            §@!D§.addChild(this.§?c§);
            this.§'!2§.push(this.§?c§);
            this.§0!d§();
         }
      }
      
      private function §0!d§() : void
      {
         §@!D§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
         §@!D§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
      }
      
      private function §2"p§() : void
      {
         var _loc1_:§9#B§ = null;
         for each(_loc1_ in this.§'!2§)
         {
            if(§@!D§ && §@!D§.contains(_loc1_))
            {
               §@!D§.removeChild(_loc1_);
            }
            _loc1_.§ !1§();
         }
         this.§'!2§ = new Vector.<§9#B§>();
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §@!D§.getItemByName("walletContainer").mClip;
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
      
      private function §^">§() : Number
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
      
      private function §^"[§() : Number
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
      
      public function §<"b§() : void
      {
         this.§##R§();
      }
   }
}

import § "v§.§4$4§;
import §2$;§.§!"e§;
import §<8§.§6!1§;
import §<8§.§8!g§;
import §^#?§.§#!T§;
import com.rovio.assets.§=@§;
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
   
   private var mComponent:§!"e§;
   
   private var mClip:MovieClip;
   
   private var _mRunning:Boolean;
   
   private var mSkipButton:§6!1§;
   
   private var mBadgeFrom:DisplayObjectContainer;
   
   private var mBadgeTo:DisplayObjectContainer;
   
   private var mActivePromotionSounds:Array;
   
   private var mNextLeagueTextToLowerBanner:String;
   
   function LeaguePromotionAnimation(param1:§!"e§)
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
      §4$4§.§'!?§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL);
      if(this.mActivePromotionSounds)
      {
         _loc1_ = 0;
         while(_loc1_ < this.mActivePromotionSounds.length)
         {
            §4$4§.§'!?§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc1_);
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
         this.mNextLeagueTextToLowerBanner = §#!T§.§`"S§.id;
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
         this.mNextLeagueTextToLowerBanner = §#!T§.§`"S§.id;
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
      var _loc3_:Class = §=@§.§9!x§(param1);
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
                     §4$4§.§<!A§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,1,0.8);
                     §4$4§.playSound(_loc3_.name,PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,int.MAX_VALUE);
                  }
                  else
                  {
                     §4$4§.playSound(_loc3_.name,PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,0);
                  }
                  _loc3_.started = true;
               }
            }
            else if(_loc3_.endFrame <= this.mClip.currentFrame)
            {
               §4$4§.§'!?§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_);
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
   
   private function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
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
      §4$4§.§<!A§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,this.mActivePromotionSounds.length,0.8);
   }
}
