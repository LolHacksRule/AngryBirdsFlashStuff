package §8"X§
{
   import § "$§.§'"R§;
   import § $%§.§0#`§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ChallengePopup;
   import § o§.ErrorPopup;
   import §!@§.§,!z§;
   import §%#A§.§,#w§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§"!F§;
   import §&"J§.§%"E§;
   import §&"J§.§3!3§;
   import §&"J§.§4"W§;
   import §&"J§.§5#!§;
   import §&"J§.§9N§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §0$;§.TournamentResultsPopup;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §5d§.§<"F§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§?!=§;
   import §7",§.TabbedShopPopup;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §9"1§.§+!x§;
   import §94§.§>!&§;
   import §94§.§@"X§;
   import §94§.§`"z§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §<u§.§2"?§;
   import §>#d§.§ #w§;
   import §?!@§.§%§;
   import §@#§.§^#Q§;
   import §[§.§]"w§;
   import §[0§.§;$-§;
   import §[G§.§4!0§;
   import §]!W§.QualifierInterruptedPopUp;
   import §]#p§.§%!?§;
   import §]#p§.§4!J§;
   import §];§.§&"m§;
   import §];§.§-!t§;
   import §`!R§.§&"8§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §^!E§ extends §`"z§ implements §]"w§, §8[§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      protected static const §<" §:String = "TextContainer";
      
      protected static const §>!A§:String = "campaign_button_holder";
      
      private static const §""U§:int = -20;
      
      private static const §8C§:int = 0;
      
      private static const §'#$§:int = 0;
      
      private static const §=N§:int = 1;
      
      private static const §3R§:int = 2;
      
      private static const §;"T§:int = 3;
      
      private static var §]">§:§2"?§;
      
      private static var §5#E§:Boolean;
      
      private static var §8$+§:Boolean;
      
      private static var §3!m§:Number = 0;
      
      private static const §9#p§:int = 5;
      
      private static var §'"E§:Array = [true,false,false,false];
       
      
      private var §3"m§:Array;
      
      private var §+$9§:Array;
      
      private var § $§:§0#`§;
      
      protected var §8#3§:Array;
      
      protected var §##+§:int = 0;
      
      protected var §^$ §:Vector.<§&"m§>;
      
      protected var §,#[§:§-!t§;
      
      private var §=!z§:Boolean;
      
      private var §!#Q§:Boolean;
      
      private var §+#s§:Vector.<Boolean>;
      
      private var §9!w§:§<"F§;
      
      private var §0!d§:Boolean = false;
      
      private var §%$;§:§[!K§;
      
      private var §-v§:§[!K§;
      
      private var §`# §:§ #w§;
      
      private var §?!h§:TextField;
      
      private var §+!2§:TextField;
      
      private var §,[§:TextField;
      
      private var §5"e§:Boolean;
      
      private var §'#"§:uint;
      
      private const §+"X§:uint = 2000;
      
      private var §,#U§:Boolean;
      
      private var §^"!§:§[!K§;
      
      private var §>s§:SimpleButton;
      
      private var §60§:QualifierInterruptedPopUp;
      
      private var §3!B§:Wallet;
      
      private var §9"y§:Boolean;
      
      private var §5"g§:int;
      
      private var §39§:int;
      
      protected var §?"L§:§[!K§;
      
      private var §1"N§:§[!K§;
      
      private var §'r§:Number;
      
      private var §8#a§:Array;
      
      private var §6#g§:Array;
      
      public function §^!E§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§+$9§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§8#a§ = ["2000-279","2000-271","2000-267","2000-269"];
         this.§6#g§ = ["2000-303","2000-307","2000-313","2000-315"];
         this.§,#[§ = §-!t§.§ "D§;
         this.§`# § = § #w§.§ "D§;
         super(param1,param3,param4,param2);
      }
      
      protected static function get dataModel() : §`]§
      {
         return §`]§(AngryBirdsBase.singleton.dataModel);
      }
      
      public static function §]#_§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §'"E§[param1 - 1];
      }
      
      public static function §@#t§() : void
      {
         §5#E§ = true;
      }
      
      public static function §4!H§() : void
      {
         §5#E§ = true;
         §]">§ = null;
      }
      
      public static function §2z§() : void
      {
         §8$+§ = true;
      }
      
      protected function §@!!§(param1:§'"R§) : void
      {
         if(this.§+#s§)
         {
            this.§+#s§[§'#$§] = true;
         }
      }
      
      protected function §?!Q§(param1:§'"R§) : void
      {
         if(this.§+#s§)
         {
            this.§+#s§[§=N§] = true;
         }
      }
      
      protected function §;O§(param1:§'"R§) : void
      {
         if(this.§+#s§)
         {
            this.§+#s§[§3R§] = true;
         }
         else
         {
            this.§"!T§();
         }
      }
      
      protected function §-#Y§(param1:§'"R§) : void
      {
         this.§"#H§(this.§3!B§);
         this.§"!T§();
      }
      
      override protected function init() : void
      {
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_Tournament[0]);
         this.§+#s§ = new Vector.<Boolean>();
         this.§!#Q§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §?!=§.§3!q§().§'"7§(§?!=§.§+!'§);
         this.§5"g§ = 0;
         this.§39§ = 0;
         this.§[o§();
         this.§#$,§(true);
         this.§;!s§();
         §@#t§();
         this.§^"!§ = §?Q§.getItemByName("Button_PreviousResults");
         this.§?"L§ = §?Q§.getItemByName("Button_Challenge");
         this.§?"L§.visible = true;
         this.§+#s§ = new Vector.<Boolean>();
         this.§+#s§[§'#$§] = false;
         this.§+#s§[§=N§] = false;
         this.§+#s§[§3R§] = false;
         this.§,#[§.addEventListener(§'"R§.§6#+§,this.§@!!§);
         this.§,#[§.addEventListener(§'"R§.§4&§,this.§?!Q§);
         this.§,#[§.addEventListener(§'"R§.§7#O§,this.§;O§);
         this.§,#[§.addEventListener(§'"R§.§>k§,this.§-#Y§);
         §!#A§.§#F§.clearLevel();
         §!#A§.§#F§.§8"d§(false);
         (§!#A§.§>q§ as §-#+§).§2!j§(§&"8§.§4c§);
         if(§?Q§.getItemByName("TournamentCutsceneSelection"))
         {
            §?Q§.getItemByName("TournamentCutsceneSelection").setVisibility(false);
         }
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§+!q§);
         this.§,#[§.§@"C§();
         if(§;$-§.§ "D§.active)
         {
            this.§+#s§[§;"T§] = false;
            §;$-§.§ "D§.addEventListener(§+!x§.§,!Z§,this.§'!0§);
            §;$-§.§ "D§.§@"C§();
         }
         this.§?"7§();
         this.§'r§ = §!#A§.§4#2§();
      }
      
      private function §?"7§() : void
      {
         if(!this.§,#[§.§0H§() && this.§,#[§.§,"4§ && §4"W§.§ "D§.§^$!§.§!o§(§-!t§.§7$#§))
         {
            if(this.§60§ == null)
            {
               this.§60§ = new QualifierInterruptedPopUp(§%"!§.NORMAL,§^#o§.DEFAULT);
            }
            this.§,#[§.§1#6§(true);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§60§);
         }
      }
      
      private function §;!s§() : void
      {
         if(this.§-v§ == null)
         {
            this.§-v§ = §?Q§.getItemByName("MoreGamesButton");
         }
         if(this.§%$;§ == null)
         {
            this.§%$;§ = §?Q§.getItemByName("Button_SpinningWheel");
         }
         this.§'#"§ = 0;
         this.§0$8§(false);
         this.§`# §.addEventListener(§%#2§.§6"?§,this.§+"q§);
         this.§`# §.addEventListener(§%#2§.§'#X§,this.§9#k§);
         if(this.§`# §.§ #<§())
         {
            this.§%$;§.setEnabled(false);
            this.§%$;§.mClip.alpha = 0.5;
         }
         else if(this.§`# §.§'H§())
         {
            this.§5"e§ = true;
            this.§0$8§(true);
         }
      }
      
      private function §+"q§(param1:§%#2§) : void
      {
         this.§0$8§(false);
      }
      
      private function §9#k§(param1:§%#2§) : void
      {
         this.§%$;§.setEnabled(true);
         this.§%$;§.mClip.alpha = 1;
         var _loc2_:Boolean = this.§`# §.§'H§();
         this.§5"e§ = _loc2_;
         this.§0$8§(_loc2_);
      }
      
      private function §>"<§() : void
      {
         var _loc1_:MovieClip = MovieClip(this.§%$;§.mClip.getChildByName("notifier"));
         _loc1_.gotoAndPlay(1);
      }
      
      private function §0$8§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = MovieClip(this.§%$;§.mClip.getChildByName("notifier"));
         _loc2_.visible = param1;
         _loc2_.gotoAndStop(1);
         this.§,#U§ = param1;
      }
      
      private function §'!0§(param1:§+!x§) : void
      {
         if(this.§+#s§)
         {
            this.§+#s§[§;"T§] = true;
         }
         §;$-§.§ "D§.removeEventListener(§+!x§.§,!Z§,this.§'!0§);
         if(§;$-§.§ "D§.§&,§)
         {
            StateTournamentResults.§>#K§ = StateTournamentResults.§2!?§;
            if(§!#A§.§>q§.§="!§() == §^!E§.STATE_NAME || §!#A§.§>q§.§="!§() == §>!&§.STATE_NAME)
            {
               §5"p§(StateTournamentResults.STATE_NAME);
            }
         }
      }
      
      private function §#$,§(param1:Boolean) : void
      {
         §?Q§.getItemByName("loadingTournament").setVisibility(param1);
         this.§"#H§(this.§3!B§);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §]e§.§5!;§)
         {
            this.§[#U§(ErrorPopup.§?"V§);
         }
         else
         {
            this.§[#U§(ErrorPopup.§^#c§);
         }
      }
      
      private function §#!4§() : String
      {
         return this.§9!c§(this.§+$9§);
      }
      
      private function §9!c§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §"!T§() : void
      {
         var _loc1_:§[!K§ = null;
         var _loc2_:Class = null;
         var _loc3_:String = null;
         if(this.§,#[§.§5"I§(§-#+§.§,#3§))
         {
            this.§;C§(§-#+§.§,#3§);
            §-#+§.§,#3§ = null;
            return;
         }
         if(!§?Q§)
         {
            return;
         }
         this.§<"S§();
         this.§4!#§();
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§ #Y§);
         this.§+!a§();
         this.§>8§();
         this.§#$,§(false);
         AngryBirdsBase.singleton.playThemeMusic();
         if(this.§,[§)
         {
            this.§,[§.text = this.§,#[§.§2Y§;
         }
         if(this.§,#[§)
         {
            this.§9!w§ = this.§,#[§.§+!V§(this.§,#[§.brandedTournamentAssetId);
         }
         else
         {
            this.§9!w§ = null;
         }
         this.§9"y§ = true;
         if(this.§9!w§)
         {
            this.§>s§ = this.getCampaignButtonFromBG();
            if(this.§>s§)
            {
               this.§>s§.addEventListener(MouseEvent.CLICK,this.§<5§);
               this.§9"y§ = false;
            }
            else
            {
               _loc1_ = §?Q§.getItemByName(§>!A§);
               if(_loc1_)
               {
                  _loc2_ = §+$#§.§["`§(this.§9!w§.§2#A§,false);
                  if(_loc2_)
                  {
                     _loc1_.mClip.removeChildren();
                     _loc1_.mClip.addChild(new _loc2_());
                     _loc1_.setVisibility(true);
                     this.§9"y§ = false;
                  }
               }
            }
         }
         this.§1"N§ = §?Q§.getItemByName("share_button_holder");
         if(this.§1"N§ && this.§,#[§.§5#n§)
         {
            _loc3_ = "SHARE_BUTTON_" + this.§,#[§.tournamentRules.§@!l§;
            _loc2_ = §+$#§.§["`§(_loc3_,false);
            if(_loc2_)
            {
               this.§1"N§.mClip.removeChildren();
               this.§1"N§.mClip.addChild(new _loc2_());
               this.§1"N§.mClip.addEventListener(MouseEvent.CLICK,this.§1+§,false,0,true);
            }
         }
         if(this.§9"y§)
         {
            this.§##Y§(new Wallet(this,true,true,false,true));
         }
         this.§6!S§();
         if(§8$+§ && §]">§)
         {
            §]">§.§;=§();
            §8$+§ = false;
         }
         this.§5"g§ = 0;
         this.§39§ = 0;
      }
      
      private function §6!S§() : void
      {
         if(!§]">§)
         {
            return;
         }
         if(§`]§(AngryBirdsBase.singleton.dataModel).§ in§.§&!!§(§]">§.ID))
         {
            return;
         }
         var _loc1_:Boolean = §]">§.§4$2§();
         if(_loc1_)
         {
            §!#&§.playSound("league_promotion_diamond",§!#&§.§>#c§);
            §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§?!;§(§,!z§.§^!?§,[§]">§.ID]);
         }
      }
      
      private function §<5§(param1:MouseEvent) : void
      {
         this.§,#[§.§?I§();
      }
      
      protected function getCampaignButtonFromBG() : SimpleButton
      {
         return null;
      }
      
      private function §[o§() : void
      {
         var _loc1_:§[!K§ = §?Q§.container.getItemByName("TextContainer");
         var _loc2_:MovieClip = MovieClip(_loc1_.mClip.getChildByName(§<" §));
         this.§?!h§ = TextField((_loc2_.getChildByName("DaysLeftTextfield") as DisplayObjectContainer).getChildByName("text"));
         this.§+!2§ = TextField((_loc2_.getChildByName("Textfield_Banner_Info") as DisplayObjectContainer).getChildByName("text"));
         this.§,[§ = TextField(_loc2_.getChildByName("Textfield_TournamentName"));
      }
      
      private function §[h§() : void
      {
         var _loc1_:§;$-§ = §;$-§.§ "D§;
         var _loc2_:Object = _loc1_.§=#s§;
         var _loc3_:Boolean = _loc1_.§&,§ || _loc2_ && _loc2_.t && _loc2_.t.players.length > 0;
         if(_loc3_)
         {
            if(_loc2_ && _loc2_.t && _loc2_.t.qualifier && _loc2_.l && _loc2_.l.pli.tn == "QUALIFIER")
            {
               _loc3_ = false;
            }
         }
         if(this.§^"!§)
         {
            if(_loc3_)
            {
               this.§^"!§.setEnabled(true);
               this.§^"!§.mClip.alpha = 1;
               this.§0!d§ = true;
            }
            else
            {
               this.§^"!§.setEnabled(false);
               this.§^"!§.mClip.alpha = 0.5;
            }
         }
      }
      
      private function §1#x§() : void
      {
         if(this.§,#[§.tournamentRules.§8!V§)
         {
            this.§!#B§();
         }
         else
         {
            this.§!#B§();
         }
         var _loc1_:String = §4"-§.§8!8§ + "_" + this.§,#[§.tournamentRules.§2"N§;
         if(this.§,#[§.tournamentRules.§2"N§ == §-!t§.§8"b§)
         {
            _loc1_ = §4"-§.§[y§;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§,#[§.removeEventListener(§'"R§.§6#+§,this.§@!!§);
         this.§,#[§.removeEventListener(§'"R§.§4&§,this.§?!Q§);
         this.§,#[§.removeEventListener(§'"R§.§7#O§,this.§;O§);
         this.§`# §.removeEventListener(§%#2§.§6"?§,this.§+"q§);
         this.§`# §.removeEventListener(§%#2§.§'#X§,this.§9#k§);
         this.§0!d§ = false;
         this.§,#[§.removeEventListener(§'"R§.§>k§,this.§-#Y§);
         this.§8#3§ = this.§,#[§.levelIDs;
         mLevelManager.resetPreviousLevel();
         if(this.§9!w§)
         {
            §?Q§.getItemByName(§>!A§).setVisibility(false);
            if(this.§>s§)
            {
               this.§>s§.removeEventListener(MouseEvent.CLICK,this.§<5§);
            }
         }
         §]">§ = null;
         this.§"#H§(this.§3!B§);
      }
      
      private function §4!#§() : void
      {
         var _loc1_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§4!J§ = null;
         var _loc7_:§%"E§ = null;
         var _loc8_:String = null;
         var _loc9_:§4!J§ = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         this.§##+§ = getTimer();
         var _loc2_:Array = [];
         this.§3"m§ = [];
         var _loc3_:Array = this.§,#[§.§4!X§();
         §4!0§.§7!s§ = new Vector.<§%"E§>();
         var _loc4_:int = 0;
         for each(_loc5_ in _loc3_)
         {
            if(_loc6_ = §%!?§.§ $;§(_loc5_.uid))
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
            if(_loc5_.uid == (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID)
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
            if((_loc7_ = §%"E§.§2u§(_loc5_)).§9!r§)
            {
               if(§4!0§.§9! §.indexOf(_loc7_.userId) == -1)
               {
                  §4!0§.§7!s§.push(_loc7_);
               }
            }
            else
            {
               _loc2_.push(_loc7_);
            }
            this.§3"m§.push(_loc7_);
         }
         if(_loc1_ == null)
         {
            _loc8_ = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID;
            _loc10_ = !!(_loc9_ = §%!?§.§ $;§(_loc8_)) ? _loc9_.name : "You";
            _loc1_ = {
               "r":_loc3_.length + 1,
               "uid":_loc8_,
               "n":_loc10_
            };
            _loc11_ = 0;
            _loc12_ = 0;
            while(_loc12_ < this.§8#3§.length)
            {
               _loc11_ += §4"-§(AngryBirdsBase.singleton.dataModel.userProgress).§ =§(this.§8#3§[_loc12_]);
               _loc12_++;
            }
            _loc1_.p = _loc11_;
            this.§3"m§.push(§%"E§.§2u§(_loc1_));
            _loc2_.push(§%"E§.§2u§(_loc1_));
         }
         if(§9N§.§^"?§(§9N§.§>^§))
         {
            _loc12_ = 0;
            while(_loc12_ < _loc2_.length)
            {
               _loc2_[_loc12_].rank = _loc12_ + 1;
               _loc12_++;
            }
         }
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§"#U§,_loc2_);
         QualifierInterruptedPopUp.§'$7§(_loc2_);
         this.§+!a§();
         this.§>8§();
      }
      
      protected function §>8§() : void
      {
         var _loc1_:* = this.§,#[§.info.length > 0;
         §?Q§.getItemByName("Banner_Info").setVisibility(_loc1_);
         this.§+!2§.visible = _loc1_;
         this.§+!2§.text = this.§,#[§.info;
      }
      
      private function §[#a§(param1:Array) : void
      {
         var _loc3_:§4!J§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:§%"E§ = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Vector.<§4!J§> = §%!?§.§@!i§();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = false;
            for each(_loc5_ in this.§3"m§)
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
               param1.push(new §5#!§(_loc6_,_loc7_,"",!§"!F§.§ "D§.§5"q§(_loc6_)));
            }
         }
      }
      
      protected function §<"S§() : void
      {
         var _loc3_:§,#w§ = null;
         this.§^$ § = new Vector.<§&"m§>();
         this.§8#3§ = this.§,#[§.levelIDs;
         var _loc1_:Object = this.§'#b§();
         var _loc2_:int = 0;
         while(_loc2_ < 6)
         {
            _loc3_ = §,#w§(§?Q§.getItemByName("LevelButton" + (_loc2_ + 1)));
            if(_loc2_ < this.§8#3§.length)
            {
               _loc3_.visible = true;
               _loc3_.x = _loc1_.buttonGap * (_loc2_ + 1);
               _loc3_.y = _loc1_.buttonY;
               this.§^$ §.push(this.makeLevelButton(_loc2_ + 1,this.§,#[§.levelObjects[_loc2_],_loc3_));
            }
            else
            {
               _loc3_.visible = false;
            }
            _loc2_++;
         }
      }
      
      private function §'#b§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.buttonGap = §!#A§.§4#2§() / 7;
         _loc1_.buttonY = §!#A§.§%!o§() >> 1;
         _loc1_.centerX = §!#A§.§4#2§() >> 1;
         return _loc1_;
      }
      
      protected function makeLevelButton(param1:int, param2:Object, param3:§,#w§) : §&"m§
      {
         return new §&"m§(param1,param2,this,param3,this.§,#[§,dataModel.§#"r§,dataModel.§>p§,§4"-§(dataModel.userProgress));
      }
      
      private function §-"G§(param1:int) : §%"E§
      {
         var _loc2_:§3!3§ = null;
         if(param1 <= this.§3"m§.length)
         {
            _loc2_ = this.§3"m§[param1 - 1];
            if(_loc2_ is §%"E§)
            {
               (_loc2_ as §%"E§).rank = param1;
               return _loc2_ as §%"E§;
            }
         }
         return null;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'"S§ = param3;
         switch(eventName)
         {
            case "BACK":
               §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
               §5"p§(§>!&§.STATE_NAME);
               break;
            case "SPINNING_WHEEL":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§`# §.§&"V§();
               §?!=§.§3!q§().§]!-§(§?!=§.§8$2§);
               break;
            case "PREVIOUS_RESULTS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               if(!§;$-§.§ "D§.active)
               {
                  §5"p§(StateLastWeeksTournamentResults.STATE_NAME);
               }
               else
               {
                  StateTournamentResults.§>#K§ = StateTournamentResults.§4"D§;
                  §5"p§(StateTournamentResults.STATE_NAME);
               }
               break;
            case "LEVEL_1":
               this.§-u§(0);
               break;
            case "LEVEL_2":
               this.§-u§(1);
               break;
            case "LEVEL_3":
               this.§-u§(2);
               break;
            case "LEVEL_4":
               this.§-u§(3);
               break;
            case "LEVEL_5":
               this.§-u§(4);
               break;
            case "LEVEL_6":
               this.§-u§(5);
               break;
            case "showCredits":
               §5"p§(§@"X§.STATE_NAME);
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               this.§%!R§(int(eventName.charAt(eventName.length - 1)));
               break;
            case "SPECIAL_STORE":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%"!§.NORMAL,§^#o§.DEFAULT));
               break;
            case "CHALLENGE":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.popupManager.openPopup(new ChallengePopup(§%"!§.NORMAL,§^#o§.DEFAULT));
               break;
            case "MORE_GAMES":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
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
         if(§]">§)
         {
            §]">§.onUIInteraction(eventName);
         }
         this.§,#[§.§ "Z§(eventName);
      }
      
      protected function §-u§(param1:int) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         var _loc2_:String = this.§8#3§[param1];
         var _loc3_:Object = this.§,#[§.levelObjects[param1];
         var _loc4_:§&"m§ = this.§^$ §[param1];
         if(this.§,#[§.isLevelOpen(_loc2_))
         {
            this.§;C§(_loc2_);
         }
         else if(_loc4_.§<"+§ && !this.§,#[§.§%#P§)
         {
            _loc4_.§0"r§();
         }
      }
      
      private function §%!R§(param1:int) : void
      {
         var _loc2_:String = "";
         if(this.§,#[§.tournamentRules.§2"N§.indexOf("HALLOWEEN") != -1)
         {
            _loc2_ = this.§8#a§[param1 - 1];
         }
         if(this.§,#[§.tournamentRules.§2"N§.indexOf("XMAS") != -1)
         {
            _loc2_ = this.§6#g§[param1 - 1];
         }
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc2_.toLowerCase()));
         §5"p§(§@!x§.STATE_NAME);
      }
      
      protected function §;C§(param1:String) : void
      {
         mLevelManager.loadLevel(mLevelManager.getValidLevelId(param1.toLowerCase()));
         §5"p§(§1!a§.STATE_NAME);
      }
      
      protected function §+!a§() : void
      {
         var _loc1_:Array = this.§,#[§.§7M§();
         this.§?!h§.text = _loc1_[0] + " left!";
         this.§?!h§.textColor = _loc1_[1];
         _loc1_ = null;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§&"m§ = null;
         var _loc3_:Boolean = false;
         super.update(param1);
         if(this.§5"e§)
         {
            this.§'#"§ += param1;
            if(this.§'#"§ >= this.§+"X§)
            {
               this.§5"e§ = false;
               this.§>"<§();
            }
         }
         if(§5#E§)
         {
            if(§]">§)
            {
               §]">§.§%"Q§();
               §5#E§ = false;
               this.§5"g§ = 0;
               this.§39§ = 0;
            }
            else if(§ "a§.§ "D§.§ #b§())
            {
               §]">§ = § "a§.§ "D§.§^W§();
               §]">§.§="y§(§?Q§);
            }
         }
         if(!this.§0!d§)
         {
            this.§[h§();
         }
         if(this.§+#s§)
         {
            for each(_loc3_ in this.§+#s§)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            if(_loc3_)
            {
               this.§+#s§ = null;
               this.§"!T§();
            }
         }
         this.§+!a§();
         for each(_loc2_ in this.§^$ §)
         {
            _loc2_.update();
         }
         if(this.§!#Q§)
         {
            this.§#$,§(false);
            (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§ #Y§);
            this.§!#Q§ = false;
         }
         if(this.§'r§ != §!#A§.§4#2§())
         {
            this.§5"g§ = 0;
            this.§39§ = 0;
            this.§'r§ = §!#A§.§4#2§();
         }
      }
      
      private function §!"W§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = false;
         var _loc4_:String = null;
         var _loc5_:§,#w§ = null;
         var _loc6_:Boolean = false;
         if(this.§,#[§.levelIDs.length > 0)
         {
            _loc2_ = this.§^G§();
            if(§?Q§.getItemByName("TournamentCutsceneSelection"))
            {
               §?Q§.getItemByName("TournamentCutsceneSelection").setVisibility(_loc2_ > 1 && _loc2_ <= 4);
            }
            _loc3_ = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§ =§(this.§6#g§[3]) > 0;
            §'"E§[1] = _loc2_ >= 3;
            §'"E§[2] = _loc2_ >= 4;
            §'"E§[3] = _loc2_ >= 4 && _loc3_;
         }
         if(!this.§,#[§.tournamentRules)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§6#g§.length)
         {
            _loc4_ = "";
            if(this.§,#[§.tournamentRules.§2"N§.indexOf("XMAS") != -1)
            {
               _loc4_ = this.§6#g§[_loc1_];
            }
            if(_loc5_ = §?Q§.getItemByName("CutsceneButton" + int(_loc1_ + 1)) as §,#w§)
            {
               if(_loc6_ = §]#_§(_loc1_ + 1))
               {
                  _loc5_.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
                  _loc5_.setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
            }
            _loc1_++;
         }
      }
      
      private function §^G§() : int
      {
         var _loc1_:int = 1;
         switch(this.§,#[§.levelIDs[0])
         {
            case this.§6#g§[0]:
               _loc1_ = 2;
               break;
            case this.§6#g§[1]:
               _loc1_ = 3;
               break;
            case this.§6#g§[2]:
            case this.§6#g§[3]:
               _loc1_ = 4;
         }
         return _loc1_;
      }
      
      protected function §[#U§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§%"!§.§4!P§,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §!#B§(param1:String = null) : void
      {
         var _loc2_:TournamentResultsPopup = new TournamentResultsPopup(§%"!§.NORMAL,§^#o§.TOP,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:§,#w§ = null;
         if(!this.§8#3§ || this.§8#3§.length == 0 || this.§9"y§ && !this.§3!B§)
         {
            return;
         }
         if((§!#A§.§>q§ as §-#+§).§3#3§())
         {
            if(this.§5"g§ < §9#p§)
            {
               this.§39§ = 0;
               if(this.§3!B§)
               {
                  this.§3!B§.§[!R§.scaleX = §>!&§.§<!3§;
                  this.§3!B§.§[!R§.scaleY = §>!&§.§<!3§;
               }
               _loc1_ = this.§'#b§();
               _loc2_ = 1;
               while(_loc2_ <= this.§8#3§.length)
               {
                  (_loc5_ = §?Q§.getItemByName("LevelButton" + _loc2_) as §,#w§).scaleX = §>!&§.§<!3§;
                  _loc5_.scaleY = §>!&§.§<!3§;
                  _loc5_.x = _loc1_.buttonGap * _loc2_;
                  _loc5_.y = _loc1_.buttonY;
                  _loc2_++;
               }
               _loc3_ = _loc1_.centerX;
               if(§]">§)
               {
                  if(this.§?"L§)
                  {
                     _loc3_ = _loc1_.centerX - _loc1_.buttonGap;
                  }
                  §]">§.§?##§(_loc3_,_loc1_.buttonY + (this.§%$;§.y - _loc1_.buttonY) / 2);
                  _loc3_ = _loc1_.centerX + _loc1_.buttonGap;
               }
               if(this.§?"L§)
               {
                  this.§?"L§.x = _loc3_;
                  this.§?"L§.y = _loc1_.buttonY + (this.§%$;§.y - _loc1_.buttonY) / 2;
               }
               if(this.§1"N§)
               {
                  this.§1"N§.mClip.visible = true;
                  this.§1"N§.x = §!#A§.§4#2§() >> 1;
                  this.§1"N§.y = _loc1_.buttonY + (this.§%$;§.y - _loc1_.buttonY) / 2;
               }
               _loc4_ = §?Q§.getItemByName("Button_PreviousResults").x - §?Q§.getItemByName("Button_Back").x;
               this.§%$;§.x = §?Q§.getItemByName("Button_Back").x + _loc4_ / 3;
               this.§-v§.x = §?Q§.getItemByName("Button_Back").x + _loc4_ / 3 * 2;
               ++this.§5"g§;
            }
         }
         else if(this.§39§ < §9#p§)
         {
            this.§5"g§ = 0;
            if(this.§3!B§)
            {
               this.§3!B§.§[!R§.scaleX = 1;
               this.§3!B§.§[!R§.scaleY = 1;
            }
            _loc1_ = this.§'#b§();
            _loc2_ = 1;
            while(_loc2_ <= this.§8#3§.length)
            {
               (_loc5_ = §?Q§.getItemByName("LevelButton" + _loc2_) as §,#w§).scaleX = 1;
               _loc5_.scaleY = 1;
               _loc5_.x = _loc1_.buttonGap * _loc2_;
               _loc5_.y = _loc1_.buttonY;
               _loc2_++;
            }
            _loc3_ = _loc1_.centerX;
            if(§]">§)
            {
               if(this.§?"L§)
               {
                  _loc3_ = _loc1_.centerX - _loc1_.buttonGap;
               }
               §]">§.§?##§(_loc3_,_loc1_.buttonY + (this.§%$;§.y - _loc1_.buttonY) / 2);
               _loc3_ = _loc1_.centerX + _loc1_.buttonGap;
            }
            if(this.§?"L§)
            {
               this.§?"L§.x = _loc3_;
               this.§?"L§.y = _loc1_.buttonY + (this.§%$;§.y - _loc1_.buttonY) / 2;
            }
            if(this.§1"N§)
            {
               this.§1"N§.mClip.visible = true;
               this.§1"N§.x = §!#A§.§4#2§() >> 1;
               this.§1"N§.y = _loc1_.buttonY + (this.§%$;§.y - _loc1_.buttonY) / 2;
            }
            _loc4_ = §?Q§.getItemByName("Button_PreviousResults").x - §?Q§.getItemByName("Button_Back").x;
            this.§%$;§.x = §?Q§.getItemByName("Button_Back").x + _loc4_ / 3;
            this.§-v§.x = §?Q§.getItemByName("Button_Back").x + _loc4_ / 3 * 2;
            ++this.§39§;
         }
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         if(this.§3!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §?Q§.movieClip;
      }
      
      protected function §1+§(param1:MouseEvent) : void
      {
         if(this.§,#[§.§5#n§ && this.§,#[§.§5#n§.url)
         {
            § "8§.§ "§("shareURL",this.§,#[§.§5#n§.url);
         }
      }
   }
}
