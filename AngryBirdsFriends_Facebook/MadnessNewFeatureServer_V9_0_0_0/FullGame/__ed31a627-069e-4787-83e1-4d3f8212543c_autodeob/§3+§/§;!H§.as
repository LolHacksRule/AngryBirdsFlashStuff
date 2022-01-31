package §3+§
{
   import § !j§.§4#c§;
   import § §.§[$3§;
   import §!#C§.§ $?§;
   import §!#C§.§&%§;
   import §!#C§.§0#;§;
   import §!#C§.§1%§;
   import §!#C§.§3" §;
   import §!#C§.§4!Q§;
   import §!#C§.§4"p§;
   import §!#C§.§5H§;
   import §"",§.§4#Q§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §##Z§.§<$2§;
   import §#,§.§ !>§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §+"s§.§>#O§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §0!K§.TournamentResultsPopup;
   import §0!s§.§]"Y§;
   import §0"B§.§##G§;
   import §1"l§.§`""§;
   import §1L§.§>5§;
   import §2";§.§'#J§;
   import §2";§.§7!z§;
   import §2";§.§95§;
   import §2";§.§`"A§;
   import §2J§.§]#@§;
   import §3!-§.QualifierInterruptedPopUp;
   import §5" §.TabbedShopPopup;
   import §7R§.§ #`§;
   import §8!h§.§^"]§;
   import §8"g§.§^#$§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §9$2§.§8L§;
   import §<!r§.§'##§;
   import §<!r§.§]!'§;
   import §=E§.§<T§;
   import §=E§.§@u§;
   import §>z§.§#"l§;
   import §>z§.ChallengePopup;
   import §>z§.ErrorPopup;
   import §>z§.OverlappingTournamentsEndPopup;
   import §?!]§.§6#k§;
   import §@$=§.§[#d§;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
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
   
   public class §;!H§ extends §7!z§ implements §%!#§, §&>§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static var §4$;§:int = 0;
      
      private static var §!!z§:int = 0;
      
      private static var §;l§:Boolean = false;
      
      protected static var §-#^§:String = "";
      
      protected static const §4"d§:String = "TextContainer";
      
      protected static const §>T§:String = "leftTopCorner";
      
      protected static const §1E§:String = "rightTopCorner";
      
      private static const §+"_§:int = 6;
      
      private static const §3!S§:int = 8;
      
      private static const §8"R§:int = 4;
      
      private static var §@%§:int = §8"R§;
      
      protected static const §<Q§:Number = 5 * 60 * 1000;
      
      private static const §;"d§:int = -20;
      
      private static const §,#u§:int = 0;
      
      private static const §<"h§:int = 0;
      
      private static const §=$5§:int = 1;
      
      private static const §+#6§:int = 2;
      
      private static const § "^§:int = 3;
      
      private static const §=$@§:int = 4;
      
      private static var §?!i§:§8L§;
      
      private static var §>%§:Boolean;
      
      private static var §;$6§:Boolean;
      
      private static var §#a§:Object = null;
      
      private static var §,#d§:Number = 0;
      
      private static const §2##§:int = 5;
      
      private static const §&!W§:int = 3000;
      
      private static var §5!B§:Array = [true,false,false,false];
       
      
      private var §!!"§:Array;
      
      private var §"#'§:Array;
      
      protected var §0"G§:Array;
      
      protected var §^!N§:Number = 0;
      
      protected var §[!p§:Vector.<§]!'§>;
      
      protected var §8#Q§:§'##§;
      
      protected var § !F§:§<$2§;
      
      private var §<"I§:Boolean;
      
      private var § $+§:Boolean = false;
      
      private var §97§:Vector.<Boolean>;
      
      private var §@#i§:§^"]§;
      
      private var §##I§:Boolean = false;
      
      private var §6#U§:§8#=§;
      
      private var §`$C§:§8#=§;
      
      private var §%#§:§[#d§;
      
      private var §1"1§:TextField;
      
      private var §="E§:TextField;
      
      private var §2"H§:Boolean;
      
      private var §]#P§:uint;
      
      private const §+!Z§:uint = 2000;
      
      private var §2"!§:Boolean;
      
      private var §1"B§:§8#=§;
      
      private var §5c§:SimpleButton;
      
      private var §6#4§:QualifierInterruptedPopUp;
      
      private var §1!B§:Wallet;
      
      private var §""-§:Boolean;
      
      private var §,#^§:int;
      
      private var §[![§:int;
      
      protected var §=!%§:§8#=§;
      
      private var §<!n§:§8#=§;
      
      private var §0!'§:Number;
      
      private var §>!%§:Timer;
      
      private var §7!r§:Array;
      
      private var §;!C§:Array;
      
      public function §;!H§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§"#'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§7!r§ = ["2000-279","2000-271","2000-267","2000-269"];
         this.§;!C§ = ["2000-303","2000-307","2000-313","2000-315"];
         this.§8#Q§ = §'##§.§`"H§;
         this.§ !F§ = §<$2§.§`"H§;
         this.§%#§ = §[#d§.§`"H§;
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return §4!Q§(AngryBirdsBase.singleton.dataModel);
      }
      
      public static function § #Z§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §5!B§[param1 - 1];
      }
      
      public static function §]`§() : void
      {
         §>%§ = true;
      }
      
      public static function §>#"§() : void
      {
         §>%§ = true;
         §?!i§ = null;
      }
      
      public static function §`$§() : void
      {
         §;$6§ = true;
      }
      
      public static function §-3§(param1:int, param2:String) : void
      {
         §-#^§ = param2.toUpperCase();
         §4$;§ = param1;
         §;l§ = true;
      }
      
      public static function §#$%§(param1:int) : void
      {
         §!!z§ = param1;
      }
      
      public static function §[!d§() : int
      {
         return §!!z§;
      }
      
      public static function §`"&§() : void
      {
         if(§4$;§ == 0)
         {
            §4$;§ = §'##§.§`"H§.§4"e§();
         }
         ++§4$;§;
      }
      
      public static function §4$%§() : void
      {
         §4$;§ = 0;
      }
      
      protected function §?$+§(param1:§]#@§) : void
      {
         if(this.§97§)
         {
            this.§97§[§<"h§] = true;
         }
         this.§8#Q§.removeEventListener(§]#@§.§,!N§,this.§?$+§);
         this.§8#Q§.addEventListener(§]#@§.§["X§,this.§"$6§);
         this.§8#Q§.§2"F§();
      }
      
      protected function §5$%§(param1:§]#@§) : void
      {
         if(this.§97§)
         {
            this.§97§[§=$5§] = true;
         }
         this.§8#Q§.removeEventListener(§]#@§.§4#p§,this.§5$%§);
      }
      
      protected function §^!%§(param1:§]#@§) : void
      {
         if(this.§97§)
         {
            this.§97§[§=$5§] = true;
         }
         this.§8#Q§.removeEventListener(§]#@§.§4#p§,this.§^!%§);
         this.§`#j§();
         this.§0s§();
      }
      
      protected function §!#<§(param1:§]#@§) : void
      {
         if(this.§97§)
         {
            this.§97§[§+#6§] = true;
         }
         this.§8#Q§.removeEventListener(§]#@§.§,X§,this.§!#<§);
      }
      
      protected function §"$6§(param1:§]#@§) : void
      {
         if(this.§97§)
         {
            this.§97§[§ "^§] = true;
         }
         this.§8#Q§.removeEventListener(§]#@§.§["X§,this.§"$6§);
      }
      
      protected function §3§(param1:§]#@§) : void
      {
         this.§&!U§(this.§1!B§);
         this.§7?§();
      }
      
      override protected function init() : void
      {
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_Tournament[0]);
         this.§ $+§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §!!K§.§%#S§().§4"8§(§!!K§.§8"S§);
         this.§,#^§ = 0;
         this.§[![§ = 0;
         this.§%"§();
         this.§&!a§();
         §]`§();
         this.§1"B§ = §[$5§.getItemByName("Button_PreviousResults");
         this.§=!%§ = §[$5§.getItemByName("Button_Challenge");
         this.§=!%§.visible = true;
         §7n§.§6#K§.clearLevel();
         §7n§.§6#K§.setVisible(false);
         (§7n§.§-$<§ as § #v§).§ "u§(§`""§.§+#X§);
         if(§[$5§.getItemByName("TournamentCutsceneSelection"))
         {
            §[$5§.getItemByName("TournamentCutsceneSelection").setVisibility(false);
         }
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§2"5§);
         this.§7?§();
         this.§8#Q§.addEventListener(§]#@§.§+!_§,this.§3§);
         this.§`$A§();
         this.§0!'§ = §7n§.§]!M§();
         this.§^!N§ = §<Q§;
      }
      
      private function §`$A§() : void
      {
         if(!this.§8#Q§.§'#B§() && this.§8#Q§.§9<§ && § $?§.§`"H§.§>3§.§>!>§(§'##§.§&!`§))
         {
            if(this.§6#4§ == null)
            {
               this.§6#4§ = new QualifierInterruptedPopUp(§#"l§.NORMAL,§]"Y§.DEFAULT);
            }
            this.§8#Q§.§0!X§(true);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§6#4§);
         }
      }
      
      private function §&!a§() : void
      {
         if(this.§`$C§ == null)
         {
            this.§`$C§ = §[$5§.getItemByName("MoreGamesButton");
         }
         if(this.§6#U§ == null || this.§6#U§.mClip == null)
         {
            this.§6#U§ = §[$5§.getItemByName("Button_SpinningWheel");
         }
         this.§]#P§ = 0;
         this.§5#e§(false);
         this.§%#§.addEventListener(§^#$§.§[Y§,this.§]W§);
         this.§%#§.addEventListener(§^#$§.§0Q§,this.§6!n§);
         if(this.§%#§.§]"z§())
         {
            this.§6#U§.setEnabled(false);
            this.§6#U§.mClip.alpha = 0.5;
         }
         else if(this.§%#§.§'#@§())
         {
            this.§2"H§ = true;
            this.§5#e§(true);
         }
      }
      
      private function §]W§(param1:§^#$§) : void
      {
         this.§5#e§(false);
      }
      
      private function §6!n§(param1:§^#$§) : void
      {
         this.§6#U§.setEnabled(true);
         this.§6#U§.mClip.alpha = 1;
         var _loc2_:Boolean = this.§%#§.§'#@§();
         this.§2"H§ = _loc2_;
         this.§5#e§(_loc2_);
      }
      
      private function §3#!§() : void
      {
         var _loc1_:MovieClip = MovieClip(this.§6#U§.mClip.getChildByName("notifier"));
         _loc1_.gotoAndPlay(1);
      }
      
      private function §5#e§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = MovieClip(this.§6#U§.mClip.getChildByName("notifier"));
         _loc2_.visible = param1;
         _loc2_.gotoAndStop(1);
         this.§2"!§ = param1;
      }
      
      private function §23§(param1:§4#Q§) : void
      {
         if(this.§97§)
         {
            this.§97§[§=$@§] = true;
         }
         this.§ !F§.removeEventListener(§4#Q§.§4f§,this.§23§);
      }
      
      private function §%A§(param1:Boolean) : void
      {
         §[$5§.getItemByName("loadingTournament").setVisibility(param1);
         if(param1)
         {
            this.§&!U§(this.§1!B§);
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §>5§.§@!@§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $@§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Tournament level selection error: " + param1.toString()));
         }
      }
      
      private function §1+§() : String
      {
         return this.§3$>§(this.§"#'§);
      }
      
      private function §3$>§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §]#C§() : void
      {
         var _loc1_:§ T§ = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:§8#=§ = null;
         var _loc5_:Class = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         if(§!!z§ > 0)
         {
            if(this.§ !F§.§>!L§ && this.§ !F§.§>!L§.t && this.§ !F§.§>!L§.t.a)
            {
               if(this.§ !F§.§>!L§.t.a.tid == §4$;§)
               {
                  §'##§.§#$@§(true);
                  StateTournamentResults.§<#%§ = §!!z§;
                  §!!z§ = 0;
                  §4$%§();
                  StateTournamentResults.§2!x§ = StateTournamentResults.§="M§;
                  §1!L§(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            else if(!this.§ !F§.§-"y§())
            {
               §'##§.§#$@§(true);
               StateTournamentResults.§<#%§ = §!!z§;
               §!!z§ = 0;
               §4$%§();
               StateTournamentResults.§2!x§ = StateTournamentResults.§="M§;
               §1!L§(StateTournamentResults.STATE_NAME);
               return;
            }
            §!!z§ = 0;
            §`"&§();
         }
         if(mLevelManager)
         {
            _loc1_ = mLevelManager.getEpisodeByName(§`"A§.§1!5§);
            for each(_loc2_ in this.§8#Q§.§;#Q§.levels)
            {
               _loc1_.§&$=§(_loc2_.levelId);
            }
         }
         if(this.§8#Q§.§;!2§(§ #v§.§`!$§))
         {
            this.§'"]§(§ #v§.§`!$§);
            § #v§.§`!$§ = null;
            return;
         }
         if(!§[$5§)
         {
            return;
         }
         this.§`#j§();
         this.§0s§();
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
         this.§8!&§();
         this.§ $+§ = true;
         if(this.§="E§)
         {
            this.§="E§.text = this.§8#Q§.§3"j§;
            if(!§#a§)
            {
               §#a§ = this.§="E§.y;
            }
            this.§="E§.y = §#a§ + Math.round((this.§="E§.height - this.§="E§.textHeight) / 2);
         }
         if(this.§8#Q§)
         {
            this.§@#i§ = this.§8#Q§.§?4§(this.§8#Q§.brandedTournamentAssetId);
         }
         else
         {
            this.§@#i§ = null;
         }
         this.§""-§ = true;
         if(this.§@#i§)
         {
            this.§5c§ = this.getCampaignButtonFromBG();
            if(this.§5c§)
            {
               this.§5c§.addEventListener(MouseEvent.CLICK,this.§?#s§);
               this.§""-§ = false;
            }
            else
            {
               _loc3_ = this.§@#i§.§2"C§ == §1E§ ? §1E§ : §>T§;
               if(_loc4_ = §[$5§.getItemByName(_loc3_))
               {
                  if(_loc5_ = §6$A§.§1!m§(this.§@#i§.§-H§,false))
                  {
                     _loc4_.mClip.removeChildren();
                     _loc4_.mClip.addChild(new _loc5_());
                     _loc4_.setVisibility(true);
                     this.§""-§ = this.§@#i§.§2"C§ == §1E§;
                  }
               }
            }
         }
         this.§<!n§ = §[$5§.getItemByName("share_button_holder");
         if(this.§<!n§ && this.§8#Q§.§8"Q§)
         {
            _loc6_ = "SHARE_BUTTON_" + this.§8#Q§.tournamentRules.§3V§;
            if(_loc5_ = §6$A§.§1!m§(_loc6_,false))
            {
               this.§<!n§.mClip.removeChildren();
               this.§<!n§.mClip.addChild(new _loc5_());
               this.§<!n§.mClip.addEventListener(MouseEvent.CLICK,this.§6?§,false,0,true);
            }
         }
         if(this.§""-§)
         {
            this.§0!A§(new Wallet(this,true,true,false,true));
         }
         this.§#"d§();
         if(§;$6§ && §?!i§)
         {
            §?!i§.§2!K§();
            §;$6§ = false;
         }
         this.§,#^§ = 0;
         this.§[![§ = 0;
         (§7n§.§-$<§ as § #v§).§=#+§.addEventListener(§6#k§.§!!&§,this.§<"`§);
         §'##§.§#$@§(true);
         if(!this.§8#Q§.§;!q§())
         {
            if(_loc7_ = §&%§.§5J§())
            {
               _loc7_.sortOn(["start","id"],[Array.NUMERIC,Array.DESCENDING]);
               AngryBirdsBase.singleton.popupManager.openPopup(new OverlappingTournamentsEndPopup(_loc7_));
               §&%§.§5C§();
            }
         }
      }
      
      private function §#"d§() : void
      {
         if(!§?!i§)
         {
            return;
         }
         if(§4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§3$;§(§?!i§.ID))
         {
            return;
         }
         var _loc1_:Boolean = §?!i§.§?#Q§();
         if(_loc1_)
         {
            §3Z§.playSound("league_promotion_diamond",§3Z§.§8#R§);
            §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§4"h§(§[$3§.§'"N§,[§?!i§.ID]);
         }
      }
      
      private function §?#s§(param1:MouseEvent) : void
      {
         this.§8#Q§.§?!L§();
      }
      
      protected function getCampaignButtonFromBG() : SimpleButton
      {
         return null;
      }
      
      private function §%"§() : void
      {
         var _loc1_:§8#=§ = §[$5§.container.getItemByName("TextContainer");
         var _loc2_:MovieClip = MovieClip(_loc1_.mClip.getChildByName(§4"d§));
         this.§1"1§ = TextField((_loc2_.getChildByName("DaysLeftTextfield") as DisplayObjectContainer).getChildByName("text"));
         this.§="E§ = TextField(_loc2_.getChildByName("Textfield_TournamentName"));
      }
      
      private function §#W§() : void
      {
         var _loc1_:Object = this.§ !F§.§&$B§;
         var _loc2_:Boolean = this.§ !F§.§>!L§ || _loc1_ && _loc1_.t && _loc1_.t.players.length > 0;
         if(_loc2_)
         {
            if(_loc1_ && _loc1_.t && _loc1_.t.qualifier && _loc1_.l && _loc1_.l.pli.tn == "QUALIFIER")
            {
               _loc2_ = false;
            }
         }
         if(this.§1"B§)
         {
            if(_loc2_)
            {
               this.§1"B§.setEnabled(true);
               this.§1"B§.mClip.alpha = 1;
               this.§##I§ = true;
            }
            else
            {
               this.§1"B§.setEnabled(false);
               this.§1"B§.mClip.alpha = 0.5;
            }
         }
      }
      
      private function §-$5§() : void
      {
         if(this.§8#Q§.tournamentRules.§"!@§)
         {
            this.§^"+§();
         }
         else
         {
            this.§^"+§();
         }
         var _loc1_:String = § #`§.§?"M§ + "_" + this.§8#Q§.tournamentRules.§=k§;
         if(this.§8#Q§.tournamentRules.§=k§ == §'##§.§1!?§)
         {
            _loc1_ = § #`§.§%4§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§]!'§ = null;
         super.deActivate();
         this.§8#Q§.removeEventListener(§]#@§.§,!N§,this.§?$+§);
         this.§8#Q§.removeEventListener(§]#@§.§4#p§,this.§5$%§);
         this.§8#Q§.removeEventListener(§]#@§.§4#p§,this.§^!%§);
         this.§8#Q§.removeEventListener(§]#@§.§,X§,this.§!#<§);
         this.§8#Q§.removeEventListener(§]#@§.§["X§,this.§"$6§);
         this.§%#§.removeEventListener(§^#$§.§[Y§,this.§]W§);
         this.§%#§.removeEventListener(§^#$§.§0Q§,this.§6!n§);
         this.§##I§ = false;
         this.§8#Q§.removeEventListener(§]#@§.§+!_§,this.§3§);
         this.§ !F§.removeEventListener(§4#Q§.§4f§,this.§23§);
         (§7n§.§-$<§ as § #v§).§=#+§.removeEventListener(§6#k§.§!!&§,this.§<"`§);
         this.§0"G§ = this.§8#Q§.levelIDs;
         mLevelManager.resetPreviousLevel();
         if(this.§@#i§ && §[$5§)
         {
            §[$5§.getItemByName(§>T§).setVisibility(false);
            §[$5§.getItemByName(§1E§).setVisibility(false);
         }
         if(this.§5c§)
         {
            this.§5c§.removeEventListener(MouseEvent.CLICK,this.§?#s§);
         }
         §?!i§ = null;
         this.§&!U§(this.§1!B§);
         for each(_loc1_ in this.§[!p§)
         {
            _loc1_.deactivate();
         }
      }
      
      private function §0s§() : void
      {
         var _loc1_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§@u§ = null;
         var _loc7_:§3" § = null;
         var _loc8_:String = null;
         var _loc9_:§@u§ = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc2_:Array = [];
         this.§!!"§ = [];
         var _loc3_:Array = this.§8#Q§.§]!,§();
         §##G§.§@!-§ = new Vector.<§3" §>();
         var _loc4_:int = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc6_ = §<T§.§<#§(_loc5_.uid))
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
            if(_loc5_.uid == (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID)
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
            if((_loc7_ = §3" §.§5+§(_loc5_)).§^!w§)
            {
               if(§##G§.§##F§.indexOf(_loc7_.userId) == -1)
               {
                  §##G§.§@!-§.push(_loc7_);
               }
            }
            else
            {
               _loc2_.push(_loc7_);
            }
            this.§!!"§.push(_loc7_);
         }
         if(_loc1_ == null)
         {
            _loc8_ = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID;
            _loc10_ = !!(_loc9_ = §<T§.§<#§(_loc8_)) ? _loc9_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "uid":_loc8_,
               "n":_loc10_
            };
            _loc11_ = 0;
            _loc12_ = 0;
            while(_loc12_ < this.§0"G§.length)
            {
               _loc11_ += § #`§(AngryBirdsBase.singleton.dataModel.userProgress).§ P§(this.§0"G§[_loc12_]);
               _loc12_++;
            }
            _loc1_.p = _loc11_;
            this.§!!"§.push(§3" §.§5+§(_loc1_));
            _loc2_.push(§3" §.§5+§(_loc1_));
         }
         if(§5H§.§^"M§(§5H§.§,"5§))
         {
            _loc12_ = 0;
            while(_loc12_ < _loc2_.length)
            {
               _loc2_[_loc12_].rank = _loc12_ + 1;
               _loc12_++;
            }
         }
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§[!-§,_loc2_);
         QualifierInterruptedPopUp.§2"L§(_loc2_);
         this.§8!&§();
      }
      
      private function §`!V§(param1:Array) : void
      {
         var _loc3_:§@u§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§3" § = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Vector.<§@u§> = §<T§.§8"5§();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = false;
            for each(_loc5_ in this.§!!"§)
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
               param1.push(new §4"p§(_loc6_,_loc7_,"",!§1%§.§`"H§.§2!7§(_loc6_)));
            }
         }
      }
      
      protected function §`#j§() : void
      {
         var _loc2_:§ !>§ = null;
         this.§[!p§ = new Vector.<§]!'§>();
         this.§0"G§ = this.§8#Q§.levelIDs;
         var _loc1_:int = 0;
         while(_loc1_ < §3!S§)
         {
            _loc2_ = § !>§(§[$5§.getItemByName("LevelButton" + (_loc1_ + 1)));
            if(!_loc2_)
            {
               break;
            }
            if(_loc1_ < this.§0"G§.length)
            {
               _loc2_.visible = true;
               this.§[!p§.push(this.makeLevelButton(_loc1_ + 1,this.§8#Q§.levelObjects[_loc1_],_loc2_));
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
         if(this.§0"G§.length > §+"_§)
         {
            §@%§ = §8"R§;
         }
         else
         {
            §@%§ = §+"_§;
         }
         this.§," §();
      }
      
      private function §^#4§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.buttonGap = §7n§.§]!M§() / (§@%§ + 1);
         _loc1_.buttonY = §7n§.§8j§() * 0.5;
         _loc1_.centerX = §7n§.§]!M§() >> 1;
         _loc1_.buttonRightCorner = §7n§.§]!M§() - (§7n§.§]!M§() >> 3);
         if(this.§0"G§.length > §@%§)
         {
            _loc1_.buttonY = §7n§.§8j§() * 0.41;
            _loc1_.buttonSecondRowY = _loc1_.buttonY + §7n§.§8j§() / 4.5;
         }
         return _loc1_;
      }
      
      private function §," §() : void
      {
         var _loc5_:§]!'§ = null;
         var _loc1_:Object = this.§^#4§();
         var _loc2_:Number = 0;
         var _loc3_:Number = 1;
         if((§7n§.§-$<§ as § #v§).§]#p§())
         {
            _loc2_ = §7n§.§8j§() >> 5;
            _loc3_ = §95§.§^"_§;
         }
         var _loc4_:int = 1;
         for each(_loc5_ in this.§[!p§)
         {
            _loc5_.setScale(_loc3_);
            if(_loc4_ <= §@%§)
            {
               _loc5_.setPosition(_loc1_.buttonGap * _loc4_,_loc1_.buttonY + _loc2_);
            }
            else
            {
               _loc5_.setPosition(_loc1_.buttonGap * (_loc4_ - §@%§),_loc1_.buttonSecondRowY + (§7n§.§8j§() >> 5));
            }
            _loc4_++;
         }
      }
      
      protected function makeLevelButton(param1:int, param2:Object, param3:§ !>§) : §]!'§
      {
         return new §]!'§(param1,param2,this,param3,this.§8#Q§,dataModel.§="N§,dataModel.§1W§,§ #`§(dataModel.userProgress));
      }
      
      private function §;"q§(param1:int) : §3" §
      {
         var _loc2_:§0#;§ = null;
         if(param1 <= this.§!!"§.length)
         {
            _loc2_ = this.§!!"§[param1 - 1];
            if(_loc2_ is §3" §)
            {
               (_loc2_ as §3" §).rank = param1;
               return _loc2_ as §3" §;
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§6"n§ = param3;
         switch(eventName)
         {
            case "BACK":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               if(this.§8#Q§.§;!q§())
               {
                  §1!L§(§0!S§.STATE_NAME);
               }
               else
               {
                  §1!L§(§95§.STATE_NAME);
               }
               break;
            case "SPINNING_WHEEL":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§%#§.§!!G§();
               §!!K§.§%#S§().§3!j§(§!!K§.§=m§);
               break;
            case "PREVIOUS_RESULTS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               if(!this.§ !F§.active)
               {
                  §1!L§(StateLastWeeksTournamentResults.STATE_NAME);
               }
               else
               {
                  StateTournamentResults.§2!x§ = StateTournamentResults.§!!l§;
                  §1!L§(StateTournamentResults.STATE_NAME);
               }
               break;
            case "LEVEL_1":
               this.§&#q§(0);
               break;
            case "LEVEL_2":
               this.§&#q§(1);
               break;
            case "LEVEL_3":
               this.§&#q§(2);
               break;
            case "LEVEL_4":
               this.§&#q§(3);
               break;
            case "LEVEL_5":
               this.§&#q§(4);
               break;
            case "LEVEL_6":
               this.§&#q§(5);
               break;
            case "LEVEL_7":
               this.§&#q§(6);
               break;
            case "LEVEL_8":
               this.§&#q§(7);
               break;
            case "showCredits":
               §1!L§(§'#J§.STATE_NAME);
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               this.§3!x§(int(eventName.charAt(eventName.length - 1)));
               break;
            case "SPECIAL_STORE":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.DEFAULT));
               break;
            case "CHALLENGE":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ChallengePopup(§#"l§.NORMAL,§]"Y§.DEFAULT));
               break;
            case "MORE_GAMES":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("http://www.rovio.com/games"),"_blank");
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
         }
         if(§?!i§)
         {
            §?!i§.onUIInteraction(eventName);
         }
         this.§8#Q§.§-$&§(eventName);
      }
      
      protected function §&#q§(param1:int) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         var _loc2_:String = this.§0"G§[param1];
         var _loc3_:Object = this.§8#Q§.levelObjects[param1];
         var _loc4_:§]!'§ = this.§[!p§[param1];
         if(this.§8#Q§.isLevelOpen(_loc2_))
         {
            this.§'"]§(_loc2_);
         }
         else if(_loc4_.§-#j§ && !this.§8#Q§.§]#8§)
         {
            _loc4_.§;!K§();
         }
      }
      
      private function §3!x§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§8#Q§.tournamentRules.§=k§.indexOf("HALLOWEEN") != -1)
         {
            _loc2_ = this.§7!r§[param1 - 1];
         }
         if(this.§8#Q§.tournamentRules.§=k§.indexOf("XMAS") != -1)
         {
            _loc2_ = this.§;!C§[param1 - 1];
         }
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc2_.toLowerCase()));
         §1!L§(§#"b§.STATE_NAME);
      }
      
      protected function §'"]§(param1:String) : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(param1.toLowerCase()));
         §1!L§(§7#t§.STATE_NAME);
      }
      
      protected function §8!&§() : void
      {
         if(this.§>!%§)
         {
            this.§%A§(true);
            return;
         }
         if(§[$5§.getItemByName("loadingTournament").visible || AngryBirdsBase.singleton.popupManager.§?"N§())
         {
            return;
         }
         var timeLeftPretty:Array = this.§8#Q§.§?! §();
         this.§1"1§.text = timeLeftPretty[0] + " left!";
         this.§1"1§.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.§>!%§ = new Timer(§&!W§);
            this.§>!%§.addEventListener(TimerEvent.TIMER,function():void
            {
               §>!%§.stop();
               §>!%§ = null;
               §7?§();
            });
            this.§%A§(true);
            this.§>!%§.start();
         }
         timeLeftPretty = null;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§]!'§ = null;
         var _loc3_:Boolean = false;
         super.update(param1);
         if(this.§2"H§)
         {
            this.§]#P§ += param1;
            if(this.§]#P§ >= this.§+!Z§)
            {
               this.§2"H§ = false;
               this.§3#!§();
            }
         }
         if(§>%§)
         {
            if(§?!i§)
            {
               §?!i§.§&#3§();
               §>%§ = false;
               this.§,#^§ = 0;
               this.§[![§ = 0;
            }
            else if(§7"L§.§`"H§.§58§())
            {
               §?!i§ = §7"L§.§`"H§.§9'§();
               §?!i§.§]"s§(§[$5§);
            }
         }
         if(!this.§##I§)
         {
            this.§#W§();
         }
         if(this.§97§)
         {
            for each(_loc3_ in this.§97§)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            if(_loc3_ && this.§8#Q§.§;#Q§)
            {
               this.§97§ = null;
               this.§]#C§();
            }
         }
         else
         {
            this.§8!&§();
         }
         for each(_loc2_ in this.§[!p§)
         {
            _loc2_.update();
         }
         if(this.§ $+§)
         {
            this.§%A§(false);
            (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
            this.§ $+§ = false;
         }
         if(this.§0!'§ != §7n§.§]!M§())
         {
            this.§,#^§ = 0;
            this.§[![§ = 0;
            this.§0!'§ = §7n§.§]!M§();
         }
         if(this.§^!N§ > 0)
         {
            this.§^!N§ -= param1;
            if(this.§^!N§ <= 0)
            {
               this.§^!N§ = §<Q§;
               this.§8#Q§.addEventListener(§]#@§.§4#p§,this.§^!%§);
               this.§8#Q§.§`!u§(§4$;§);
            }
         }
      }
      
      private function §2#O§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:String = null;
         var _loc5_:§ !>§ = null;
         var _loc6_:Boolean = false;
         if(this.§8#Q§.levelIDs.length > 0)
         {
            _loc2_ = this.§9!9§();
            if(§[$5§.getItemByName("TournamentCutsceneSelection"))
            {
               §[$5§.getItemByName("TournamentCutsceneSelection").setVisibility(_loc2_ > 1 && _loc2_ <= 4);
            }
            _loc3_ = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§ P§(this.§;!C§[3]) > 0;
            §5!B§[1] = _loc2_ >= 3;
            §5!B§[2] = _loc2_ >= 4;
            §5!B§[3] = _loc2_ >= 4 && _loc3_;
         }
         if(!this.§8#Q§.tournamentRules)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!C§.length)
         {
            _loc4_ = "";
            if(this.§8#Q§.tournamentRules.§=k§.indexOf("XMAS") != -1)
            {
               _loc4_ = this.§;!C§[_loc1_];
            }
            if(_loc5_ = §[$5§.getItemByName("CutsceneButton" + int(_loc1_ + 1)) as § !>§)
            {
               if(_loc6_ = § #Z§(_loc1_ + 1))
               {
                  _loc5_.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
                  _loc5_.setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
            _loc1_++;
         }
      }
      
      private function §9!9§() : int
      {
         var _loc1_:int = 1;
         switch(this.§8#Q§.levelIDs[0])
         {
            case this.§;!C§[0]:
               _loc1_ = 2;
               break;
            case this.§;!C§[1]:
               _loc1_ = 3;
               break;
            case this.§;!C§[2]:
            case this.§;!C§[3]:
               _loc1_ = 4;
         }
         return _loc1_;
      }
      
      protected function §^"+§(param1:String = null) : void
      {
         var _loc2_:TournamentResultsPopup = new TournamentResultsPopup(§#"l§.NORMAL,§]"Y§.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(!this.§0"G§ || this.§0"G§.length == 0 || this.§""-§ && !this.§1!B§)
         {
            return;
         }
         if((§7n§.§-$<§ as § #v§).§]#p§())
         {
            if(this.§,#^§ < §2##§)
            {
               this.§[![§ = 0;
               if(this.§1!B§)
               {
                  this.§1!B§.§+F§.scaleX = §95§.§^"_§;
                  this.§1!B§.§+F§.scaleY = §95§.§^"_§;
               }
               this.§," §();
               _loc1_ = this.§^#4§();
               _loc2_ = _loc1_.centerX;
               if(§?!i§)
               {
                  §?!i§.§1!1§(_loc2_,_loc1_.buttonY + (this.§6#U§.y - _loc1_.buttonY) / 2,_loc1_.buttonRightCorner);
               }
               if(this.§=!%§)
               {
                  this.§=!%§.x = _loc2_;
               }
               if(this.§<!n§)
               {
                  this.§<!n§.mClip.visible = true;
                  this.§<!n§.x = §7n§.§]!M§() >> 1;
                  this.§<!n§.y = _loc1_.buttonY + (this.§6#U§.y - _loc1_.buttonY) / 2;
               }
               _loc3_ = §[$5§.getItemByName("Button_PreviousResults").x - §[$5§.getItemByName("Button_Back").x;
               this.§6#U§.x = §[$5§.getItemByName("Button_Back").x + _loc3_ / 4;
               this.§`$C§.x = §[$5§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
               ++this.§,#^§;
            }
         }
         else if(this.§[![§ < §2##§)
         {
            this.§,#^§ = 0;
            if(this.§1!B§)
            {
               this.§1!B§.§+F§.scaleX = 1;
               this.§1!B§.§+F§.scaleY = 1;
            }
            this.§," §();
            _loc1_ = this.§^#4§();
            _loc2_ = _loc1_.centerX;
            if(§?!i§)
            {
               §?!i§.§1!1§(_loc2_,_loc1_.buttonY + (this.§6#U§.y - _loc1_.buttonY) / 2,_loc1_.buttonRightCorner);
            }
            if(this.§=!%§)
            {
               this.§=!%§.x = _loc2_;
            }
            if(this.§<!n§)
            {
               this.§<!n§.mClip.visible = true;
               this.§<!n§.x = §7n§.§]!M§() >> 1;
               this.§<!n§.y = _loc1_.buttonY + (this.§6#U§.y - _loc1_.buttonY) / 2;
            }
            _loc3_ = §[$5§.getItemByName("Button_PreviousResults").x - §[$5§.getItemByName("Button_Back").x;
            this.§6#U§.x = §[$5§.getItemByName("Button_Back").x + _loc3_ / 4;
            this.§`$C§.x = §[$5§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
            ++this.§[![§;
         }
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         if(this.§1!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §[$5§.movieClip;
      }
      
      protected function §6?§(param1:MouseEvent) : void
      {
         if(this.§8#Q§.§8"Q§ && this.§8#Q§.§8"Q§.url)
         {
            § !+§.§>$%§("shareURL",this.§8#Q§.§8"Q§.url);
         }
      }
      
      protected function §<"`§(param1:§6#k§) : void
      {
         var _loc2_:§]!'§ = null;
         for each(_loc2_ in this.§[!p§)
         {
            _loc2_.§9#1§(true);
         }
      }
      
      public function §7?§() : void
      {
         this.§%A§(true);
         this.§97§ = new Vector.<Boolean>();
         this.§97§[§<"h§] = false;
         this.§97§[§=$5§] = false;
         this.§97§[§+#6§] = false;
         this.§97§[§ "^§] = false;
         if(§'##§.§`"H§.§;!q§())
         {
            if(§&%§.§#!=§() != -1)
            {
               §'##§.§0!V§();
               §4$;§ = §&%§.§#!=§();
               §!!z§ = §&%§.§#!=§();
               §&%§.§;$@§();
            }
            else if(!§;l§)
            {
               §'##§.§0!V§();
               if(§4$;§ == 0)
               {
                  §4$;§ = §'##§.§`"H§.§4"e§();
               }
               §!!z§ = §4$;§;
            }
            else if(§7"L§.§`"H§.§0!a§() == §>#O§.§0#V§)
            {
               §'##§.§0!V§();
            }
         }
         else if(§&%§.§#!=§() != -1)
         {
            §4$;§ = §&%§.§#!=§();
            §!!z§ = §4$;§;
            §&%§.§;$@§();
         }
         else if(§!!z§ > 0)
         {
            §4$;§ = §!!z§;
         }
         else if(§4$;§ == 0)
         {
            §4$;§ = §'##§.§`"H§.§4"e§();
         }
         this.§8#Q§.addEventListener(§]#@§.§,!N§,this.§?$+§);
         this.§8#Q§.§<#>§(§4$;§);
         this.§8#Q§.addEventListener(§]#@§.§,X§,this.§!#<§);
         this.§8#Q§.§6W§(§4$;§);
         this.§8#Q§.addEventListener(§]#@§.§4#p§,this.§5$%§);
         this.§8#Q§.§`!u§(§4$;§);
         if(this.§ !F§.active)
         {
            if(this.§97§)
            {
               this.§97§[§=$@§] = false;
            }
            § #v§.§%"W§ = true;
            this.§ !F§.addEventListener(§4#Q§.§4f§,this.§23§);
            this.§ !F§.§ $%§(§4$;§);
         }
      }
      
      public function §6#J§() : Boolean
      {
         return this.§97§ != null;
      }
   }
}
