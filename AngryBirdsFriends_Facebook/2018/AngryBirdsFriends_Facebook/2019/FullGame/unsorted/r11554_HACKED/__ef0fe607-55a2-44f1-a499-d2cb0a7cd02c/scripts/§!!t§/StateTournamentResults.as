package §!!t§
{
   import §!§.§="D§;
   import §"$=§.§'![§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-!"§.§7z§;
   import §-"h§.§5!b§;
   import §-"h§.§8c§;
   import §3!5§.§0#r§;
   import §3"G§.§16§;
   import §3=§.§-"4§;
   import §3=§.§1U§;
   import §3=§.§6"H§;
   import §4!n§.§'!,§;
   import §5!$§.§<c§;
   import §6!'§.§-r§;
   import §6!'§.§@#c§;
   import §6!'§.§[!k§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §7#j§.§@"F§;
   import §8"b§.§&!b§;
   import §=!2§.§%"T§;
   import §=#§.§0"V§;
   import §>"9§.§'#M§;
   import §>"9§.§'#X§;
   import §>"9§.§2"0§;
   import §>"9§.§[#%§;
   import §>"h§.§,_§;
   import §>"h§.§?>§;
   import §>#O§.§'##§;
   import §>#O§.§]u§;
   import §@!-§.§3"+§;
   import §]"'§.§#$D§;
   import §]"'§.§-!@§;
   import §]"'§.§1#"§;
   import §]"'§.§8!a§;
   import §]"'§.§>I§;
   import §]"'§.§@"%§;
   import §]"'§.§^"X§;
   import §]"'§.§default§;
   import §]$<§.§9g§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§2"O§;
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
   
   public class StateTournamentResults extends §-"4§ implements §="D§, §["b§
   {
      
      public static const STATE_NAME:String = "StateTournamentResults";
      
      private static const §"!!§:int = 370;
      
      public static const §+$E§:int = 1;
      
      public static const §&#Q§:int = 2;
      
      private static var §#!"§:int = 1;
      
      private static var §="x§:Boolean;
      
      public static var §3"!§:Boolean = false;
      
      public static var §>!j§:int = 0;
      
      public static const §?u§:uint = 1;
      
      public static const §<#-§:uint = 2;
      
      public static const CASE_STAR_PROMOTION:uint = 3;
      
      public static const CASE_FRIENDS_1ST:uint = 4;
      
      public static const CASE_FRIENDS_2ND:uint = 5;
      
      public static const CASE_FRIENDS_3RD:uint = 6;
      
      private static const §[#Q§:String = "TournamentResultSoundChannel";
       
      
      private var §-"H§:§-!@§;
      
      private var §5e§:§-r§;
      
      private var §;o§:§-r§;
      
      private var §&#[§:§-r§;
      
      private var §'b§:§-r§;
      
      private var §1L§:§-r§;
      
      private var §4!0§:§-r§;
      
      private var §2s§:§-r§;
      
      private var §0!I§:§-r§;
      
      protected var §`"3§:Font;
      
      private var §8#!§:§3"+§;
      
      private const §4$;§:String = "ACTIVE";
      
      private const §##9§:String = "INACTIVE";
      
      private var §"V§:Boolean = true;
      
      private var §`1§:MovieClip;
      
      private var §""B§:MovieClip;
      
      private var § !V§:Array;
      
      protected var §%#e§:§]u§;
      
      protected var §"#e§:Vector.<§]u§>;
      
      private var §+"0§:Number;
      
      private var §&"x§:Timer;
      
      private var §4!W§:Timer;
      
      private var §+1§:Class;
      
      private var §%$+§:MovieClip;
      
      private var §[O§:MovieClip;
      
      private var §?$%§:Array;
      
      private var §?3§:Wallet;
      
      private var §`"y§:Number;
      
      private var §"!j§:§]%§;
      
      private var §0"M§:§]%§;
      
      private var §!"-§:Object;
      
      private var mPlayerPreviousPositionInLeague:Object;
      
      private var §6$"§:§]%§;
      
      private var §7#H§:Array;
      
      private var §,"1§:Array;
      
      private var mPreviousResult:Object = null;
      
      private var § $5§:Boolean = false;
      
      private var §;"d§:Number = 0.2;
      
      private var §5#r§:Number = 0.2;
      
      private var § #Y§:Boolean;
      
      private var §1#^§:Number = 0.2;
      
      private var §9E§:Number = 1.2;
      
      private var §0v§:Number = 20.0;
      
      private var LEAGUE_WIN:uint = 1;
      
      private var §9"$§:uint = 2;
      
      private var §'h§:uint = 3;
      
      private var §;"_§:uint;
      
      private var §=!@§:Object;
      
      private var §6#t§:Array;
      
      private var mPromotionAnimation:LeaguePromotionAnimation;
      
      private var §7#R§:Timer;
      
      private var §^$4§:Boolean = false;
      
      public function StateTournamentResults(param1:§'![§, param2:Boolean, param3:§16§)
      {
         this.§`"3§ = new AngryBirdsFont();
         this.§ !V§ = [0,0.25,0.5,0.75,1];
         this.§?$%§ = [0,0];
         this.§,"1§ = [false,false];
         super(param1,param2,STATE_NAME,param3);
      }
      
      public static function get §?"y§() : int
      {
         return §#!"§;
      }
      
      public static function set §?"y§(param1:int) : void
      {
         §#!"§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+1§ = §2"O§.§`>§("GiftCarousel");
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_Tournament_Results[0]);
         this.§8#!§ = new §3"+§(§<"`§);
         this.§""B§ = §<"`§.getItemByName("FriendsResult").mClip;
         this.§`1§ = §<"`§.getItemByName("LeaguesResult").mClip;
      }
      
      private function §,"K§(param1:Boolean = false) : void
      {
         this.§8#!§.removeEventListener(§,_§.§!$<§,this.§ "Q§);
         this.§8#!§.addEventListener(§,_§.§!$<§,this.§ "Q§);
         this.§8#!§.§%#x§(this.mPreviousResult,§#!"§,param1);
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§'#X§ = null;
         var _loc3_:§2"0§ = null;
         super.activate(param1);
         this.§^$4§ = §^"C§.§?q§.§&2§();
         this.§@!§();
         this.§"$E§();
         this.§7">§();
         this.§^"V§();
         this.§^!%§();
         this.§3"f§();
         this.§"#7§();
         this.§="@§();
         this.§?"2§();
         this.§>!K§();
         this.§>"X§();
         this.§74§();
         this.§,"K§();
         this.§%"o§();
         this.§&#j§();
         this.§+"^§();
         this.§,"1§ = [false,false];
         this.§ $5§ = false;
         this.§ #Y§ = false;
         if(§#!"§ == §+$E§ && (§@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.l || §@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.t))
         {
            §@#c§.§?q§.§#$E§(§>!j§);
            §>!j§ = 0;
            §[#%§.§8!3§(§[#Q§,10,0.8);
            §[#%§.playSound("BirdsApplause",§[#Q§);
            _loc2_ = §[#%§.§<"!§(AngryBirdsBase.§9!2§);
            if(_loc2_.§3%§ <= 0)
            {
               _loc3_ = §'"a§.§!!8§.§ !i§();
               _loc3_.§23§(§'#M§.§"#w§);
            }
         }
         §<"`§.getItemByName("loadingResults").setVisibility(false);
         AngryBirdsBase.singleton.playThemeMusic();
         this.§+!l§();
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
      }
      
      private function §+!l§() : void
      {
         var _loc3_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = false;
         var _loc11_:* = false;
         if(§?"y§ != §+$E§)
         {
            return;
         }
         var _loc1_:Object = §@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.t && §@#c§.§?q§.§5#1§.t.players ? §@#c§.§?q§.§5#1§.t : this.§%#4§();
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         for each(_loc6_ in _loc1_.players)
         {
            if(_loc6_.uid == _loc2_)
            {
               _loc3_ = _loc6_;
            }
            else if(_loc6_.uid == §0"V§.BIRD_BOT_1)
            {
               _loc4_ = _loc6_.p;
            }
            if(_loc6_.uid == §0"V§.BIRD_BOT_2)
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
            §+$A§.§@"i§().§>"]§(_loc7_,_loc8_,_loc10_,_loc11_,_loc1_.players.length,_loc3_.r,_loc3_.p,_loc9_);
         }
      }
      
      private function §&#j§() : void
      {
         if(this.mPromotionAnimation != null)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
            this.mPromotionAnimation = null;
         }
         if(§#!"§ == §&#Q§)
         {
            §<"`§.getItemByName("Promotion_Main_Anim").setVisibility(false);
         }
         else
         {
            this.mPromotionAnimation = new LeaguePromotionAnimation(§<c§(§<"`§.getItemByName("Promotion_Main_Anim")));
            this.mPromotionAnimation.activate();
         }
      }
      
      private function §74§() : void
      {
         var _loc1_:Number = this.§<$0§();
         var _loc2_:Number = this.§&#g§();
         if(this.§8#!§)
         {
            this.§8#!§.§,#%§ = _loc1_;
            this.§8#!§.§1!w§ = _loc2_;
         }
      }
      
      private function §+"^§() : void
      {
         this.§[D§(new Wallet(this,true,false));
         this.§?3§.§5#k§.scaleY = 1.3;
         this.§?3§.§5#k§.scaleX = 1.3;
         this.§`"y§ = §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§;
         this.§?3§.setCoinsAmountText(this.§`"y§);
      }
      
      private function §^"V§() : void
      {
         §<"`§.setText("" + §@#c§.§?q§.bronzeTrophies,"BronzeTrophiesTextfield");
         §<"`§.setText("" + §@#c§.§?q§.silverTrophies,"SilverTrophiesTextfield");
         §<"`§.setText("" + §@#c§.§?q§.goldTrophies,"GoldTrophiesTextfield");
         this.§7#H§ = new Array();
         this.§7#H§.push(§@#c§.§?q§.goldTrophies);
         this.§7#H§.push(§@#c§.§?q§.silverTrophies);
         this.§7#H§.push(§@#c§.§?q§.bronzeTrophies);
      }
      
      private function §?"2§() : void
      {
         AngryBirdsBase.singleton.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§"W§);
         AngryBirdsBase.singleton.stage.addEventListener(Event.RESIZE,this.§]$1§);
         if(this.§"V§)
         {
            §@#c§.§?q§.addEventListener(§?>§.§ ![§,this.§;t§);
         }
         else
         {
            §^"C§.§?q§.addEventListener(§0#r§.§@o§,this.§5#9§);
            §@#c§.§?q§.addEventListener(§?>§.§^W§,this.§#"6§);
         }
         §@#c§.§?q§.addEventListener(§?>§.§[^§,this.§6$2§);
      }
      
      private function §"$E§() : void
      {
         this.§-"H§ = new §-!@§();
         this.§-"H§.first = this.§87§(1);
         this.§-"H§.second = this.§87§(2);
         this.§-"H§.§,!n§ = this.§87§(3);
         this.§-"H§.§]#p§ = this.§87§(4);
         §<"`§.getItemByName("FriendsFirst").mClip.gotoAndStop(0);
         §<"`§.getItemByName("FriendsSecond").mClip.gotoAndStop(0);
         §<"`§.getItemByName("FriendsThird").mClip.gotoAndStop(0);
         §<"`§.getItemByName("LeagueFirst").mClip.gotoAndStop(0);
         §<"`§.getItemByName("LeagueSecond").mClip.gotoAndStop(0);
         §<"`§.getItemByName("LeagueNotPodium").mClip.gotoAndStop(0);
      }
      
      private function §@!§() : void
      {
         §<"`§.getItemByName("loadingResults").setVisibility(true);
         §<"`§.getItemByName("loadingResults").goToFrame(1,true);
         §<"`§.getItemByName("Banner_LastWeek").setVisibility(§#!"§ == §&#Q§);
         §<"`§.getItemByName("Button_Back").setVisibility(§#!"§ == §&#Q§);
         if(AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN || AngryBirdsBase.singleton.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE)
         {
            §="x§ = true;
         }
      }
      
      private function §7">§() : void
      {
         this.§"#e§ = new Vector.<§]u§>();
         this.§%$+§ = new this.§+1§();
         this.§[O§ = new this.§+1§();
         this.§0"M§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§0v§,§'#n§.§-#o§);
         this.§"!j§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§0v§,§'#n§.§-#o§);
      }
      
      private function §<"6§() : void
      {
         this.§0"M§ = null;
         this.§0"M§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§0v§,§'#n§.§-#o§);
         this.§0"M§.onComplete = this.§<"6§;
         this.§0"M§.play();
      }
      
      private function §6!%§() : void
      {
         this.§"!j§ = null;
         this.§"!j§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§0v§,§'#n§.§-#o§);
         this.§"!j§.onComplete = this.§6!%§;
         this.§"!j§.play();
      }
      
      private function §"#7§() : void
      {
         if(§#!"§ == §&#Q§)
         {
            if(§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.t)
            {
               §<"`§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
            }
            if(§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.l)
            {
               §<"`§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
            }
         }
         else
         {
            §<"`§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
            §<"`§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         }
      }
      
      private function §>$0§() : void
      {
         §<"`§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §<"`§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndStop(0);
         §<"`§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = false;
         §<"`§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
      }
      
      private function §="@§() : void
      {
         §<"`§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = false;
         §<"`§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = false;
         §<"`§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = true;
         §<"`§.getItemByName("LeagueFirst").setVisibility(true);
         §<"`§.getItemByName("LeagueSecond").setVisibility(true);
         §<"`§.getItemByName("LeagueNotPodium").setVisibility(true);
      }
      
      private function §`!o§() : void
      {
         §<"`§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = false;
         §<"`§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.visible = true;
         §<"`§.getItemByName("LeaguesResultList").mClip.txtNotInLeagueInfo.text = "Complete any level to join the league";
         §<"`§.getItemByName("LeagueRewards").mClip.NoLeagueReward.visible = true;
         §<"`§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.visible = false;
         §<"`§.getItemByName("LeagueFirst").setVisibility(false);
         §<"`§.getItemByName("LeagueSecond").setVisibility(false);
         §<"`§.getItemByName("LeagueNotPodium").setVisibility(false);
         §3"!§ = true;
      }
      
      private function §3"f§() : void
      {
         §<"`§.getItemByName("LeagueRewards").mClip.btnClaimLeagueReward.visible = false;
         §<"`§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
      }
      
      protected function §]$1§(param1:Event) : void
      {
         §="x§ = true;
      }
      
      protected function §"W§(param1:FullScreenEvent) : void
      {
         §="x§ = true;
      }
      
      private function §"#M§() : void
      {
         this.§""B§.x = §%"T§.§@" §() * this.§ !V§[1] - this.§""B§.width * 0.5;
         this.§`1§.x = §%"T§.§@" §() * this.§ !V§[3] - this.§`1§.width * 0.5;
         this.§%$+§.x = §<"`§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§%$+§.y = §<"`§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§<"`§.getItemByName("FriendsRewards").mClip.height * 0.5)).y;
         this.§[O§.x = §<"`§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,0)).x;
         this.§[O§.y = §<"`§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§<"`§.getItemByName("LeagueRewards").mClip.height * 0.5)).y;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:§]u§ = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:uint = 0;
         super.update(param1);
         if(this.§=!@§ && (this.mPromotionAnimation && !this.mPromotionAnimation.running))
         {
            for each(_loc4_ in this.§=!@§)
            {
               for each(_loc5_ in §9g§.§,"#§)
               {
                  if(_loc5_[§9g§.§-!J§].toUpperCase() == _loc4_.i.toString().toUpperCase())
                  {
                     AngryBirdsBase.singleton.popupManager.openPopup(new §9g§(_loc5_[§9g§.§-!J§],§9g§.§1"N§));
                  }
               }
            }
            this.§=!@§ = null;
         }
         if(§#!"§ == §+$E§)
         {
            if(§3"!§)
            {
               if(!AngryBirdsBase.singleton.popupManager.§`'§())
               {
                  §3"!§ = false;
                  §<"`§.getItemByName("Button_Back").setVisibility(true);
                  this.§=">§();
               }
            }
         }
         if(this.mPromotionAnimation && this.mPromotionAnimation.running)
         {
            if((_loc6_ = this.mPromotionAnimation.update()) == LeaguePromotionAnimation.ACTION_SHARE)
            {
               this.§?!a§();
            }
            else if(_loc6_ == LeaguePromotionAnimation.ACTION_SKIP)
            {
               this.mPromotionAnimation.stop();
            }
         }
         if(this.§ $5§)
         {
            this.§ $5§ = false;
            if(!this.§ #Y§)
            {
               this.§1x§();
            }
         }
         if(!this.§8#!§.§[!@§() || §="x§)
         {
            §="x§ = false;
         }
         if(this.§8#!§)
         {
            this.§8#!§.update(param1);
         }
         var _loc2_:Number = getTimer() - this.§+"0§;
         this.§+"0§ = getTimer();
         for each(_loc3_ in this.§"#e§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §%"o§() : void
      {
         var _loc5_:§8!a§ = null;
         var _loc6_:Object = null;
         var _loc7_:§8c§ = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         if(§#!"§ == §+$E§)
         {
            if(!§@#c§.§?q§.§5#1§ || §@#c§.§?q§.§5#1§.t && !§@#c§.§?q§.§5#1§.t.players)
            {
               (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§ !z§,_loc1_);
               return;
            }
         }
         else if(!§@#c§.§?q§.§1!S§ || §@#c§.§?q§.§1!S§.t && !§@#c§.§?q§.§1!S§.t.players)
         {
            (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§ !z§,_loc1_);
            return;
         }
         var _loc4_:Object = null;
         if(§#!"§ == §+$E§)
         {
            if(§@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.t && §@#c§.§?q§.§5#1§.t.players)
            {
               _loc4_ = §@#c§.§?q§.§5#1§.t.players;
            }
         }
         else if(§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.t && §@#c§.§?q§.§1!S§.t.players)
         {
            _loc4_ = §@#c§.§?q§.§1!S§.t.players;
         }
         if(_loc4_)
         {
            for each(_loc6_ in _loc4_)
            {
               _loc6_.c = _loc6_.r - 1 < this.§6#t§.length ? this.§6#t§[_loc6_.r - 1] : this.§6#t§[this.§6#t§.length - 1];
               _loc5_ = §default§.§]"B§(_loc6_);
               if(§default§(_loc5_) != null)
               {
                  §default§(_loc5_).§2# § = "";
               }
               if(_loc7_ = §5!b§.§8#'§(_loc6_.uid))
               {
                  _loc5_.userName = _loc7_.name;
               }
               _loc1_.push(_loc5_);
            }
         }
         if(§@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.l && §@#c§.§?q§.§5#1§.l.p)
         {
            for each(_loc6_ in §@#c§.§?q§.§5#1§.l.p)
            {
               _loc5_ = §^"X§.§]"B§(_loc6_);
               _loc3_.push(_loc5_);
            }
         }
         if(§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.l && §@#c§.§?q§.§1!S§.l.p)
         {
            for each(_loc6_ in §@#c§.§?q§.§1!S§.l.p)
            {
               _loc5_ = §^"X§.§]"B§(_loc6_);
               _loc2_.push(_loc5_);
            }
         }
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§ !z§,_loc1_);
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§,;§,_loc2_);
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§<"q§,_loc3_);
      }
      
      private function §,$8§(param1:Object = null) : void
      {
         if(!param1 || !param1.l)
         {
            this.§`!o§();
         }
         else
         {
            this.§="@§();
         }
      }
      
      private function §^!%§() : void
      {
         this.§6#t§ = §?"y§ == §+$E§ ? (§@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.t && §@#c§.§?q§.§5#1§.t.prizeCounts ? §@#c§.§?q§.§5#1§.t.prizeCounts : this.§1S§()) : this.§1S§();
      }
      
      private function §>!K§() : void
      {
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:§default§ = null;
         this.§!"-§ = {};
         var _loc1_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID;
         var _loc2_:Object = §?"y§ == §+$E§ ? (§@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.t && §@#c§.§?q§.§5#1§.t.players ? §@#c§.§?q§.§5#1§.t : this.§%#4§()) : this.§%#4§();
         if(_loc2_)
         {
            for each(_loc7_ in _loc2_.players)
            {
               if(_loc1_ == _loc7_.uid)
               {
                  this.§!"-§ = _loc7_;
                  break;
               }
            }
            var _loc3_:MovieClip = §<"`§.getItemByName("FriendsFirst").mClip;
            _loc3_.gotoAndStop(this.§##9§);
            if(this.§!"-§ && this.§!"-§.r == 1)
            {
               _loc3_.gotoAndStop(this.§4$;§);
            }
            if(this.§-"H§.first)
            {
               this.§5e§ = new §-r§(_loc3_.getChildByName("AvatarImage") as MovieClip,this.§-"H§.first);
               §&!b§.§9G§(_loc3_.getChildByName("txtName") as TextField,this.§-"H§.first.userName,§"!!§);
            }
            var _loc4_:TextField;
            (_loc4_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = this.§6#t§[0].toString();
            (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = this.§-"H§.first != null;
            (_loc3_.getChildByName("txtName") as TextField).visible = this.§-"H§.first != null;
            var _loc5_:MovieClip;
            (_loc5_ = §<"`§.getItemByName("FriendsSecond").mClip).gotoAndStop(this.§##9§);
            if(this.§!"-§ && this.§!"-§.r == 2)
            {
               _loc5_.gotoAndStop(this.§4$;§);
            }
            if(this.§-"H§.second)
            {
               this.§;o§ = new §-r§(_loc5_.getChildByName("AvatarImage") as MovieClip,this.§-"H§.second);
               §&!b§.§9G§(_loc5_.getChildByName("txtName") as TextField,this.§-"H§.second.userName,§"!!§);
            }
            (_loc4_ = (_loc5_.getChildByName("rewardText") as MovieClip).text).text = this.§6#t§[1].toString();
            (_loc5_.getChildByName("AvatarImage") as MovieClip).visible = this.§-"H§.second != null;
            (_loc5_.getChildByName("txtName") as TextField).visible = this.§-"H§.second != null;
            var _loc6_:MovieClip;
            (_loc6_ = §<"`§.getItemByName("FriendsThird").mClip).gotoAndStop(this.§##9§);
            if(this.§!"-§ && this.§!"-§.r == 3)
            {
               _loc6_.gotoAndStop(this.§4$;§);
            }
            if(this.§-"H§.§,!n§)
            {
               this.§&#[§ = new §-r§(_loc6_.getChildByName("AvatarImage") as MovieClip,this.§-"H§.§,!n§);
               §&!b§.§9G§(_loc6_.getChildByName("txtName") as TextField,this.§-"H§.§,!n§.userName,§"!!§);
            }
            (_loc4_ = (_loc6_.getChildByName("rewardText") as MovieClip).text).text = this.§6#t§[2].toString();
            (_loc6_.getChildByName("AvatarImage") as MovieClip).visible = this.§-"H§.§,!n§ != null;
            (_loc6_.getChildByName("txtName") as TextField).visible = this.§-"H§.§,!n§ != null;
            if(this.§!"-§ && this.§!"-§.r)
            {
               if((_loc8_ = this.§!"-§.r - 1) >= 3)
               {
                  _loc8_ = 3;
                  _loc6_.gotoAndStop(this.§4$;§);
                  (_loc6_.getChildByName("txtRank") as TextField).visible = true;
                  (_loc6_.getChildByName("txtRank") as TextField).text = this.§2$"§(this.§!"-§.r);
                  _loc6_.getChildByName("mcTrophyBronze").visible = false;
                  if(_loc9_ = this.§87§(this.§!"-§.r))
                  {
                     this.§&#[§ = new §-r§(_loc6_.getChildByName("AvatarImage") as MovieClip,_loc9_);
                     §&!b§.§9G§(_loc6_.getChildByName("txtName") as TextField,_loc9_.userName,§"!!§);
                     _loc4_.text = this.§6#t§[_loc8_];
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
                  _loc4_.text = this.§6#t§[_loc8_];
               }
               (§<"`§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = this.§6#t§[_loc8_] + "x";
               this.§?$%§[0] = this.§6#t§[_loc8_];
               §<"`§.getItemByName("FriendsRewards").mClip.mcCoin.visible = true;
               if(§?"y§ == §+$E§)
               {
                  §<"`§.getItemByName("FriendsRewards").mClip.RewardShine.visible = true;
                  if(§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.t && (!§@#c§.§?q§.§5#1§ || !§@#c§.§?q§.§5#1§.t))
                  {
                     this.§0"M§.stop();
                  }
                  else
                  {
                     this.§0"M§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("FriendsRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§0v§,§'#n§.§-#o§);
                     this.§0"M§.onComplete = this.§<"6§;
                     this.§0"M§.play();
                  }
               }
               else
               {
                  §<"`§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
               }
            }
            else
            {
               (§<"`§.getItemByName("FriendsRewards").mClip.tournamentFirstPlaceText.text as TextField).text = "";
               §<"`§.getItemByName("FriendsRewards").mClip.mcCoin.visible = false;
               §<"`§.getItemByName("FriendsRewards").mClip.RewardShine.visible = false;
            }
            return;
         }
      }
      
      private function §1x§() : void
      {
         var _loc1_:MovieClip = null;
         if(§?"y§ == §+$E§ && (this.§!"-§ && this.§!"-§.r >= 1 && this.§!"-§.r <= 3))
         {
            _loc1_ = this.§!"-§ && this.§!"-§.r == 1 ? §<"`§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§!"-§ && this.§!"-§.r == 2 ? §<"`§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §<"`§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
            _loc1_.visible = true;
            _loc1_.parent.setChildIndex(_loc1_,_loc1_.parent.numChildren - 1);
            if(this.§6$"§)
            {
               this.§6$"§.stop();
               this.§6$"§ = null;
            }
            this.§6$"§ = §'#n§.§?q§.§9!N§(_loc1_,{
               "scaleX":1.5,
               "scaleY":1.5
            },{
               "scaleX":1,
               "scaleY":1
            },this.§;"d§,§'#n§.§8"W§,this.§5#r§);
            this.§6$"§.onComplete = this.§&v§;
            this.§6$"§.play();
            §[#%§.playSound("Get_Coins",§[#Q§);
         }
         else if(§?"y§ == §+$E§ && !this.§ #Y§)
         {
            this.§]!_§();
         }
      }
      
      private function §&v§() : void
      {
         if(this.§6$"§)
         {
            this.§6$"§.stop();
            this.§6$"§ = null;
         }
         if(this.§!"-§)
         {
            if(this.§!"-§.r == 1)
            {
               §<"`§.setText("" + (this.§7#H§[0] + 1),"GoldTrophiesTextfield");
            }
            if(this.§!"-§.r == 2)
            {
               §<"`§.setText("" + (this.§7#H§[1] + 1),"SilverTrophiesTextfield");
            }
            if(this.§!"-§.r == 3)
            {
               §<"`§.setText("" + (this.§7#H§[2] + 1),"BronzeTrophiesTextfield");
            }
         }
         var _loc1_:MovieClip = this.§!"-§.r == 1 ? §<"`§.getItemByName("MyTrophies").mClip.ContainerTrophyGold : (this.§!"-§.r == 2 ? §<"`§.getItemByName("MyTrophies").mClip.ContainerTrophySilver : §<"`§.getItemByName("MyTrophies").mClip.ContainerTrophyBronze);
         var _loc2_:§]%§ = §'#n§.§?q§.§9!N§(_loc1_,{"scaleX":1.5},null,0.1);
         this.§6$"§ = §'#n§.§?q§.§9!N§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.5,
            "scaleY":1.5
         },this.§;"d§,§'#n§.§8"W§);
         var _loc3_:§]%§ = §'#n§.§?q§.§[#F§(_loc2_,this.§6$"§);
         _loc3_.onComplete = this.§]!_§;
         _loc3_.play();
      }
      
      private function §]!_§() : void
      {
         if(this.§,"1§[0])
         {
            this.§ #Y§ = true;
            this.§-#O§();
            this.§7#R§ = new Timer(200,1);
            this.§7#R§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§%h§);
            this.§7#R§.start();
            this.§,"1§[0] = false;
         }
      }
      
      private function §%h§(param1:TimerEvent) : void
      {
         this.§7#R§ = null;
         this.§%!f§();
      }
      
      protected function § "Q§(param1:§,_§) : void
      {
         if(this.§,"1§[1])
         {
            this.§,"1§[1] = false;
         }
         §#$D§.§?q§.§>!'§();
      }
      
      private function §%#4§() : Object
      {
         return §@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.t && §@#c§.§?q§.§1!S§.t.players ? §@#c§.§?q§.§1!S§.t : null;
      }
      
      private function §1S§() : Array
      {
         return §@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.t && §@#c§.§?q§.§1!S§.t.prizeCounts ? §@#c§.§?q§.§1!S§.t.prizeCounts : [0,0,0];
      }
      
      private function §>"X§() : void
      {
         var _loc6_:Object = null;
         var _loc7_:§^"X§ = null;
         var _loc8_:§^"X§ = null;
         var _loc9_:§^"X§ = null;
         this.mPlayerPreviousPositionInLeague = {};
         var _loc1_:MovieClip = §<"`§.getItemByName("LeagueFirst").mClip;
         _loc1_.gotoAndStop(this.§##9§);
         var _loc2_:MovieClip = §<"`§.getItemByName("LeagueSecond").mClip;
         _loc2_.gotoAndStop(this.§##9§);
         var _loc3_:MovieClip = §<"`§.getItemByName("LeagueNotPodium").mClip;
         _loc3_.gotoAndStop(this.§##9§);
         var _loc4_:Object = §@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.l ? §@#c§.§?q§.§5#1§ : §@#c§.§?q§.§1!S§;
         if(§@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.l)
         {
            _loc4_.lastResult = true;
         }
         else if(_loc4_)
         {
            _loc4_.lastResult = false;
         }
         this.mPreviousResult = _loc4_;
         if(!_loc4_ || !_loc4_.l || !_loc4_.l.p || !_loc4_.lastResult && §#!"§ == §+$E§ && !_loc4_.l)
         {
            this.§,$8§(_loc4_);
            return;
         }
         var _loc5_:String = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID;
         for each(_loc6_ in _loc4_.l.p)
         {
            if(_loc5_ == _loc6_.u)
            {
               this.mPlayerPreviousPositionInLeague = _loc6_;
               break;
            }
         }
         _loc7_ = this.§&$-§(1);
         _loc8_ = this.§&$-§(2);
         _loc9_ = this.§&$-§(3);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 1)
         {
            _loc1_.gotoAndStop(this.§4$;§);
         }
         if(_loc7_)
         {
            this.§1L§ = new §-r§(_loc1_.getChildByName("AvatarImage") as MovieClip,_loc7_);
            §&!b§.§9G§(_loc1_.getChildByName("txtName") as TextField,_loc7_.userName,§"!!§);
         }
         var _loc10_:TextField;
         (_loc10_ = (_loc1_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[0] && _loc4_.l.p[0].c ? _loc4_.l.p[0].c.toString() : "0";
         _loc10_.visible = true;
         (_loc1_.getChildByName("AvatarImage") as MovieClip).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtName") as TextField).visible = _loc7_ != null;
         (_loc1_.getChildByName("txtRank") as TextField).text = this.§2$"§(1);
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r == 2)
         {
            _loc2_.gotoAndStop(this.§4$;§);
         }
         if(_loc8_)
         {
            this.§4!0§ = new §-r§(_loc2_.getChildByName("AvatarImage") as MovieClip,_loc8_);
            §&!b§.§9G§(_loc2_.getChildByName("txtName") as TextField,_loc8_.userName,§"!!§);
         }
         (_loc10_ = (_loc2_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[1] && _loc4_.l.p[1].c ? _loc4_.l.p[1].c.toString() : "0";
         (_loc2_.getChildByName("AvatarImage") as MovieClip).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtName") as TextField).visible = _loc8_ != null;
         (_loc2_.getChildByName("txtRank") as TextField).text = this.§2$"§(2);
         var _loc11_:Number = 2;
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r >= 3)
         {
            _loc3_.gotoAndStop(this.§4$;§);
            if(this.mPlayerPreviousPositionInLeague.r > 3)
            {
               _loc9_ = this.§&$-§(this.mPlayerPreviousPositionInLeague.r);
               _loc11_ = this.mPlayerPreviousPositionInLeague.r - 1;
            }
         }
         if(_loc9_)
         {
            §<"`§.getItemByName("LeagueNotPodium").setVisibility(true);
            this.§0!I§ = new §-r§(_loc3_.getChildByName("AvatarImage") as MovieClip,_loc9_);
            §&!b§.§9G§(_loc3_.getChildByName("txtName") as TextField,_loc9_.userName,§"!!§);
            §<"`§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = true;
            §<"`§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = true;
            §<"`§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = true;
         }
         (_loc10_ = (_loc3_.getChildByName("rewardText") as MovieClip).text).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].c ? _loc4_.l.p[_loc11_].c.toString() : "0";
         (_loc3_.getChildByName("AvatarImage") as MovieClip).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtName") as TextField).visible = _loc9_ != null;
         (_loc3_.getChildByName("txtRank") as TextField).text = _loc4_.l.p && _loc4_.l.p[_loc11_] && _loc4_.l.p[_loc11_].r ? this.§2$"§(_loc4_.l.p[_loc11_].r) : "";
         if(!_loc9_)
         {
            §<"`§.getItemByName("LeagueNotPodium").setVisibility(false);
            §<"`§.getItemByName("LeagueNotPodium").mClip.mcCoinXTimes.visible = false;
            §<"`§.getItemByName("LeagueNotPodium").mClip.mcCoinPodium.visible = false;
            §<"`§.getItemByName("LeagueNotPodium").mClip.rewardText.visible = false;
         }
         if(this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.c)
         {
            this.§?$%§[1] = this.mPlayerPreviousPositionInLeague.c;
            (§<"`§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = this.mPlayerPreviousPositionInLeague.c + "x";
            §<"`§.getItemByName("LeagueRewards").mClip.mcCoin.visible = true;
            if(§?"y§ == §+$E§)
            {
               §<"`§.getItemByName("LeagueRewards").mClip.RewardShine.visible = true;
               if(§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.l && (!§@#c§.§?q§.§5#1§ || !§@#c§.§?q§.§5#1§.l))
               {
                  this.§"!j§.stop();
               }
               else
               {
                  this.§"!j§ = §'#n§.§?q§.§9!N§(§<"`§.getItemByName("LeagueRewards").mClip.RewardShine,{"rotation":0},{"rotation":-360},this.§0v§,§'#n§.§-#o§);
                  this.§"!j§.onComplete = this.§6!%§;
                  this.§"!j§.play();
               }
            }
            else
            {
               §<"`§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
            }
         }
         else
         {
            (§<"`§.getItemByName("LeagueRewards").mClip.leagueFirstPlaceText.text as TextField).text = "";
            §<"`§.getItemByName("LeagueRewards").mClip.mcCoin.visible = false;
            §<"`§.getItemByName("LeagueRewards").mClip.RewardShine.visible = false;
         }
         this.§,$8§(_loc4_);
      }
      
      private function § #v§(param1:Object, param2:Object) : Boolean
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
      
      private function §=">§() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:Object = §@#c§.§?q§.§5#1§.l;
         if(!(_loc1_ && _loc1_.pli && _loc1_.pli.tn == §[!k§.§>L§.id))
         {
            if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.r && this.mPlayerPreviousPositionInLeague.r == 1)
            {
               this.§;"_§ = this.LEAGUE_WIN;
               _loc2_ = this.§ #v§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
            else if(_loc1_ && this.mPlayerPreviousPositionInLeague && this.mPlayerPreviousPositionInLeague.p && this.mPlayerPreviousPositionInLeague.p == "u")
            {
               this.§;"_§ = this.§'h§;
               _loc2_ = this.§ #v§(_loc1_,this.mPlayerPreviousPositionInLeague);
               if(!_loc2_)
               {
                  this.§;"_§ = this.§9"$§;
                  this.mPromotionAnimation.startLeaguePromotionAnim(_loc1_.pli.tn,_loc1_.li.tn);
               }
            }
         }
      }
      
      private function §?!a§() : void
      {
         var caseId:uint = 0;
         var fn:Function = null;
         switch(this.§;"_§)
         {
            case this.LEAGUE_WIN:
               caseId = §?u§;
               break;
            case this.§9"$§:
               caseId = §<#-§;
               break;
            case this.§'h§:
               caseId = CASE_STAR_PROMOTION;
         }
         fn = function(param1:String):void
         {
            var _loc2_:String = null;
            §@"F§.§=F§("permissionRequestComplete",fn);
            if(param1 == "true")
            {
               mPromotionAnimation.stop();
               _loc2_ = §[!k§.§=""§(mPreviousResult.l.li.tn).name;
               §@"F§.§^$#§("shareTournamentResult",caseId,caseId == CASE_STAR_PROMOTION ? mPlayerPreviousPositionInLeague.s : _loc2_);
            }
         };
         §@"F§.addCallback("permissionRequestComplete",fn);
         §@"F§.§^$#§("askForPublishStreamPermission");
      }
      
      private function §2$"§(param1:int) : String
      {
         return param1 + ".";
      }
      
      private function §87§(param1:int) : §default§
      {
         var _loc3_:Object = null;
         var _loc4_:§8c§ = null;
         if(§?"y§ == §&#Q§)
         {
            return this.§6R§(param1);
         }
         var _loc2_:Object = §@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.t ? §@#c§.§?q§.§5#1§.t : (§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.t ? §@#c§.§?q§.§1!S§.t : null);
         if(_loc2_)
         {
            if(_loc2_.players)
            {
               if(param1 <= _loc2_.players.length)
               {
                  _loc3_ = _loc2_.players[param1 - 1];
                  if(_loc3_)
                  {
                     if(_loc4_ = §5!b§.§8#'§(_loc3_.uid))
                     {
                        _loc3_.n = _loc4_.name;
                     }
                     return §default§.§]"B§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §6R§(param1:int) : §default§
      {
         var _loc2_:Object = null;
         var _loc3_:§8c§ = null;
         if(§@#c§.§?q§.§1!S§ && §@#c§.§?q§.§1!S§.t)
         {
            if(§@#c§.§?q§.§1!S§.t.players)
            {
               if(param1 <= §@#c§.§?q§.§1!S§.t.players.length)
               {
                  _loc2_ = §@#c§.§?q§.§1!S§.t.players[param1 - 1];
                  if(_loc2_)
                  {
                     _loc3_ = §5!b§.§8#'§(_loc2_.uid);
                     if(_loc3_)
                     {
                        _loc2_.n = _loc3_.name;
                     }
                     return §default§.§]"B§(_loc2_);
                  }
               }
            }
         }
         return null;
      }
      
      private function §&$-§(param1:int) : §^"X§
      {
         var _loc3_:Object = null;
         var _loc2_:Object = §@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.l ? §@#c§.§?q§.§5#1§.l : §@#c§.§?q§.§1!S§.l;
         if(_loc2_)
         {
            if(_loc2_.p)
            {
               if(param1 <= _loc2_.p.length)
               {
                  _loc3_ = _loc2_.p[param1 - 1];
                  if(_loc3_)
                  {
                     return §^"X§.§]"B§(_loc3_);
                  }
               }
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "CLAIM":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               break;
            case "BACK":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               if(§?"y§ == §+$E§)
               {
                  §1#"§.§7k§();
                  if(§^"C§.§?q§.§&2§())
                  {
                     §9$A§.§`o§();
                     §%D§(§9$A§.STATE_NAME);
                  }
                  else
                  {
                     §'8§.§^"=§();
                     §@#c§.§?q§.§6$#§();
                     §%D§(§6"H§.STATE_NAME);
                  }
               }
               else if(§^"C§.§?q§.§&2§())
               {
                  if(§^"C§.§?q§.§&"C§() <= 0)
                  {
                     §9$A§.§`o§();
                     §%D§(§9$A§.STATE_NAME);
                  }
                  else
                  {
                     §%D§(§'8§.STATE_NAME);
                  }
               }
               else if(this.§^$4§)
               {
                  §%D§(§6"H§.STATE_NAME);
               }
               else
               {
                  §%D§(§'8§.STATE_NAME);
               }
               break;
            case "showCredits":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(§1U§.STATE_NAME);
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
         this.§ #Y§ = false;
         super.deActivate();
         if(this.§&#[§)
         {
            this.§&#[§.dispose();
         }
         if(this.§;o§)
         {
            this.§;o§.dispose();
         }
         if(this.§5e§)
         {
            this.§5e§.dispose();
         }
         if(this.§'b§)
         {
            this.§'b§.dispose();
         }
         if(this.§2s§)
         {
            this.§2s§.dispose();
         }
         if(this.§4!0§)
         {
            this.§4!0§.dispose();
         }
         if(this.§1L§)
         {
            this.§1L§.dispose();
         }
         if(this.§0!I§)
         {
            this.§0!I§.dispose();
         }
         if(this.mPromotionAnimation)
         {
            this.mPromotionAnimation.stop();
            this.mPromotionAnimation.deActivate();
         }
         this.§"[§(this.§?3§);
         AngryBirdsBase.singleton.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§"W§);
         AngryBirdsBase.singleton.stage.removeEventListener(Event.RESIZE,this.§]$1§);
         §[#%§.§3$A§(§[#Q§);
         if(this.§"V§)
         {
            §@#c§.§?q§.removeEventListener(§?>§.§ ![§,this.§;t§);
         }
         else
         {
            §@#c§.§?q§.removeEventListener(§?>§.§^W§,this.§#"6§);
            §^"C§.§?q§.removeEventListener(§0#r§.§@o§,this.§5#9§);
         }
         this.§,"9§();
         this.§"#`§();
         §@#c§.§?q§.removeEventListener(§?>§.§[^§,this.§6$2§);
         §@#c§.§?q§.§%"E§();
         if(this.§8#!§)
         {
            this.§8#!§.deActivate();
         }
      }
      
      private function §,"9§() : void
      {
         this.§&"x§ = null;
         this.§4!W§ = null;
         if(§<"`§ && §<"`§.contains(this.§[O§))
         {
            §<"`§.removeChild(this.§[O§);
         }
         if(§<"`§ && §<"`§.contains(this.§%$+§))
         {
            §<"`§.removeChild(this.§%$+§);
         }
         this.§[O§ = null;
         this.§%$+§ = null;
      }
      
      protected function §32§(param1:MouseEvent) : void
      {
      }
      
      protected function §;t§(param1:§?>§) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:§7z§ = null;
         if(param1.type == §?>§.§ ![§)
         {
            §@#c§.§?q§.removeEventListener(§?>§.§ ![§,this.§;t§);
            if(param1.data.t)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.t.items;
               _loc4_ = param1.data.t.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §7z§();
                  this.§,"1§[0] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §>I§.§ !C§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§+#;§ = §+$A§.§'m§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §#$D§.§?q§.§["a§(param1.data.t,true,_loc2_);
            }
            if(param1.data.l)
            {
               _loc2_ = new Array();
               _loc3_ = param1.data.l.items;
               _loc4_ = param1.data.l.itemsPrev;
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc6_ = new §7z§();
                  this.§,"1§[1] = true;
                  _loc6_.screen = STATE_NAME;
                  _loc6_.amount = _loc3_[_loc5_].q - _loc4_[_loc5_].q;
                  if(_loc3_[_loc5_].i == §>I§.§ !C§)
                  {
                     _loc6_.currency = "IVC";
                  }
                  _loc6_.§+#;§ = §+$A§.§%$4§;
                  _loc6_.itemType = _loc3_[_loc5_].i;
                  _loc2_.push(_loc6_);
                  _loc5_++;
               }
               §#$D§.§?q§.§["a§(param1.data.l,true,_loc2_);
               this.§=!@§ = param1.data.l.items;
            }
            this.§ $5§ = true;
         }
      }
      
      protected function §#"6§(param1:§?>§) : void
      {
         var _loc2_:§7z§ = null;
         if(param1.type == §?>§.§^W§)
         {
            _loc2_ = new §7z§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§?$%§[1];
            _loc2_.currency = "IVC";
            _loc2_.§+#;§ = "LEAGUE_REWARD";
            _loc2_.itemType = §>I§.§ !C§;
            §#$D§.§?q§.§["a§(param1.data,false,[_loc2_]);
            this.§%!f§();
            §#$D§.§?q§.§>!'§();
         }
      }
      
      protected function §5#9§(param1:§0#r§) : void
      {
         var _loc2_:§7z§ = null;
         var _loc3_:Array = null;
         if(param1.type == §0#r§.§@o§)
         {
            §<"`§.getItemByName("FriendsRewards").mClip.btnClaimFriendReward.visible = false;
            _loc2_ = new §7z§();
            _loc2_.screen = STATE_NAME;
            _loc2_.amount = this.§?$%§[0];
            _loc2_.currency = "IVC";
            _loc2_.§+#;§ = "TOURNAMENT_REWARD";
            _loc2_.itemType = §>I§.§ !C§;
            _loc3_ = [_loc2_];
            §#$D§.§?q§.§["a§(param1.data,false,_loc3_);
            this.§-#O§();
            §#$D§.§?q§.§>!'§();
         }
      }
      
      protected function §6$2§(param1:§?>§) : void
      {
         this.§>"X§();
      }
      
      private function §-#O§() : void
      {
         if(this.§&"x§)
         {
            this.§&"x§.reset();
            this.§&"x§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ #q§);
            this.§&"x§ = null;
         }
         this.§&"x§ = new Timer(100,1);
         this.§&"x§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ #q§);
         this.§&"x§.start();
      }
      
      protected function § #q§(param1:TimerEvent) : void
      {
         var _loc2_:Point = null;
         if(this.§&"x§)
         {
            this.§&"x§.reset();
            this.§&"x§.removeEventListener(TimerEvent.TIMER,this.§ #q§);
            this.§&"x§ = null;
         }
         if(this.§%$+§)
         {
            this.§%$+§.txtRewardAmount.text = this.§?$%§[0] + " x";
         }
         this.§`"y§ = §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§;
         this.§?3§.setCoinsAmountText(this.§`"y§);
         this.§?3§.animateGotCoins(this.§?$%§[0]);
         if(this.§%$+§)
         {
            if(§<"`§ && §<"`§.contains(this.§%$+§))
            {
               §<"`§.removeChild(this.§%$+§);
            }
            this.§%$+§.scaleY = 0;
            this.§%$+§.scaleX = 0;
            _loc2_ = new Point(§<"`§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(§<"`§.getItemByName("FriendsRewards").mClip.width * 0.5,0)).x,§<"`§.getItemByName("FriendsRewards").mClip.localToGlobal(new Point(0,§<"`§.getItemByName("FriendsRewards").mClip.height * 0.5)).y + 20);
            this.§%#e§ = new §]u§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§]u§.§?!q§,§]u§.§!#_§,§'##§.§#R§);
            §<"`§.addChild(this.§%#e§);
            this.§"#e§.push(this.§%#e§);
            this.§6!n§();
         }
      }
      
      private function §6!n§() : void
      {
         §<"`§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.visible = true;
         §<"`§.getItemByName("FriendsRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
         this.§8#!§.§,#%§ = this.§<$0§();
         this.§8#!§.§1!w§ = this.§&#g§();
         this.§,"K§(true);
      }
      
      private function §%!f§() : void
      {
         if(this.§4!W§)
         {
            this.§4!W§.reset();
            this.§4!W§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§#"V§);
            this.§4!W§ = null;
         }
         this.§4!W§ = new Timer(100,1);
         this.§4!W§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§#"V§);
         this.§4!W§.start();
      }
      
      protected function §#"V§(param1:TimerEvent) : void
      {
         if(this.§4!W§)
         {
            this.§4!W§.reset();
            this.§4!W§.removeEventListener(TimerEvent.TIMER,this.§#"V§);
            this.§4!W§ = null;
         }
         this.§`"y§ = §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§;
         this.§?3§.setCoinsAmountText(this.§`"y§);
         this.§?3§.animateGotCoins(this.§?$%§[1]);
         if(this.§[O§)
         {
            this.§[O§.txtRewardAmount.text = this.§?$%§[1] + " x";
            if(§<"`§ && §<"`§.contains(this.§[O§))
            {
               §<"`§.removeChild(this.§[O§);
            }
            this.§[O§.scaleY = 0;
            this.§[O§.scaleX = 0;
         }
         var _loc2_:Point = new Point(§<"`§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(§<"`§.getItemByName("LeagueRewards").mClip.width * 0.5,0)).x,§<"`§.getItemByName("LeagueRewards").mClip.localToGlobal(new Point(0,§<"`§.getItemByName("LeagueRewards").mClip.height * 0.5)).y + 20);
         if(§@#c§.§?q§.§5#1§ && §@#c§.§?q§.§5#1§.l)
         {
            this.§%#e§ = new §]u§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_.x,_loc2_.y,§]u§.§?!q§,§]u§.§!#_§,§'##§.§#R§);
            §<"`§.addChild(this.§%#e§);
            this.§"#e§.push(this.§%#e§);
            this.§ "r§();
         }
      }
      
      private function § "r§() : void
      {
         §<"`§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.visible = true;
         §<"`§.getItemByName("LeagueRewards").mClip.checkMarkAnimation.gotoAndPlay(0);
      }
      
      private function §"#`§() : void
      {
         var _loc1_:§]u§ = null;
         for each(_loc1_ in this.§"#e§)
         {
            if(§<"`§ && §<"`§.contains(_loc1_))
            {
               §<"`§.removeChild(_loc1_);
            }
            _loc1_.§4#y§();
         }
         this.§"#e§ = new Vector.<§]u§>();
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §<"`§.getItemByName("walletContainer").mClip;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      private function §&#g§() : Number
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
      
      private function §<$0§() : Number
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
      
      public function §+!1§() : void
      {
         this.§>!K§();
      }
   }
}

import §4!n§.§#$>§;
import §4!n§.§'!,§;
import §5!$§.§<c§;
import §6!'§.§[!k§;
import §>"9§.§[#%§;
import com.rovio.assets.§2"O§;
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
   
   private var mComponent:§<c§;
   
   private var mClip:MovieClip;
   
   private var _mRunning:Boolean;
   
   private var mSkipButton:§#$>§;
   
   private var mBadgeFrom:DisplayObjectContainer;
   
   private var mBadgeTo:DisplayObjectContainer;
   
   private var mActivePromotionSounds:Array;
   
   private var mNextLeagueTextToLowerBanner:String;
   
   function LeaguePromotionAnimation(param1:§<c§)
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
      §[#%§.§3$A§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL);
      if(this.mActivePromotionSounds)
      {
         _loc1_ = 0;
         while(_loc1_ < this.mActivePromotionSounds.length)
         {
            §[#%§.§3$A§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc1_);
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
         this.mNextLeagueTextToLowerBanner = §[!k§.§[m§.id;
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
         this.mNextLeagueTextToLowerBanner = §[!k§.§[m§.id;
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
      var _loc3_:Class = §2"O§.§`>§(param1);
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
                     §[#%§.§8!3§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,1,0.8);
                     §[#%§.playSound(_loc3_.name,PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_,int.MAX_VALUE);
                  }
                  else
                  {
                     §[#%§.playSound(_loc3_.name,PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,0);
                  }
                  _loc3_.started = true;
               }
            }
            else if(_loc3_.endFrame <= this.mClip.currentFrame)
            {
               §[#%§.§3$A§(PROMOTION_ANIMATION_END_FRAME_SOUND_CHANNEL + _loc2_);
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
   
   private function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
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
      §[#%§.§8!3§(PROMOTION_ANIMATION_DEFAULT_SOUND_CHANNEL,this.mActivePromotionSounds.length,0.8);
   }
}
