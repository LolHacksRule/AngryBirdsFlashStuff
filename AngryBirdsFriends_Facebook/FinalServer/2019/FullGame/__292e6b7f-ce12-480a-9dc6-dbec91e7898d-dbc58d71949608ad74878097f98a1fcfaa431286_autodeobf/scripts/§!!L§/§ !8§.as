package §!!L§
{
   import § ">§.§#"O§;
   import § "L§.§1"r§;
   import § $0§.§5R§;
   import §!L§.§`#u§;
   import §""p§.§6"Z§;
   import §"#X§.§"5§;
   import §"#X§.§8#g§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §#"4§.§3";§;
   import §#"R§.§?""§;
   import §#$?§.§7!b§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §'"b§.§ #F§;
   import §'"b§.§-!4§;
   import §'n§.§+"g§;
   import §+_§.QualifierInterruptedPopUp;
   import §+`§.§%"q§;
   import §,#,§.§%"#§;
   import §,#,§.§0!u§;
   import §,#,§.§2§;
   import §,#,§.§4!g§;
   import §,#,§.§;#p§;
   import §,#,§.§=#o§;
   import §,#,§.§@§;
   import §,#,§.§]§;
   import §1#`§.§&#m§;
   import §2!Y§.§4!h§;
   import §3"V§.§ b§;
   import §4S§.§+!p§;
   import §7"&§.§1k§;
   import §7"X§.§2"R§;
   import §7#$§.§3!,§;
   import §7#$§.§]#q§;
   import §;#N§.TournamentResultsPopup;
   import §>!I§.§&"5§;
   import §>#q§.§^!"§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.ChallengePopup;
   import §?Q§.ErrorPopup;
   import §?Q§.OverlappingTournamentsEndPopup;
   import §]#'§.§4"s§;
   import §]§.§!=§;
   import §]§.§1$?§;
   import §]§.§3"E§;
   import §]§.§[#t§;
   import §^"3§.§ #&§;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`,§.§,!?§;
   import §`,§.§7!$§;
   import §`D§.TabbedShopPopup;
   import com.rovio.assets.§[a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class § !8§ extends §1$?§ implements §1k§, §+#?§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static var §4$$§:int = 0;
      
      private static var §>!_§:int = 0;
      
      private static var §^o§:Boolean = false;
      
      protected static var §;n§:String = "";
      
      protected static const §8#^§:String = "TextContainer";
      
      protected static const §4"w§:String = "leftTopCorner";
      
      protected static const §+#O§:String = "rightTopCorner";
      
      private static const §&w§:int = 6;
      
      private static const §!"T§:int = 8;
      
      private static const §5!'§:int = 4;
      
      private static var §1!#§:int = §5!'§;
      
      protected static const §&"T§:Number = 5 * 60 * 1000;
      
      private static const §6$$§:int = -20;
      
      private static const § else§:int = 0;
      
      private static const §@J§:int = 0;
      
      private static const §!!B§:int = 1;
      
      private static const §5"E§:int = 2;
      
      private static const §4!d§:int = 3;
      
      private static const § q§:int = 4;
      
      private static var §,!V§:§-!4§;
      
      private static var §%D§:Boolean;
      
      private static var §8#t§:Boolean;
      
      private static var §-!&§:Object = null;
      
      private static var §#"C§:Number = 0;
      
      private static const §3"h§:int = 5;
      
      private static const §3"#§:int = 3000;
      
      private static var §[!1§:Array = [true,false,false,false];
       
      
      private var §?!-§:Array;
      
      private var §?#y§:Array;
      
      protected var §3!O§:Array;
      
      protected var §!"&§:Number = 0;
      
      protected var §,#&§:Vector.<§,!?§>;
      
      protected var §<$B§:§7!$§;
      
      protected var §-$#§:§4"s§;
      
      private var §>"&§:Boolean;
      
      private var § 0§:Boolean = false;
      
      private var §%#N§:Vector.<Boolean>;
      
      private var §#O§:§&"5§;
      
      private var §7#b§:Boolean = false;
      
      private var §%A§:§^"C§;
      
      private var §6!5§:§^"C§;
      
      private var §^_§:§#"O§;
      
      private var §2$=§:TextField;
      
      private var §0!b§:TextField;
      
      private var §"w§:Boolean;
      
      private var §4a§:uint;
      
      private const §@!?§:uint = 2000;
      
      private var §^"'§:Boolean;
      
      private var §'r§:§^"C§;
      
      private var § "O§:SimpleButton;
      
      private var §&"3§:QualifierInterruptedPopUp;
      
      private var §"#W§:Wallet;
      
      private var §-6§:Boolean;
      
      private var §7"4§:int;
      
      private var §6!N§:int;
      
      protected var §["z§:§^"C§;
      
      private var §># §:§^"C§;
      
      private var §9!d§:Number;
      
      private var §`!Y§:Timer;
      
      private var §?!e§:Array;
      
      private var §,;§:Array;
      
      public function § !8§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§?#y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§?!e§ = ["2000-279","2000-271","2000-267","2000-269"];
         this.§,;§ = ["2000-303","2000-307","2000-313","2000-315"];
         this.§<$B§ = §7!$§.§+!,§;
         this.§-$#§ = §4"s§.§+!,§;
         this.§^_§ = §#"O§.§+!,§;
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §=#o§
      {
         return §=#o§(AngryBirdsBase.singleton.dataModel);
      }
      
      public static function §"!Y§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §[!1§[param1 - 1];
      }
      
      public static function §>#_§() : void
      {
         §%D§ = true;
      }
      
      public static function §7"p§() : void
      {
         §%D§ = true;
         §,!V§ = null;
      }
      
      public static function §3#Q§() : void
      {
         §8#t§ = true;
      }
      
      public static function §=v§(param1:int, param2:String) : void
      {
         §;n§ = param2.toUpperCase();
         §4$$§ = param1;
         §^o§ = true;
      }
      
      public static function §9F§(param1:int) : void
      {
         §>!_§ = param1;
      }
      
      public static function §`#B§() : int
      {
         return §>!_§;
      }
      
      public static function §<$'§() : void
      {
         if(§4$$§ == 0)
         {
            §4$$§ = §7!$§.§+!,§.§`!X§();
         }
         ++§4$$§;
      }
      
      public static function §`"[§() : void
      {
         §4$$§ = 0;
      }
      
      protected function §[§(param1:§&#m§) : void
      {
         if(this.§%#N§)
         {
            this.§%#N§[§@J§] = true;
         }
         this.§<$B§.removeEventListener(§&#m§.§&!I§,this.§[§);
         this.§<$B§.addEventListener(§&#m§.§]"]§,this.§7r§);
         this.§<$B§.§`!!§();
      }
      
      protected function §&#"§(param1:§&#m§) : void
      {
         if(this.§%#N§)
         {
            this.§%#N§[§!!B§] = true;
         }
         this.§<$B§.removeEventListener(§&#m§.§%#i§,this.§&#"§);
      }
      
      protected function §>"Q§(param1:§&#m§) : void
      {
         if(this.§%#N§)
         {
            this.§%#N§[§!!B§] = true;
         }
         this.§<$B§.removeEventListener(§&#m§.§%#i§,this.§>"Q§);
         this.§7N§();
         this.§4$"§();
      }
      
      protected function §"#y§(param1:§&#m§) : void
      {
         if(this.§%#N§)
         {
            this.§%#N§[§5"E§] = true;
         }
         this.§<$B§.removeEventListener(§&#m§.§'"Z§,this.§"#y§);
      }
      
      protected function §7r§(param1:§&#m§) : void
      {
         if(this.§%#N§)
         {
            this.§%#N§[§4!d§] = true;
         }
         this.§<$B§.removeEventListener(§&#m§.§]"]§,this.§7r§);
      }
      
      protected function §'"1§(param1:§&#m§) : void
      {
         this.§7=§(this.§"#W§);
         this.§["_§();
      }
      
      override protected function init() : void
      {
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_Tournament[0]);
         this.§ 0§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3";§.§#"'§().§@"l§(§3";§.§8m§);
         this.§7"4§ = 0;
         this.§6!N§ = 0;
         this.§8"Q§();
         this.§>!9§();
         §>#_§();
         this.§'r§ = §;!w§.getItemByName("Button_PreviousResults");
         this.§["z§ = §;!w§.getItemByName("Button_Challenge");
         this.§["z§.visible = true;
         §]$?§.§2#§.clearLevel();
         §]$?§.§2#§.setVisible(false);
         (§]$?§.§;u§ as §@z§).§-"o§(§2+§.§3#u§);
         if(§;!w§.getItemByName("TournamentCutsceneSelection"))
         {
            §;!w§.getItemByName("TournamentCutsceneSelection").setVisibility(false);
         }
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§#!3§);
         this.§["_§();
         this.§<$B§.addEventListener(§&#m§.§?i§,this.§'"1§);
         this.§0p§();
         this.§9!d§ = §]$?§.§@S§();
         this.§!"&§ = §&"T§;
      }
      
      private function §0p§() : void
      {
         if(!this.§<$B§.§6!0§() && this.§<$B§.§+"9§ && §]#0§.§+!,§.§'!u§.§-#>§(§7!$§.§6$3§))
         {
            if(this.§&"3§ == null)
            {
               this.§&"3§ = new QualifierInterruptedPopUp(§@#D§.NORMAL,§5R§.DEFAULT);
            }
            this.§<$B§.§;L§(true);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§&"3§);
         }
      }
      
      private function §>!9§() : void
      {
         if(this.§6!5§ == null)
         {
            this.§6!5§ = §;!w§.getItemByName("MoreGamesButton");
         }
         if(this.§%A§ == null || this.§%A§.mClip == null)
         {
            this.§%A§ = §;!w§.getItemByName("Button_SpinningWheel");
         }
         this.§4a§ = 0;
         this.§1l§(false);
         this.§^_§.addEventListener(§?""§.§#§,this.§^!U§);
         this.§^_§.addEventListener(§?""§.§^"N§,this.§=!9§);
         if(this.§^_§.§,"e§())
         {
            this.§%A§.setEnabled(false);
            this.§%A§.mClip.alpha = 0.5;
         }
         else if(this.§^_§.§,#3§())
         {
            this.§"w§ = true;
            this.§1l§(true);
         }
      }
      
      private function §^!U§(param1:§?""§) : void
      {
         this.§1l§(false);
      }
      
      private function §=!9§(param1:§?""§) : void
      {
         this.§%A§.setEnabled(true);
         this.§%A§.mClip.alpha = 1;
         var _loc2_:Boolean = this.§^_§.§,#3§();
         this.§"w§ = _loc2_;
         this.§1l§(_loc2_);
      }
      
      private function §8!f§() : void
      {
         var _loc1_:MovieClip = MovieClip(this.§%A§.mClip.getChildByName("notifier"));
         _loc1_.gotoAndPlay(1);
      }
      
      private function §1l§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = MovieClip(this.§%A§.mClip.getChildByName("notifier"));
         _loc2_.visible = param1;
         _loc2_.gotoAndStop(1);
         this.§^"'§ = param1;
      }
      
      private function §[!r§(param1:§+"g§) : void
      {
         if(this.§%#N§)
         {
            this.§%#N§[§ q§] = true;
         }
         this.§-$#§.removeEventListener(§+"g§.§7#i§,this.§[!r§);
      }
      
      private function §?!U§(param1:Boolean) : void
      {
         §;!w§.getItemByName("loadingTournament").setVisibility(param1);
         if(param1)
         {
            this.§7=§(this.§"#W§);
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §+!p§.§2$9§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§-#d§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Tournament level selection error: " + param1.toString()));
         }
      }
      
      private function §3! §() : String
      {
         return this.§`"L§(this.§?#y§);
      }
      
      private function §`"L§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §="n§() : void
      {
         var _loc1_:§3!,§ = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:§^"C§ = null;
         var _loc5_:Class = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         if(§>!_§ > 0)
         {
            if(this.§-$#§.§]$ § && this.§-$#§.§]$ §.t && this.§-$#§.§]$ §.t.a)
            {
               if(this.§-$#§.§]$ §.t.a.tid == §4$$§)
               {
                  §7!$§.§0#§(true);
                  StateTournamentResults.§^z§ = §>!_§;
                  §>!_§ = 0;
                  §`"[§();
                  StateTournamentResults.§+G§ = StateTournamentResults.§9`§;
                  §3#§(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            else if(!this.§-$#§.§]"g§())
            {
               §7!$§.§0#§(true);
               StateTournamentResults.§^z§ = §>!_§;
               §>!_§ = 0;
               §`"[§();
               StateTournamentResults.§+G§ = StateTournamentResults.§9`§;
               §3#§(StateTournamentResults.STATE_NAME);
               return;
            }
            §>!_§ = 0;
            §<$'§();
         }
         if(mLevelManager)
         {
            _loc1_ = mLevelManager.getEpisodeByName(§!=§.§^;§);
            for each(_loc2_ in this.§<$B§.§@!v§.levels)
            {
               _loc1_.§?"x§(_loc2_.levelId);
            }
         }
         if(this.§<$B§.§+!r§(§@z§.§`"v§))
         {
            this.§&!y§(§@z§.§`"v§);
            §@z§.§`"v§ = null;
            return;
         }
         if(!§;!w§)
         {
            return;
         }
         this.§7N§();
         this.§4$"§();
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
         this.§9!=§();
         this.§ 0§ = true;
         if(this.§0!b§)
         {
            this.§0!b§.text = this.§<$B§.§6!D§;
            if(!§-!&§)
            {
               §-!&§ = this.§0!b§.y;
            }
            this.§0!b§.y = §-!&§ + Math.round((this.§0!b§.height - this.§0!b§.textHeight) / 2);
         }
         if(this.§<$B§)
         {
            this.§#O§ = this.§<$B§.§;i§(this.§<$B§.brandedTournamentAssetId);
         }
         else
         {
            this.§#O§ = null;
         }
         this.§-6§ = true;
         if(this.§#O§)
         {
            this.§ "O§ = this.getCampaignButtonFromBG();
            if(this.§ "O§)
            {
               this.§ "O§.addEventListener(MouseEvent.CLICK,this.§,"E§);
               this.§-6§ = false;
            }
            else
            {
               _loc3_ = this.§#O§.§!4§ == §+#O§ ? §+#O§ : §4"w§;
               if(_loc4_ = §;!w§.getItemByName(_loc3_))
               {
                  if(_loc5_ = §[a§.§8#k§(this.§#O§.§<"z§,false))
                  {
                     _loc4_.mClip.removeChildren();
                     _loc4_.mClip.addChild(new _loc5_());
                     _loc4_.setVisibility(true);
                     this.§-6§ = this.§#O§.§!4§ == §+#O§;
                  }
               }
            }
         }
         this.§># § = §;!w§.getItemByName("share_button_holder");
         if(this.§># § && this.§<$B§.§>#;§)
         {
            _loc6_ = "SHARE_BUTTON_" + this.§<$B§.tournamentRules.§"">§;
            if(_loc5_ = §[a§.§8#k§(_loc6_,false))
            {
               this.§># §.mClip.removeChildren();
               this.§># §.mClip.addChild(new _loc5_());
               this.§># §.mClip.addEventListener(MouseEvent.CLICK,this.§5!;§,false,0,true);
            }
         }
         if(this.§-6§)
         {
            this.§6"h§(new Wallet(this,true,true,false,true));
         }
         this.§3!W§();
         if(§8#t§ && §,!V§)
         {
            §,!V§.§#^§();
            §8#t§ = false;
         }
         this.§7"4§ = 0;
         this.§6!N§ = 0;
         (§]$?§.§;u§ as §@z§).§8!;§.addEventListener(§2"R§.§%#<§,this.§7!2§);
         §7!$§.§0#§(true);
         if(!this.§<$B§.§!$#§())
         {
            if(_loc7_ = §%"#§.§]!9§())
            {
               _loc7_.sortOn(["start","id"],[Array.NUMERIC,Array.DESCENDING]);
               AngryBirdsBase.singleton.popupManager.openPopup(new OverlappingTournamentsEndPopup(_loc7_));
               §%"#§.§6!A§();
            }
         }
      }
      
      private function §3!W§() : void
      {
         if(!§,!V§)
         {
            return;
         }
         if(§=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§["v§(§,!V§.ID))
         {
            return;
         }
         var _loc1_:Boolean = §,!V§.§5$%§();
         if(_loc1_)
         {
            § b§.playSound("league_promotion_diamond",§ b§.§1#-§);
            §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§0#+§,[§,!V§.ID]);
         }
      }
      
      private function §,"E§(param1:MouseEvent) : void
      {
         this.§<$B§.§,"V§();
      }
      
      protected function getCampaignButtonFromBG() : SimpleButton
      {
         return null;
      }
      
      private function §8"Q§() : void
      {
         var _loc1_:§^"C§ = §;!w§.container.getItemByName("TextContainer");
         var _loc2_:MovieClip = MovieClip(_loc1_.mClip.getChildByName(§8#^§));
         this.§2$=§ = TextField((_loc2_.getChildByName("DaysLeftTextfield") as DisplayObjectContainer).getChildByName("text"));
         this.§0!b§ = TextField(_loc2_.getChildByName("Textfield_TournamentName"));
      }
      
      private function §]+§() : void
      {
         var _loc1_:Object = this.§-$#§.§=!j§;
         var _loc2_:Boolean = _loc1_ && _loc1_.t && _loc1_.t.players.length > 2;
         if(_loc2_)
         {
            if(_loc1_ && _loc1_.t && _loc1_.t.qualifier && _loc1_.l && _loc1_.l.pli.tn == "QUALIFIER")
            {
               _loc2_ = false;
            }
         }
         if(this.§'r§)
         {
            if(_loc2_)
            {
               this.§'r§.setEnabled(true);
               this.§'r§.mClip.alpha = 1;
               this.§7#b§ = true;
            }
            else
            {
               this.§'r§.setEnabled(false);
               this.§'r§.mClip.alpha = 0.5;
            }
         }
      }
      
      private function §^$8§() : void
      {
         if(this.§<$B§.tournamentRules.§4U§)
         {
            this.§<m§();
         }
         else
         {
            this.§<m§();
         }
         var _loc1_:String = §`#u§.§#k§ + "_" + this.§<$B§.tournamentRules.§!#g§;
         if(this.§<$B§.tournamentRules.§!#g§ == §7!$§.§%#S§)
         {
            _loc1_ = §`#u§.§8"%§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§,!?§ = null;
         super.deActivate();
         this.§<$B§.removeEventListener(§&#m§.§&!I§,this.§[§);
         this.§<$B§.removeEventListener(§&#m§.§%#i§,this.§&#"§);
         this.§<$B§.removeEventListener(§&#m§.§%#i§,this.§>"Q§);
         this.§<$B§.removeEventListener(§&#m§.§'"Z§,this.§"#y§);
         this.§<$B§.removeEventListener(§&#m§.§]"]§,this.§7r§);
         this.§^_§.removeEventListener(§?""§.§#§,this.§^!U§);
         this.§^_§.removeEventListener(§?""§.§^"N§,this.§=!9§);
         this.§7#b§ = false;
         this.§<$B§.removeEventListener(§&#m§.§?i§,this.§'"1§);
         this.§-$#§.removeEventListener(§+"g§.§7#i§,this.§[!r§);
         (§]$?§.§;u§ as §@z§).§8!;§.removeEventListener(§2"R§.§%#<§,this.§7!2§);
         this.§3!O§ = this.§<$B§.levelIDs;
         mLevelManager.resetPreviousLevel();
         if(this.§#O§ && §;!w§)
         {
            §;!w§.getItemByName(§4"w§).setVisibility(false);
            §;!w§.getItemByName(§+#O§).setVisibility(false);
         }
         if(this.§ "O§)
         {
            this.§ "O§.removeEventListener(MouseEvent.CLICK,this.§,"E§);
         }
         §,!V§ = null;
         this.§7=§(this.§"#W§);
         for each(_loc1_ in this.§,#&§)
         {
            _loc1_.deactivate();
         }
      }
      
      private function §4$"§() : void
      {
         var _loc1_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§"5§ = null;
         var _loc7_:§2#9§ = null;
         var _loc8_:String = null;
         var _loc9_:§"5§ = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc2_:Array = [];
         this.§?!-§ = [];
         var _loc3_:Array = this.§<$B§.§<#K§();
         §4!h§.§3#^§ = new Vector.<§2#9§>();
         var _loc4_:int = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc6_ = §8#g§.§^!O§(_loc5_.uid))
            {
               if(_loc6_.name)
               {
                  _loc5_.n = _loc6_.name;
               }
            }
            if(_loc5_.n == null)
            {
               _loc5_.n = "";
            }
            if(_loc5_.uid == (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID)
            {
               _loc1_ = _loc5_;
            }
            if(_loc5_.c)
            {
               _loc4_ = _loc5_.c;
            }
            else
            {
               _loc5_.c = _loc4_;
            }
            if((_loc7_ = §2#9§.§"!U§(_loc5_)).§#!§)
            {
               if(§4!h§.§6M§.indexOf(_loc7_.userId) == -1)
               {
                  §4!h§.§3#^§.push(_loc7_);
               }
            }
            else
            {
               _loc2_.push(_loc7_);
            }
            this.§?!-§.push(_loc7_);
         }
         if(_loc1_ == null)
         {
            _loc8_ = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID;
            _loc10_ = !!(_loc9_ = §8#g§.§^!O§(_loc8_)) ? _loc9_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "uid":_loc8_,
               "n":_loc10_
            };
            _loc11_ = 0;
            _loc12_ = 0;
            while(_loc12_ < this.§3!O§.length)
            {
               _loc11_ += §`#u§(AngryBirdsBase.singleton.dataModel.userProgress).§1$C§(this.§3!O§[_loc12_]);
               _loc12_++;
            }
            _loc1_.p = _loc11_;
            this.§?!-§.push(§2#9§.§"!U§(_loc1_));
            _loc2_.push(§2#9§.§"!U§(_loc1_));
         }
         if(§@#5§.§=D§(§@#5§.§;##§))
         {
            _loc12_ = 0;
            while(_loc12_ < _loc2_.length)
            {
               _loc2_[_loc12_].rank = _loc12_ + 1;
               _loc12_++;
            }
         }
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§>C§,_loc2_);
         QualifierInterruptedPopUp.§2!,§(_loc2_);
         this.§9!=§();
      }
      
      private function §8#D§(param1:Array) : void
      {
         var _loc3_:§"5§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§2#9§ = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Vector.<§"5§> = §8#g§.§4"-§();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = false;
            for each(_loc5_ in this.§?!-§)
            {
               if(_loc3_.userID == _loc5_.userId)
               {
                  _loc4_ = true;
                  break;
               }
            }
            if(!_loc4_)
            {
               _loc6_ = "";
               if(_loc3_.userID)
               {
                  _loc6_ = _loc3_.userID;
               }
               _loc7_ = "";
               if(_loc3_.name)
               {
                  _loc7_ = _loc3_.name;
               }
               param1.push(new §;#p§(_loc6_,_loc7_,"",!§4!g§.§+!,§.§^!D§(_loc6_)));
            }
         }
      }
      
      protected function §7N§() : void
      {
         var _loc2_:§1"r§ = null;
         this.§,#&§ = new Vector.<§,!?§>();
         this.§3!O§ = this.§<$B§.levelIDs;
         var _loc1_:int = 0;
         while(_loc1_ < §!"T§)
         {
            _loc2_ = §1"r§(§;!w§.getItemByName("LevelButton" + (_loc1_ + 1)));
            if(!_loc2_)
            {
               break;
            }
            if(_loc1_ < this.§3!O§.length)
            {
               _loc2_.visible = true;
               this.§,#&§.push(this.makeLevelButton(_loc1_ + 1,this.§<$B§.levelObjects[_loc1_],_loc2_));
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
         if(this.§3!O§.length > §&w§)
         {
            §1!#§ = §5!'§;
         }
         else
         {
            §1!#§ = §&w§;
         }
         this.§0"b§();
      }
      
      private function §6#V§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.buttonGap = §]$?§.§@S§() / (§1!#§ + 1);
         _loc1_.buttonY = §]$?§.§""4§() * 0.5;
         _loc1_.centerX = §]$?§.§@S§() >> 1;
         _loc1_.buttonRightCorner = §]$?§.§@S§() - (§]$?§.§@S§() >> 3);
         if(this.§3!O§.length > §1!#§)
         {
            _loc1_.buttonY = §]$?§.§""4§() * 0.41;
            _loc1_.buttonSecondRowY = _loc1_.buttonY + §]$?§.§""4§() / 4.5;
         }
         return _loc1_;
      }
      
      private function §0"b§() : void
      {
         var _loc5_:§,!?§ = null;
         var _loc1_:Object = this.§6#V§();
         var _loc2_:Number = 0;
         var _loc3_:Number = 1;
         if((§]$?§.§;u§ as §@z§).§ >§())
         {
            _loc2_ = §]$?§.§""4§() >> 5;
            _loc3_ = §3"E§.§3$0§;
         }
         var _loc4_:int = 1;
         for each(_loc5_ in this.§,#&§)
         {
            _loc5_.setScale(_loc3_);
            if(_loc4_ <= §1!#§)
            {
               _loc5_.setPosition(_loc1_.buttonGap * _loc4_,_loc1_.buttonY + _loc2_);
            }
            else
            {
               _loc5_.setPosition(_loc1_.buttonGap * (_loc4_ - §1!#§),_loc1_.buttonSecondRowY + (§]$?§.§""4§() >> 5));
            }
            _loc4_++;
         }
      }
      
      protected function makeLevelButton(param1:int, param2:Object, param3:§1"r§) : §,!?§
      {
         return new §,!?§(param1,param2,this,param3,this.§<$B§,dataModel.§[h§,dataModel.§1q§,§`#u§(dataModel.userProgress));
      }
      
      private function §&"E§(param1:int) : §2#9§
      {
         var _loc2_:§0!u§ = null;
         if(param1 <= this.§?!-§.length)
         {
            _loc2_ = this.§?!-§[param1 - 1];
            if(_loc2_ is §2#9§)
            {
               (_loc2_ as §2#9§).rank = param1;
               return _loc2_ as §2#9§;
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§`$4§ = param3;
         switch(eventName)
         {
            case "BACK":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               if(this.§<$B§.§!$#§())
               {
                  §3#§(§8"^§.STATE_NAME);
               }
               else
               {
                  §3#§(§3"E§.STATE_NAME);
               }
               break;
            case "SPINNING_WHEEL":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§^_§.§;#M§();
               §3";§.§#"'§().§%!;§(§3";§.§6K§);
               break;
            case "PREVIOUS_RESULTS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               if(!this.§-$#§.active)
               {
                  §3#§(StateLastWeeksTournamentResults.STATE_NAME);
               }
               else
               {
                  StateTournamentResults.§+G§ = StateTournamentResults.§;"&§;
                  §3#§(StateTournamentResults.STATE_NAME);
               }
               break;
            case "LEVEL_1":
               this.§ $&§(0);
               break;
            case "LEVEL_2":
               this.§ $&§(1);
               break;
            case "LEVEL_3":
               this.§ $&§(2);
               break;
            case "LEVEL_4":
               this.§ $&§(3);
               break;
            case "LEVEL_5":
               this.§ $&§(4);
               break;
            case "LEVEL_6":
               this.§ $&§(5);
               break;
            case "LEVEL_7":
               this.§ $&§(6);
               break;
            case "LEVEL_8":
               this.§ $&§(7);
               break;
            case "showCredits":
               §3#§(§[#t§.STATE_NAME);
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               this.§=]§(int(eventName.charAt(eventName.length - 1)));
               break;
            case "SPECIAL_STORE":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§@#D§.NORMAL,§5R§.DEFAULT));
               break;
            case "CHALLENGE":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ChallengePopup(§@#D§.NORMAL,§5R§.DEFAULT));
               break;
            case "MORE_GAMES":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("http://www.rovio.com/games"),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         if(§,!V§)
         {
            §,!V§.onUIInteraction(eventName);
         }
         this.§<$B§.§,!e§(eventName);
      }
      
      protected function § $&§(param1:int) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         var _loc2_:String = this.§3!O§[param1];
         var _loc3_:Object = this.§<$B§.levelObjects[param1];
         var _loc4_:§,!?§ = this.§,#&§[param1];
         if(this.§<$B§.isLevelOpen(_loc2_))
         {
            this.§&!y§(_loc2_);
         }
         else if(_loc4_.§5#>§ && !this.§<$B§.§]!<§)
         {
            _loc4_.§`!w§();
         }
      }
      
      private function §=]§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§<$B§.tournamentRules.§!#g§.indexOf("HALLOWEEN") != -1)
         {
            _loc2_ = this.§?!e§[param1 - 1];
         }
         if(this.§<$B§.tournamentRules.§!#g§.indexOf("XMAS") != -1)
         {
            _loc2_ = this.§,;§[param1 - 1];
         }
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc2_.toLowerCase()));
         §3#§(§7!B§.STATE_NAME);
      }
      
      protected function §&!y§(param1:String) : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(param1.toLowerCase()));
         §3#§(§@<§.STATE_NAME);
      }
      
      protected function §9!=§() : void
      {
         if(this.§`!Y§)
         {
            this.§?!U§(true);
            return;
         }
         if(§;!w§.getItemByName("loadingTournament").visible || AngryBirdsBase.singleton.popupManager.§[#a§())
         {
            return;
         }
         var timeLeftPretty:Array = this.§<$B§.§8#h§();
         this.§2$=§.text = timeLeftPretty[0] + " left!";
         this.§2$=§.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.§`!Y§ = new Timer(§3"#§);
            this.§`!Y§.addEventListener(TimerEvent.TIMER,function():void
            {
               §`!Y§.stop();
               §`!Y§ = null;
               §["_§();
            });
            this.§?!U§(true);
            this.§`!Y§.start();
         }
         timeLeftPretty = null;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§,!?§ = null;
         var _loc3_:Boolean = false;
         super.update(param1);
         if(this.§"w§)
         {
            this.§4a§ += param1;
            if(this.§4a§ >= this.§@!?§)
            {
               this.§"w§ = false;
               this.§8!f§();
            }
         }
         if(§%D§)
         {
            if(§,!V§)
            {
               §,!V§.§=1§();
               §%D§ = false;
               this.§7"4§ = 0;
               this.§6!N§ = 0;
            }
            else if(§ #F§.§+!,§.§1#@§())
            {
               §,!V§ = § #F§.§+!,§.§4#P§();
               §,!V§.§]#F§(§;!w§);
            }
         }
         if(!this.§7#b§)
         {
            this.§]+§();
         }
         if(this.§%#N§)
         {
            for each(_loc3_ in this.§%#N§)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            if(_loc3_ && this.§<$B§.§@!v§)
            {
               this.§%#N§ = null;
               this.§="n§();
            }
         }
         else
         {
            this.§9!=§();
         }
         for each(_loc2_ in this.§,#&§)
         {
            _loc2_.update();
         }
         if(this.§ 0§)
         {
            this.§?!U§(false);
            (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
            this.§ 0§ = false;
         }
         if(this.§9!d§ != §]$?§.§@S§())
         {
            this.§7"4§ = 0;
            this.§6!N§ = 0;
            this.§9!d§ = §]$?§.§@S§();
         }
         if(this.§!"&§ > 0)
         {
            this.§!"&§ -= param1;
            if(this.§!"&§ <= 0)
            {
               this.§!"&§ = §&"T§;
               this.§<$B§.addEventListener(§&#m§.§%#i§,this.§>"Q§);
               this.§<$B§.§!'§(§4$$§);
            }
         }
      }
      
      private function §+#-§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:String = null;
         var _loc5_:§1"r§ = null;
         var _loc6_:Boolean = false;
         if(this.§<$B§.levelIDs.length > 0)
         {
            _loc2_ = this.§]$0§();
            if(§;!w§.getItemByName("TournamentCutsceneSelection"))
            {
               §;!w§.getItemByName("TournamentCutsceneSelection").setVisibility(_loc2_ > 1 && _loc2_ <= 4);
            }
            _loc3_ = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§1$C§(this.§,;§[3]) > 0;
            §[!1§[1] = _loc2_ >= 3;
            §[!1§[2] = _loc2_ >= 4;
            §[!1§[3] = _loc2_ >= 4 && _loc3_;
         }
         if(!this.§<$B§.tournamentRules)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§,;§.length)
         {
            _loc4_ = "";
            if(this.§<$B§.tournamentRules.§!#g§.indexOf("XMAS") != -1)
            {
               _loc4_ = this.§,;§[_loc1_];
            }
            if(_loc5_ = §;!w§.getItemByName("CutsceneButton" + int(_loc1_ + 1)) as §1"r§)
            {
               if(_loc6_ = §"!Y§(_loc1_ + 1))
               {
                  _loc5_.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
                  _loc5_.setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
            _loc1_++;
         }
      }
      
      private function §]$0§() : int
      {
         var _loc1_:int = 1;
         switch(this.§<$B§.levelIDs[0])
         {
            case this.§,;§[0]:
               _loc1_ = 2;
               break;
            case this.§,;§[1]:
               _loc1_ = 3;
               break;
            case this.§,;§[2]:
            case this.§,;§[3]:
               _loc1_ = 4;
         }
         return _loc1_;
      }
      
      protected function §<m§(param1:String = null) : void
      {
         var _loc2_:TournamentResultsPopup = new TournamentResultsPopup(§@#D§.NORMAL,§5R§.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(!this.§3!O§ || this.§3!O§.length == 0 || this.§-6§ && !this.§"#W§)
         {
            return;
         }
         if((§]$?§.§;u§ as §@z§).§ >§())
         {
            if(this.§7"4§ < §3"h§)
            {
               this.§6!N§ = 0;
               if(this.§"#W§)
               {
                  this.§"#W§.§`#8§.scaleX = §3"E§.§3$0§;
                  this.§"#W§.§`#8§.scaleY = §3"E§.§3$0§;
               }
               this.§0"b§();
               _loc1_ = this.§6#V§();
               _loc2_ = _loc1_.centerX;
               if(§,!V§)
               {
                  §,!V§.§="!§(_loc2_,_loc1_.buttonY + (this.§%A§.y - _loc1_.buttonY) / 2,_loc1_.buttonRightCorner);
               }
               if(this.§["z§)
               {
                  this.§["z§.x = _loc2_;
               }
               if(this.§># §)
               {
                  this.§># §.mClip.visible = true;
                  this.§># §.x = §]$?§.§@S§() >> 1;
                  this.§># §.y = _loc1_.buttonY + (this.§%A§.y - _loc1_.buttonY) / 2;
               }
               _loc3_ = §;!w§.getItemByName("Button_PreviousResults").x - §;!w§.getItemByName("Button_Back").x;
               this.§%A§.x = §;!w§.getItemByName("Button_Back").x + _loc3_ / 4;
               this.§6!5§.x = §;!w§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
               ++this.§7"4§;
            }
         }
         else if(this.§6!N§ < §3"h§)
         {
            this.§7"4§ = 0;
            if(this.§"#W§)
            {
               this.§"#W§.§`#8§.scaleX = 1;
               this.§"#W§.§`#8§.scaleY = 1;
            }
            this.§0"b§();
            _loc1_ = this.§6#V§();
            _loc2_ = _loc1_.centerX;
            if(§,!V§)
            {
               §,!V§.§="!§(_loc2_,_loc1_.buttonY + (this.§%A§.y - _loc1_.buttonY) / 2,_loc1_.buttonRightCorner);
            }
            if(this.§["z§)
            {
               this.§["z§.x = _loc2_;
            }
            if(this.§># §)
            {
               this.§># §.mClip.visible = true;
               this.§># §.x = §]$?§.§@S§() >> 1;
               this.§># §.y = _loc1_.buttonY + (this.§%A§.y - _loc1_.buttonY) / 2;
            }
            _loc3_ = §;!w§.getItemByName("Button_PreviousResults").x - §;!w§.getItemByName("Button_Back").x;
            this.§%A§.x = §;!w§.getItemByName("Button_Back").x + _loc3_ / 4;
            this.§6!5§.x = §;!w§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
            ++this.§6!N§;
         }
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         if(this.§"#W§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;!w§.movieClip;
      }
      
      protected function §5!;§(param1:MouseEvent) : void
      {
         if(this.§<$B§.§>#;§ && this.§<$B§.§>#;§.url)
         {
            §7!b§.§7@§("shareURL",this.§<$B§.§>#;§.url);
         }
      }
      
      protected function §7!2§(param1:§2"R§) : void
      {
         var _loc2_:§,!?§ = null;
         for each(_loc2_ in this.§,#&§)
         {
            _loc2_.§ "J§(true);
         }
      }
      
      public function §["_§() : void
      {
         this.§?!U§(true);
         this.§%#N§ = new Vector.<Boolean>();
         this.§%#N§[§@J§] = false;
         this.§%#N§[§!!B§] = false;
         this.§%#N§[§5"E§] = false;
         this.§%#N§[§4!d§] = false;
         if(§7!$§.§+!,§.§!$#§())
         {
            if(§%"#§.§9"1§() != -1)
            {
               §7!$§.§'"P§();
               §4$$§ = §%"#§.§9"1§();
               §>!_§ = §%"#§.§9"1§();
               §%"#§.§5A§();
            }
            else if(!§^o§)
            {
               §7!$§.§'"P§();
               if(§4$$§ == 0)
               {
                  §4$$§ = §7!$§.§+!,§.§`!X§();
               }
               §>!_§ = §4$$§;
            }
            else if(§ #F§.§+!,§.§^"Q§() == §6"Z§.§in §)
            {
               §7!$§.§'"P§();
            }
         }
         else if(§%"#§.§9"1§() != -1)
         {
            §4$$§ = §%"#§.§9"1§();
            §>!_§ = §4$$§;
            §%"#§.§5A§();
         }
         else if(§>!_§ > 0)
         {
            §4$$§ = §>!_§;
         }
         else if(§4$$§ == 0)
         {
            §4$$§ = §7!$§.§+!,§.§`!X§();
         }
         this.§<$B§.addEventListener(§&#m§.§&!I§,this.§[§);
         this.§<$B§.final(§4$$§);
         this.§<$B§.addEventListener(§&#m§.§'"Z§,this.§"#y§);
         this.§<$B§.§'"4§(§4$$§);
         this.§<$B§.addEventListener(§&#m§.§%#i§,this.§&#"§);
         this.§<$B§.§!'§(§4$$§);
         if(this.§-$#§.active)
         {
            if(this.§%#N§)
            {
               this.§%#N§[§ q§] = false;
            }
            §@z§.§ P§ = true;
            this.§-$#§.addEventListener(§+"g§.§7#i§,this.§[!r§);
            this.§-$#§.§08§(§4$$§);
         }
      }
      
      public function §9$$§() : Boolean
      {
         return this.§%#N§ != null;
      }
   }
}
