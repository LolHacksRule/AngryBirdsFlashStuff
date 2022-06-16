package §9#B§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!"3§.§8#,§;
   import §"!!§.§+"0§;
   import §"!@§.§ !K§;
   import §"!@§.§>"c§;
   import §"!@§.§@"S§;
   import §"$!§.§7#U§;
   import §%!x§.§^!K§;
   import §%#w§.§2#s§;
   import §&!w§.TournamentResultsPopup;
   import §&"`§.TabbedShopPopup;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §-!S§.§##>§;
   import §-#e§.§[#a§;
   import §0#f§.QualifierInterruptedPopUp;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §1"N§.§4#G§;
   import §2G§.§""F§;
   import §2G§.§#"8§;
   import §2G§.§&"+§;
   import §2G§.§-#+§;
   import §2G§.§4O§;
   import §2G§.§5$4§;
   import §2G§.§9=§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §3#T§.§@"!§;
   import §3r§.§]!4§;
   import §5§.§9$6§;
   import §5P§.§""C§;
   import §7!%§.§,^§;
   import §7!%§.§4"I§;
   import §8#!§.§1$$§;
   import §8#!§.§5`§;
   import §9"r§.§1#e§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§>"0§;
   import §="h§.§<"T§;
   import §="h§.§`"O§;
   import §?P§.ChallengePopup;
   import §?P§.ErrorPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@V§.§;m§;
   import §`!e§.§=Z§;
   import §`7§.§ try§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §=!L§ extends §@"S§ implements §8#§, §9#a§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      protected static const §4!g§:String = "TextContainer";
      
      protected static const §,$2§:String = "campaign_button_holder";
      
      private static const § !s§:int = 6;
      
      private static const §;!e§:int = 8;
      
      private static const §#"k§:int = 4;
      
      private static var §8"6§:int = §#"k§;
      
      protected static const §@y§:Number = 5 * 60 * 1000;
      
      private static const § " §:int = -20;
      
      private static const §]!h§:int = 0;
      
      private static const §6h§:int = 0;
      
      private static const §^3§:int = 1;
      
      private static const §?#Y§:int = 2;
      
      private static const §,#a§:int = 3;
      
      private static var §>!g§:§<"T§;
      
      private static var §]#5§:Boolean;
      
      private static var §%"u§:Boolean;
      
      private static var §>#o§:Object = null;
      
      private static var §9!0§:Number = 0;
      
      private static const §5p§:int = 5;
      
      private static var §1y§:Array = [true,false,false,false];
       
      
      private var §,!S§:Array;
      
      private var §8O§:Array;
      
      protected var §1?§:Array;
      
      protected var §&u§:Number = 0;
      
      protected var §1!U§:Vector.<§1$$§>;
      
      protected var §^!T§:§5`§;
      
      private var §>$5§:Boolean;
      
      private var §6O§:Boolean;
      
      private var §'#H§:Vector.<Boolean>;
      
      private var §]"1§:§[#a§;
      
      private var §&!i§:Boolean = false;
      
      private var §6"C§:§@"!§;
      
      private var §<"7§:§@"!§;
      
      private var §8#5§:§8#,§;
      
      private var §;v§:TextField;
      
      private var §'#z§:TextField;
      
      private var §]!o§:Boolean;
      
      private var §6"r§:uint;
      
      private const §'#>§:uint = 2000;
      
      private var §=J§:Boolean;
      
      private var §,"h§:§@"!§;
      
      private var §[_§:SimpleButton;
      
      private var §;! §:QualifierInterruptedPopUp;
      
      private var §&"K§:Wallet;
      
      private var §2_§:Boolean;
      
      private var §%"Z§:int;
      
      private var §-"P§:int;
      
      protected var §2!S§:§@"!§;
      
      private var §4"K§:§@"!§;
      
      private var §>"V§:Number;
      
      private var §"#G§:Array;
      
      private var §[!'§:Array;
      
      public function §=!L§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§8O§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§"#G§ = ["2000-279","2000-271","2000-267","2000-269"];
         this.§[!'§ = ["2000-303","2000-307","2000-313","2000-315"];
         this.§^!T§ = §5`§.§6!§;
         this.§8#5§ = §8#,§.§6!§;
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §#"8§
      {
         return §#"8§(AngryBirdsBase.singleton.dataModel);
      }
      
      public static function §^"m§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §1y§[param1 - 1];
      }
      
      public static function §4K§() : void
      {
         §]#5§ = true;
      }
      
      public static function §6T§() : void
      {
         §]#5§ = true;
         §>!g§ = null;
      }
      
      public static function §>0§() : void
      {
         §%"u§ = true;
      }
      
      protected function §5$#§(param1:§1#e§) : void
      {
         if(this.§'#H§)
         {
            this.§'#H§[§6h§] = true;
         }
      }
      
      protected function §"!g§(param1:§1#e§) : void
      {
         if(this.§'#H§)
         {
            this.§'#H§[§^3§] = true;
         }
         else
         {
            this.§%!Q§();
         }
      }
      
      protected function §3!D§(param1:§1#e§) : void
      {
         if(this.§'#H§)
         {
            this.§'#H§[§?#Y§] = true;
         }
         else
         {
            this.§?!j§();
         }
      }
      
      protected function §^"d§(param1:§1#e§) : void
      {
         this.§8!3§(this.§&"K§);
         this.§?!j§();
      }
      
      override protected function init() : void
      {
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_Tournament[0]);
         this.§'#H§ = new Vector.<Boolean>();
         this.§6O§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § try§.§!!t§().§'2§(§ try§.§-W§);
         this.§%"Z§ = 0;
         this.§-"P§ = 0;
         this.§=#l§();
         this.§+$,§(true);
         this.§%!C§();
         §4K§();
         this.§,"h§ = §`!H§.getItemByName("Button_PreviousResults");
         this.§2!S§ = §`!H§.getItemByName("Button_Challenge");
         this.§2!S§.visible = true;
         this.§'#H§ = new Vector.<Boolean>();
         this.§'#H§[§6h§] = false;
         this.§'#H§[§^3§] = false;
         this.§'#H§[§?#Y§] = false;
         this.§^!T§.addEventListener(§1#e§.§7+§,this.§5$#§);
         this.§^!T§.addEventListener(§1#e§.§<"Y§,this.§"!g§);
         this.§^!T§.addEventListener(§1#e§.§>"d§,this.§3!D§);
         this.§^!T§.addEventListener(§1#e§.§&"[§,this.§^"d§);
         §3#U§.§#$4§.clearLevel();
         §3#U§.§#$4§.§;"?§(false);
         (§3#U§.§9#^§ as §,A§).§+#T§(§]!4§.§<B§);
         if(§`!H§.getItemByName("TournamentCutsceneSelection"))
         {
            §`!H§.getItemByName("TournamentCutsceneSelection").setVisibility(false);
         }
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§=C§);
         this.§^!T§.§9E§();
         if(§2#s§.§6!§.active)
         {
            this.§'#H§[§,#a§] = false;
            §2#s§.§6!§.addEventListener(§7#U§.§`$4§,this.§?$1§);
            §2#s§.§6!§.§9E§();
         }
         this.§7!J§();
         this.§>"V§ = §3#U§.§5j§();
         this.§&u§ = §@y§;
      }
      
      private function §7!J§() : void
      {
         if(!this.§^!T§.§`"K§() && this.§^!T§.§4!Y§ && §-#+§.§6!§.§0!,§.§9#w§(§5`§.§0#c§))
         {
            if(this.§;! § == null)
            {
               this.§;! § = new QualifierInterruptedPopUp(§]"$§.NORMAL,§^"U§.DEFAULT);
            }
            this.§^!T§.§7"T§(true);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§;! §);
         }
      }
      
      private function §%!C§() : void
      {
         if(this.§<"7§ == null)
         {
            this.§<"7§ = §`!H§.getItemByName("MoreGamesButton");
         }
         if(this.§6"C§ == null)
         {
            this.§6"C§ = §`!H§.getItemByName("Button_SpinningWheel");
         }
         this.§6"r§ = 0;
         this.§+$#§(false);
         this.§8#5§.addEventListener(§9$6§.§#!0§,this.§,"8§);
         this.§8#5§.addEventListener(§9$6§.§>-§,this.§0"t§);
         if(this.§8#5§.§##M§())
         {
            this.§6"C§.setEnabled(false);
            this.§6"C§.mClip.alpha = 0.5;
         }
         else if(this.§8#5§.§0"J§())
         {
            this.§]!o§ = true;
            this.§+$#§(true);
         }
      }
      
      private function §,"8§(param1:§9$6§) : void
      {
         this.§+$#§(false);
      }
      
      private function §0"t§(param1:§9$6§) : void
      {
         this.§6"C§.setEnabled(true);
         this.§6"C§.mClip.alpha = 1;
         var _loc2_:Boolean = this.§8#5§.§0"J§();
         this.§]!o§ = _loc2_;
         this.§+$#§(_loc2_);
      }
      
      private function §`#=§() : void
      {
         var _loc1_:MovieClip = MovieClip(this.§6"C§.mClip.getChildByName("notifier"));
         _loc1_.gotoAndPlay(1);
      }
      
      private function §+$#§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = MovieClip(this.§6"C§.mClip.getChildByName("notifier"));
         _loc2_.visible = param1;
         _loc2_.gotoAndStop(1);
         this.§=J§ = param1;
      }
      
      private function §?$1§(param1:§7#U§) : void
      {
         if(this.§'#H§)
         {
            this.§'#H§[§,#a§] = true;
         }
         §2#s§.§6!§.removeEventListener(§7#U§.§`$4§,this.§?$1§);
         if(§2#s§.§6!§.§6m§)
         {
            StateTournamentResults.§,!%§ = StateTournamentResults.§ "-§;
            if(§3#U§.§9#^§.§ Y§() == §=!L§.STATE_NAME || §3#U§.§9#^§.§ Y§() == §>"c§.STATE_NAME)
            {
               §1"h§(StateTournamentResults.STATE_NAME);
            }
         }
      }
      
      private function §+$,§(param1:Boolean) : void
      {
         §`!H§.getItemByName("loadingTournament").setVisibility(param1);
         this.§8!3§(this.§&"K§);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §;m§.§!$5§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§=!%§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Tournament level selection error: " + param1.toString()));
         }
      }
      
      private function §2"a§() : String
      {
         return this.§,k§(this.§8O§);
      }
      
      private function §,k§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §?!j§() : void
      {
         var _loc1_:§@"!§ = null;
         var _loc2_:Class = null;
         var _loc3_:String = null;
         if(this.§^!T§.§2`§(§,A§.§[!j§))
         {
            this.§'"F§(§,A§.§[!j§);
            §,A§.§[!j§ = null;
            return;
         }
         if(!§`!H§)
         {
            return;
         }
         this.§%!Q§();
         this.§,$"§();
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§6"'§);
         this.§8$A§();
         this.§+$,§(false);
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§'#z§)
         {
            this.§'#z§.text = this.§^!T§.§5#-§;
            if(!§>#o§)
            {
               §>#o§ = this.§'#z§.y;
            }
            this.§'#z§.y = §>#o§ + Math.round((this.§'#z§.height - this.§'#z§.textHeight) / 2);
         }
         if(this.§^!T§)
         {
            this.§]"1§ = this.§^!T§.§+$1§(this.§^!T§.brandedTournamentAssetId);
         }
         else
         {
            this.§]"1§ = null;
         }
         this.§2_§ = true;
         if(this.§]"1§)
         {
            this.§[_§ = this.getCampaignButtonFromBG();
            if(this.§[_§)
            {
               this.§[_§.addEventListener(MouseEvent.CLICK,this.§'t§);
               this.§2_§ = false;
            }
            else
            {
               _loc1_ = §`!H§.getItemByName(§,$2§);
               if(_loc1_)
               {
                  _loc2_ = §!"f§.§##?§(this.§]"1§.§]""§,false);
                  if(_loc2_)
                  {
                     _loc1_.mClip.removeChildren();
                     _loc1_.mClip.addChild(new _loc2_());
                     _loc1_.setVisibility(true);
                     this.§2_§ = false;
                  }
               }
            }
         }
         this.§4"K§ = §`!H§.getItemByName("share_button_holder");
         if(this.§4"K§ && this.§^!T§.§1$2§)
         {
            _loc3_ = "SHARE_BUTTON_" + this.§^!T§.tournamentRules.§7"4§;
            _loc2_ = §!"f§.§##?§(_loc3_,false);
            if(_loc2_)
            {
               this.§4"K§.mClip.removeChildren();
               this.§4"K§.mClip.addChild(new _loc2_());
               this.§4"K§.mClip.addEventListener(MouseEvent.CLICK,this.§>"l§,false,0,true);
            }
         }
         if(this.§2_§)
         {
            this.§[?§(new Wallet(this,true,true,false,true));
         }
         this.§;!c§();
         if(§%"u§ && §>!g§)
         {
            §>!g§.§4b§();
            §%"u§ = false;
         }
         this.§%"Z§ = 0;
         this.§-"P§ = 0;
         (§3#U§.§9#^§ as §,A§).§9"x§.addEventListener(§=Z§.§;$"§,this.§ $%§);
      }
      
      private function §;!c§() : void
      {
         if(!§>!g§)
         {
            return;
         }
         if(§#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§<#x§(§>!g§.ID))
         {
            return;
         }
         var _loc1_:Boolean = §>!g§.§%O§();
         if(_loc1_)
         {
            §!"p§.playSound("league_promotion_diamond",§!"p§.§^#@§);
            §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§&"E§(§4#G§.§<"9§,[§>!g§.ID]);
         }
      }
      
      private function §'t§(param1:MouseEvent) : void
      {
         this.§^!T§.§^$+§();
      }
      
      protected function getCampaignButtonFromBG() : SimpleButton
      {
         return null;
      }
      
      private function §=#l§() : void
      {
         var _loc1_:§@"!§ = §`!H§.container.getItemByName("TextContainer");
         var _loc2_:MovieClip = MovieClip(_loc1_.mClip.getChildByName(§4!g§));
         this.§;v§ = TextField((_loc2_.getChildByName("DaysLeftTextfield") as DisplayObjectContainer).getChildByName("text"));
         this.§'#z§ = TextField(_loc2_.getChildByName("Textfield_TournamentName"));
      }
      
      private function §%"9§() : void
      {
         var _loc1_:§2#s§ = §2#s§.§6!§;
         var _loc2_:Object = _loc1_.§[#V§;
         var _loc3_:Boolean = _loc1_.§6m§ || _loc2_ && _loc2_.t && _loc2_.t.players.length > 0;
         if(_loc3_)
         {
            if(_loc2_ && _loc2_.t && _loc2_.t.qualifier && _loc2_.l && _loc2_.l.pli.tn == "QUALIFIER")
            {
               _loc3_ = false;
            }
         }
         if(this.§,"h§)
         {
            if(_loc3_)
            {
               this.§,"h§.setEnabled(true);
               this.§,"h§.mClip.alpha = 1;
               this.§&!i§ = true;
            }
            else
            {
               this.§,"h§.setEnabled(false);
               this.§,"h§.mClip.alpha = 0.5;
            }
         }
      }
      
      private function § #2§() : void
      {
         if(this.§^!T§.tournamentRules.§!5§)
         {
            this.§ #^§();
         }
         else
         {
            this.§ #^§();
         }
         var _loc1_:String = §##>§.§1!8§ + "_" + this.§^!T§.tournamentRules.§8s§;
         if(this.§^!T§.tournamentRules.§8s§ == §5`§.§5"4§)
         {
            _loc1_ = §##>§.§]#S§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§1$$§ = null;
         super.deActivate();
         this.§^!T§.removeEventListener(§1#e§.§7+§,this.§5$#§);
         this.§^!T§.removeEventListener(§1#e§.§<"Y§,this.§"!g§);
         this.§^!T§.removeEventListener(§1#e§.§>"d§,this.§3!D§);
         this.§8#5§.removeEventListener(§9$6§.§#!0§,this.§,"8§);
         this.§8#5§.removeEventListener(§9$6§.§>-§,this.§0"t§);
         this.§&!i§ = false;
         this.§^!T§.removeEventListener(§1#e§.§&"[§,this.§^"d§);
         (§3#U§.§9#^§ as §,A§).§9"x§.removeEventListener(§=Z§.§;$"§,this.§ $%§);
         this.§1?§ = this.§^!T§.levelIDs;
         mLevelManager.resetPreviousLevel();
         if(this.§]"1§)
         {
            §`!H§.getItemByName(§,$2§).setVisibility(false);
            if(this.§[_§)
            {
               this.§[_§.removeEventListener(MouseEvent.CLICK,this.§'t§);
            }
         }
         §>!g§ = null;
         this.§8!3§(this.§&"K§);
         for each(_loc1_ in this.§1!U§)
         {
            _loc1_.deactivate();
         }
      }
      
      private function §,$"§() : void
      {
         var _loc1_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§,^§ = null;
         var _loc7_:§5$4§ = null;
         var _loc8_:String = null;
         var _loc9_:§,^§ = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc2_:Array = [];
         this.§,!S§ = [];
         var _loc3_:Array = this.§^!T§.§1"q§();
         §+"0§.§]#6§ = new Vector.<§5$4§>();
         var _loc4_:int = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc6_ = §4"I§.§2!K§(_loc5_.uid))
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
            if(_loc5_.uid == (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID)
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
            if((_loc7_ = §5$4§.§+!@§(_loc5_)).§'#%§)
            {
               if(§+"0§.§@#`§.indexOf(_loc7_.userId) == -1)
               {
                  §+"0§.§]#6§.push(_loc7_);
               }
            }
            else
            {
               _loc2_.push(_loc7_);
            }
            this.§,!S§.push(_loc7_);
         }
         if(_loc1_ == null)
         {
            _loc8_ = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID;
            _loc10_ = !!(_loc9_ = §4"I§.§2!K§(_loc8_)) ? _loc9_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "uid":_loc8_,
               "n":_loc10_
            };
            _loc11_ = 0;
            _loc12_ = 0;
            while(_loc12_ < this.§1?§.length)
            {
               _loc11_ += §##>§(AngryBirdsBase.singleton.dataModel.userProgress).§?"B§(this.§1?§[_loc12_]);
               _loc12_++;
            }
            _loc1_.p = _loc11_;
            this.§,!S§.push(§5$4§.§+!@§(_loc1_));
            _loc2_.push(§5$4§.§+!@§(_loc1_));
         }
         if(§9=§.§2#p§(§9=§.§1H§))
         {
            _loc12_ = 0;
            while(_loc12_ < _loc2_.length)
            {
               _loc2_[_loc12_].rank = _loc12_ + 1;
               _loc12_++;
            }
         }
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§0!c§,_loc2_);
         QualifierInterruptedPopUp.§9#x§(_loc2_);
         this.§8$A§();
      }
      
      private function §1#A§(param1:Array) : void
      {
         var _loc3_:§,^§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§5$4§ = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Vector.<§,^§> = §4"I§.§8"T§();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = false;
            for each(_loc5_ in this.§,!S§)
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
               param1.push(new §""F§(_loc6_,_loc7_,"",!§&"+§.§6!§.§'$@§(_loc6_)));
            }
         }
      }
      
      protected function §%!Q§() : void
      {
         var _loc2_:§>"0§ = null;
         this.§1!U§ = new Vector.<§1$$§>();
         this.§1?§ = this.§^!T§.levelIDs;
         var _loc1_:int = 0;
         while(_loc1_ < §;!e§)
         {
            _loc2_ = §>"0§(§`!H§.getItemByName("LevelButton" + (_loc1_ + 1)));
            if(!_loc2_)
            {
               break;
            }
            if(_loc1_ < this.§1?§.length)
            {
               _loc2_.visible = true;
               this.§1!U§.push(this.makeLevelButton(_loc1_ + 1,this.§^!T§.levelObjects[_loc1_],_loc2_));
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
         if(this.§1?§.length > § !s§)
         {
            §8"6§ = §#"k§;
         }
         else
         {
            §8"6§ = § !s§;
         }
         this.§`#?§();
      }
      
      private function §,"#§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.buttonGap = §3#U§.§5j§() / (§8"6§ + 1);
         _loc1_.buttonY = §3#U§.§,$>§() * 0.5;
         _loc1_.centerX = §3#U§.§5j§() >> 1;
         if(this.§1?§.length > §8"6§)
         {
            _loc1_.buttonY = §3#U§.§,$>§() * 0.41;
            _loc1_.buttonSecondRowY = _loc1_.buttonY + §3#U§.§,$>§() / 4.5;
         }
         return _loc1_;
      }
      
      private function §`#?§() : void
      {
         var _loc5_:§1$$§ = null;
         var _loc1_:Object = this.§,"#§();
         var _loc2_:Number = 0;
         var _loc3_:Number = 1;
         if((§3#U§.§9#^§ as §,A§).§`$<§())
         {
            _loc2_ = §3#U§.§,$>§() >> 5;
            _loc3_ = §>"c§.§ "'§;
         }
         var _loc4_:int = 1;
         for each(_loc5_ in this.§1!U§)
         {
            _loc5_.setScale(_loc3_);
            if(_loc4_ <= §8"6§)
            {
               _loc5_.setPosition(_loc1_.buttonGap * _loc4_,_loc1_.buttonY + _loc2_);
            }
            else
            {
               _loc5_.setPosition(_loc1_.buttonGap * (_loc4_ - §8"6§),_loc1_.buttonSecondRowY + (§3#U§.§,$>§() >> 5));
            }
            _loc4_++;
         }
      }
      
      protected function makeLevelButton(param1:int, param2:Object, param3:§>"0§) : §1$$§
      {
         return new §1$$§(param1,param2,this,param3,this.§^!T§,dataModel.§-!h§,dataModel.§""[§,§##>§(dataModel.userProgress));
      }
      
      private function §0#r§(param1:int) : §5$4§
      {
         var _loc2_:§4O§ = null;
         if(param1 <= this.§,!S§.length)
         {
            _loc2_ = this.§,!S§[param1 - 1];
            if(_loc2_ is §5$4§)
            {
               (_loc2_ as §5$4§).rank = param1;
               return _loc2_ as §5$4§;
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'#0§ = param3;
         switch(eventName)
         {
            case "BACK":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               if(§5`§.§6!§.§3#u§())
               {
                  §1"h§(§"#&§.STATE_NAME);
               }
               else
               {
                  §1"h§(§>"c§.STATE_NAME);
               }
               break;
            case "SPINNING_WHEEL":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§8#5§.§8#-§();
               § try§.§!!t§().§7!y§(§ try§.§-V§);
               break;
            case "PREVIOUS_RESULTS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               if(!§2#s§.§6!§.active)
               {
                  §1"h§(StateLastWeeksTournamentResults.STATE_NAME);
               }
               else
               {
                  StateTournamentResults.§,!%§ = StateTournamentResults.§<"H§;
                  §1"h§(StateTournamentResults.STATE_NAME);
               }
               break;
            case "LEVEL_1":
               this.§0#P§(0);
               break;
            case "LEVEL_2":
               this.§0#P§(1);
               break;
            case "LEVEL_3":
               this.§0#P§(2);
               break;
            case "LEVEL_4":
               this.§0#P§(3);
               break;
            case "LEVEL_5":
               this.§0#P§(4);
               break;
            case "LEVEL_6":
               this.§0#P§(5);
               break;
            case "LEVEL_7":
               this.§0#P§(6);
               break;
            case "LEVEL_8":
               this.§0#P§(7);
               break;
            case "showCredits":
               §1"h§(§ !K§.STATE_NAME);
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               this.§!!6§(int(eventName.charAt(eventName.length - 1)));
               break;
            case "SPECIAL_STORE":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§]"$§.NORMAL,§^"U§.DEFAULT));
               break;
            case "CHALLENGE":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ChallengePopup(§]"$§.NORMAL,§^"U§.DEFAULT));
               break;
            case "MORE_GAMES":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("http://www.rovio.com/games"),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         if(§>!g§)
         {
            §>!g§.onUIInteraction(eventName);
         }
         this.§^!T§.§%!#§(eventName);
      }
      
      protected function §0#P§(param1:int) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         var _loc2_:String = this.§1?§[param1];
         var _loc3_:Object = this.§^!T§.levelObjects[param1];
         var _loc4_:§1$$§ = this.§1!U§[param1];
         if(this.§^!T§.isLevelOpen(_loc2_))
         {
            this.§'"F§(_loc2_);
         }
         else if(_loc4_.§9!Z§ && !this.§^!T§.§'!d§)
         {
            _loc4_.§%[§();
         }
      }
      
      private function §!!6§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§^!T§.tournamentRules.§8s§.indexOf("HALLOWEEN") != -1)
         {
            _loc2_ = this.§"#G§[param1 - 1];
         }
         if(this.§^!T§.tournamentRules.§8s§.indexOf("XMAS") != -1)
         {
            _loc2_ = this.§[!'§[param1 - 1];
         }
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc2_.toLowerCase()));
         §1"h§(§0#I§.STATE_NAME);
      }
      
      protected function §'"F§(param1:String) : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(param1.toLowerCase()));
         §1"h§(§3#t§.STATE_NAME);
      }
      
      protected function §8$A§() : void
      {
         var _loc1_:Array = this.§^!T§.§?#U§();
         this.§;v§.text = _loc1_[0] + " left!";
         this.§;v§.textColor = _loc1_[1];
         _loc1_ = null;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§1$$§ = null;
         var _loc3_:Boolean = false;
         super.update(param1);
         if(this.§]!o§)
         {
            this.§6"r§ += param1;
            if(this.§6"r§ >= this.§'#>§)
            {
               this.§]!o§ = false;
               this.§`#=§();
            }
         }
         if(§]#5§)
         {
            if(§>!g§)
            {
               §>!g§.§]"A§();
               §]#5§ = false;
               this.§%"Z§ = 0;
               this.§-"P§ = 0;
            }
            else if(§`"O§.§6!§.§8!>§())
            {
               §>!g§ = §`"O§.§6!§.§!!I§();
               §>!g§.§7$+§(§`!H§);
            }
         }
         if(!this.§&!i§)
         {
            this.§%"9§();
         }
         if(this.§'#H§)
         {
            for each(_loc3_ in this.§'#H§)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            if(_loc3_)
            {
               this.§'#H§ = null;
               this.§?!j§();
            }
         }
         this.§8$A§();
         for each(_loc2_ in this.§1!U§)
         {
            _loc2_.update();
         }
         if(this.§6O§)
         {
            this.§+$,§(false);
            (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§6"'§);
            this.§6O§ = false;
         }
         if(this.§>"V§ != §3#U§.§5j§())
         {
            this.§%"Z§ = 0;
            this.§-"P§ = 0;
            this.§>"V§ = §3#U§.§5j§();
         }
         if(this.§&u§ > 0)
         {
            this.§&u§ -= param1;
            if(this.§&u§ <= 0)
            {
               this.§&u§ = §@y§;
               §5`§.§6!§.§+"G§();
            }
         }
      }
      
      private function §[!W§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:String = null;
         var _loc5_:§>"0§ = null;
         var _loc6_:Boolean = false;
         if(this.§^!T§.levelIDs.length > 0)
         {
            _loc2_ = this.§,$8§();
            if(§`!H§.getItemByName("TournamentCutsceneSelection"))
            {
               §`!H§.getItemByName("TournamentCutsceneSelection").setVisibility(_loc2_ > 1 && _loc2_ <= 4);
            }
            _loc3_ = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§?"B§(this.§[!'§[3]) > 0;
            §1y§[1] = _loc2_ >= 3;
            §1y§[2] = _loc2_ >= 4;
            §1y§[3] = _loc2_ >= 4 && _loc3_;
         }
         if(!this.§^!T§.tournamentRules)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!'§.length)
         {
            _loc4_ = "";
            if(this.§^!T§.tournamentRules.§8s§.indexOf("XMAS") != -1)
            {
               _loc4_ = this.§[!'§[_loc1_];
            }
            if(_loc5_ = §`!H§.getItemByName("CutsceneButton" + int(_loc1_ + 1)) as §>"0§)
            {
               if(_loc6_ = §^"m§(_loc1_ + 1))
               {
                  _loc5_.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
                  _loc5_.setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
            _loc1_++;
         }
      }
      
      private function §,$8§() : int
      {
         var _loc1_:int = 1;
         switch(this.§^!T§.levelIDs[0])
         {
            case this.§[!'§[0]:
               _loc1_ = 2;
               break;
            case this.§[!'§[1]:
               _loc1_ = 3;
               break;
            case this.§[!'§[2]:
            case this.§[!'§[3]:
               _loc1_ = 4;
         }
         return _loc1_;
      }
      
      protected function § #^§(param1:String = null) : void
      {
         var _loc2_:TournamentResultsPopup = new TournamentResultsPopup(§]"$§.NORMAL,§^"U§.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(!this.§1?§ || this.§1?§.length == 0 || this.§2_§ && !this.§&"K§)
         {
            return;
         }
         if((§3#U§.§9#^§ as §,A§).§`$<§())
         {
            if(this.§%"Z§ < §5p§)
            {
               this.§-"P§ = 0;
               if(this.§&"K§)
               {
                  this.§&"K§.§=#-§.scaleX = §>"c§.§ "'§;
                  this.§&"K§.§=#-§.scaleY = §>"c§.§ "'§;
               }
               this.§`#?§();
               _loc1_ = this.§,"#§();
               _loc2_ = _loc1_.centerX;
               if(§>!g§)
               {
                  §>!g§.§3#E§(_loc2_,_loc1_.buttonY + (this.§6"C§.y - _loc1_.buttonY) / 2);
               }
               if(this.§2!S§)
               {
                  this.§2!S§.x = _loc2_;
               }
               if(this.§4"K§)
               {
                  this.§4"K§.mClip.visible = true;
                  this.§4"K§.x = §3#U§.§5j§() >> 1;
                  this.§4"K§.y = _loc1_.buttonY + (this.§6"C§.y - _loc1_.buttonY) / 2;
               }
               _loc3_ = §`!H§.getItemByName("Button_PreviousResults").x - §`!H§.getItemByName("Button_Back").x;
               this.§6"C§.x = §`!H§.getItemByName("Button_Back").x + _loc3_ / 4;
               this.§<"7§.x = §`!H§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
               ++this.§%"Z§;
            }
         }
         else if(this.§-"P§ < §5p§)
         {
            this.§%"Z§ = 0;
            if(this.§&"K§)
            {
               this.§&"K§.§=#-§.scaleX = 1;
               this.§&"K§.§=#-§.scaleY = 1;
            }
            this.§`#?§();
            _loc1_ = this.§,"#§();
            _loc2_ = _loc1_.centerX;
            if(§>!g§)
            {
               §>!g§.§3#E§(_loc2_,_loc1_.buttonY + (this.§6"C§.y - _loc1_.buttonY) / 2);
            }
            if(this.§2!S§)
            {
               this.§2!S§.x = _loc2_;
            }
            if(this.§4"K§)
            {
               this.§4"K§.mClip.visible = true;
               this.§4"K§.x = §3#U§.§5j§() >> 1;
               this.§4"K§.y = _loc1_.buttonY + (this.§6"C§.y - _loc1_.buttonY) / 2;
            }
            _loc3_ = §`!H§.getItemByName("Button_PreviousResults").x - §`!H§.getItemByName("Button_Back").x;
            this.§6"C§.x = §`!H§.getItemByName("Button_Back").x + _loc3_ / 4;
            this.§<"7§.x = §`!H§.getItemByName("Button_Back").x + _loc3_ / 4 * 3;
            ++this.§-"P§;
         }
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         if(this.§&"K§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §`!H§.movieClip;
      }
      
      protected function §>"l§(param1:MouseEvent) : void
      {
         if(this.§^!T§.§1$2§ && this.§^!T§.§1$2§.url)
         {
            §^!K§.§+"D§("shareURL",this.§^!T§.§1$2§.url);
         }
      }
      
      protected function § $%§(param1:§=Z§) : void
      {
         var _loc2_:§1$$§ = null;
         for each(_loc2_ in this.§1!U§)
         {
            _loc2_.§'Q§(true);
         }
      }
   }
}
