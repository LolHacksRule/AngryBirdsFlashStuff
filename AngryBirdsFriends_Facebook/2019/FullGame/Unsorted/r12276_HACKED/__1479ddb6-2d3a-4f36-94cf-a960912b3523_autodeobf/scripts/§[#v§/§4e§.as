package §[#v§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.ChallengePopup;
   import § h§.ErrorPopup;
   import § h§.OverlappingTournamentsEndPopup;
   import §!"1§.§9!X§;
   import §!#Y§.§>h§;
   import §#!G§.§-#]§;
   import §#!G§.§9$§;
   import §#$E§.§,!Y§;
   import §+!n§.§+!p§;
   import §-"S§.§>#G§;
   import §1!1§.§<#M§;
   import §2$;§.§;!b§;
   import §2E§.§]!P§;
   import §3#t§.§51§;
   import §4#$§.§2#X§;
   import §4#$§.§5"L§;
   import §4#l§.TabbedShopPopup;
   import §4$A§.§=$5§;
   import §5#<§.§-"q§;
   import §6#Y§.QualifierInterruptedPopUp;
   import §7"1§.§;" §;
   import §8#^§.§-B§;
   import §9!6§.§## §;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §=!&§.§<$!§;
   import §>#Y§.§!",§;
   import §>#Y§.§!#?§;
   import §>#Y§.§#!&§;
   import §>#Y§.§,#b§;
   import §>#Y§.§1N§;
   import §>#Y§.§2"%§;
   import §>#Y§.§5!0§;
   import §>#Y§.§6"k§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §@!_§.§ !G§;
   import §["#§.TournamentResultsPopup;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §]!4§.§=#c§;
   import §]M§.§-"-§;
   import §]M§.§=!a§;
   import §^#?§.§?#,§;
   import §^1§.§ "g§;
   import §^1§.§';§;
   import §^1§.§+!Y§;
   import §^1§.§[$2§;
   import com.rovio.assets.§=@§;
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
   
   public class §4e§ extends §';§ implements §=$5§, §;"P§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static var §`#!§:int = 0;
      
      private static var §="C§:int = 0;
      
      private static var §48§:Boolean = false;
      
      protected static var §9!b§:String = "";
      
      protected static const §`!f§:String = "TextContainer";
      
      protected static const § !?§:String = "leftTopCorner";
      
      protected static const §5i§:String = "rightTopCorner";
      
      private static const §!J§:int = 6;
      
      private static const §10§:int = 8;
      
      private static const §0$'§:int = 4;
      
      private static var §5!_§:int = §0$'§;
      
      protected static const §2"L§:Number = 5 * 60 * 1000;
      
      private static const §`!q§:int = -20;
      
      private static const §8$2§:int = 0;
      
      private static const §0$D§:int = 0;
      
      private static const §-"§:int = 1;
      
      private static const §9r§:int = 2;
      
      private static const §["'§:int = 3;
      
      private static const §[I§:int = 4;
      
      private static var §!#D§:§-"-§;
      
      private static var §@#+§:Boolean;
      
      private static var §>"i§:Boolean;
      
      private static var §]!5§:Object = null;
      
      private static var §+$!§:Number = 0;
      
      private static const §4!l§:int = 5;
      
      private static const §]H§:int = 3000;
      
      private static var §1$&§:Array = [true,false,false,false];
       
      
      private var §'"H§:Array;
      
      private var §?#Y§:Array;
      
      protected var §;#G§:Array;
      
      protected var §9#&§:Number = 0;
      
      protected var §@!g§:Vector.<§2#X§>;
      
      protected var §]!a§:§5"L§;
      
      protected var §9!B§:§?#,§;
      
      private var §>!F§:Boolean;
      
      private var §]"7§:Boolean = false;
      
      private var §7"9§:Vector.<Boolean>;
      
      private var §]"N§:§,!Y§;
      
      private var §4`§:Boolean = false;
      
      private var §6$<§:§6!1§;
      
      private var §[##§:§6!1§;
      
      private var §;f§:§>h§;
      
      private var §^$!§:TextField;
      
      private var §]#p§:TextField;
      
      private var §?"l§:Boolean;
      
      private var §>!!§:uint;
      
      private const §%" §:uint = 2000;
      
      private var §0!M§:Boolean;
      
      private var §2"f§:§6!1§;
      
      private var §=!G§:SimpleButton;
      
      private var §<3§:QualifierInterruptedPopUp;
      
      private var §1"w§:Wallet;
      
      private var §3"B§:Boolean;
      
      private var §"#2§:int;
      
      private var §%X§:int;
      
      protected var §super§:§6!1§;
      
      private var §19§:§6!1§;
      
      private var §`"s§:Number;
      
      private var §8$4§:Timer;
      
      private var §<!o§:Array;
      
      private var §5z§:Array;
      
      public function §4e§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§?#Y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§<!o§ = ["2000-279","2000-271","2000-267","2000-269"];
         this.§5z§ = ["2000-303","2000-307","2000-313","2000-315"];
         this.§]!a§ = §5"L§.§3"1§;
         this.§9!B§ = §?#,§.§3"1§;
         this.§;f§ = §>h§.§3"1§;
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §,#b§
      {
         return §,#b§(AngryBirdsBase.singleton.dataModel);
      }
      
      public static function §<"W§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §1$&§[param1 - 1];
      }
      
      public static function §^H§() : void
      {
         §@#+§ = true;
      }
      
      public static function §%#8§() : void
      {
         §@#+§ = true;
         §!#D§ = null;
      }
      
      public static function §@g§() : void
      {
         §>"i§ = true;
      }
      
      public static function §7!y§(param1:int, param2:String) : void
      {
         §9!b§ = param2.toUpperCase();
         §`#!§ = param1;
         §48§ = true;
      }
      
      public static function §7!v§(param1:int) : void
      {
         §="C§ = param1;
      }
      
      public static function §9$%§() : int
      {
         return §="C§;
      }
      
      public static function §'#x§() : void
      {
         if(§`#!§ == 0)
         {
            §`#!§ = §5"L§.§3"1§.§`#p§();
         }
         ++§`#!§;
      }
      
      public static function §;#@§() : void
      {
         §`#!§ = 0;
      }
      
      protected function §%!L§(param1:§<$!§) : void
      {
         if(this.§7"9§)
         {
            this.§7"9§[§0$D§] = true;
         }
         this.§]!a§.removeEventListener(§<$!§.§4!<§,this.§%!L§);
         this.§]!a§.addEventListener(§<$!§.§3!=§,this.§2!=§);
         this.§]!a§.§2"U§();
      }
      
      protected function §#![§(param1:§<$!§) : void
      {
         if(this.§7"9§)
         {
            this.§7"9§[§-"§] = true;
         }
         this.§]!a§.removeEventListener(§<$!§.§?"+§,this.§#![§);
      }
      
      protected function §3"T§(param1:§<$!§) : void
      {
         if(this.§7"9§)
         {
            this.§7"9§[§-"§] = true;
         }
         this.§]!a§.removeEventListener(§<$!§.§?"+§,this.§3"T§);
         this.§&B§();
         this.§#!#§();
      }
      
      protected function §4$1§(param1:§<$!§) : void
      {
         if(this.§7"9§)
         {
            this.§7"9§[§9r§] = true;
         }
         this.§]!a§.removeEventListener(§<$!§.§4!G§,this.§4$1§);
      }
      
      protected function §2!=§(param1:§<$!§) : void
      {
         if(this.§7"9§)
         {
            this.§7"9§[§["'§] = true;
         }
         this.§]!a§.removeEventListener(§<$!§.§3!=§,this.§2!=§);
      }
      
      protected function §>##§(param1:§<$!§) : void
      {
         this.§+E§(this.§1"w§);
         this.§""E§();
      }
      
      override protected function init() : void
      {
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_Tournament[0]);
         this.§]"7§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]!P§.§1!7§().§4c§(§]!P§.§7#g§);
         this.§"#2§ = 0;
         this.§%X§ = 0;
         this.§"$0§();
         this.§0$#§();
         §^H§();
         this.§2"f§ = §@!D§.getItemByName("Button_PreviousResults");
         this.§super§ = §@!D§.getItemByName("Button_Challenge");
         this.§super§.visible = true;
         §+!p§.§`?§.clearLevel();
         §+!p§.§`?§.setVisible(false);
         (§+!p§.§;"-§ as §^"a§).§6H§(§9! §.§@v§);
         if(§@!D§.getItemByName("TournamentCutsceneSelection"))
         {
            §@!D§.getItemByName("TournamentCutsceneSelection").setVisibility(false);
         }
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§5#O§);
         this.§""E§();
         this.§]!a§.addEventListener(§<$!§.§<$ §,this.§>##§);
         this.§,#K§();
         this.§`"s§ = §+!p§.§+#L§();
         this.§9#&§ = §2"L§;
      }
      
      private function §,#K§() : void
      {
         if(!this.§]!a§.§;!P§() && this.§]!a§.§,"B§ && §!",§.§3"1§.§%$7§.§1_§(§5"L§.§<"9§))
         {
            if(this.§<3§ == null)
            {
               this.§<3§ = new QualifierInterruptedPopUp(§-!S§.NORMAL,§## §.DEFAULT);
            }
            this.§]!a§.§+-§(true);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§<3§);
         }
      }
      
      private function §0$#§() : void
      {
         if(this.§[##§ == null)
         {
            this.§[##§ = §@!D§.getItemByName("MoreGamesButton");
         }
         if(this.§6$<§ == null || this.§6$<§.mClip == null)
         {
            this.§6$<§ = §@!D§.getItemByName("Button_SpinningWheel");
         }
         this.§>!!§ = 0;
         this.§+"I§(false);
         this.§;f§.addEventListener(§-"q§.§[!P§,this.§#$?§);
         this.§;f§.addEventListener(§-"q§.§%!D§,this.§8!$§);
         if(this.§;f§.§'#f§())
         {
            this.§6$<§.setEnabled(false);
            this.§6$<§.mClip.alpha = 0.5;
         }
         else if(this.§;f§.§>!W§())
         {
            this.§?"l§ = true;
            this.§+"I§(true);
         }
      }
      
      private function §#$?§(param1:§-"q§) : void
      {
         this.§+"I§(false);
      }
      
      private function §8!$§(param1:§-"q§) : void
      {
         this.§6$<§.setEnabled(true);
         this.§6$<§.mClip.alpha = 1;
         var _loc2_:Boolean = this.§;f§.§>!W§();
         this.§?"l§ = _loc2_;
         this.§+"I§(_loc2_);
      }
      
      private function §`"I§() : void
      {
         var _loc1_:MovieClip = MovieClip(this.§6$<§.mClip.getChildByName("notifier"));
         _loc1_.gotoAndPlay(1);
      }
      
      private function §+"I§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = MovieClip(this.§6$<§.mClip.getChildByName("notifier"));
         _loc2_.visible = param1;
         _loc2_.gotoAndStop(1);
         this.§0!M§ = param1;
      }
      
      private function §[b§(param1:§<#M§) : void
      {
         if(this.§7"9§)
         {
            this.§7"9§[§[I§] = true;
         }
         this.§9!B§.removeEventListener(§<#M§.§ "2§,this.§[b§);
      }
      
      private function §-!`§(param1:Boolean) : void
      {
         §@!D§.getItemByName("loadingTournament").setVisibility(param1);
         if(param1)
         {
            this.§+E§(this.§1"w§);
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §;" §.§`S§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§&_§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Tournament level selection error: " + param1.toString()));
         }
      }
      
      private function §=l§() : String
      {
         return this.§>O§(this.§?#Y§);
      }
      
      private function §>O§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §-"#§() : void
      {
         var _loc1_:§79§ = null;
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:§6!1§ = null;
         var _loc5_:Class = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         if(§="C§ > 0)
         {
            if(this.§9!B§.§7$?§ && this.§9!B§.§7$?§.t && this.§9!B§.§7$?§.t.a)
            {
               if(this.§9!B§.§7$?§.t.a.tid == §`#!§)
               {
                  §5"L§.§`6§(true);
                  StateTournamentResults.§4"=§ = §="C§;
                  §="C§ = 0;
                  §;#@§();
                  StateTournamentResults.§4!&§ = StateTournamentResults.§9!@§;
                  §%!?§(StateTournamentResults.STATE_NAME);
                  return;
               }
            }
            else if(!this.§9!B§.§9"m§())
            {
               §5"L§.§`6§(true);
               StateTournamentResults.§4"=§ = §="C§;
               §="C§ = 0;
               §;#@§();
               StateTournamentResults.§4!&§ = StateTournamentResults.§9!@§;
               §%!?§(StateTournamentResults.STATE_NAME);
               return;
            }
            §="C§ = 0;
            §'#x§();
         }
         if(mLevelManager)
         {
            _loc1_ = mLevelManager.getEpisodeByName(§ "g§.§>#%§);
            for each(_loc2_ in this.§]!a§.§54§.levels)
            {
               _loc1_.§&"H§(_loc2_.levelId);
            }
         }
         if(this.§]!a§.§""s§(§^"a§.§?#8§))
         {
            this.§""K§(§^"a§.§?#8§);
            §^"a§.§?#8§ = null;
            return;
         }
         if(!§@!D§)
         {
            return;
         }
         this.§&B§();
         this.§#!#§();
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
         this.§-#;§();
         this.§]"7§ = true;
         if(this.§]#p§)
         {
            this.§]#p§.text = this.§]!a§.§^!K§;
            if(!§]!5§)
            {
               §]!5§ = this.§]#p§.y;
            }
            this.§]#p§.y = §]!5§ + Math.round((this.§]#p§.height - this.§]#p§.textHeight) / 2);
         }
         if(this.§]!a§)
         {
            this.§]"N§ = this.§]!a§.§@#'§(this.§]!a§.brandedTournamentAssetId);
         }
         else
         {
            this.§]"N§ = null;
         }
         this.§3"B§ = true;
         if(this.§]"N§)
         {
            this.§=!G§ = this.getCampaignButtonFromBG();
            if(this.§=!G§)
            {
               this.§=!G§.addEventListener(MouseEvent.CLICK,this.§6!6§);
               this.§3"B§ = false;
            }
            else
            {
               _loc3_ = this.§]"N§.§7#Y§ == §5i§ ? §5i§ : § !?§;
               if(_loc4_ = §@!D§.getItemByName(_loc3_))
               {
                  if(_loc5_ = §=@§.§9!x§(this.§]"N§.§9$3§,false))
                  {
                     _loc4_.mClip.removeChildren();
                     _loc4_.mClip.addChild(new _loc5_());
                     _loc4_.setVisibility(true);
                     this.§3"B§ = this.§]"N§.§7#Y§ == §5i§;
                  }
               }
            }
         }
         this.§19§ = §@!D§.getItemByName("share_button_holder");
         if(this.§19§ && this.§]!a§.§9#,§)
         {
            _loc6_ = "SHARE_BUTTON_" + this.§]!a§.tournamentRules.§,d§;
            if(_loc5_ = §=@§.§9!x§(_loc6_,false))
            {
               this.§19§.mClip.removeChildren();
               this.§19§.mClip.addChild(new _loc5_());
               this.§19§.mClip.addEventListener(MouseEvent.CLICK,this.§@"2§,false,0,true);
            }
         }
         if(this.§3"B§)
         {
            this.§ "@§(new Wallet(this,true,true,false,true));
         }
         this.§<#n§();
         if(§>"i§ && §!#D§)
         {
            §!#D§.§^x§();
            §>"i§ = false;
         }
         this.§"#2§ = 0;
         this.§%X§ = 0;
         (§+!p§.§;"-§ as §^"a§).§?"c§.addEventListener(§-B§.§5!C§,this.§3"W§);
         §5"L§.§`6§(true);
         if(!this.§]!a§.§2o§())
         {
            if(_loc7_ = §2"%§.§^'§())
            {
               _loc7_.sortOn(["start","id"],[Array.NUMERIC,Array.DESCENDING]);
               AngryBirdsBase.singleton.popupManager.openPopup(new OverlappingTournamentsEndPopup(_loc7_));
               §2"%§.§=#T§();
            }
         }
      }
      
      private function §<#n§() : void
      {
         if(!§!#D§)
         {
            return;
         }
         if(§,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§,!F§(§!#D§.ID))
         {
            return;
         }
         var _loc1_:Boolean = §!#D§.§!"?§();
         if(_loc1_)
         {
            §4$4§.playSound("league_promotion_diamond",§4$4§.§6!H§);
            §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§""C§(§ !G§.§-y§,[§!#D§.ID]);
         }
      }
      
      private function §6!6§(param1:MouseEvent) : void
      {
         this.§]!a§.§[$ §();
      }
      
      protected function getCampaignButtonFromBG() : SimpleButton
      {
         return null;
      }
      
      private function §"$0§() : void
      {
         var _loc1_:§6!1§ = §@!D§.container.getItemByName("TextContainer");
         var _loc2_:MovieClip = MovieClip(_loc1_.mClip.getChildByName(§`!f§));
         this.§^$!§ = TextField((_loc2_.getChildByName("DaysLeftTextfield") as DisplayObjectContainer).getChildByName("text"));
         this.§]#p§ = TextField(_loc2_.getChildByName("Textfield_TournamentName"));
      }
      
      private function §`!p§() : void
      {
         var _loc1_:Object = this.§9!B§.§4"a§;
         var _loc2_:Boolean = _loc1_ && _loc1_.t && _loc1_.t.players.length > 2;
         if(_loc2_)
         {
            if(_loc1_ && _loc1_.t && _loc1_.t.qualifier && _loc1_.l && _loc1_.l.pli.tn == "QUALIFIER")
            {
               _loc2_ = false;
            }
         }
         if(this.§2"f§)
         {
            if(_loc2_)
            {
               this.§2"f§.setEnabled(true);
               this.§2"f§.mClip.alpha = 1;
               this.§4`§ = true;
            }
            else
            {
               this.§2"f§.setEnabled(false);
               this.§2"f§.mClip.alpha = 0.5;
            }
         }
      }
      
      private function §8#F§() : void
      {
         if(this.§]!a§.tournamentRules.§@!n§)
         {
            this.§5$B§();
         }
         else
         {
            this.§5$B§();
         }
         §>#G§.§@e§ + "_" + this.§]!a§.tournamentRules.§1!>§;
         if(this.§]!a§.tournamentRules.§1!>§ == §5"L§.§%W§)
         {
            §>#G§.§^!h§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§2#X§ = null;
         super.deActivate();
         this.§]!a§.removeEventListener(§<$!§.§4!<§,this.§%!L§);
         this.§]!a§.removeEventListener(§<$!§.§?"+§,this.§#![§);
         this.§]!a§.removeEventListener(§<$!§.§?"+§,this.§3"T§);
         this.§]!a§.removeEventListener(§<$!§.§4!G§,this.§4$1§);
         this.§]!a§.removeEventListener(§<$!§.§3!=§,this.§2!=§);
         this.§;f§.removeEventListener(§-"q§.§[!P§,this.§#$?§);
         this.§;f§.removeEventListener(§-"q§.§%!D§,this.§8!$§);
         this.§4`§ = false;
         this.§]!a§.removeEventListener(§<$!§.§<$ §,this.§>##§);
         this.§9!B§.removeEventListener(§<#M§.§ "2§,this.§[b§);
         (§+!p§.§;"-§ as §^"a§).§?"c§.removeEventListener(§-B§.§5!C§,this.§3"W§);
         this.§;#G§ = this.§]!a§.levelIDs;
         mLevelManager.resetPreviousLevel();
         if(this.§]"N§ && §@!D§)
         {
            §@!D§.getItemByName(§ !?§).setVisibility(false);
            §@!D§.getItemByName(§5i§).setVisibility(false);
         }
         if(this.§=!G§)
         {
            this.§=!G§.removeEventListener(MouseEvent.CLICK,this.§6!6§);
         }
         §!#D§ = null;
         this.§+E§(this.§1"w§);
         for each(_loc1_ in this.§@!g§)
         {
            _loc1_.deactivate();
         }
      }
      
      private function §#!#§() : void
      {
         var _loc1_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§9$§ = null;
         var _loc7_:§#!&§ = null;
         var _loc8_:String = null;
         var _loc9_:§9$§ = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc2_:Array = [];
         this.§'"H§ = [];
         var _loc3_:Array = this.§]!a§.§?5§();
         §51§.§%[§ = new Vector.<§#!&§>();
         var _loc4_:int = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc6_ = §-#]§.§0B§(_loc5_.uid))
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
            if(_loc5_.uid == (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID)
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
            if((_loc7_ = §#!&§.§5!I§(_loc5_)).§^"%§)
            {
               if(§51§.§8!a§.indexOf(_loc7_.userId) == -1)
               {
                  §51§.§%[§.push(_loc7_);
               }
            }
            else
            {
               _loc2_.push(_loc7_);
            }
            this.§'"H§.push(_loc7_);
         }
         if(_loc1_ == null)
         {
            _loc8_ = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID;
            _loc10_ = !!(_loc9_ = §-#]§.§0B§(_loc8_)) ? _loc9_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "uid":_loc8_,
               "n":_loc10_
            };
            _loc11_ = 0;
            _loc12_ = 0;
            while(_loc12_ < this.§;#G§.length)
            {
               _loc11_ += §>#G§(AngryBirdsBase.singleton.dataModel.userProgress).§5!>§(this.§;#G§[_loc12_]);
               _loc12_++;
            }
            _loc1_.p = _loc11_;
            this.§'"H§.push(§#!&§.§5!I§(_loc1_));
            _loc2_.push(§#!&§.§5!I§(_loc1_));
         }
         if(§!#?§.§]!2§(§!#?§.§1#E§))
         {
            _loc12_ = 0;
            while(_loc12_ < _loc2_.length)
            {
               _loc2_[_loc12_].rank = _loc12_ + 1;
               _loc12_++;
            }
         }
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§?<§,_loc2_);
         QualifierInterruptedPopUp.§1""§(_loc2_);
         this.§-#;§();
      }
      
      private function §@!4§(param1:Array) : void
      {
         var _loc3_:§9$§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§#!&§ = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Vector.<§9$§> = §-#]§.§0#9§();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = false;
            for each(_loc5_ in this.§'"H§)
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
               param1.push(new §5!0§(_loc6_,_loc7_,"",!§6"k§.§3"1§.§3"t§(_loc6_)));
            }
         }
      }
      
      protected function §&B§() : void
      {
         var _loc2_:§;!b§ = null;
         this.§@!g§ = new Vector.<§2#X§>();
         this.§;#G§ = this.§]!a§.levelIDs;
         var _loc1_:int = 0;
         while(_loc1_ < §10§)
         {
            _loc2_ = §;!b§(§@!D§.getItemByName("LevelButton" + (_loc1_ + 1)));
            if(!_loc2_)
            {
               break;
            }
            if(_loc1_ < this.§;#G§.length)
            {
               _loc2_.visible = true;
               this.§@!g§.push(this.makeLevelButton(_loc1_ + 1,this.§]!a§.levelObjects[_loc1_],_loc2_));
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
         if(this.§;#G§.length > §!J§)
         {
            §5!_§ = §0$'§;
         }
         else
         {
            §5!_§ = §!J§;
         }
         this.§2!z§();
      }
      
      private function §1!5§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.buttonGap = §+!p§.§+#L§() / (§5!_§ + 1);
         _loc1_.buttonY = §+!p§.§[#%§() * 0.5;
         _loc1_.centerX = §+!p§.§+#L§() >> 1;
         _loc1_.buttonRightCorner = §+!p§.§+#L§() - (§+!p§.§+#L§() >> 3);
         if(this.§;#G§.length > §5!_§)
         {
            _loc1_.buttonY = §+!p§.§[#%§() * 0.41;
            _loc1_.buttonSecondRowY = _loc1_.buttonY + §+!p§.§[#%§() / 4.5;
         }
         return _loc1_;
      }
      
      private function §2!z§() : void
      {
         var _loc5_:§2#X§ = null;
         var _loc1_:Object = this.§1!5§();
         var _loc2_:Number = 0;
         var _loc3_:Number = 1;
         if((§+!p§.§;"-§ as §^"a§).§&m§())
         {
            _loc2_ = §+!p§.§[#%§() >> 5;
            _loc3_ = §[$2§.§ #H§;
         }
         var _loc4_:int = 1;
         for each(_loc5_ in this.§@!g§)
         {
            _loc5_.setScale(_loc3_);
            if(_loc4_ <= §5!_§)
            {
               _loc5_.setPosition(_loc1_.buttonGap * _loc4_,_loc1_.buttonY + _loc2_);
            }
            else
            {
               _loc5_.setPosition(_loc1_.buttonGap * (_loc4_ - §5!_§),_loc1_.buttonSecondRowY + (§+!p§.§[#%§() >> 5));
            }
            _loc4_++;
         }
      }
      
      protected function makeLevelButton(param1:int, param2:Object, param3:§;!b§) : §2#X§
      {
         return new §2#X§(param1,param2,this,param3,this.§]!a§,dataModel.§+!J§,dataModel.§%$;§,§>#G§(dataModel.userProgress));
      }
      
      private function §3!E§(param1:int) : §#!&§
      {
         var _loc2_:§1N§ = null;
         if(param1 <= this.§'"H§.length)
         {
            _loc2_ = this.§'"H§[param1 - 1];
            if(_loc2_ is §#!&§)
            {
               (_loc2_ as §#!&§).rank = param1;
               return _loc2_ as §#!&§;
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§8!g§ = param3;
         switch(eventName)
         {
            case "BACK":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               if(this.§]!a§.§2o§())
               {
                  §%!?§(§7"Z§.STATE_NAME);
               }
               else
               {
                  §%!?§(§[$2§.STATE_NAME);
               }
               break;
            case "SPINNING_WHEEL":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§;f§.§>"w§();
               §]!P§.§1!7§().§%#J§(§]!P§.§4!V§);
               break;
            case "PREVIOUS_RESULTS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               if(!this.§9!B§.active)
               {
                  §%!?§(StateLastWeeksTournamentResults.STATE_NAME);
               }
               else
               {
                  StateTournamentResults.§4!&§ = StateTournamentResults.§with§;
                  §%!?§(StateTournamentResults.STATE_NAME);
               }
               break;
            case "LEVEL_1":
               this.§,"i§(0);
               break;
            case "LEVEL_2":
               this.§,"i§(1);
               break;
            case "LEVEL_3":
               this.§,"i§(2);
               break;
            case "LEVEL_4":
               this.§,"i§(3);
               break;
            case "LEVEL_5":
               this.§,"i§(4);
               break;
            case "LEVEL_6":
               this.§,"i§(5);
               break;
            case "LEVEL_7":
               this.§,"i§(6);
               break;
            case "LEVEL_8":
               this.§,"i§(7);
               break;
            case "showCredits":
               §%!?§(§+!Y§.STATE_NAME);
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               this.§@!u§(int(eventName.charAt(eventName.length - 1)));
               break;
            case "SPECIAL_STORE":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§-!S§.NORMAL,§## §.DEFAULT));
               break;
            case "CHALLENGE":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ChallengePopup(§-!S§.NORMAL,§## §.DEFAULT));
               break;
            case "MORE_GAMES":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("http://www.rovio.com/games"),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         if(§!#D§)
         {
            §!#D§.onUIInteraction(eventName);
         }
         this.§]!a§.§1!8§(eventName);
      }
      
      protected function §,"i§(param1:int) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         var _loc2_:String = this.§;#G§[param1];
         this.§]!a§.levelObjects[param1];
         var _loc4_:§2#X§ = this.§@!g§[param1];
         if(this.§]!a§.isLevelOpen(_loc2_))
         {
            this.§""K§(_loc2_);
         }
         else if(_loc4_.§,#m§ && !this.§]!a§.§7"<§)
         {
            _loc4_.§,5§();
         }
      }
      
      private function §@!u§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§]!a§.tournamentRules.§1!>§.indexOf("HALLOWEEN") != -1)
         {
            _loc2_ = this.§<!o§[param1 - 1];
         }
         if(this.§]!a§.tournamentRules.§1!>§.indexOf("XMAS") != -1)
         {
            _loc2_ = this.§5z§[param1 - 1];
         }
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc2_.toLowerCase()));
         §%!?§(§0!n§.STATE_NAME);
      }
      
      protected function §""K§(param1:String) : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(param1.toLowerCase()));
         §%!?§(§["!§.STATE_NAME);
      }
      
      protected function §-#;§() : void
      {
         if(this.§8$4§)
         {
            this.§-!`§(true);
            return;
         }
         if(§@!D§.getItemByName("loadingTournament").visible || AngryBirdsBase.singleton.popupManager.§!=§())
         {
            return;
         }
         var timeLeftPretty:Array = this.§]!a§.§%"#§();
         this.§^$!§.text = timeLeftPretty[0] + " left!";
         this.§^$!§.textColor = timeLeftPretty[1];
         if(timeLeftPretty[0] == "0s")
         {
            this.§8$4§ = new Timer(§]H§);
            this.§8$4§.addEventListener(TimerEvent.TIMER,function():void
            {
               §8$4§.stop();
               §8$4§ = null;
               §""E§();
            });
            this.§-!`§(true);
            this.§8$4§.start();
         }
         timeLeftPretty = null;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§2#X§ = null;
         var _loc3_:Boolean = false;
         super.update(param1);
         if(this.§?"l§)
         {
            this.§>!!§ += param1;
            if(this.§>!!§ >= this.§%" §)
            {
               this.§?"l§ = false;
               this.§`"I§();
            }
         }
         if(§@#+§)
         {
            if(§!#D§)
            {
               §!#D§.§]#g§();
               §@#+§ = false;
               this.§"#2§ = 0;
               this.§%X§ = 0;
            }
            else if(§=!a§.§3"1§.§#"P§())
            {
               §!#D§ = §=!a§.§3"1§.§>"Q§();
               §!#D§.§4!%§(§@!D§);
            }
         }
         if(!this.§4`§)
         {
            this.§`!p§();
         }
         if(this.§7"9§)
         {
            for each(_loc3_ in this.§7"9§)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            if(_loc3_ && this.§]!a§.§54§)
            {
               this.§7"9§ = null;
               this.§-"#§();
            }
         }
         else
         {
            this.§-#;§();
         }
         for each(_loc2_ in this.§@!g§)
         {
            _loc2_.update();
         }
         if(this.§]"7§)
         {
            this.§-!`§(false);
            (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
            this.§]"7§ = false;
         }
         if(this.§`"s§ != §+!p§.§+#L§())
         {
            this.§"#2§ = 0;
            this.§%X§ = 0;
            this.§`"s§ = §+!p§.§+#L§();
         }
         if(this.§9#&§ > 0)
         {
            this.§9#&§ -= param1;
            if(this.§9#&§ <= 0)
            {
               this.§9#&§ = §2"L§;
               this.§]!a§.addEventListener(§<$!§.§?"+§,this.§3"T§);
               this.§]!a§.§"#k§(§`#!§);
            }
         }
      }
      
      private function §?Z§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc5_:§;!b§ = null;
         if(this.§]!a§.levelIDs.length > 0)
         {
            _loc2_ = this.§9#e§();
            if(§@!D§.getItemByName("TournamentCutsceneSelection"))
            {
               §@!D§.getItemByName("TournamentCutsceneSelection").setVisibility(_loc2_ > 1 && _loc2_ <= 4);
            }
            _loc3_ = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§5!>§(this.§5z§[3]) > 0;
            §1$&§[1] = _loc2_ >= 3;
            §1$&§[2] = _loc2_ >= 4;
            §1$&§[3] = _loc2_ >= 4 && _loc3_;
         }
         if(!this.§]!a§.tournamentRules)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§5z§.length)
         {
            if(this.§]!a§.tournamentRules.§1!>§.indexOf("XMAS") != -1)
            {
               this.§5z§[_loc1_];
            }
            if(_loc5_ = §@!D§.getItemByName("CutsceneButton" + int(_loc1_ + 1)) as §;!b§)
            {
               if(§<"W§(_loc1_ + 1))
               {
                  _loc5_.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
                  _loc5_.setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
            _loc1_++;
         }
      }
      
      private function §9#e§() : int
      {
         var _loc1_:int = 1;
         switch(this.§]!a§.levelIDs[0])
         {
            case this.§5z§[0]:
               _loc1_ = 2;
               break;
            case this.§5z§[1]:
               _loc1_ = 3;
               break;
            case this.§5z§[2]:
            case this.§5z§[3]:
               _loc1_ = 4;
         }
         return _loc1_;
      }
      
      protected function §5$B§(param1:String = null) : void
      {
         var _loc2_:TournamentResultsPopup = new TournamentResultsPopup(§-!S§.NORMAL,§## §.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(!this.§;#G§ || this.§;#G§.length == 0 || this.§3"B§ && !this.§1"w§)
         {
            return;
         }
         if((§+!p§.§;"-§ as §^"a§).§&m§())
         {
            if(this.§"#2§ < §4!l§)
            {
               this.§%X§ = 0;
               if(this.§1"w§)
               {
                  this.§1"w§.§6""§.scaleX = §[$2§.§ #H§;
                  this.§1"w§.§6""§.scaleY = §[$2§.§ #H§;
               }
               this.§2!z§();
               _loc1_ = this.§1!5§();
               _loc2_ = _loc1_.centerX;
               if(§!#D§)
               {
                  §!#D§.§@"H§(_loc2_,_loc1_.buttonY + (this.§6$<§.y - _loc1_.buttonY) / 2,_loc1_.buttonRightCorner);
               }
               if(this.§super§)
               {
                  this.§super§.x = _loc2_;
               }
               if(this.§19§)
               {
                  this.§19§.mClip.visible = true;
                  this.§19§.x = §+!p§.§+#L§() >> 1;
                  this.§19§.y = _loc1_.buttonY + (this.§6$<§.y - _loc1_.buttonY) / 2;
               }
               _loc3_ = §@!D§.getItemByName("Button_PreviousResults").x - §@!D§.getItemByName("Button_Back").x;
               this.§6$<§.x = §@!D§.getItemByName("Button_Back").x + _loc3_ / 4;
               this.§[##§.x = §@!D§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
               ++this.§"#2§;
            }
         }
         else if(this.§%X§ < §4!l§)
         {
            this.§"#2§ = 0;
            if(this.§1"w§)
            {
               this.§1"w§.§6""§.scaleX = 1;
               this.§1"w§.§6""§.scaleY = 1;
            }
            this.§2!z§();
            _loc1_ = this.§1!5§();
            _loc2_ = _loc1_.centerX;
            if(§!#D§)
            {
               §!#D§.§@"H§(_loc2_,_loc1_.buttonY + (this.§6$<§.y - _loc1_.buttonY) / 2,_loc1_.buttonRightCorner);
            }
            if(this.§super§)
            {
               this.§super§.x = _loc2_;
            }
            if(this.§19§)
            {
               this.§19§.mClip.visible = true;
               this.§19§.x = §+!p§.§+#L§() >> 1;
               this.§19§.y = _loc1_.buttonY + (this.§6$<§.y - _loc1_.buttonY) / 2;
            }
            _loc3_ = §@!D§.getItemByName("Button_PreviousResults").x - §@!D§.getItemByName("Button_Back").x;
            this.§6$<§.x = §@!D§.getItemByName("Button_Back").x + _loc3_ / 4;
            this.§[##§.x = §@!D§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
            ++this.§%X§;
         }
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         if(this.§1"w§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §@!D§.movieClip;
      }
      
      protected function §@"2§(param1:MouseEvent) : void
      {
         if(this.§]!a§.§9#,§ && this.§]!a§.§9#,§.url)
         {
            §=#c§.§<!t§("shareURL",this.§]!a§.§9#,§.url);
         }
      }
      
      protected function §3"W§(param1:§-B§) : void
      {
         var _loc2_:§2#X§ = null;
         for each(_loc2_ in this.§@!g§)
         {
            _loc2_.§!$>§(true);
         }
      }
      
      public function §""E§() : void
      {
         this.§-!`§(true);
         this.§7"9§ = new Vector.<Boolean>();
         this.§7"9§[§0$D§] = false;
         this.§7"9§[§-"§] = false;
         this.§7"9§[§9r§] = false;
         this.§7"9§[§["'§] = false;
         if(§5"L§.§3"1§.§2o§())
         {
            if(§2"%§.§4!;§() != -1)
            {
               §5"L§.§1!P§();
               §`#!§ = §2"%§.§4!;§();
               §="C§ = §2"%§.§4!;§();
               §2"%§.§+#E§();
            }
            else if(!§48§)
            {
               §5"L§.§1!P§();
               if(§`#!§ == 0)
               {
                  §`#!§ = §5"L§.§3"1§.§`#p§();
               }
               §="C§ = §`#!§;
            }
            else if(§=!a§.§3"1§.§?#4§() == §9!X§.§?"n§)
            {
               §5"L§.§1!P§();
            }
         }
         else if(§2"%§.§4!;§() != -1)
         {
            §`#!§ = §2"%§.§4!;§();
            §="C§ = §`#!§;
            §2"%§.§+#E§();
         }
         else if(§="C§ > 0)
         {
            §`#!§ = §="C§;
         }
         else if(§`#!§ == 0)
         {
            §`#!§ = §5"L§.§3"1§.§`#p§();
         }
         this.§]!a§.addEventListener(§<$!§.§4!<§,this.§%!L§);
         this.§]!a§.§"$$§(§`#!§);
         this.§]!a§.addEventListener(§<$!§.§4!G§,this.§4$1§);
         this.§]!a§.§1'§(§`#!§);
         this.§]!a§.addEventListener(§<$!§.§?"+§,this.§#![§);
         this.§]!a§.§"#k§(§`#!§);
         if(this.§9!B§.active)
         {
            if(this.§7"9§)
            {
               this.§7"9§[§[I§] = false;
            }
            §^"a§.§,W§ = true;
            this.§9!B§.addEventListener(§<#M§.§ "2§,this.§[b§);
            this.§9!B§.§9"G§(§`#!§);
         }
      }
      
      public function §#!?§() : Boolean
      {
         return this.§7"9§ != null;
      }
   }
}
