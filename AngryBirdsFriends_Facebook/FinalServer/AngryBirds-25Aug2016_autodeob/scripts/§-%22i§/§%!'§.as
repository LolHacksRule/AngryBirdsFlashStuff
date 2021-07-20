package §-"i§
{
   import §!!G§.§0§;
   import §"!U§.TabbedShopPopup;
   import §#v§.§#!?§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §%$!§.§0"F§;
   import §%$!§.§1#`§;
   import §%$!§.§8!t§;
   import §%$!§.§9$6§;
   import §%$!§.§^#l§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'!U§.§>$$§;
   import §'$%§.TournamentResultsPopup;
   import §'U§.§]#[§;
   import §,!=§.§"$6§;
   import §,!=§.§7"S§;
   import §,!=§.§=!-§;
   import §,!=§.§[!'§;
   import §0#d§.§<#u§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §5"$§.§ !>§;
   import §5"$§.§]!m§;
   import §6"r§.§=O§;
   import §7"A§.§3"Z§;
   import §7g§.§4!q§;
   import §7z§.§2"U§;
   import §7z§.§7"m§;
   import §8§.§ ;§;
   import §8§.§#$+§;
   import §8§.§,#`§;
   import §9$8§.QualifierInterruptedPopUp;
   import §;4§.§2!]§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §<!g§.§&$1§;
   import §>!#§.§-#A§;
   import §?"R§.ErrorPopup;
   import §?"R§.§[W§;
   import §?"e§.§,##§;
   import §?§.§>"$§;
   import §@$'§.§&#%§;
   import §]!d§.§@"C§;
   import §]$9§.§5$5§;
   import §]$9§.§>#J§;
   import §^!,§.§<d§;
   import com.rovio.assets.§@`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §%!'§ extends §7"S§ implements §@#@§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      protected static const §4§:String = "TextContainer";
      
      private static const §5$'§:int = -20;
      
      private static const §5!g§:int = 0;
      
      private static const §-+§:int = 0;
      
      private static const §3$0§:int = 1;
      
      private static const §1!#§:int = 2;
      
      private static const §2!I§:int = 3;
      
      private static var §#"§:Number = 0;
      
      private static const §%!]§:Number = 1.8;
      
      private static const §3#§:Number = 1.6;
      
      private static var §`"U§:Array = [true,false,false,false];
       
      
      private var §'!a§:Array;
      
      private var §7!§:Array;
      
      private var §"l§:§5$5§;
      
      protected var §!#K§:Array;
      
      protected var §@"2§:int = 0;
      
      protected var §7!w§:Vector.<§ !>§>;
      
      protected var §3"g§:§]!m§;
      
      private var §!G§:Boolean;
      
      private var §7#I§:Boolean;
      
      private var §]!O§:Vector.<Boolean>;
      
      private var §`#%§:§3"Z§;
      
      private var §]#U§:Boolean = false;
      
      private var §1!8§:§>$$§;
      
      private var § j§:§&#%§;
      
      private var §+"u§:TextField;
      
      private var §;!n§:TextField;
      
      private var §>!S§:TextField;
      
      private var §+F§:Boolean;
      
      private var §9!?§:uint;
      
      private const §0"D§:uint = 2000;
      
      private var § "?§:Boolean;
      
      private var §6§:§>$$§;
      
      private var §"K§:§>$$§;
      
      private var § case§:§@"C§;
      
      private var §!j§:SimpleButton;
      
      private var §@#t§:QualifierInterruptedPopUp;
      
      private var §,!N§:Array;
      
      private var §'m§:Array;
      
      public function §%!'§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§7!§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§,!N§ = ["2000-279","2000-271","2000-267","2000-269"];
         this.§'m§ = ["2000-303","2000-307","2000-313","2000-315"];
         this.§3"g§ = §]!m§.§3!]§;
         this.§ j§ = §&#%§.§3!]§;
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §+3§
      {
         return §+3§(AngryBirdsBase.singleton.dataModel);
      }
      
      public static function §<"h§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §`"U§[param1 - 1];
      }
      
      protected function §2"Q§(param1:§0#3§) : void
      {
         if(this.§]!O§)
         {
            this.§]!O§[§-+§] = true;
         }
      }
      
      protected function §1"b§(param1:§0#3§) : void
      {
         if(this.§]!O§)
         {
            this.§]!O§[§3$0§] = true;
         }
      }
      
      protected function §4"R§(param1:§0#3§) : void
      {
         if(this.§]!O§)
         {
            this.§]!O§[§1!#§] = true;
         }
         else
         {
            this.§5#9§();
         }
      }
      
      protected function §<$+§(param1:§0#3§) : void
      {
         this.§5#9§();
      }
      
      override protected function init() : void
      {
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_Tournament[0]);
         this.§]!O§ = new Vector.<Boolean>();
         this.§7#I§ = false;
         §#$+§.§9"]§(§=!-§.§%d§,§=!-§.§?"v§,§=!-§.§-!w§);
         this.§`"X§();
      }
      
      protected function §`"X§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         var _loc1_:§>$$§ = §!$§.getItemByName("BirdAnimations");
         var _loc2_:Array = [];
         if(_loc1_ != null)
         {
            _loc3_ = _loc1_.mClip;
            if(§]!m§.§3!]§.flockAnimation)
            {
               _loc3_.visible = true;
               _loc4_ = 0;
               while(_loc4_ < _loc3_.numChildren)
               {
                  if(_loc3_.getChildAt(_loc4_) is MovieClip)
                  {
                     _loc2_.push(_loc3_.getChildAt(_loc4_));
                  }
                  _loc4_++;
               }
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         this.§ case§ = new §@"C§(_loc2_,2,0);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-#A§.§6$2§().§,!V§(§-#A§.§#!3§);
         this.§+#b§();
         this.§3v§(true);
         this.§6"8§(false);
         this.§&"o§();
         (§>"$§.§<_§ as §8G§).§&#§.§`"n§(!§4!q§.§3!]§.active);
         this.§6§ = §!$§.getItemByName("LevelButtonsContainer");
         this.§"K§ = §!$§.getItemByName("Button_PreviousResults");
         if(this.§3"g§.flockAnimation)
         {
            §!$§.getItemByName("BirdAnimations").mClip.visible = true;
            this.§ case§.start();
         }
         else
         {
            §!$§.getItemByName("BirdAnimations").mClip.visible = false;
         }
         this.§]!O§ = new Vector.<Boolean>();
         this.§]!O§[§-+§] = false;
         this.§]!O§[§3$0§] = false;
         this.§]!O§[§1!#§] = false;
         this.§3"g§.addEventListener(§0#3§.§!#R§,this.§2"Q§);
         this.§3"g§.addEventListener(§0#3§.§^"B§,this.§1"b§);
         this.§3"g§.addEventListener(§0#3§.§]!I§,this.§4"R§);
         this.§3"g§.addEventListener(§0#3§.§#"G§,this.§<$+§);
         §>"$§.§3#'§.clearLevel();
         §>"$§.§3#'§.§5'§(false);
         (§>"$§.§<_§ as §8G§).§4#'§(§<#u§.§#!k§);
         if(§!$§.getItemByName("TournamentCutsceneSelection"))
         {
            §!$§.getItemByName("TournamentCutsceneSelection").setVisibility(false);
         }
         this.§+x§(1,1);
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§,#I§);
         this.§3"g§.§8#d§();
         if(§4!q§.§3!]§.active)
         {
            this.§]!O§[§2!I§] = false;
            §4!q§.§3!]§.addEventListener(§&$1§.§=e§,this.§^6§);
            §4!q§.§3!]§.§8#d§();
         }
         this.§8"z§();
      }
      
      private function §8"z§() : void
      {
         if(!this.§3"g§.§;#J§() && this.§3"g§.§>@§ && §%h§.§3!]§.§@!3§.§ "U§(§]!m§.§3"[§))
         {
            if(this.§@#t§ == null)
            {
               this.§@#t§ = new QualifierInterruptedPopUp(§[W§.NORMAL,§<d§.DEFAULT);
            }
            this.§3"g§.§2#k§(true);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§@#t§);
         }
      }
      
      private function §&"o§() : void
      {
         if(this.§1!8§ == null)
         {
            this.§1!8§ = §!$§.getItemByName("Button_SpinningWheel");
         }
         this.§9!?§ = 0;
         this.§=p§(false);
         this.§ j§.addEventListener(§,##§.§>#v§,this.§4Y§);
         this.§ j§.addEventListener(§,##§.§0#s§,this.§6d§);
         if(this.§ j§.§>#"§())
         {
            this.§1!8§.setEnabled(false);
            this.§1!8§.mClip.alpha = 0.5;
         }
         else if(this.§ j§.§>#A§())
         {
            this.§+F§ = true;
            this.§=p§(true);
         }
      }
      
      private function §4Y§(param1:§,##§) : void
      {
         this.§=p§(false);
      }
      
      private function §6d§(param1:§,##§) : void
      {
         this.§1!8§.setEnabled(true);
         this.§1!8§.mClip.alpha = 1;
         var _loc2_:Boolean = this.§ j§.§>#A§();
         this.§+F§ = _loc2_;
         this.§=p§(_loc2_);
      }
      
      private function §4!g§() : void
      {
         var _loc1_:MovieClip = MovieClip(this.§1!8§.mClip.getChildByName("notifier"));
         _loc1_.gotoAndPlay(1);
      }
      
      private function §=p§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = MovieClip(this.§1!8§.mClip.getChildByName("notifier"));
         _loc2_.visible = param1;
         _loc2_.gotoAndStop(1);
         this.§ "?§ = param1;
      }
      
      private function §^6§(param1:§&$1§) : void
      {
         if(this.§]!O§)
         {
            this.§]!O§[§2!I§] = true;
         }
         §4!q§.§3!]§.removeEventListener(§&$1§.§=e§,this.§^6§);
         if(§4!q§.§3!]§.§=$#§)
         {
            StateTournamentResults.§0$$§ = StateTournamentResults.§#"8§;
            if(§>"$§.§<_§.§^!X§() == §%!'§.STATE_NAME || §>"$§.§<_§.§^!X§() == §[!'§.STATE_NAME)
            {
               §7P§(StateTournamentResults.STATE_NAME);
            }
         }
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§,#`§ = §8G§.§%#S§.§[A§();
         _loc1_.§6x§(§ ;§.§0e§);
      }
      
      private function §6"8§(param1:Boolean) : void
      {
         var _loc2_:§=O§ = §!$§.getItemByName("LevelButton1") as §=O§;
         _loc2_.setVisibility(param1);
         var _loc3_:§=O§ = §!$§.getItemByName("LevelButton2") as §=O§;
         _loc3_.setVisibility(param1);
         (§!$§.getItemByName("LevelButton3") as §=O§).setVisibility(param1);
         (§!$§.getItemByName("LevelButton4") as §=O§).setVisibility(param1);
         (§!$§.getItemByName("LevelButton5") as §=O§).setVisibility(param1);
         (§!$§.getItemByName("LevelButton6") as §=O§).setVisibility(param1);
      }
      
      private function §3v§(param1:Boolean) : void
      {
         §!$§.getItemByName("loadingTournament").setVisibility(param1);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §>#J§.§-$%§)
         {
            this.§@!w§(ErrorPopup.§`"4§);
         }
         else
         {
            this.§@!w§(ErrorPopup.§^#x§);
         }
      }
      
      private function §;#;§() : String
      {
         return this.§7$!§(this.§7!§);
      }
      
      private function §7$!§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §5#9§() : void
      {
         var _loc1_:§>$$§ = null;
         var _loc2_:String = null;
         var _loc3_:Class = null;
         if(this.§3"g§.§%L§(§8G§.§,!H§))
         {
            this.§4#e§(§8G§.§,!H§);
            §8G§.§,!H§ = null;
            return;
         }
         if(!§!$§)
         {
            return;
         }
         this.§;$+§();
         this.§#,§();
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§4$&§);
         this.§^"G§();
         this.§"9§();
         this.§3v§(false);
         this.playThemeMusic();
         if(this.§>!S§)
         {
            this.§>!S§.text = !!this.§3"g§.§,"K§.§%#R§ ? this.§3"g§.§,"K§.§%#R§ : §]!m§.§0f§;
         }
         if(this.§3"g§)
         {
            this.§`#%§ = this.§3"g§.§^#U§(this.§3"g§.brandedTournamentAssetId);
         }
         else
         {
            this.§`#%§ = null;
         }
         if(this.§`#%§)
         {
            this.§!j§ = this.getCampaignButtonFromBG();
            if(this.§!j§)
            {
               this.§!j§.addEventListener(MouseEvent.CLICK,this.§%$3§);
            }
            else
            {
               _loc1_ = §!$§.getItemByName(this.§`#%§.§5#0§);
               if(_loc1_)
               {
                  _loc2_ = "CAMPAIGN_BUTTON_" + this.§3"g§.§,"K§.§+G§;
                  _loc3_ = §@`§.§4!i§(_loc2_,false);
                  if(_loc3_)
                  {
                     _loc1_.mClip.removeChildren();
                     _loc1_.mClip.addChild(new _loc3_());
                     _loc1_.setVisibility(true);
                  }
               }
            }
         }
      }
      
      private function §%$3§(param1:MouseEvent) : void
      {
         this.§3"g§.§!#_§();
      }
      
      protected function getCampaignButtonFromBG() : SimpleButton
      {
         return null;
      }
      
      private function §+#b§() : void
      {
         var _loc1_:§>$$§ = §!$§.container.getItemByName("TextContainer");
         var _loc2_:MovieClip = MovieClip(_loc1_.mClip.getChildByName(§4§));
         this.§+"u§ = TextField((_loc2_.getChildByName("DaysLeftTextfield") as DisplayObjectContainer).getChildByName("text"));
         this.§;!n§ = TextField((_loc2_.getChildByName("Textfield_Banner_Info") as DisplayObjectContainer).getChildByName("text"));
         this.§>!S§ = TextField(_loc2_.getChildByName("Textfield_TournamentName"));
      }
      
      private function §2"d§() : void
      {
         var _loc1_:§4!q§ = §4!q§.§3!]§;
         var _loc2_:Object = _loc1_.§;"c§;
         var _loc3_:Boolean = _loc1_.§=$#§ || _loc2_ && _loc2_.t && _loc2_.t.players.length > 0;
         if(_loc3_)
         {
            if(_loc2_.t.qualifier && _loc2_.l && _loc2_.l.pli.tn == "QUALIFIER")
            {
               _loc3_ = false;
            }
         }
         if(this.§"K§)
         {
            if(_loc3_)
            {
               this.§"K§.setEnabled(true);
               this.§"K§.mClip.alpha = 1;
               this.§]#U§ = true;
            }
            else
            {
               this.§"K§.setEnabled(false);
               this.§"K§.mClip.alpha = 0.5;
            }
         }
      }
      
      private function §+$;§() : void
      {
         if(this.§3"g§.§,"K§.§+9§)
         {
            this.§-!x§();
         }
         else
         {
            this.§-!x§();
         }
         §!#Q§.§3W§ + "_" + this.§3"g§.§,"K§.§8!g§;
         if(this.§3"g§.§,"K§.§8!g§ == §]!m§.§,!q§)
         {
            §!#Q§.§8$3§;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ case§.stop();
         this.§3"g§.removeEventListener(§0#3§.§!#R§,this.§2"Q§);
         this.§3"g§.removeEventListener(§0#3§.§^"B§,this.§1"b§);
         this.§3"g§.removeEventListener(§0#3§.§]!I§,this.§4"R§);
         this.§ j§.removeEventListener(§,##§.§>#v§,this.§4Y§);
         this.§ j§.removeEventListener(§,##§.§0#s§,this.§6d§);
         this.§]#U§ = false;
         this.§3"g§.removeEventListener(§0#3§.§#"G§,this.§<$+§);
         this.§!#K§ = this.§3"g§.levelIDs;
         mLevelManager.resetPreviousLevel();
         if(this.§`#%§)
         {
            if(§!$§.getItemByName(this.§`#%§.§5#0§))
            {
               §!$§.getItemByName(this.§`#%§.§5#0§).setVisibility(false);
            }
            if(this.§!j§)
            {
               this.§!j§.removeEventListener(MouseEvent.CLICK,this.§%$3§);
            }
         }
      }
      
      private function §#,§() : void
      {
         var _loc1_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§2"U§ = null;
         var _loc7_:§8!t§ = null;
         var _loc8_:String = null;
         var _loc9_:§2"U§ = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         this.§@"2§ = getTimer();
         var _loc2_:Array = [];
         this.§'!a§ = [];
         var _loc3_:Array = this.§3"g§.§#u§();
         §2!]§.§%B§ = new Vector.<§8!t§>();
         var _loc4_:int = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc6_ = §7"m§.§;#F§(_loc5_.uid))
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
            if(_loc5_.uid == (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID)
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
            if((_loc7_ = §8!t§.§>!§(_loc5_)).§[!Y§)
            {
               if(§2!]§.§&F§.indexOf(_loc7_.userId) == -1)
               {
                  §2!]§.§%B§.push(_loc7_);
               }
            }
            else
            {
               _loc2_.push(_loc7_);
            }
            this.§'!a§.push(_loc7_);
         }
         if(_loc1_ == null)
         {
            _loc8_ = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID;
            _loc10_ = !!(_loc9_ = §7"m§.§;#F§(_loc8_)) ? _loc9_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "uid":_loc8_,
               "n":_loc10_
            };
            _loc11_ = 0;
            _loc12_ = 0;
            while(_loc12_ < this.§!#K§.length)
            {
               _loc11_ += §!#Q§(AngryBirdsBase.singleton.dataModel.userProgress).§3!5§(this.§!#K§[_loc12_]);
               _loc12_++;
            }
            _loc1_.p = _loc11_;
            this.§'!a§.push(§8!t§.§>!§(_loc1_));
            _loc2_.push(§8!t§.§>!§(_loc1_));
         }
         if(§0"F§.§7#"§(§0"F§.§0i§))
         {
            _loc12_ = 0;
            while(_loc12_ < _loc2_.length)
            {
               _loc2_[_loc12_].rank = _loc12_ + 1;
               _loc12_++;
            }
         }
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§@$#§,_loc2_);
         QualifierInterruptedPopUp.§=!`§(_loc2_);
         this.§^"G§();
         this.§"9§();
      }
      
      protected function §"9§() : void
      {
         var _loc1_:* = this.§3"g§.info.length > 0;
         §!$§.getItemByName("Banner_Info").setVisibility(_loc1_);
         this.§;!n§.visible = _loc1_;
         this.§;!n§.text = this.§3"g§.info;
      }
      
      private function §2$,§(param1:Array) : void
      {
         var _loc3_:§2"U§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§8!t§ = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Vector.<§2"U§> = §7"m§.§=#p§();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = false;
            for each(_loc5_ in this.§'!a§)
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
               param1.push(new §^#l§(_loc6_,_loc7_,"",!§1#`§.§3!]§.§'!^§(_loc6_)));
            }
         }
      }
      
      protected function §;$+§() : void
      {
         this.§7!w§ = new Vector.<§ !>§>();
         this.§!#K§ = this.§3"g§.levelIDs;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!#K§.length)
         {
            this.§7!w§.push(this.makeLevelButton(_loc1_ + 1,this.§3"g§.levelObjects[_loc1_],§=O§(§!$§.getItemByName("LevelButton" + (_loc1_ + 1)))));
            _loc1_++;
         }
      }
      
      protected function makeLevelButton(param1:int, param2:Object, param3:§=O§) : § !>§
      {
         return new § !>§(param1,param2,this,param3,this.§3"g§,dataModel.§ ,§,dataModel.§<$&§,§!#Q§(dataModel.userProgress));
      }
      
      private function §[P§(param1:int) : §8!t§
      {
         var _loc2_:§9$6§ = null;
         if(param1 <= this.§'!a§.length)
         {
            _loc2_ = this.§'!a§[param1 - 1];
            if(_loc2_ is §8!t§)
            {
               (_loc2_ as §8!t§).rank = param1;
               return _loc2_ as §8!t§;
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "BACK":
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               §7P§(§[!'§.STATE_NAME);
               break;
            case "SPINNING_WHEEL":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§ j§.§?c§();
               §-#A§.§6$2§().§5V§(§-#A§.§03§);
               break;
            case "PREVIOUS_RESULTS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               if(!§4!q§.§3!]§.active)
               {
                  §7P§(StateLastWeeksTournamentResults.STATE_NAME);
               }
               else
               {
                  StateTournamentResults.§0$$§ = StateTournamentResults.§3!i§;
                  §7P§(StateTournamentResults.STATE_NAME);
               }
               break;
            case "LEVEL_1":
               this.§[R§(0);
               break;
            case "LEVEL_2":
               this.§[R§(1);
               break;
            case "LEVEL_3":
               this.§[R§(2);
               break;
            case "LEVEL_4":
               this.§[R§(3);
               break;
            case "LEVEL_5":
               this.§[R§(4);
               break;
            case "LEVEL_6":
               this.§[R§(5);
               break;
            case "showCredits":
               §7P§(§"$6§.STATE_NAME);
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               this.§=#6§(int(param2.charAt(param2.length - 1)));
               break;
            case "SPECIAL_STORE":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§[W§.NORMAL,§<d§.DEFAULT));
         }
         this.§3"g§.§%!y§(param2);
      }
      
      protected function §[R§(param1:int) : void
      {
         §#$+§.playSound("Menu_Confirm",§=!-§.§%d§);
         var _loc2_:String = this.§!#K§[param1];
         this.§3"g§.levelObjects[param1];
         var _loc4_:§ !>§ = this.§7!w§[param1];
         if(this.§3"g§.isLevelOpen(_loc2_))
         {
            this.§4#e§(_loc2_);
         }
         else if(_loc4_.§ p§ && !this.§3"g§.§]s§)
         {
            _loc4_.§2S§();
         }
      }
      
      private function §=#6§(param1:int) : void
      {
         var _loc2_:String = "";
         if(§]!m§.§3!]§.§,"K§.§8!g§.indexOf("HALLOWEEN") != -1)
         {
            _loc2_ = this.§,!N§[param1 - 1];
         }
         if(§]!m§.§3!]§.§,"K§.§8!g§.indexOf("XMAS") != -1)
         {
            _loc2_ = this.§'m§[param1 - 1];
         }
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc2_.toLowerCase()));
         §7P§(§50§.STATE_NAME);
      }
      
      protected function §4#e§(param1:String) : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(param1.toLowerCase()));
         §7P§(§5!o§.STATE_NAME);
      }
      
      protected function §^"G§() : void
      {
         var _loc1_:Array = this.§3"g§.§=>§();
         this.§+"u§.text = _loc1_[0];
         this.§+"u§.textColor = _loc1_[1];
         _loc1_ = null;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§ !>§ = null;
         var _loc3_:Boolean = false;
         super.update(param1);
         this.§ case§.update(param1);
         if(this.§+F§)
         {
            this.§9!?§ += param1;
            if(this.§9!?§ >= this.§0"D§)
            {
               this.§+F§ = false;
               this.§4!g§();
            }
         }
         if(!this.§]#U§)
         {
            this.§2"d§();
         }
         if(this.§]!O§)
         {
            for each(_loc3_ in this.§]!O§)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            if(_loc3_)
            {
               this.§]!O§ = null;
               this.§5#9§();
            }
         }
         this.§^"G§();
         this.§7m§();
         for each(_loc2_ in this.§7!w§)
         {
            _loc2_.update();
         }
         if(this.§7#I§)
         {
            this.§3v§(false);
            (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§4$&§);
            this.§7#I§ = false;
         }
      }
      
      private function §;#+§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc5_:§=O§ = null;
         if(§]!m§.§3!]§.levelIDs.length > 0)
         {
            _loc2_ = this.§8$%§();
            if(§!$§.getItemByName("TournamentCutsceneSelection"))
            {
               §!$§.getItemByName("TournamentCutsceneSelection").setVisibility(_loc2_ > 1 && _loc2_ <= 4);
            }
            _loc3_ = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§3!5§(this.§'m§[3]) > 0;
            §`"U§[1] = _loc2_ >= 3;
            §`"U§[2] = _loc2_ >= 4;
            §`"U§[3] = _loc2_ >= 4 && _loc3_;
         }
         if(!this.§3"g§.§,"K§)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§'m§.length)
         {
            if(§]!m§.§3!]§.§,"K§.§8!g§.indexOf("XMAS") != -1)
            {
               this.§'m§[_loc1_];
            }
            if(_loc5_ = §!$§.getItemByName("CutsceneButton" + int(_loc1_ + 1)) as §=O§)
            {
               if(§<"h§(_loc1_ + 1))
               {
                  _loc5_.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§4P§.COMPONENT_STATE_DISABLED);
                  _loc5_.setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
            _loc1_++;
         }
      }
      
      private function §8$%§() : int
      {
         var _loc1_:int = 1;
         switch(§]!m§.§3!]§.levelIDs[0])
         {
            case this.§'m§[0]:
               _loc1_ = 2;
               break;
            case this.§'m§[1]:
               _loc1_ = 3;
               break;
            case this.§'m§[2]:
            case this.§'m§[3]:
               _loc1_ = 4;
         }
         return _loc1_;
      }
      
      protected function §@!w§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§[W§.§5Z§,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §-!x§(param1:String = null) : void
      {
         var _loc2_:TournamentResultsPopup = new TournamentResultsPopup(§[W§.NORMAL,§<d§.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
      
      private function §7m§() : void
      {
         if((§>"$§.§<_§ as §8G§).§5#N§())
         {
            this.§+x§(§%!]§,§3#§);
         }
         else
         {
            this.§+x§(1,1);
         }
      }
      
      private function §+x§(param1:Number, param2:Number) : void
      {
         var _loc3_:MovieClip = this.§6§.mClip;
         if(_loc3_.scaleX != param1)
         {
            _loc3_.scaleX = param1;
            _loc3_.scaleY = param1;
         }
      }
   }
}
