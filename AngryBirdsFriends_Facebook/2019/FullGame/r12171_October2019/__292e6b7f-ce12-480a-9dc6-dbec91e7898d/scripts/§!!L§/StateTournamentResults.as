package §!!L§
{
   import § "L§.§23§;
   import §!L§.§`#u§;
   import §"#X§.§"5§;
   import §"#X§.§8#g§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §#$?§.§7!b§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §&=§.§<#V§;
   import §&Y§.§@"E§;
   import §'n§.§+"g§;
   import §'n§.§5#v§;
   import §+`§.§%"q§;
   import §,#,§.§%"#§;
   import §,#,§.§0!u§;
   import §,#,§.§2§;
   import §,#,§.§3!R§;
   import §,#,§.§=#o§;
   import §,#,§.§>#§;
   import §,#,§.§>#g§;
   import §,#,§.§]§;
   import §-#;§.§;!t§;
   import §-#;§.§>",§;
   import §1#`§.§&#m§;
   import §2G§.§"A§;
   import §3"V§.§ b§;
   import §3"V§.§3,§;
   import §3"V§.§;"-§;
   import §3"V§.§^!7§;
   import §7"&§.§1k§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §>!G§.LeagueProgressBar;
   import §?#z§.§]$?§;
   import §]#'§.§4"s§;
   import §]#'§.§6#P§;
   import §]#'§.§<"F§;
   import §]§.§1$?§;
   import §]§.§3"E§;
   import §]§.§[#t§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`"t§.§7"U§;
   import §`,§.§7!$§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§[a§;
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
   
   public class StateTournamentResults extends §1$?§ implements §1k§, §+#?§
   {
      
      public static const STATE_NAME:String = "StateTournamentResults";
      
      private static const §%!x§:int = 370;
      
      public static const §9`§:int = 1;
      
      public static const §;"&§:int = 2;
      
      private static var §<#9§:int = 1;
      
      private static var §^#?§:Boolean;
      
      public static var §7$A§:Boolean = false;
      
      private static const §6"g§:int = 10000;
      
      public static var §^z§:int = 0;
      
      public static const §<7§:uint = 1;
      
      public static const §+$<§:uint = 2;
      
      public static const CASE_STAR_PROMOTION:uint = 3;
      
      public static const CASE_FRIENDS_1ST:uint = 4;
      
      public static const CASE_FRIENDS_2ND:uint = 5;
      
      public static const CASE_FRIENDS_3RD:uint = 6;
      
      private static const §"!l§:String = "TournamentResultSoundChannel";
       
      
      private var §>"I§:§>#§;
      
      private var §<!w§:§<"F§;
      
      private var §@!e§:§<"F§;
      
      private var §=!§:§<"F§;
      
      private var §2#$§:§<"F§;
      
      private var §'o§:§<"F§;
      
      private var §@#x§:§<"F§;
      
      private var §##9§:§<"F§;
      
      private var §""=§:§<"F§;
      
      protected var §&u§:Font;
      
      private var §;#_§:LeagueProgressBar;
      
      private const §,!z§:String = "ACTIVE";
      
      private const § #g§:String = "INACTIVE";
      
      private var §1E§:Boolean = true;
      
      private var §-"D§:MovieClip;
      
      private var §=!Y§:MovieClip;
      
      private var §3#A§:Array;
      
      protected var §1=§:§;!t§;
      
      protected var §2!^§:Vector.<§;!t§>;
      
      private var §finally§:Number;
      
      private var §&"'§:Timer;
      
      private var § #f§:Timer;
      
      private var §5"1§:Class;
      
      private var §6W§:MovieClip;
      
      private var §+"i§:MovieClip;
      
      private var §4!T§:Array;
      
      private var §"#W§:Wallet;
      
      private var §"#`§:Number;
      
      private var §do §:§@$-§;
      
      private var §8$5§:§@$-§;
      
      private var §0"2§:Object;
      
      private var mPlayerPreviousPositionInLeague:Object;
      
      private var §^!F§:§@$-§;
      
      private var §,4§:Array;
      
      private var §]?§:Array;
      
      private var mPreviousResult:Object = null;
      
      private var §=#?§:Boolean = false;
      
      private var §<"m§:Number = 0.2;
      
      private var §%!§:Number = 0.2;
      
      private var §&#]§:Boolean;
      
      private var §6"V§:Number = 0.2;
      
      private var §;#c§:Number = 1.2;
      
      private var §^">§:Number = 20.0;
      
      private var LEAGUE_WIN:uint = 1;
      
      private var §]Y§:uint = 2;
      
      private var §<8§:uint = 3;
      
      private var §3!D§:uint;
      
      private var §5h§:Object;
      
      private var §9!_§:Array;
      
      private var mPromotionAnimation:LeaguePromotionAnimation;
      
      private var §?"A§:int = 0;
      
      private var §@$>§:Timer;
      
      private var §%"w§:Boolean = false;
      
      public function StateTournamentResults(param1:§]#q§, param2:Boolean, param3:§%"q§)
      {
         this.§&u§ = new AngryBirdsFont();
         this.§3#A§ = [0,0.25,0.5,0.75,1];
         this.§4!T§ = [0,0];
         this.§]?§ = [false,false];
         super(param1,param2,STATE_NAME,param3);
      }
      
      public static function get §+G§() : int
      {
         return §<#9§;
      }
      
      public static function set §+G§(param1:int) : void
      {
         §<#9§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§5"1§ = §[a§.§8#k§("GiftCarousel");
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_Tournament_Results[0]);
         this.§;#_§ = new LeagueProgressBar(§;!w§);
         this.§=!Y§ = §;!w§.getItemByName("FriendsResult").mClip;
         this.§-"D§ = §;!w§.getItemByName("LeaguesResult").mClip;
      }
      
      private function §6#l§(param1:Boolean = false) : void
      {
         this.§;#_§.removeEventListener(§5#v§.§[!E§,this.§ "c§);
         this.§;#_§.addEventListener(§5#v§.§[!E§,this.§ "c§);
         this.§;#_§.§;!E§(this.mPreviousResult,§<#9§,param1);
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§3,§ = null;
         var _loc3_:§^!7§ = null;
         super.activate(param1);
         this.§%"w§ = §7!$§.§+!,§.§!$#§();
         this.§<"0§();
         this.§#">§();
         this.§?!6§();
         this.§+"n§();
         this.§4#0§();
         this.§'!V§();
         this.§]!1§();
         this.§8"N§();
         this.§?U§();
         this.§=_§();
         this.§3!?§();
         this.§##p§();
         this.§6#l§();
         this.§?"E§();
         this.§3!o§();
         this.§&!J§();
         this.§]?§ = [false,false];
         this.§=#?§ = false;
         this.§&#]§ = false;
         if(§<#9§ == §9`§ && (§4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.l || §4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.t || !§4"s§.§+!,§.§]"g§()))
         {
            §4"s§.§+!,§.§#!+§(§^z§);
            §^z§ = 0;
            § b§.§%#C§(§"!l§,10,0.8);
            § b§.playSound("BirdsApplause",§"!l§);
            _loc2_ = § b§.§]!L§(AngryBirdsBase.§6#f§);
            if(_loc2_.§'#@§ <= 0)
            {
               _loc3_ = §@z§.§ !D§.§'e§();
               _loc3_.§%Q§(§;"-§.§,#[§);
            }
         }
         §;!w§.getItemByName("loadingResults").setVisibility(false);
         AngryBirdsBase.singleton.playThemeMusic();
         this.§=!I§();
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
         this.§?"A§ = 0;
      }
      
      private function §=!I§() : void
      {
         var _loc3_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = false;
         var _loc11_:* = false;
         if(§+G§ != §9`§)
         {
            return;
         }
         var _loc1_:Object = §4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.t && §4"s§.§+!,§.§]$ §.t.players ? §4"s§.§+!,§.§]$ §.t : this.§""n§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         for each(_loc6_ in _loc1_.players)
         {
            if(_loc6_.uid == _loc2_)
            {
               _loc3_ = _loc6_;
            }
            else if(_loc6_.uid == §"A§.BIRD_BOT_1)
            {
               _loc4_ = _loc6_.p;
            }
            if(_loc6_.uid == §"A§.BIRD_BOT_2)
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
            §3";§.§#"'§().§+m§(_loc7_,_loc8_,_loc10_,_loc11_,_loc1_.players.length,_loc3_.r,_loc3_.p,_loc9_);
         }
      }
      
      private function §3!o§() : void
      {
         if(this.mPromotionAnimation != null)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
            this.mPromotionAnimation = null;
         }
         if(§<#9§ == §;"&§)
         {
            §;!w§.getItemByName("Promotion_Main_Anim").setVisibility(false);
         }
         else
         {
            this.mPromotionAnimation = new LeaguePromotionAnimation(§23§(§;!w§.getItemByName("Promotion_Main_Anim")));
            this.mPromotionAnimation.activate();
         }
      }
      
      private function §##p§() : void
      {
         var _loc1_:Number = this.§3"r§();
         var _loc2_:Number = this.§9!B§();
         if(this.§;#_§)
         {
            this.§;#_§.§,"W§ = _loc1_;
            this.§;#_§.§0!F§ = _loc2_;
         }
      }
      
      private function §&!J§() : void
      {
         this.§6"h§(new Wallet(this,true,false));
         this.§"#W§.§`#8§.scaleY = 1.3;
         this.§"#W§.§`#8§.scaleX = 1.3;
         this.§"#`§ = §=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§;
         this.§"#W§.setCoinsAmountText(this.§"#`§);
      }
      
      private function §+"n§() : void
      {
         §;!w§.setText("" + §4"s§.§+!,§.bronzeTrophies,"BronzeTrophiesTextfield");
         §;!w§.setText("" + §4"s§.§+!,§.silverTrophies,"SilverTrophiesTextfield");
         §;!w§.setText("" + §4"s§.§+!,§.goldTrophies,"GoldTrophiesTextfield");
         this.§,4§ = new Array();
         this.§,4§.push(§4"s§.§+!,§.goldTrophies);
         this.§,4§.push(§4"s§.§+!,§.silverTrophies);
         this.§,4§.push(§4"s§.§+!,§.bronzeTrophies);
      }
      
      private function §?U§() : void
      {
         AngryBirdsBase.singleton.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§+s§);
         AngryBirdsBase.singleton.stage.addEventListener(Event.RESIZE,this.§@V§);
         if(this.§1E§)
         {
            §4"s§.§+!,§.addEventListener(§+"g§.§0$1§,this.§function§);
         }
         else
         {
            §7!$§.§+!,§.addEventListener(§&#m§.§8#?§,this.§8y§);
            §4"s§.§+!,§.addEventListener(§+"g§.§+!w§,this.§#"X§);
         }
         §4"s§.§+!,§.addEventListener(§+"g§.§[$8§,this.§@!;§);
      }
      
      private function §#">§() : void
      {
         this.§>"I§ = new §>#§();
         this.§>"I§.first = this.§0!H§(1);
         this.§>"I§.second = this.§0!H§(2);
         this.§>"I§.§]"j§ = this.§0!H§(3);
         this.§>"I§.§8#r§ = this.§0!H§(4);
         §;!w§.getItemByName("FriendsFirst").mClip.gotoAndStop(0);
         §;!w§.getItemByName("FriendsSecond").mClip.gotoAndStop(0);
         §;!w§.getItemByName("FriendsThird").mClip.gotoAndStop(0);
         §;!w§.getItemByName("LeagueFirst").mClip.gotoAndStop(0);
         §;!w§.getItemByName("LeagueSecond").mClip.gotoAndStop(0);
         §;!w§.getItemByName("LeagueNotPodium").mClip.gotoAndStop(0);
      }
      
      private function §<"0§() : void
      {
         §;!w§.getItemByName("loadingResults").setVisibility(true);
         §;!w§.getItemByName("loadingResults").goToFrame(1,true);
         §;!w§.getItemByName("Banner_LastWeek").setVisibility(§<#9§ == §;"&§);
         §;!w§.getItemByName("Button_Back").setVisibility(§<#9§ == §;"&§);
         if(AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN || AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
         {
            §^#?§ = true;
         }
      }
      
      private function §?!6§() : void
      {
         this.§2!^§ = new Vector.<§;!t§>();
         this.§6W§ = new this.§5"1§();
         this.§+"i§ = new this.§5"1§();
         this.§8$5§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§^">§,§6"W§.§[X§);
         this.§do § = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§^">§,§6"W§.§[X§);
      }
      
      private function §]<§() : void
      {
         this.§8$5§ = null;
         this.§8$5§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§^">§,§6"W§.§[X§);
         this.§8$5§.onComplete = this.§]<§;
         this.§8$5§.play();
      }
      
      private function §8#x§() : void
      {
         this.§do § = null;
         this.§do § = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§^">§,§6"W§.§[X§);
         this.§do §.onComplete = this.§8#x§;
         this.§do §.play();
      }
      
      private function §]!1§() : void
      {
         if(§<#9§ == §;"&§)
         {
            if(§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.t)
            {
               §;!w§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
            }
            if(§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.l)
            {
               §;!w§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
            }
         }
         else
         {
            §;!w§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
            §;!w§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         }
      }
      
      private function §;"m§() : void
      {
         §;!w§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §;!w§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §;!w§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
         §;!w§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
      }
      
      private function §8"N§() : void
      {
         §;!w§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = false;
         §;!w§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = false;
         §;!w§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = true;
         §;!w§.getItemByName("LeagueFirst").setVisibility(true);
         §;!w§.getItemByName("LeagueSecond").setVisibility(true);
         §;!w§.getItemByName("LeagueNotPodium").setVisibility(true);
      }
      
      private function §6!n§() : void
      {
         §;!w§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         §;!w§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = true;
         §;!w§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.text = "Complete any level to join the league";
         §;!w§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = true;
         §;!w§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = false;
         §;!w§.getItemByName("LeagueFirst").setVisibility(false);
         §;!w§.getItemByName("LeagueSecond").setVisibility(false);
         §;!w§.getItemByName("LeagueNotPodium").setVisibility(false);
         §7$A§ = true;
      }
      
      private function §'!V§() : void
      {
         §;!w§.getItemByName("LeagueRewards").mClip.btnClaimLeagueReward.visible = false;
         §;!w§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
      }
      
      protected function §@V§(param1:Event) : void
      {
         §^#?§ = true;
      }
      
      protected function §+s§(param1:FullScreenEvent) : void
      {
         §^#?§ = true;
      }
      
      private function §;l§() : void
      {
         this.§=!Y§.x = §]$?§.§@S§() * this.§3#A§[1] - this.§=!Y§.width * 0.5;
         this.§-"D§.x = §]$?§.§@S§() * this.§3#A§[3] - this.§-"D§.width * 0.5;
         this.§6W§.x = §;!w§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§6W§.y = §;!w§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§;!w§.getItemByName("FriendsRewards").mClip.height * 0.5)).y;
         this.§+"i§.x = §;!w§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§+"i§.y = §;!w§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§;!w§.getItemByName("LeagueRewards").mClip.height * 0.5)).y;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:§;!t§ = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:uint = 0;
         super.update(param1);
         if(this.§5h§ && (this.mPromotionAnimation && !this.mPromotionAnimation.running))
         {
            for each(_loc4_ in this.§5h§)
            {
               for each(_loc5_ in §@"E§.§]e§)
               {
                  if(_loc5_[§@"E§.§&"`§].toUpperCase() == _loc4_.i.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new §@"E§(_loc5_[§@"E§.§&"`§],§@"E§.§!!?§));
                  }
               }
            }
            this.§5h§ = null;
         }
         if(§<#9§ == §9`§)
         {
            if(§7$A§)
            {
               if(!AngryBirdsBase.singleton.popupManager.§[#a§())
               {
                  §7$A§ = false;
                  §;!w§.getItemByName("Button_Back").setVisibility(true);
                  this.§2!@§();
               }
               this.§?"A§ = §6"g§;
            }
            else if(this.§?"A§ < §6"g§)
            {
               this.§?"A§ += param1;
               if(this.§?"A§ >= §6"g§)
               {
                  §;!w§.getItemByName("Button_Back").setVisibility(true);
               }
            }
         }
         if(this.mPromotionAnimation && this.mPromotionAnimation.running)
         {
            if((_loc6_ = this.mPromotionAnimation.update()) == LeaguePromotionAnimation.ACTION_SHARE)
            {
               this.§3"U§();
            }
            else if(_loc6_ == LeaguePromotionAnimation.ACTION_SKIP)
            {
               this.mPromotionAnimation.stop();
            }
         }
         if(this.§=#?§)
         {
            this.§=#?§ = false;
            if(!this.§&#]§)
            {
               this.§"$<§();
            }
         }
         if(!this.§;#_§.§+#@§() || §^#?§)
         {
            §^#?§ = false;
         }
         if(this.§;#_§)
         {
            this.§;#_§.update(param1);
         }
         var _loc2_:Number = getTimer() - this.§finally§;
         this.§finally§ = getTimer();
         for each(_loc3_ in this.§2!^§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §?"E§() : void
      {
         var _loc5_:§0!u§ = null;
         var _loc6_:Object = null;
         var _loc7_:§"5§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         if(§<#9§ == §9`§)
         {
            if(!§4"s§.§+!,§.§]$ § || §4"s§.§+!,§.§]$ §.t && !§4"s§.§+!,§.§]$ §.t.players)
            {
               (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§9"^§,_loc1_);
               return;
            }
         }
         else if(!§4"s§.§+!,§.§=!j§ || §4"s§.§+!,§.§=!j§.t && !§4"s§.§+!,§.§=!j§.t.players)
         {
            (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§9"^§,_loc1_);
            return;
         }
         var _loc4_:Object = null;
         if(§<#9§ == §9`§)
         {
            if(§4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.t && §4"s§.§+!,§.§]$ §.t.players)
            {
               _loc4_ = §4"s§.§+!,§.§]$ §.t.players;
            }
         }
         else if(§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.t && §4"s§.§+!,§.§=!j§.t.players)
         {
            _loc4_ = §4"s§.§+!,§.§=!j§.t.players;
         }
         if(_loc4_)
         {
            for each(_loc6_ in _loc4_)
            {
               _loc6_.c = _loc6_.r - 1 < this.§9!_§.length ? this.§9!_§[_loc6_.r - 1] : this.§9!_§[this.§9!_§.length - 1];
               _loc5_ = §2#9§.§"!U§(_loc6_);
               if(§2#9§(_loc5_) != null)
               {
                  §2#9§(_loc5_).§"!T§ = "";
               }
               if(_loc7_ = §8#g§.§^!O§(_loc6_.uid))
               {
                  _loc5_.userName = _loc7_.name;
               }
               _loc1_.push(_loc5_);
            }
         }
         if(§4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.l && §4"s§.§+!,§.§]$ §.l.p)
         {
            for each(_loc6_ in §4"s§.§+!,§.§]$ §.l.p)
            {
               _loc5_ = §3!R§.§"!U§(_loc6_);
               _loc3_.push(_loc5_);
            }
         }
         if(§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.l && §4"s§.§+!,§.§=!j§.l.p)
         {
            for each(_loc6_ in §4"s§.§+!,§.§=!j§.l.p)
            {
               _loc5_ = §3!R§.§"!U§(_loc6_);
               _loc2_.push(_loc5_);
            }
         }
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§9"^§,_loc1_);
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§]#R§,_loc2_);
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§0#V§,_loc3_);
      }
      
      private function §<"A§(param1:Object = null) : void
      {
         if(!param1 || !param1.l)
         {
            this.§6!n§();
         }
         else
         {
            this.§8"N§();
         }
      }
      
      private function §4#0§() : void
      {
         this.§9!_§ = §+G§ == §9`§ ? (§4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.t && §4"s§.§+!,§.§]$ §.t.prizeCounts ? §4"s§.§+!,§.§]$ §.t.prizeCounts : this.§[#^§()) : this.§[#^§();
      }
      
      private function §=_§() : void
      {
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:§2#9§ = null;
         this.§0"2§ = {};
         var _loc1_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID;
         var _loc2_:Object = §+G§ == §9`§ ? (§4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.t && §4"s§.§+!,§.§]$ §.t.players ? §4"s§.§+!,§.§]$ §.t : this.§""n§()) : this.§""n§();
         if(_loc2_)
         {
            for each(_loc7_ in _loc2_.players)
            {
               if(_loc1_ == _loc7_.uid)
               {
                  this.§0"2§ = _loc7_;
                  break;
               }
            }
            var _loc3_:MovieClip = §;!w§.getItemByName("FriendsFirst").mClip;
            _loc3_.gotoAndStop(this.§ #g§);
            if(this.§0"2§ && this.§0"2§.r == 1)
            {
               _loc3_.gotoAndStop(this.§,!z§);
            }
            if(this.§>"I§.first)
            {
               this.§<!w§ = new §<"F§(_loc3_.getChildByName("AvatarImage") as MovieClip,this.§>"I§.first);
               §7"U§.§+$5§(_loc3_.getChildByName("txtName") as TextField,this.§>"I§.first.userName,§%!x§);
            }
            var _loc4_:TextField;
            (_loc4_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = this.§9!_§[0].toString();
            (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = this.§>"I§.first != null;
            (_loc3_.getChildByName("txtName") as TextField).visible = this.§>"I§.first != null;
            var _loc5_:MovieClip;
            (_loc5_ = §;!w§.getItemByName("FriendsSecond").mClip).gotoAndStop(this.§ #g§);
            if(this.§0"2§ && this.§0"2§.r == 2)
            {
               _loc5_.gotoAndStop(this.§,!z§);
            }
            if(this.§>"I§.second)
            {
               this.§@!e§ = new §<"F§(_loc5_.getChildByName("AvatarImage") as MovieClip,this.§>"I§.second);
               §7"U§.§+$5§(_loc5_.getChildByName("txtName") as TextField,this.§>"I§.second.userName,§%!x§);
            }
            (_loc4_ = (_loc5_.getChildByName("rewardText") as MovieClip).text).text = this.§9!_§[1].toString();
            (_loc5_.getChildByName("AvatarImage") as MovieClip).visible = this.§>"I§.second != null;
            (_loc5_.getChildByName("txtName") as TextField).visible = this.§>"I§.second != null;
            var _loc6_:MovieClip;
            (_loc6_ = §;!w§.getItemByName("FriendsThird").mClip).gotoAndStop(this.§ #g§);
            if(this.§0"2§ && this.§0"2§.r == 3)
            {
               _loc6_.gotoAndStop(this.§,!z§);
            }
            if(this.§>"I§.§]"j§)
            {
               this.§=!§ = new §<"F§(_loc6_.getChildByName("AvatarImage") as MovieClip,this.§>"I§.§]"j§);
               §7"U§.§+$5§(_loc6_.getChildByName("txtName") as TextField,this.§>"I§.§]"j§.userName,§%!x§);
            }
            (_loc4_ = (_loc6_.getChildByName("rewardText") as MovieClip).text).text = this.§9!_§[2].toString();
            (_loc6_.getChildByName("AvatarImage") as MovieClip).visible = this.§>"I§.§]"j§ != null;
            (_loc6_.getChildByName("txtName") as TextField).visible = this.§>"I§.§]"j§ != null;
            if(this.§0"2§ && this.§0"2§.r)
            {
               if((_loc8_ = this.§0"2§.r - 1) >= 3)
               {
                  _loc8_ = 3;
                  _loc6_.gotoAndStop(this.§,!z§);
                  (_loc6_.getChildByName("txtRank") as TextField).visible = true;
                  (_loc6_.getChildByName("txtRank") as TextField).text = this.§@!p§(this.§0"2§.r);
                  _loc6_.getChildByName("mcTrophyBronze").visible = false;
                  if(_loc9_ = this.§0!H§(this.§0"2§.r))
                  {
                     this.§=!§ = new §<"F§(_loc6_.getChildByName("AvatarImage") as MovieClip,_loc9_);
                     §7"U§.§+$5§(_loc6_.getChildByName("txtName") as TextField,_loc9_.userName,§%!x§);
                     _loc4_.text = this.§9!_§[_loc8_];
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
                  _loc4_.text = this.§9!_§[_loc8_];
               }
               (§;!w§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = this.§9!_§[_loc8_] + "x";
               this.§4!T§[0] = this.§9!_§[_loc8_];
               §;!w§.getItemByName("FriendsRewards").mClip.mcCoin.visible = true;
               if(§+G§ == §9`§)
               {
                  §;!w§.getItemByName("FriendsRewards").mClip.RewardShine.visible = true;
                  if(§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.t && (!§4"s§.§+!,§.§]$ § || !§4"s§.§+!,§.§]$ §.t))
                  {
                     this.§8$5§.stop();
                  }
                  else
                  {
                     this.§8$5§ = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§^">§,§6"W§.§[X§);
                     this.§8$5§.onComplete = this.§]<§;
                     this.§8$5§.play();
                  }
               }
               else
               {
                  §;!w§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
               }
            }
            else
            {
               (§;!w§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = "";
               §;!w§.getItemByName("FriendsRewards").mClip.mcCoin.visible = false;
               §;!w§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
            }
            return;
         }
      }
      
      private function §"$<§() : void
      {
         var _loc1_:MovieClip = null;
         if(§+G§ == §9`§ && (this.§0"2§ && this.§0"2§.r >= 1 && this.§0"2§.r <= 3))
         {
            _loc1_ = this.§0"2§ && this.§0"2§.r == 1 ? §;!w§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§0"2§ && this.§0"2§.r == 2 ? §;!w§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §;!w§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
            _loc1_.visible = true;
            _loc1_.parent.setChildIndex(_loc1_,_loc1_.parent.numChildren - 1);
            if(this.§^!F§)
            {
               this.§^!F§.stop();
               this.§^!F§ = null;
            }
            this.§^!F§ = §6"W§.§+!,§.§9!n§(_loc1_,{
               "scaleX":1.5,
               "scaleY":1.5
            },{
               "scaleX":1,
               "scaleY":1
            },this.§<"m§,§6"W§.§%#T§,this.§%!§);
            this.§^!F§.onComplete = this.§&$%§;
            this.§^!F§.play();
            § b§.playSound("Get_Coins",§"!l§);
         }
         else if(§+G§ == §9`§ && !this.§&#]§)
         {
            this.§&#J§();
         }
      }
      
      private function §&$%§() : void
      {
         if(this.§^!F§)
         {
            this.§^!F§.stop();
            this.§^!F§ = null;
         }
         if(this.§0"2§)
         {
            if(this.§0"2§.r == 1)
            {
               §;!w§.setText("" + (this.§,4§[0] + 1),"GoldTrophiesTextfield");
            }
            if(this.§0"2§.r == 2)
            {
               §;!w§.setText("" + (this.§,4§[1] + 1),"SilverTrophiesTextfield");
            }
            if(this.§0"2§.r == 3)
            {
               §;!w§.setText("" + (this.§,4§[2] + 1),"BronzeTrophiesTextfield");
            }
         }
         var _loc1_:MovieClip = this.§0"2§.r == 1 ? §;!w§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§0"2§.r == 2 ? §;!w§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §;!w§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
         var _loc2_:§@$-§ = §6"W§.§+!,§.§9!n§(_loc1_,{"scaleX":1.5},null,0.1);
         this.§^!F§ = §6"W§.§+!,§.§9!n§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.5,
            "scaleY":1.5
         },this.§<"m§,§6"W§.§%#T§);
         var _loc3_:§@$-§ = §6"W§.§+!,§.§9S§(_loc2_,this.§^!F§);
         _loc3_.onComplete = this.§&#J§;
         _loc3_.play();
      }
      
      private function §&#J§() : void
      {
         if(this.§]?§[0])
         {
            this.§&#]§ = true;
            this.§@!9§();
            this.§@$>§ = new Timer(200,1);
            this.§@$>§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§`$-§);
            this.§@$>§.start();
            this.§]?§[0] = false;
         }
      }
      
      private function §`$-§(param1:TimerEvent) : void
      {
         this.§@$>§ = null;
         this.§^!Z§();
      }
      
      protected function § "c§(param1:§5#v§) : void
      {
         if(this.§]?§[1])
         {
            this.§]?§[1] = false;
         }
         §]#0§.§+!,§.§@!z§();
      }
      
      private function §""n§() : Object
      {
         return §4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.t && §4"s§.§+!,§.§=!j§.t.players ? §4"s§.§+!,§.§=!j§.t : null;
      }
      
      private function §[#^§() : Array
      {
         return §4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.t && §4"s§.§+!,§.§=!j§.t.prizeCounts ? §4"s§.§+!,§.§=!j§.t.prizeCounts : [0,0,0];
      }
      
      private function §3!?§() : void
      {
         var _loc6_:Object = null;
         var _loc7_:§3!R§ = null;
         var _loc8_:§3!R§ = null;
         var _loc9_:§3!R§ = null;
         this.mPlayerPreviousPositionInLeague = {};
         var _loc1_:MovieClip = §;!w§.getItemByName("LeagueFirst").mClip;
         _loc1_.gotoAndStop(this.§ #g§);
         var _loc2_:MovieClip = §;!w§.getItemByName("LeagueSecond").mClip;
         _loc2_.gotoAndStop(this.§ #g§);
         var _loc3_:MovieClip = §;!w§.getItemByName("LeagueNotPodium").mClip;
         _loc3_.gotoAndStop(this.§ #g§);
         var _loc4_:Object = §4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.l ? §4"s§.§+!,§.§]$ § : §4"s§.§+!,§.§=!j§;
         if(§4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.l)
         {
            _loc4_.lastResult = true;
         }
         else if(_loc4_)
         {
            _loc4_.lastResult = false;
         }
         this.mPreviousResult = _loc4_;
         if(!_loc4_ || !_loc4_.l || !_loc4_.l.p || !_loc4_.lastResult && §<#9§ == §9`§ && !_loc4_.l)
         {
            this.§<"A§(_loc4_);
            return;
         }
         var _loc5_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID;
         for each(_loc6_ in _loc4_.l.p)
         {
            if(_loc5_ == _loc6_.u)
            {
               this.mPlayerPreviousPositionInLeague = _loc6_;
               break;
            }
         }
         _loc7_ = this.§ "N§(1);
         _loc8_ = this.§ "N§(2);
         _loc9_ = this.§ "N§(3);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            _loc1_.gotoAndStop(this.§,!z§);
         }
         if(_loc7_)
         {
            this.§'o§ = new §<"F§(_loc1_.getChildByName("AvatarImage") as MovieClip,_loc7_);
            §7"U§.§+$5§(_loc1_.getChildByName("txtName") as TextField,_loc7_.userName,§%!x§);
         }
         var _loc10_:TextField;
         (_loc10_ = (_loc1_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[0] && _loc4_.l.p[0].c ? _loc4_.l.p[0].c.toString() : "0";
         _loc10_.visible = true;
         (_loc1_.getChildByName("AvatarImage") as MovieClip).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtName") as TextField).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtRank") as TextField).text = this.§@!p§(1);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 2)
         {
            _loc2_.gotoAndStop(this.§,!z§);
         }
         if(_loc8_)
         {
            this.§@#x§ = new §<"F§(_loc2_.getChildByName("AvatarImage") as MovieClip,_loc8_);
            §7"U§.§+$5§(_loc2_.getChildByName("txtName") as TextField,_loc8_.userName,§%!x§);
         }
         (_loc10_ = (_loc2_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[1] && _loc4_.l.p[1].c ? _loc4_.l.p[1].c.toString() : "0";
         (_loc2_.getChildByName("AvatarImage") as MovieClip).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtName") as TextField).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtRank") as TextField).text = this.§@!p§(2);
         var _loc11_:Number = 2;
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r >= 3)
         {
            _loc3_.gotoAndStop(this.§,!z§);
            if(this.mPlayerPreviousPositionInLeague.r > 3)
            {
               _loc9_ = this.§ "N§(this.mPlayerPreviousPositionInLeague.r);
               _loc11_ = this.mPlayerPreviousPositionInLeague.r - 1;
            }
         }
         if(_loc9_)
         {
            §;!w§.getItemByName("LeagueNotPodium").setVisibility(true);
            this.§""=§ = new §<"F§(_loc3_.getChildByName("AvatarImage") as MovieClip,_loc9_);
            §7"U§.§+$5§(_loc3_.getChildByName("txtName") as TextField,_loc9_.userName,§%!x§);
            §;!w§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = true;
            §;!w§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = true;
            §;!w§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = true;
         }
         (_loc10_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].c ? _loc4_.l.p[_loc11_].c.toString() : "0";
         (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtName") as TextField).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtRank") as TextField).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].r ? this.§@!p§(_loc4_.l.p[_loc11_].r) : "";
         if(!_loc9_)
         {
            §;!w§.getItemByName("LeagueNotPodium").setVisibility(false);
            §;!w§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = false;
            §;!w§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = false;
            §;!w§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = false;
         }
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.c)
         {
            this.§4!T§[1] = this.mPlayerPreviousPositionInLeague.c;
            (§;!w§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = this.mPlayerPreviousPositionInLeague.c + "x";
            §;!w§.getItemByName("LeagueRewards").mClip.mcCoin.visible = true;
            if(§+G§ == §9`§)
            {
               §;!w§.getItemByName("LeagueRewards").mClip.RewardShine.visible = true;
               if(§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.l && (!§4"s§.§+!,§.§]$ § || !§4"s§.§+!,§.§]$ §.l))
               {
                  this.§do §.stop();
               }
               else
               {
                  this.§do § = §6"W§.§+!,§.§9!n§(§;!w§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§^">§,§6"W§.§[X§);
                  this.§do §.onComplete = this.§8#x§;
                  this.§do §.play();
               }
            }
            else
            {
               §;!w§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
            }
         }
         else
         {
            (§;!w§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = "";
            §;!w§.getItemByName("LeagueRewards").mClip.mcCoin.visible = false;
            §;!w§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
         }
         this.§<"A§(_loc4_);
      }
      
      private function §1"B§(param1:Object, param2:Object) : Boolean
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
      
      private function §2!@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:Object = §4"s§.§+!,§.§]$ §.l;
         if(!(_loc1_ && _loc1_.pli && _loc1_.pli.tn == §6#P§.§`",§.id))
         {
            if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r && this.mPlayerPreviousPositionInLeague.r == 1)
            {
               this.§3!D§ = this.LEAGUE_WIN;
               _loc2_ = this.§1"B§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
            else if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.p && this.mPlayerPreviousPositionInLeague.p == "u")
            {
               this.§3!D§ = this.§<8§;
               _loc2_ = this.§1"B§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.§3!D§ = this.§]Y§;
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
         }
      }
      
      private function §3"U§() : void
      {
         var caseId:uint = 0;
         var fn:Function = null;
         switch(this.§3!D§)
         {
            case this.LEAGUE_WIN:
               caseId = §<7§;
               break;
            case this.§]Y§:
               caseId = §+$<§;
               break;
            case this.§<8§:
               caseId = CASE_STAR_PROMOTION;
         }
         fn = function(param1:String):void
         {
            var _loc2_:String = null;
            §7!b§.§&#&§("permissionRequestComplete",fn);
            if(param1 == "true")
            {
               mPromotionAnimation.stop();
               _loc2_ = §6#P§.§4Z§(mPreviousResult.l.li.tn).name;
               §7!b§.§7@§("shareTournamentResult",caseId,caseId == CASE_STAR_PROMOTION ? mPlayerPreviousPositionInLeague.s : _loc2_);
            }
         };
         §7!b§.addCallback("permissionRequestComplete",fn);
         §7!b§.§7@§("askForPublishStreamPermission");
      }
      
      private function §@!p§(param1:int) : String
      {
         return param1 + ".";
      }
      
      private function §0!H§(param1:int) : §2#9§
      {
         var _loc3_:Object = null;
         var _loc4_:§"5§ = null;
         if(§+G§ == §;"&§)
         {
            return this.§'!_§(param1);
         }
         var _loc2_:Object = §4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.t ? §4"s§.§+!,§.§]$ §.t : (§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.t ? §4"s§.§+!,§.§=!j§.t : null);
         if(_loc2_)
         {
            if(_loc2_.players)
            {
               if(param1 <= _loc2_.players.length)
               {
                  _loc3_ = _loc2_.players[param1 - 1];
                  if(_loc3_)
                  {
                     if(_loc4_ = §8#g§.§^!O§(_loc3_.uid))
                     {
                        _loc3_.n = _loc4_.name;
                     }
                     return §2#9§.§"!U§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §'!_§(param1:int) : §2#9§
      {
         var _loc2_:Object = null;
         var _loc3_:§"5§ = null;
         if(§4"s§.§+!,§.§=!j§ && §4"s§.§+!,§.§=!j§.t)
         {
            if(§4"s§.§+!,§.§=!j§.t.players)
            {
               if(param1 <= §4"s§.§+!,§.§=!j§.t.players.length)
               {
                  _loc2_ = §4"s§.§+!,§.§=!j§.t.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §8#g§.§^!O§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §2#9§.§"!U§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function § "N§(param1:int) : §3!R§
      {
         var _loc3_:Object = null;
         var _loc2_:Object = §4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.l ? §4"s§.§+!,§.§]$ §.l : §4"s§.§+!,§.§=!j§.l;
         if(_loc2_)
         {
            if(_loc2_.p)
            {
               if(param1 <= _loc2_.p.length)
               {
                  _loc3_ = _loc2_.p[param1 - 1];
                  if(_loc3_)
                  {
                     return §3!R§.§"!U§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CLAIM":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               break;
            case "BACK":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               if(§+G§ == §9`§)
               {
                  §%"#§.§5A§();
                  if(§7!$§.§+!,§.§!$#§())
                  {
                     §8"^§.§!#C§();
                     §3#§(§8"^§.STATE_NAME);
                  }
                  else
                  {
                     § !8§.§`"[§();
                     §4"s§.§+!,§.§;#"§();
                     §3#§(§3"E§.STATE_NAME);
                  }
               }
               else if(§7!$§.§+!,§.§!$#§())
               {
                  if(§7!$§.§+!,§.§&"%§() <= 0)
                  {
                     §8"^§.§!#C§();
                     §3#§(§8"^§.STATE_NAME);
                  }
                  else
                  {
                     §3#§(§ !8§.STATE_NAME);
                  }
               }
               else if(this.§%"w§)
               {
                  §3#§(§3"E§.STATE_NAME);
               }
               else
               {
                  §3#§(§ !8§.STATE_NAME);
               }
               break;
            case "showCredits":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(§[#t§.STATE_NAME);
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
         this.§&#]§ = false;
         super.deActivate();
         if(this.§=!§)
         {
            this.§=!§.dispose();
         }
         if(this.§@!e§)
         {
            this.§@!e§.dispose();
         }
         if(this.§<!w§)
         {
            this.§<!w§.dispose();
         }
         if(this.§2#$§)
         {
            this.§2#$§.dispose();
         }
         if(this.§##9§)
         {
            this.§##9§.dispose();
         }
         if(this.§@#x§)
         {
            this.§@#x§.dispose();
         }
         if(this.§'o§)
         {
            this.§'o§.dispose();
         }
         if(this.§""=§)
         {
            this.§""=§.dispose();
         }
         if(this.mPromotionAnimation)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
         }
         this.§7=§(this.§"#W§);
         AngryBirdsBase.singleton.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§+s§);
         AngryBirdsBase.singleton.stage.removeEventListener(Event.RESIZE,this.§@V§);
         § b§.§8!7§(§"!l§);
         if(this.§1E§)
         {
            §4"s§.§+!,§.removeEventListener(§+"g§.§0$1§,this.§function§);
         }
         else
         {
            §4"s§.§+!,§.removeEventListener(§+"g§.§+!w§,this.§#"X§);
            §7!$§.§+!,§.removeEventListener(§&#m§.§8#?§,this.§8y§);
         }
         this.§>#C§();
         this.§-#`§();
         §4"s§.§+!,§.removeEventListener(§+"g§.§[$8§,this.§@!;§);
         §4"s§.§+!,§.§;#I§();
         if(this.§;#_§)
         {
            this.§;#_§.deActivate();
         }
      }
      
      private function §>#C§() : void
      {
         this.§&"'§ = null;
         this.§ #f§ = null;
         if(§;!w§ && §;!w§.contains(this.§+"i§))
         {
            §;!w§.removeChild(this.§+"i§);
         }
         if(§;!w§ && §;!w§.contains(this.§6W§))
         {
            §;!w§.removeChild(this.§6W§);
         }
         this.§+"i§ = null;
         this.§6W§ = null;
      }
      
      protected function §"&§(param1:MouseEvent) : void
      {
      }
      
      protected function §function§(param1:§+"g§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:§<#V§ = null;
         if(param1.type == §+"g§.§0$1§)
         {
            §4"s§.§+!,§.removeEventListener(§+"g§.§0$1§,this.§function§);
            if(param1.data.t)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.t.items;
               _loc4_ = param1.data.t.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §<#V§();
                  this.§]?§[0] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §>#g§.§=-§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§]#=§ = §3";§.§2#Y§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §]#0§.§+!,§.§&$@§(param1.data.t,true,_loc2_);
            }
            if(param1.data.l)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.l.items;
               _loc4_ = param1.data.l.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §<#V§();
                  this.§]?§[1] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §>#g§.§=-§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§]#=§ = §3";§.§!$D§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §]#0§.§+!,§.§&$@§(param1.data.l,true,_loc2_);
               this.§5h§ = param1.data.l.items;
            }
            this.§=#?§ = true;
         }
      }
      
      protected function §#"X§(param1:§+"g§) : void
      {
         var _loc2_:§<#V§ = null;
         if(param1.type == §+"g§.§+!w§)
         {
            _loc2_ = new §<#V§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§4!T§[1];
            _loc2_.currency = "IVC";
            _loc2_.§]#=§ = "LEAGUE_REWARD";
            _loc2_.itemType = §>#g§.§=-§;
            §]#0§.§+!,§.§&$@§(param1.data,false,[_loc2_]);
            this.§^!Z§();
            §]#0§.§+!,§.§@!z§();
         }
      }
      
      protected function §8y§(param1:§&#m§) : void
      {
         var _loc2_:§<#V§ = null;
         var _loc3_:Array = null;
         if(param1.type == §&#m§.§8#?§)
         {
            §;!w§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
            _loc2_ = new §<#V§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§4!T§[0];
            _loc2_.currency = "IVC";
            _loc2_.§]#=§ = "TOURNAMENT_REWARD";
            _loc2_.itemType = §>#g§.§=-§;
            _loc3_ = [_loc2_];
            §]#0§.§+!,§.§&$@§(param1.data,false,_loc3_);
            this.§@!9§();
            §]#0§.§+!,§.§@!z§();
         }
      }
      
      protected function §@!;§(param1:§+"g§) : void
      {
         this.§3!?§();
      }
      
      private function §@!9§() : void
      {
         if(this.§&"'§)
         {
            this.§&"'§.reset();
            this.§&"'§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§3#X§);
            this.§&"'§ = null;
         }
         this.§&"'§ = new Timer(100,1);
         this.§&"'§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§3#X§);
         this.§&"'§.start();
      }
      
      protected function §3#X§(param1:TimerEvent) : void
      {
         var _loc2_:Point = null;
         if(this.§&"'§)
         {
            this.§&"'§.reset();
            this.§&"'§.removeEventListener(TimerEvent.TIMER,this.§3#X§);
            this.§&"'§ = null;
         }
         if(this.§6W§)
         {
            this.§6W§.txtRewardAmount.text = this.§4!T§[0] + " x";
         }
         this.§"#`§ = §=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§;
         this.§"#W§.setCoinsAmountText(this.§"#`§);
         this.§"#W§.animateGotCoins(this.§4!T§[0]);
         if(this.§6W§)
         {
            if(§;!w§ && §;!w§.contains(this.§6W§))
            {
               §;!w§.removeChild(this.§6W§);
            }
            this.§6W§.scaleY = 0;
            this.§6W§.scaleX = 0;
            _loc2_ = new Point(§;!w§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(§;!w§.getItemByName("FriendsRewards").mClip.width * 0.5,0)).x,§;!w§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§;!w§.getItemByName("FriendsRewards").mClip.height * 0.5)).y + 20);
            this.§1=§ = new §;!t§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§;!t§.§[#4§,§;!t§.§=;§,§>",§.§+!y§);
            §;!w§.addChild(this.§1=§);
            this.§2!^§.push(this.§1=§);
            this.§[#'§();
         }
      }
      
      private function §[#'§() : void
      {
         §;!w§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
         §;!w§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
         this.§;#_§.§,"W§ = this.§3"r§();
         this.§;#_§.§0!F§ = this.§9!B§();
         this.§6#l§(true);
      }
      
      private function §^!Z§() : void
      {
         if(this.§ #f§)
         {
            this.§ #f§.reset();
            this.§ #f§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§#!M§);
            this.§ #f§ = null;
         }
         this.§ #f§ = new Timer(100,1);
         this.§ #f§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§#!M§);
         this.§ #f§.start();
      }
      
      protected function §#!M§(param1:TimerEvent) : void
      {
         if(this.§ #f§)
         {
            this.§ #f§.reset();
            this.§ #f§.removeEventListener(TimerEvent.TIMER,this.§#!M§);
            this.§ #f§ = null;
         }
         this.§"#`§ = §=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§;
         this.§"#W§.setCoinsAmountText(this.§"#`§);
         this.§"#W§.animateGotCoins(this.§4!T§[1]);
         if(this.§+"i§)
         {
            this.§+"i§.txtRewardAmount.text = this.§4!T§[1] + " x";
            if(§;!w§ && §;!w§.contains(this.§+"i§))
            {
               §;!w§.removeChild(this.§+"i§);
            }
            this.§+"i§.scaleY = 0;
            this.§+"i§.scaleX = 0;
         }
         var _loc2_:Point = new Point(§;!w§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(§;!w§.getItemByName("LeagueRewards").mClip.width * 0.5,0)).x,§;!w§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§;!w§.getItemByName("LeagueRewards").mClip.height * 0.5)).y + 20);
         if(§4"s§.§+!,§.§]$ § && §4"s§.§+!,§.§]$ §.l)
         {
            this.§1=§ = new §;!t§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§;!t§.§[#4§,§;!t§.§=;§,§>",§.§+!y§);
            §;!w§.addChild(this.§1=§);
            this.§2!^§.push(this.§1=§);
            this.§,$6§();
         }
      }
      
      private function §,$6§() : void
      {
         §;!w§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
         §;!w§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
      }
      
      private function §-#`§() : void
      {
         var _loc1_:§;!t§ = null;
         for each(_loc1_ in this.§2!^§)
         {
            if(§;!w§ && §;!w§.contains(_loc1_))
            {
               §;!w§.removeChild(_loc1_);
            }
            _loc1_.§<![§();
         }
         this.§2!^§ = new Vector.<§;!t§>();
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;!w§.getItemByName("walletContainer").mClip;
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
      
      private function §9!B§() : Number
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
      
      private function §3"r§() : Number
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
      
      public function §&!b§() : void
      {
         this.§=_§();
      }
   }
}

import § "L§.§23§;
import §3"V§.§ b§;
import §]#'§.§6#P§;
import §^"3§.§^"C§;
import §^"3§.§`$4§;
import com.rovio.assets.§[a§;
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
   
   private var mComponent:§23§;
   
   private var mClip:MovieClip;
   
   private var _mRunning:Boolean;
   
   private var mSkipButton:§^"C§;
   
   private var mBadgeFrom:DisplayObjectContainer;
   
   private var mBadgeTo:DisplayObjectContainer;
   
   private var mActivePromotionSounds:Array;
   
   private var mNextLeagueTextToLowerBanner:String;
   
   function LeaguePromotionAnimation(param1:§23§)
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
      § b§.§8!7§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL);
      if(this.mActivePromotionSounds)
      {
         _loc1_ = 0;
         while(_loc1_ < this.mActivePromotionSounds.length)
         {
            § b§.§8!7§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc1_);
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
         this.mNextLeagueTextToLowerBanner = §6#P§.§8z§.id;
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
         this.mNextLeagueTextToLowerBanner = §6#P§.§8z§.id;
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
      var _loc3_:Class = §[a§.§8#k§(param1);
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
                     § b§.§%#C§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,1,0.8);
                     § b§.playSound(_loc3_.name,PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,int.MAX_VALUE);
                  }
                  else
                  {
                     § b§.playSound(_loc3_.name,PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,0);
                  }
                  _loc3_.started = true;
               }
            }
            else if(_loc3_.endFrame <= this.mClip.currentFrame)
            {
               § b§.§8!7§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_);
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
   
   private function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
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
      § b§.§%#C§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,this.mActivePromotionSounds.length,0.8);
   }
}
