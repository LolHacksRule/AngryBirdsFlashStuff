package §!!t§
{
   import § "g§.§5"D§;
   import §!!?§.TabbedShopPopup;
   import §!!T§.§1"9§;
   import §!!T§.§<#'§;
   import §!§.§="D§;
   import §"!>§.§'!x§;
   import §"$=§.§'![§;
   import §"$=§.§[§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §'#g§.§&"Y§;
   import §'$9§.§8!L§;
   import §+"u§.§""=§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-"h§.§5!b§;
   import §-"h§.§8c§;
   import §3!5§.§0#r§;
   import §3"G§.§16§;
   import §3=§.§%"#§;
   import §3=§.§-"4§;
   import §3=§.§1U§;
   import §3=§.§6"H§;
   import §4!n§.§#$>§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §6!'§.§@#c§;
   import §7#j§.§@"F§;
   import §9"§.§7§;
   import §;$5§.§9§;
   import §;N§.§"F§;
   import §=!2§.§%"T§;
   import §=!V§.TournamentResultsPopup;
   import §>" §.QualifierInterruptedPopUp;
   import §>"9§.§[#%§;
   import §>"Q§.§"!;§;
   import §>"h§.§?>§;
   import §?!N§.§%#§;
   import §?!N§.ChallengePopup;
   import §?!N§.ErrorPopup;
   import §]"'§.§#$D§;
   import §]"'§.§,#[§;
   import §]"'§.§-!#§;
   import §]"'§.§1#"§;
   import §]"'§.§8!a§;
   import §]"'§.§@"%§;
   import §]"'§.§[#!§;
   import §]"'§.§default§;
   import com.rovio.assets.§2"O§;
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
   
   public class §'8§ extends §-"4§ implements §="D§, §["b§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static var §%"0§:int = 0;
      
      private static var §2#C§:int = 0;
      
      private static var §0"O§:Boolean = false;
      
      protected static const §[6§:String = "TextContainer";
      
      protected static const §,!3§:String = "leftTopCorner";
      
      protected static const §!!J§:String = "rightTopCorner";
      
      private static const §`#`§:int = 6;
      
      private static const §?p§:int = 8;
      
      private static const §@!M§:int = 4;
      
      private static var §#"@§:int = §@!M§;
      
      protected static const §7"^§:Number = 5 * 60 * 1000;
      
      private static const §;"#§:int = -20;
      
      private static const §-"!§:int = 0;
      
      private static const §7!#§:int = 0;
      
      private static const §4#1§:int = 1;
      
      private static const §;b§:int = 2;
      
      private static const §,!N§:int = 3;
      
      private static const §8#c§:int = 4;
      
      private static var §3C§:§<#'§;
      
      private static var §0!&§:Boolean;
      
      private static var §,!G§:Boolean;
      
      private static var §6#-§:Object = null;
      
      private static var §^!a§:Number = 0;
      
      private static const §;s§:int = 5;
      
      private static const §`R§:int = 3000;
      
      private static var §%!I§:Array = [true,false,false,false];
       
      
      private var §?$?§:Array;
      
      private var §,"<§:Array;
      
      protected var §`!§:Array;
      
      protected var §;!&§:Number = 0;
      
      protected var §3q§:Vector.<§""=§>;
      
      protected var §;"§:§^"C§;
      
      protected var §?#r§:§@#c§;
      
      private var §5T§:Boolean;
      
      private var §!">§:Boolean;
      
      private var §;"B§:Vector.<Boolean>;
      
      private var §3"%§:§7#7§;
      
      private var §%!U§:Boolean = false;
      
      private var §<$,§:§#$>§;
      
      private var §2#f§:§#$>§;
      
      private var §'"3§:§"F§;
      
      private var §>!Q§:TextField;
      
      private var §=!B§:TextField;
      
      private var §-!z§:Boolean;
      
      private var §0"'§:uint;
      
      private const §?$2§:uint = 2000;
      
      private var §2#Z§:Boolean;
      
      private var §?m§:§#$>§;
      
      private var §=$4§:SimpleButton;
      
      private var §4!t§:QualifierInterruptedPopUp;
      
      private var §?3§:Wallet;
      
      private var §6G§:Boolean;
      
      private var §@!6§:int;
      
      private var §3]§:int;
      
      protected var §4!`§:§#$>§;
      
      private var §8#L§:§#$>§;
      
      private var §3$#§:Number;
      
      private var §0#D§:Timer;
      
      private var §54§:Array;
      
      private var §]!r§:Array;
      
      public function §'8§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§,"<§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§54§ = ["2000-279","2000-271","2000-267","2000-269"];
         this.§]!r§ = ["2000-303","2000-307","2000-313","2000-315"];
         this.§;"§ = §^"C§.§?q§;
         this.§?#r§ = §@#c§.§?q§;
         this.§'"3§ = §"F§.§?q§;
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §@"%§
      {
         return §@"%§(AngryBirdsBase.singleton.dataModel);
      }
      
      public static function §5!%§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §%!I§[param1 - 1];
      }
      
      public static function §`"O§() : void
      {
         §0!&§ = true;
      }
      
      public static function §5!O§() : void
      {
         §0!&§ = true;
         §3C§ = null;
      }
      
      public static function §2!H§() : void
      {
         §,!G§ = true;
      }
      
      public static function §7"Y§(param1:int) : void
      {
         §%"0§ = param1;
         §0"O§ = true;
      }
      
      public static function §6#R§(param1:int) : void
      {
         §2#C§ = param1;
      }
      
      public static function §>"-§() : int
      {
         return §2#C§;
      }
      
      public static function §%!G§() : void
      {
         ++§%"0§;
      }
      
      public static function §^"=§() : void
      {
         §%"0§ = 0;
      }
      
      protected function §5#4§(param1:§0#r§) : void
      {
         if(this.§;"B§)
         {
            this.§;"B§[§7!#§] = true;
         }
         this.§;"§.removeEventListener(§0#r§.§=!z§,this.§5#4§);
         this.§;"§.addEventListener(§0#r§.§;![§,this.§,1§);
         this.§;"§.§^"'§();
      }
      
      protected function §-!&§(param1:§0#r§) : void
      {
         if(this.§;"B§)
         {
            this.§;"B§[§4#1§] = true;
         }
         this.§;"§.removeEventListener(§0#r§.§'$>§,this.§-!&§);
      }
      
      protected function §+#4§(param1:§0#r§) : void
      {
         if(this.§;"B§)
         {
            this.§;"B§[§4#1§] = true;
         }
         this.§;"§.removeEventListener(§0#r§.§'$>§,this.§+#4§);
         this.§["C§();
         this.§'#x§();
      }
      
      protected function §+o§(param1:§0#r§) : void
      {
         if(this.§;"B§)
         {
            this.§;"B§[§;b§] = true;
         }
         this.§;"§.removeEventListener(§0#r§.§]E§,this.§+o§);
      }
      
      protected function §,1§(param1:§0#r§) : void
      {
         if(this.§;"B§)
         {
            this.§;"B§[§,!N§] = true;
         }
         this.§;"§.removeEventListener(§0#r§.§;![§,this.§,1§);
      }
      
      protected function §&C§(param1:§0#r§) : void
      {
         this.§"[§(this.§?3§);
         this.§;k§();
      }
      
      override protected function init() : void
      {
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_Tournament[0]);
         this.§!">§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+$A§.§@"i§().§="H§(§+$A§.§ A§);
         this.§@!6§ = 0;
         this.§3]§ = 0;
         this.§=n§();
         this.§3"n§();
         §`"O§();
         this.§?m§ = §<"`§.getItemByName("Button_PreviousResults");
         this.§4!`§ = §<"`§.getItemByName("Button_Challenge");
         this.§4!`§.visible = true;
         §%"T§.§;`§.clearLevel();
         §%"T§.§;`§.setVisible(false);
         (§%"T§.§>$<§ as §'"a§).§##b§(§<"c§.§!!>§);
         if(§<"`§.getItemByName("TournamentCutsceneSelection"))
         {
            §<"`§.getItemByName("TournamentCutsceneSelection").setVisibility(false);
         }
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§!"d§);
         this.§;k§();
         this.§;"§.addEventListener(§0#r§.§##P§,this.§&C§);
         this.§-"z§();
         this.§3$#§ = §%"T§.§@" §();
         this.§;!&§ = §7"^§;
      }
      
      private function §-"z§() : void
      {
         if(!this.§;"§.§,$;§() && this.§;"§.§-"d§ && §#$D§.§?q§.§;p§.§ "H§(§^"C§.§3"'§))
         {
            if(this.§4!t§ == null)
            {
               this.§4!t§ = new QualifierInterruptedPopUp(§%#§.NORMAL,§9#5§.DEFAULT);
            }
            this.§;"§.§4!l§(true);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§4!t§);
         }
      }
      
      private function §3"n§() : void
      {
         if(this.§2#f§ == null)
         {
            this.§2#f§ = §<"`§.getItemByName("MoreGamesButton");
         }
         if(this.§<$,§ == null)
         {
            this.§<$,§ = §<"`§.getItemByName("Button_SpinningWheel");
         }
         this.§0"'§ = 0;
         this.§!!<§(false);
         this.§'"3§.addEventListener(§8!L§.§+!I§,this.§+#_§);
         this.§'"3§.addEventListener(§8!L§.§!!i§,this.§`#?§);
         if(this.§'"3§.§,!6§())
         {
            this.§<$,§.setEnabled(false);
            this.§<$,§.mClip.alpha = 0.5;
         }
         else if(this.§'"3§.§"#9§())
         {
            this.§-!z§ = true;
            this.§!!<§(true);
         }
      }
      
      private function §+#_§(param1:§8!L§) : void
      {
         this.§!!<§(false);
      }
      
      private function §`#?§(param1:§8!L§) : void
      {
         this.§<$,§.setEnabled(true);
         this.§<$,§.mClip.alpha = 1;
         var _loc2_:Boolean = this.§'"3§.§"#9§();
         this.§-!z§ = _loc2_;
         this.§!!<§(_loc2_);
      }
      
      private function §>"%§() : void
      {
         var _loc1_:MovieClip = MovieClip(this.§<$,§.mClip.getChildByName("notifier"));
         _loc1_.gotoAndPlay(1);
      }
      
      private function §!!<§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = MovieClip(this.§<$,§.mClip.getChildByName("notifier"));
         _loc2_.visible = param1;
         _loc2_.gotoAndStop(1);
         this.§2#Z§ = param1;
      }
      
      private function §+#x§(param1:§?>§) : void
      {
         if(this.§;"B§)
         {
            this.§;"B§[§8#c§] = true;
         }
         this.§?#r§.removeEventListener(§?>§.§]#s§,this.§+#x§);
      }
      
      private function §9K§(param1:Boolean) : void
      {
         §<"`§.getItemByName("loadingTournament").setVisibility(param1);
         if(param1)
         {
            this.§"[§(this.§?3§);
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §"!;§.§ #x§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§]"d§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Tournament level selection error: " + param1.toString()));
         }
      }
      
      private function §3#Q§() : String
      {
         return this.§0!m§(this.§,"<§);
      }
      
      private function §0!m§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §!!u§() : void
      {
         var _loc1_:§[#5§ = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:§#$>§ = null;
         var _loc5_:Class = null;
         var _loc6_:String = null;
         if(§2#C§ > 0)
         {
            if(this.§?#r§.§5#1§ && this.§?#r§.§5#1§.t && this.§?#r§.§5#1§.t.a)
            {
               if(this.§?#r§.§5#1§.t.a.tid == §%"0§)
               {
                  §^"C§.§]y§(true);
                  StateTournamentResults.§>!j§ = §2#C§;
                  §2#C§ = 0;
                  §^"=§();
                  StateTournamentResults.§?"y§ = StateTournamentResults.§+$E§;
                  §%D§(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            §2#C§ = 0;
            §%!G§();
         }
         if(mLevelManager)
         {
            _loc1_ = mLevelManager.getEpisodeByName(§%"#§.§4l§);
            for each(_loc2_ in this.§;"§.§4#-§.levels)
            {
               _loc1_.§=#@§(_loc2_.levelId);
            }
         }
         if(this.§;"§.§3h§(§'"a§.§="N§))
         {
            this.§9!!§(§'"a§.§="N§);
            §'"a§.§="N§ = null;
            return;
         }
         if(!§<"`§)
         {
            return;
         }
         this.§["C§();
         this.§'#x§();
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
         this.§3!j§();
         this.§!">§ = true;
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§=!B§)
         {
            this.§=!B§.text = this.§;"§.§+#X§;
            if(!§6#-§)
            {
               §6#-§ = this.§=!B§.y;
            }
            this.§=!B§.y = §6#-§ + Math.round((this.§=!B§.height - this.§=!B§.textHeight) / 2);
         }
         if(this.§;"§)
         {
            this.§3"%§ = this.§;"§.§8!H§(this.§;"§.brandedTournamentAssetId);
         }
         else
         {
            this.§3"%§ = null;
         }
         this.§6G§ = true;
         if(this.§3"%§)
         {
            this.§=$4§ = this.getCampaignButtonFromBG();
            if(this.§=$4§)
            {
               this.§=$4§.addEventListener(MouseEvent.CLICK,this.§?"A§);
               this.§6G§ = false;
            }
            else
            {
               _loc3_ = this.§3"%§.§4$§ == §!!J§ ? §!!J§ : §,!3§;
               if(_loc4_ = §<"`§.getItemByName(_loc3_))
               {
                  if(_loc5_ = §2"O§.§`>§(this.§3"%§.§2>§,false))
                  {
                     _loc4_.mClip.removeChildren();
                     _loc4_.mClip.addChild(new _loc5_());
                     _loc4_.setVisibility(true);
                     this.§6G§ = this.§3"%§.§4$§ == §!!J§;
                  }
               }
            }
         }
         this.§8#L§ = §<"`§.getItemByName("share_button_holder");
         if(this.§8#L§ && this.§;"§.§3#"§)
         {
            _loc6_ = "SHARE_BUTTON_" + this.§;"§.tournamentRules.§9d§;
            if(_loc5_ = §2"O§.§`>§(_loc6_,false))
            {
               this.§8#L§.mClip.removeChildren();
               this.§8#L§.mClip.addChild(new _loc5_());
               this.§8#L§.mClip.addEventListener(MouseEvent.CLICK,this.§each §,false,0,true);
            }
         }
         if(this.§6G§)
         {
            this.§[D§(new Wallet(this,true,true,false,true));
         }
         this.§'!i§();
         if(§,!G§ && §3C§)
         {
            §3C§.§,"&§();
            §,!G§ = false;
         }
         this.§@!6§ = 0;
         this.§3]§ = 0;
         (§%"T§.§>$<§ as §'"a§).§1#b§.addEventListener(§'!x§.§ #n§,this.§0!t§);
         §^"C§.§]y§(true);
      }
      
      private function §'!i§() : void
      {
         if(!§3C§)
         {
            return;
         }
         if(§@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§,"!§(§3C§.ID))
         {
            return;
         }
         var _loc1_:Boolean = §3C§.§!t§();
         if(_loc1_)
         {
            §[#%§.playSound("league_promotion_diamond",§[#%§.§0"f§);
            §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§6#b§(§&"Y§.§&#G§,[§3C§.ID]);
         }
      }
      
      private function §?"A§(param1:MouseEvent) : void
      {
         this.§;"§.§39§();
      }
      
      protected function getCampaignButtonFromBG() : SimpleButton
      {
         return null;
      }
      
      private function §=n§() : void
      {
         var _loc1_:§#$>§ = §<"`§.container.getItemByName("TextContainer");
         var _loc2_:MovieClip = MovieClip(_loc1_.mClip.getChildByName(§[6§));
         this.§>!Q§ = TextField((_loc2_.getChildByName("DaysLeftTextfield") as DisplayObjectContainer).getChildByName("text"));
         this.§=!B§ = TextField(_loc2_.getChildByName("Textfield_TournamentName"));
      }
      
      private function §#1§() : void
      {
         var _loc1_:Object = this.§?#r§.§1!S§;
         var _loc2_:Boolean = this.§?#r§.§5#1§ || _loc1_ && _loc1_.t && _loc1_.t.players.length > 0;
         if(_loc2_)
         {
            if(_loc1_ && _loc1_.t && _loc1_.t.qualifier && _loc1_.l && _loc1_.l.pli.tn == "QUALIFIER")
            {
               _loc2_ = false;
            }
         }
         if(this.§?m§)
         {
            if(_loc2_)
            {
               this.§?m§.setEnabled(true);
               this.§?m§.mClip.alpha = 1;
               this.§%!U§ = true;
            }
            else
            {
               this.§?m§.setEnabled(false);
               this.§?m§.mClip.alpha = 0.5;
            }
         }
      }
      
      private function §'"W§() : void
      {
         if(this.§;"§.tournamentRules.§"$<§)
         {
            this.§^"`§();
         }
         else
         {
            this.§^"`§();
         }
         §2#Q§.§-!5§ + "_" + this.§;"§.tournamentRules.§1"5§;
         if(this.§;"§.tournamentRules.§1"5§ == §^"C§.§?"!§)
         {
            §2#Q§.§;R§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§""=§ = null;
         super.deActivate();
         this.§;"§.removeEventListener(§0#r§.§=!z§,this.§5#4§);
         this.§;"§.removeEventListener(§0#r§.§'$>§,this.§-!&§);
         this.§;"§.removeEventListener(§0#r§.§'$>§,this.§+#4§);
         this.§;"§.removeEventListener(§0#r§.§]E§,this.§+o§);
         this.§;"§.removeEventListener(§0#r§.§;![§,this.§,1§);
         this.§'"3§.removeEventListener(§8!L§.§+!I§,this.§+#_§);
         this.§'"3§.removeEventListener(§8!L§.§!!i§,this.§`#?§);
         this.§%!U§ = false;
         this.§;"§.removeEventListener(§0#r§.§##P§,this.§&C§);
         this.§?#r§.removeEventListener(§?>§.§]#s§,this.§+#x§);
         (§%"T§.§>$<§ as §'"a§).§1#b§.removeEventListener(§'!x§.§ #n§,this.§0!t§);
         this.§`!§ = this.§;"§.levelIDs;
         mLevelManager.resetPreviousLevel();
         if(this.§3"%§)
         {
            §<"`§.getItemByName(§,!3§).setVisibility(false);
            §<"`§.getItemByName(§!!J§).setVisibility(false);
            if(this.§=$4§)
            {
               this.§=$4§.removeEventListener(MouseEvent.CLICK,this.§?"A§);
            }
         }
         §3C§ = null;
         this.§"[§(this.§?3§);
         for each(_loc1_ in this.§3q§)
         {
            _loc1_.deactivate();
         }
      }
      
      private function §'#x§() : void
      {
         var _loc1_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§8c§ = null;
         var _loc7_:§default§ = null;
         var _loc8_:String = null;
         var _loc9_:§8c§ = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc2_:Array = [];
         this.§?$?§ = [];
         var _loc3_:Array = this.§;"§.§#C§();
         §5"D§.§[§ = new Vector.<§default§>();
         var _loc4_:int = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc6_ = §5!b§.§8#'§(_loc5_.uid))
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
            if(_loc5_.uid == (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID)
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
            if((_loc7_ = §default§.§]"B§(_loc5_)).§5$6§)
            {
               if(§5"D§.§4"L§.indexOf(_loc7_.userId) == -1)
               {
                  §5"D§.§[§.push(_loc7_);
               }
            }
            else
            {
               _loc2_.push(_loc7_);
            }
            this.§?$?§.push(_loc7_);
         }
         if(_loc1_ == null)
         {
            _loc8_ = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID;
            _loc10_ = !!(_loc9_ = §5!b§.§8#'§(_loc8_)) ? _loc9_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "uid":_loc8_,
               "n":_loc10_
            };
            _loc11_ = 0;
            _loc12_ = 0;
            while(_loc12_ < this.§`!§.length)
            {
               _loc11_ += §2#Q§(AngryBirdsBase.singleton.dataModel.userProgress).§var§(this.§`!§[_loc12_]);
               _loc12_++;
            }
            _loc1_.p = _loc11_;
            this.§?$?§.push(§default§.§]"B§(_loc1_));
            _loc2_.push(§default§.§]"B§(_loc1_));
         }
         if(§[#!§.§1!'§(§[#!§.§^"S§))
         {
            _loc12_ = 0;
            while(_loc12_ < _loc2_.length)
            {
               _loc2_[_loc12_].rank = _loc12_ + 1;
               _loc12_++;
            }
         }
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§2!h§,_loc2_);
         QualifierInterruptedPopUp.§9#-§(_loc2_);
         this.§3!j§();
      }
      
      private function §["A§(param1:Array) : void
      {
         var _loc3_:§8c§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§default§ = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Vector.<§8c§> = §5!b§.§4`§();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = false;
            for each(_loc5_ in this.§?$?§)
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
               param1.push(new §,#[§(_loc6_,_loc7_,"",!§-!#§.§?q§.§8p§(_loc6_)));
            }
         }
      }
      
      protected function §["C§() : void
      {
         var _loc2_:§"S§ = null;
         this.§3q§ = new Vector.<§""=§>();
         this.§`!§ = this.§;"§.levelIDs;
         var _loc1_:int = 0;
         while(_loc1_ < §?p§)
         {
            _loc2_ = §"S§(§<"`§.getItemByName("LevelButton" + (_loc1_ + 1)));
            if(!_loc2_)
            {
               break;
            }
            if(_loc1_ < this.§`!§.length)
            {
               _loc2_.visible = true;
               this.§3q§.push(this.makeLevelButton(_loc1_ + 1,this.§;"§.levelObjects[_loc1_],_loc2_));
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
         if(this.§`!§.length > §`#`§)
         {
            §#"@§ = §@!M§;
         }
         else
         {
            §#"@§ = §`#`§;
         }
         this.§<!D§();
      }
      
      private function §%"C§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.buttonGap = §%"T§.§@" §() / (§#"@§ + 1);
         _loc1_.buttonY = §%"T§.§=$D§() * 0.5;
         _loc1_.centerX = §%"T§.§@" §() >> 1;
         _loc1_.buttonRightCorner = §%"T§.§@" §() - (§%"T§.§@" §() >> 3);
         if(this.§`!§.length > §#"@§)
         {
            _loc1_.buttonY = §%"T§.§=$D§() * 0.41;
            _loc1_.buttonSecondRowY = _loc1_.buttonY + §%"T§.§=$D§() / 4.5;
         }
         return _loc1_;
      }
      
      private function §<!D§() : void
      {
         var _loc5_:§""=§ = null;
         var _loc1_:Object = this.§%"C§();
         var _loc2_:Number = 0;
         var _loc3_:Number = 1;
         if((§%"T§.§>$<§ as §'"a§).§?$9§())
         {
            _loc2_ = §%"T§.§=$D§() >> 5;
            _loc3_ = §6"H§.§!d§;
         }
         var _loc4_:int = 1;
         for each(_loc5_ in this.§3q§)
         {
            _loc5_.setScale(_loc3_);
            if(_loc4_ <= §#"@§)
            {
               _loc5_.setPosition(_loc1_.buttonGap * _loc4_,_loc1_.buttonY + _loc2_);
            }
            else
            {
               _loc5_.setPosition(_loc1_.buttonGap * (_loc4_ - §#"@§),_loc1_.buttonSecondRowY + (§%"T§.§=$D§() >> 5));
            }
            _loc4_++;
         }
      }
      
      protected function makeLevelButton(param1:int, param2:Object, param3:§"S§) : §""=§
      {
         return new §""=§(param1,param2,this,param3,this.§;"§,dataModel.§,H§,dataModel.§8!8§,§2#Q§(dataModel.userProgress));
      }
      
      private function §8!@§(param1:int) : §default§
      {
         var _loc2_:§8!a§ = null;
         if(param1 <= this.§?$?§.length)
         {
            _loc2_ = this.§?$?§[param1 - 1];
            if(_loc2_ is §default§)
            {
               (_loc2_ as §default§).rank = param1;
               return _loc2_ as §default§;
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'!,§ = param3;
         switch(eventName)
         {
            case "BACK":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               if(this.§;"§.§&2§())
               {
                  §%D§(§9$A§.STATE_NAME);
               }
               else
               {
                  §%D§(§6"H§.STATE_NAME);
               }
               break;
            case "SPINNING_WHEEL":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§'"3§.§7!d§();
               §+$A§.§@"i§().§]$#§(§+$A§.§-!8§);
               break;
            case "PREVIOUS_RESULTS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               if(!this.§?#r§.active)
               {
                  §%D§(StateLastWeeksTournamentResults.STATE_NAME);
               }
               else
               {
                  StateTournamentResults.§?"y§ = StateTournamentResults.§&#Q§;
                  §%D§(StateTournamentResults.STATE_NAME);
               }
               break;
            case "LEVEL_1":
               this.§7I§(0);
               break;
            case "LEVEL_2":
               this.§7I§(1);
               break;
            case "LEVEL_3":
               this.§7I§(2);
               break;
            case "LEVEL_4":
               this.§7I§(3);
               break;
            case "LEVEL_5":
               this.§7I§(4);
               break;
            case "LEVEL_6":
               this.§7I§(5);
               break;
            case "LEVEL_7":
               this.§7I§(6);
               break;
            case "LEVEL_8":
               this.§7I§(7);
               break;
            case "showCredits":
               §%D§(§1U§.STATE_NAME);
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               this.§0l§(int(eventName.charAt(eventName.length - 1)));
               break;
            case "SPECIAL_STORE":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%#§.NORMAL,§9#5§.DEFAULT));
               break;
            case "CHALLENGE":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ChallengePopup(§%#§.NORMAL,§9#5§.DEFAULT));
               break;
            case "MORE_GAMES":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("http://www.rovio.com/games"),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         if(§3C§)
         {
            §3C§.onUIInteraction(eventName);
         }
         this.§;"§.§,!b§(eventName);
      }
      
      protected function §7I§(param1:int) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         var _loc2_:String = this.§`!§[param1];
         this.§;"§.levelObjects[param1];
         var _loc4_:§""=§ = this.§3q§[param1];
         if(this.§;"§.isLevelOpen(_loc2_))
         {
            this.§9!!§(_loc2_);
         }
         else if(_loc4_.§^"3§ && !this.§;"§.§'!e§)
         {
            _loc4_.§ "i§();
         }
      }
      
      private function §0l§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§;"§.tournamentRules.§1"5§.indexOf("HALLOWEEN") != -1)
         {
            _loc2_ = this.§54§[param1 - 1];
         }
         if(this.§;"§.tournamentRules.§1"5§.indexOf("XMAS") != -1)
         {
            _loc2_ = this.§]!r§[param1 - 1];
         }
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc2_.toLowerCase()));
         §%D§(§ !!§.STATE_NAME);
      }
      
      protected function §9!!§(param1:String) : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(param1.toLowerCase()));
         §%D§(§1!M§.STATE_NAME);
      }
      
      protected function §3!j§() : void
      {
         if(this.§0#D§)
         {
            this.§9K§(true);
            return;
         }
         if(§<"`§.getItemByName("loadingTournament").visible || AngryBirdsBase.singleton.popupManager.§`'§())
         {
            return;
         }
         var timeLeftPretty:Array = this.§;"§.§1!h§();
         this.§>!Q§.text = timeLeftPretty[0] + " left!";
         this.§>!Q§.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.§0#D§ = new Timer(§`R§);
            this.§0#D§.addEventListener(TimerEvent.TIMER,function():void
            {
               §0#D§.stop();
               §0#D§ = null;
               §;k§();
            });
            this.§9K§(true);
            this.§0#D§.start();
         }
         timeLeftPretty = null;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§""=§ = null;
         var _loc3_:Boolean = false;
         super.update(param1);
         if(this.§-!z§)
         {
            this.§0"'§ += param1;
            if(this.§0"'§ >= this.§?$2§)
            {
               this.§-!z§ = false;
               this.§>"%§();
            }
         }
         if(§0!&§)
         {
            if(§3C§)
            {
               §3C§.§8"4§();
               §0!&§ = false;
               this.§@!6§ = 0;
               this.§3]§ = 0;
            }
            else if(§1"9§.§?q§.§-"?§())
            {
               §3C§ = §1"9§.§?q§.§[!8§();
               §3C§.§^!;§(§<"`§);
            }
         }
         if(!this.§%!U§)
         {
            this.§#1§();
         }
         if(this.§;"B§)
         {
            for each(_loc3_ in this.§;"B§)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            if(_loc3_ && this.§;"§.§4#-§)
            {
               this.§;"B§ = null;
               this.§!!u§();
            }
         }
         else
         {
            this.§3!j§();
         }
         for each(_loc2_ in this.§3q§)
         {
            _loc2_.update();
         }
         if(this.§!">§)
         {
            this.§9K§(false);
            (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
            this.§!">§ = false;
         }
         if(this.§3$#§ != §%"T§.§@" §())
         {
            this.§@!6§ = 0;
            this.§3]§ = 0;
            this.§3$#§ = §%"T§.§@" §();
         }
         if(this.§;!&§ > 0)
         {
            this.§;!&§ -= param1;
            if(this.§;!&§ <= 0)
            {
               this.§;!&§ = §7"^§;
               this.§;"§.addEventListener(§0#r§.§'$>§,this.§+#4§);
               this.§;"§.§,$,§(§%"0§);
            }
         }
      }
      
      private function §1$E§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc5_:§"S§ = null;
         if(this.§;"§.levelIDs.length > 0)
         {
            _loc2_ = this.§]6§();
            if(§<"`§.getItemByName("TournamentCutsceneSelection"))
            {
               §<"`§.getItemByName("TournamentCutsceneSelection").setVisibility(_loc2_ > 1 && _loc2_ <= 4);
            }
            _loc3_ = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§var§(this.§]!r§[3]) > 0;
            §%!I§[1] = _loc2_ >= 3;
            §%!I§[2] = _loc2_ >= 4;
            §%!I§[3] = _loc2_ >= 4 && _loc3_;
         }
         if(!this.§;"§.tournamentRules)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!r§.length)
         {
            if(this.§;"§.tournamentRules.§1"5§.indexOf("XMAS") != -1)
            {
               this.§]!r§[_loc1_];
            }
            if(_loc5_ = §<"`§.getItemByName("CutsceneButton" + int(_loc1_ + 1)) as §"S§)
            {
               if(§5!%§(_loc1_ + 1))
               {
                  _loc5_.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
                  _loc5_.setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
            _loc1_++;
         }
      }
      
      private function §]6§() : int
      {
         var _loc1_:int = 1;
         switch(this.§;"§.levelIDs[0])
         {
            case this.§]!r§[0]:
               _loc1_ = 2;
               break;
            case this.§]!r§[1]:
               _loc1_ = 3;
               break;
            case this.§]!r§[2]:
            case this.§]!r§[3]:
               _loc1_ = 4;
         }
         return _loc1_;
      }
      
      protected function §^"`§(param1:String = null) : void
      {
         var _loc2_:TournamentResultsPopup = new TournamentResultsPopup(§%#§.NORMAL,§9#5§.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(!this.§`!§ || this.§`!§.length == 0 || this.§6G§ && !this.§?3§)
         {
            return;
         }
         if((§%"T§.§>$<§ as §'"a§).§?$9§())
         {
            if(this.§@!6§ < §;s§)
            {
               this.§3]§ = 0;
               if(this.§?3§)
               {
                  this.§?3§.§5#k§.scaleX = §6"H§.§!d§;
                  this.§?3§.§5#k§.scaleY = §6"H§.§!d§;
               }
               this.§<!D§();
               _loc1_ = this.§%"C§();
               _loc2_ = _loc1_.centerX;
               if(§3C§)
               {
                  §3C§.§%$#§(_loc2_,_loc1_.buttonY + (this.§<$,§.y - _loc1_.buttonY) / 2,_loc1_.buttonRightCorner);
               }
               if(this.§4!`§)
               {
                  this.§4!`§.x = _loc2_;
               }
               if(this.§8#L§)
               {
                  this.§8#L§.mClip.visible = true;
                  this.§8#L§.x = §%"T§.§@" §() >> 1;
                  this.§8#L§.y = _loc1_.buttonY + (this.§<$,§.y - _loc1_.buttonY) / 2;
               }
               _loc3_ = §<"`§.getItemByName("Button_PreviousResults").x - §<"`§.getItemByName("Button_Back").x;
               this.§<$,§.x = §<"`§.getItemByName("Button_Back").x + _loc3_ / 4;
               this.§2#f§.x = §<"`§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
               ++this.§@!6§;
            }
         }
         else if(this.§3]§ < §;s§)
         {
            this.§@!6§ = 0;
            if(this.§?3§)
            {
               this.§?3§.§5#k§.scaleX = 1;
               this.§?3§.§5#k§.scaleY = 1;
            }
            this.§<!D§();
            _loc1_ = this.§%"C§();
            _loc2_ = _loc1_.centerX;
            if(§3C§)
            {
               §3C§.§%$#§(_loc2_,_loc1_.buttonY + (this.§<$,§.y - _loc1_.buttonY) / 2,_loc1_.buttonRightCorner);
            }
            if(this.§4!`§)
            {
               this.§4!`§.x = _loc2_;
            }
            if(this.§8#L§)
            {
               this.§8#L§.mClip.visible = true;
               this.§8#L§.x = §%"T§.§@" §() >> 1;
               this.§8#L§.y = _loc1_.buttonY + (this.§<$,§.y - _loc1_.buttonY) / 2;
            }
            _loc3_ = §<"`§.getItemByName("Button_PreviousResults").x - §<"`§.getItemByName("Button_Back").x;
            this.§<$,§.x = §<"`§.getItemByName("Button_Back").x + _loc3_ / 4;
            this.§2#f§.x = §<"`§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
            ++this.§3]§;
         }
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         if(this.§?3§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §<"`§.movieClip;
      }
      
      protected function §each §(param1:MouseEvent) : void
      {
         if(this.§;"§.§3#"§ && this.§;"§.§3#"§.url)
         {
            §@"F§.§^$#§("shareURL",this.§;"§.§3#"§.url);
         }
      }
      
      protected function §0!t§(param1:§'!x§) : void
      {
         var _loc2_:§""=§ = null;
         for each(_loc2_ in this.§3q§)
         {
            _loc2_.§-!X§(true);
         }
      }
      
      public function §;k§() : void
      {
         this.§9K§(true);
         this.§;"B§ = new Vector.<Boolean>();
         this.§;"B§[§7!#§] = false;
         this.§;"B§[§4#1§] = false;
         this.§;"B§[§;b§] = false;
         this.§;"B§[§,!N§] = false;
         if(§^"C§.§?q§.§&2§())
         {
            if(§1#"§.§="k§() != -1)
            {
               §^"C§.§-"T§();
               §%"0§ = §1#"§.§="k§();
               §2#C§ = §1#"§.§="k§();
               §1#"§.§7k§();
            }
            else if(!§0"O§)
            {
               §^"C§.§-"T§();
               if(§%"0§ == 0)
               {
                  §%"0§ = §^"C§.§?q§.§5!W§();
               }
               §2#C§ = §%"0§;
            }
         }
         else if(§1#"§.§="k§() != -1)
         {
            §%"0§ = §1#"§.§="k§();
            §2#C§ = §%"0§;
            §1#"§.§7k§();
         }
         else if(§2#C§ > 0)
         {
            §%"0§ = §2#C§;
         }
         else if(§%"0§ == 0)
         {
            §%"0§ = §^"C§.§?q§.§5!W§();
         }
         this.§;"§.addEventListener(§0#r§.§=!z§,this.§5#4§);
         this.§;"§.§`#;§(§%"0§);
         this.§;"§.addEventListener(§0#r§.§]E§,this.§+o§);
         this.§;"§.§-!g§(§%"0§);
         this.§;"§.addEventListener(§0#r§.§'$>§,this.§-!&§);
         this.§;"§.§,$,§(§%"0§);
         if(this.§?#r§.active)
         {
            if(this.§;"B§)
            {
               this.§;"B§[§8#c§] = false;
            }
            §'"a§.§;$2§ = true;
            this.§?#r§.addEventListener(§?>§.§]#s§,this.§+#x§);
            this.§?#r§.§!$C§(§%"0§);
         }
      }
      
      public function §0"§() : Boolean
      {
         return this.§;"B§ != null;
      }
   }
}
