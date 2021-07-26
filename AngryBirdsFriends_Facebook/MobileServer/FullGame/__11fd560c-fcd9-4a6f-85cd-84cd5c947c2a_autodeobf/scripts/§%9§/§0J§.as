package §%9§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §!'§.§7#c§;
   import §"!@§.§8"o§;
   import §"!@§.§;$+§;
   import §"!@§.§@!§;
   import §"!@§.§@,§;
   import §"!@§.§["F§;
   import §%J§.§]i§;
   import §&$!§.§##a§;
   import §&$!§.§%#k§;
   import §&$!§.§@$6§;
   import §'#d§.§5!Z§;
   import §0#m§.§8#§;
   import §1!=§.§4$"§;
   import §1!=§.§^"U§;
   import §1!T§.§>""§;
   import §1"N§.§4#G§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §2G§.§3W§;
   import §3"I§.§ E§;
   import §3#T§.§@"!§;
   import §3r§.§]!4§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §4"R§.§7"]§;
   import §5P§.§""C§;
   import §6#z§.§##;§;
   import §8#!§.§5`§;
   import §8§.§6"6§;
   import §8§.§;Y§;
   import §9"r§.§1#e§;
   import §9#B§.§1#h§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §;$3§.§?!0§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §="h§.§`"O§;
   import §=#G§.§6"v§;
   import §=#G§.§<#Z§;
   import §?"@§.§^!S§;
   import §?"e§.Starling;
   import §?P§.SyncingPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@!M§.§0!p§;
   import §@!M§.§<"t§;
   import §@!M§.§?"<§;
   import §@!M§.§^#p§;
   import §@0§.§ !o§;
   import §@0§.§1§;
   import §@0§.§2$2§;
   import §@0§.§9"^§;
   import §`!e§.§=Z§;
   import §`7§.§ try§;
   import §`7§.§0t§;
   import §`7§.§7E§;
   import §`7§.§;e§;
   import §`7§.§`"x§;
   import §`7§.§`m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §0J§ extends §>""§ implements §7E§, §8#§
   {
      
      private static const §>2§:Number = -5 * 1000;
      
      private static const §>!B§:Number = 10 * 1000;
      
      public static const §[!"§:int = 50;
      
      public static var §7r§:Number = 0;
      
      public static var §3!$§:int = 0;
      
      private static const §'Y§:Number = 20;
      
      private static const §6#]§:Number = 0.1;
      
      public static const §<"z§:String = "4000-";
      
      private static const §&#§:int = 0;
      
      private static const §!#j§:int = -1;
      
      private static const §?#=§:int = -2;
      
      private static const §[L§:int = 700;
      
      private static const §#!9§:Number = -43.05;
      
      private static const §>"e§:Number = -2.05;
       
      
      private var §7O§:Number = -5000.0;
      
      private var §9x§:int = 0;
      
      private var §>"F§:Number = 0;
      
      private var §'"i§:Number = 0;
      
      protected var § ##§:Boolean;
      
      private var §+#y§:Boolean = false;
      
      protected var §=$8§:§;e§;
      
      private var §2"_§:Vector.<int>;
      
      private var §5#i§:Boolean;
      
      private var §?K§:Boolean;
      
      private var §!!m§:String = "";
      
      protected var §="M§:§##;§;
      
      private var §`!x§:Boolean = true;
      
      private var §<!g§:Boolean = false;
      
      private var §'Z§:Boolean = false;
      
      private var §6#q§:SyncingPopup;
      
      protected var §;"9§:§@$6§;
      
      protected var §?p§:§7"]§;
      
      protected var §@!a§:Boolean = false;
      
      private var §@!t§:§4[§;
      
      private var §^!z§:Number = 0;
      
      private var §'"0§:Number = 0;
      
      private var §3;§:Number;
      
      protected var §!!p§:§6"v§;
      
      private var §`#a§:Number = 0;
      
      private var §0"M§:§0t§;
      
      private var §0%§:Boolean = false;
      
      private var §=#m§:Boolean = false;
      
      private var §?#o§:Boolean;
      
      private const §4"H§:int = 500;
      
      private const §7"?§:int = 10000;
      
      private const §%!"§:int = 20.0;
      
      private const §;r§:int = 8000;
      
      private const §#I§:int = 1000;
      
      private var §+"=§:int;
      
      private var §'J§:Boolean;
      
      private var §`C§:Boolean = false;
      
      private var §01§:Boolean;
      
      protected var §;#z§:§[#K§;
      
      private var §7#Q§:§[#K§;
      
      private var §^@§:int;
      
      private var §1K§:int;
      
      private var §'0§:§4[§;
      
      private var §+!x§:MovieClip;
      
      private var §4"Q§:§4[§;
      
      private var §""M§:int;
      
      protected var §^N§:§[#K§;
      
      private var §8F§:Boolean = false;
      
      private var §-!f§:§[#K§;
      
      protected var §4!=§:§;Y§;
      
      public function §0J§(param1:§[#K§, param2:§8=§, param3:§6"v§, param4:§3W§, param5:§""C§)
      {
         this.§=$8§ = new §;e§();
         this.§2"_§ = new Vector.<int>(32);
         this.§0"M§ = new §0t§();
         this.§!!p§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         this.§2"_§[3] = 5000;
         this.§2"_§[7] = 5000;
         this.§2"_§[8] = 5000;
         this.§2"_§[9] = 5000;
         this.§2"_§[18] = 5000;
         §4"y§.setVisibility(false);
         this.§^N§ = §4"y§.getItemByName("Container_Buttons") as §[#K§;
         this.§-!f§ = §4"y§.getItemByName("Container_Overlay") as §[#K§;
         this.§-!f§.setVisibility(true);
         this.§8F§ = false;
         this.§4!=§ = (§3#U§.§#$4§ as §2$2§).objects as §;Y§;
         this.§<&§();
         this.§"A§();
         this.§#!w§();
         this.§;$=§();
         this.§2&§();
         this.levelStarted();
         if((§3#U§.§9#^§ as §,A§).§9"x§)
         {
            (§3#U§.§9#^§ as §,A§).§9"x§.addEventListener(§=Z§.§;$"§,this.§`0§);
         }
         this.§'J§ = false;
         this.§;#z§ = §4"y§.getItemByName("Container_ZoomButtons") as §[#K§;
         this.§""M§ = 0;
         §4"y§.getItemByName("ScoreMultiplierIcon").setVisibility(false);
      }
      
      protected function §<&§() : void
      {
         this.§7#Q§ = §4"y§.getItemByName("Container_EndLevelDialogue") as §[#K§;
         this.§7#Q§.setVisibility(false);
         this.§+!x§ = §4"y§.getItemByName("EndLevelDialogueBG").mClip;
         this.§^@§ = §&#§;
         this.§1K§ = 0;
      }
      
      protected function §"A§() : void
      {
         this.§="M§ = new §##;§(§4"y§);
      }
      
      protected function §#!w§() : void
      {
         this.§;"9§ = new §@$6§(§4"y§,mLevelManager);
      }
      
      protected function §;$=§() : void
      {
         var _loc2_:§'#v§ = null;
         this.§?p§ = new §7"]§(§4"y§,mLevelManager);
         var _loc1_:Object = §#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§ ""§(§4#G§.§^$&§);
         if(!_loc1_)
         {
            this.§?p§.§+"W§(§7"]§.§<,§(),true);
         }
         else
         {
            _loc2_ = §4"c§.§2;§(_loc1_[0]);
            if(_loc2_ && _loc2_.§<b§)
            {
               this.§?p§.§+"W§(_loc1_[0],true);
            }
            else
            {
               this.§?p§.§+"W§(§4"c§.§"V§.§5"g§,true);
            }
         }
      }
      
      override public function dispose() : void
      {
         if((§3#U§.§9#^§ as §,A§).§9"x§)
         {
            (§3#U§.§9#^§ as §,A§).§9"x§.removeEventListener(§=Z§.§;$"§,this.§`0§);
         }
         this.disable(false);
         this.§?p§.dispose();
         this.§0"M§ = null;
         this.§^!=§();
         §5`§.§6!§.removeEventListener(§1#e§.§<"Y§,this.§<#B§);
         this.§5#5§(this.§'0§);
         this.§'0§ = null;
         this.§5#5§(this.§4"Q§);
         this.§4"Q§ = null;
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         var _loc2_:Boolean = §4$"§(AngryBirdsBase.singleton.popupManager).§#"q§();
         if(!_loc2_)
         {
            §3#U§.resume();
         }
         §4"y§.setVisibility(true);
         §4"y§.addEventListener(§ E§.§=$1§,this.onUIInteraction);
         this.§0#l§();
         if(!this.§`C§)
         {
            this.§;"9§.activate(§<#Z§(this.§!!p§),false,false);
         }
         if(!this.§?#o§)
         {
            this.§6"T§(false);
         }
         if(§7"]§.§7#E§)
         {
            §4"y§.getItemByName("Button_Slingshot").setVisibility(true);
         }
         else
         {
            §4"y§.getItemByName("Button_Slingshot").setVisibility(false);
         }
         §5`§.§6!§.addEventListener(§1#e§.§<"Y§,this.§<#B§);
         if(!this.§-!f§)
         {
            this.§;# §();
         }
      }
      
      protected function §`0§(param1:§=Z§) : void
      {
         this.§2B§();
      }
      
      override public function disable(param1:Boolean) : void
      {
         §4"y§.setVisibility(false);
         §4"y§.removeEventListener(§ E§.§=$1§,this.onUIInteraction);
         §]i§.§,"f§();
         this.§="M§.deActivate();
         this.§;"9§.deActivate();
         this.§?p§.deActivate();
         this.§!!p§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]"#§);
         if(this.§@!t§)
         {
            this.§5#5§(this.§@!t§);
            this.§@!t§ = null;
         }
         this.§5#5§(this.§'0§);
         this.§'0§ = null;
         this.§5#5§(this.§4"Q§);
         this.§4"Q§ = null;
         §3#U§.§#$4§.§""x§(false);
         this.§[s§();
         this.§0"T§();
         super.disable(param1);
      }
      
      private function §5#5§(param1:§4[§) : void
      {
         if(param1)
         {
            param1.§@g§();
         }
      }
      
      protected function §^!=§() : void
      {
         var _loc2_:§^#p§ = null;
         if(§3#U§.§#$4§.background)
         {
            §3#U§.§#$4§.background.stopAmbientSound();
         }
         §!"p§.§5#u§(§<"t§.§'"W§);
         §7r§ = 0;
         var _loc1_:§0!p§ = §!"p§.§;!b§(§<"t§.§'"W§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§?W§(this.§!!m§);
            if(_loc2_ != null)
            {
               §7r§ = _loc2_.§5$<§;
            }
            §!"p§.§5#u§(§<"t§.§'"W§);
         }
      }
      
      protected function §0#l§() : void
      {
         this.§3#?§();
         this.§="M§.activate();
         if(this.§<!g§)
         {
            this.§!!p§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]"#§);
         }
         §4"y§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§3;§ = 2500;
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§do §);
         this.§0"T§();
      }
      
      protected function levelStarted() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§##a§ = null;
         §`"x§.§"<§(§`m§.§+"-§,mLevelManager.currentLevel);
         §`"x§.trackPageView(this,this.§0'§());
         if(mLevelManager.currentLevel != §?!0§.§0$-§)
         {
            §?!0§.§0$-§ = mLevelManager.currentLevel;
            this.§`#a§ = 0;
         }
         else
         {
            ++this.§`#a§;
         }
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel);
         § try§.§!!t§().§3!L§(mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,_loc1_,this.§`#a§);
         if((§3#U§.§9#^§ as §,A§).§9"x§)
         {
            (§3#U§.§9#^§ as §,A§).§9"x§.levelStarted();
         }
         this.showScoresForLevel();
         this.§2B§();
         this.§<!g§ = false;
         this.§'Z§ = false;
         this.§!!p§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]"#§);
         if(§7"]§.§7#E§)
         {
            §4"y§.getItemByName("Button_Slingshot").setEnabled(true);
            this.§@!a§ = false;
            if(this.§@!t§)
            {
               this.§5#5§(this.§@!t§);
               this.§@!t§ = null;
            }
         }
         (§3#U§.§#$4§ as §2$2§).§2"P§.§0Y§ = false;
         this.§+"=§ = this.§#I§;
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            if(§`"O§.§6!§.§4u§())
            {
               _loc2_ = new Array();
               for each(_loc3_ in §%#k§.§<"D§)
               {
                  _loc2_.push(_loc3_);
               }
               _loc2_.push(§%#k§.§[4§);
               this.§&7§(_loc2_);
            }
            else
            {
               this.§&7§(§%#k§.§<"D§);
            }
         }
         else if((mLevelManager as §?!0§).§[!f§())
         {
            this.§&7§(§%#k§.§'!9§);
         }
         else
         {
            this.§&7§(§%#k§.§8#;§);
         }
         this.§?p§.activate(§<#Z§(this.§!!p§));
         §4"y§.getItemByName("Container_Slingshot_Buttons").setVisibility(false);
         this.§`C§ = false;
         this.§?#o§ = false;
         this.handleCollectibleItems();
      }
      
      protected function §&7§(param1:Array) : void
      {
         var _loc5_:§##a§ = null;
         var _loc6_:§@"!§ = null;
         var _loc2_:Number = 100;
         for each(_loc5_ in §%#k§.§#"J§)
         {
            (_loc6_ = §4"y§.getItemByName(_loc5_.buttonName)).setVisibility(false);
         }
         for each(_loc5_ in param1)
         {
            (_loc6_ = §4"y§.getItemByName(_loc5_.buttonName)).x = _loc2_;
            _loc6_.y = 44;
            _loc6_.setVisibility(true);
            _loc2_ += 65;
         }
      }
      
      protected function §2&§() : void
      {
         this.§=$8§.§ $;§(0);
         this.§9[§(0);
         this.§ ##§ = false;
         this.§="M§.§[!4§ = this.§ ##§;
      }
      
      private function §]"#§(param1:MouseEvent) : void
      {
         this.§'Z§ = true;
         this.§!!p§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]"#§);
      }
      
      protected function §2B§() : void
      {
         this.§="M§.levelStarted((§3#U§.§9#^§ as §,A§).§9"x§.§5!c§(),mLevelManager.currentLevel,(§3#U§.§9#^§ as §,A§).§9"x§.§'m§() == §]!4§.§+"M§);
      }
      
      protected function §3#?§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§0!p§ = null;
         var _loc4_:§^#p§ = null;
         if(mLevelManager.currentLevel.indexOf("3001-") > -1 || mLevelManager.currentLevel.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(mLevelManager.currentLevel.indexOf("3001-") > -1)
            {
               this.§!!m§ = §<"t§.§@#^§;
               if(mLevelManager.currentLevel.indexOf("3001-1") > -1)
               {
                  _loc1_ = §<"t§.§1;§;
               }
               else if(mLevelManager.currentLevel.indexOf("3001-2") > -1)
               {
                  _loc1_ = §<"t§.§<!C§;
                  this.§!!m§ = §<"t§.§7#8§;
               }
               else
               {
                  _loc1_ = §<"t§.§1;§;
               }
               if(AngryBirdsBase.singleton.§=!&§().previousState != this.§!#H§())
               {
                  §7r§ = 0;
               }
            }
            else if(§3!$§ <= 1)
            {
               this.§!!m§ = §<"t§.§&#a§;
               _loc1_ = §<"t§.§`$'§;
               _loc2_ = 1;
               §!"p§.removeEventListener(§?"<§.SOUND_COMPLETE,this.§^k§);
               §!"p§.addEventListener(§?"<§.SOUND_COMPLETE,this.§^k§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §!"p§.§;!b§(§<"t§.§'"W§);
               if(!_loc3_)
               {
                  §!"p§.§5#4§(§<"t§.§'"W§,1,1);
               }
               _loc4_ = §!"p§.§[!X§(_loc1_,this.§!!m§,3000,§<"t§.§'"W§,_loc2_,0.75,§7r§);
            }
         }
      }
      
      private function §^k§(param1:§?"<§) : void
      {
         if(param1.§ ,§ == §<"t§.§&#a§ && this.§!!m§ == §<"t§.§&#a§ && AngryBirdsBase.singleton.§[#c§() != §@!§.STATE_NAME)
         {
            §!"p§.removeEventListener(§?"<§.SOUND_COMPLETE,this.§^k§);
            ++§0J§.§3!$§;
         }
      }
      
      private function §%"5§(param1:Number) : void
      {
         if(this.§^!z§)
         {
            this.§'"0§ += param1;
            if(this.§'"0§ > §'Y§)
            {
               this.§!!p§.§5#q§(true,this.§^!z§);
               this.§'"0§ = 0;
            }
         }
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:String = "ALL_EXTRABIRD";
         if((mLevelManager as §?!0§).§[!f§())
         {
            _loc1_ = "ALL_MUSHROOM";
         }
         §]i§.§"#o§(_loc1_,true);
         §]i§.showTutorials(true,true);
      }
      
      protected function §`"f§(param1:String) : §@N§
      {
         var _loc2_:§@N§ = this.§0"M§[param1];
         if(!_loc2_)
         {
            _loc2_ = §4"y§.getItemByName(param1) as §@N§;
            this.§0"M§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      protected function §8#6§(param1:Number) : void
      {
      }
      
      public function §0'§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §!3§() : String
      {
         return §`"x§.§2$,§;
      }
      
      protected function §9[§(param1:Number) : void
      {
         this.§<5§();
         var _loc2_:int = this.§!!p§.getScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§=$8§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§=$8§.getValue() + param1 * §[!"§);
            this.§=$8§.§ $;§(_loc4_);
         }
         if(this.§+#y§)
         {
            §4"y§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§="M§.§9[§(_loc4_,_loc2_,_loc3_);
      }
      
      protected function showScoresForLevel() : void
      {
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§-##§,null);
      }
      
      private function §[s§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§7O§ > §>!B§)
         {
            _loc1_ = Math.round(1000 / this.§7O§ * this.§9x§);
            _loc2_ = mLevelManager.currentLevel;
            _loc3_ = (§3#U§.§9#^§ as §,A§).§`$<§();
            §`"x§.§@#q§(_loc1_,_loc2_,Starling.§`"J§,_loc3_);
         }
      }
      
      private function §%b§(param1:Number) : void
      {
         this.§7O§ += param1;
         if(this.§7O§ > 0)
         {
            ++this.§9x§;
         }
         if(this.§>"F§ != §3#U§.§5j§() || this.§'"i§ != §3#U§.§,$>§())
         {
            this.§0"T§();
         }
      }
      
      private function §0"T§() : void
      {
         this.§7O§ = §>2§;
         this.§9x§ = 0;
         this.§>"F§ = §3#U§.§5j§();
         this.§'"i§ = §3#U§.§,$>§();
      }
      
      protected function §!!]§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§5#i§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§2"_§.length)
            {
               _loc1_ += this.§2"_§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§5#i§ = true;
               §`m§.§"<§(§`m§.§""Q§,mLevelManager.currentLevel);
            }
         }
         if(this.§?K§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §<5§() : void
      {
         var _loc1_:int = this.§!!p§.getScore();
         var _loc2_:int = this.§=$8§.getValue();
         if(_loc2_ < _loc1_ && this.§5#i§)
         {
            this.§?K§ = true;
         }
      }
      
      protected function §6$ §(param1:Boolean = true) : void
      {
         if(!§7"]§.§7#E§)
         {
            return;
         }
         this.§@!a§ = true;
         §4"y§.getItemByName("Button_Slingshot").setEnabled(false);
         this.§5#5§(this.§@!t§);
         this.§@!t§ = §&"H§.§6!§.§6C§(§4"y§.getItemByName("Button_Slingshot").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§@!t§.delay = 2;
         }
         else
         {
            this.§@!t§.delay = 0.5;
         }
         this.§@!t§.play();
         this.§@!t§.onComplete = this.§1j§;
      }
      
      private function §1j§() : void
      {
         §4"y§.getItemByName("Button_Slingshot").setVisibility(false);
      }
      
      protected function §6#a§() : Boolean
      {
         if((§3#U§.§#$4§ as §2$2§).§2"P§.§8R§() && !this.§6#q§)
         {
            this.§6#q§ = new SyncingPopup(§]"$§.§[#=§,§^"U§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§6#q§);
            (§3#U§.§#$4§ as §2$2§).§2"P§.addEventListener(Event.COMPLETE,this.§-"e§);
         }
         return !(§3#U§.§#$4§ as §2$2§).§2"P§.§8R§();
      }
      
      private function §-"e§(param1:Event) : void
      {
         (§3#U§.§#$4§ as §2$2§).§2"P§.removeEventListener(Event.COMPLETE,this.§-"e§);
         this.§6#q§.close();
         this.§6#q§ = null;
      }
      
      protected function §!#H§() : String
      {
         return §@!§.STATE_NAME;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§ ##§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §8"o§.STATE_NAME;
      }
      
      public function getLoserState() : String
      {
         return §;$+§.STATE_NAME;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Vector.<String> = null;
         this.§!!]§();
         super.update(param1);
         if(this.§""M§ > 0)
         {
            this.§""M§ -= param1;
         }
         if(AngryBirdsBase.singleton.popupManager.§#"q§())
         {
            if(!this.§'J§)
            {
               this.§'J§ = true;
               _loc3_ = new Vector.<String>();
               _loc3_.push(§!"p§.§+!;§);
               §!"p§.§7$3§(_loc3_);
               if(this.§="M§)
               {
                  this.§="M§.deActivate();
               }
            }
            return;
         }
         if(this.§'J§)
         {
            this.§'J§ = false;
            if(this.§="M§)
            {
               this.§="M§.activate();
            }
            §!"p§.§8#l§();
         }
         this.§9[§(param1);
         var _loc2_:Boolean = this.§`!x§ = this.§="M§.run(param1);
         this.§;"9§.run(param1);
         this.§?p§.run(param1);
         this.§%"5§(param1);
         this.§!!p§.mouseEnabled = !this.§?p§.§8'§();
         if(this.§?p§.§8'§())
         {
            if(this.§01§)
            {
               this.§;#z§.getItemByName("Button_ZoomIn").setEnabled(false);
               this.§;#z§.getItemByName("Button_ZoomOut").setEnabled(false);
               this.§;#z§.getItemByName("Button_Magnify").setEnabled(false);
               this.§01§ = false;
            }
         }
         else if(!this.§01§)
         {
            this.§;#z§.getItemByName("Button_ZoomIn").setEnabled(true);
            this.§;#z§.getItemByName("Button_ZoomOut").setEnabled(true);
            this.§;#z§.getItemByName("Button_Magnify").setEnabled(true);
            this.§01§ = true;
         }
         this.§%b§(param1);
         if(!§3#U§.§#$4§.§2!R§ || !this.§ ##§)
         {
            this.§8#6§(param1);
         }
         if(AngryBirdsBase.singleton.§=!&§().previousState == §["F§.STATE_NAME || AngryBirdsBase.singleton.§=!&§().previousState == §1#h§.STATE_NAME)
         {
            if(!this.§<!g§)
            {
               this.§!!p§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]"#§);
               this.§<!g§ = true;
            }
            if(_loc2_ || this.§'Z§)
            {
               this.§3;§ -= param1;
               if(this.§3;§ < 0 || this.§'Z§)
               {
                  if(this.§6#a§())
                  {
                     addr630:
                  }
               }
               §§goto(addr647);
            }
            §§goto(addr630);
         }
         else if(AngryBirdsBase.singleton.§=!&§().previousState == §@,§.STATE_NAME)
         {
            if(!this.§6#a§())
            {
            }
         }
         addr647:
         if(!§3#U§.§#$4§.slingshot.birdsAvailable)
         {
            if(!this.§0%§)
            {
               this.§;"9§.§?#h§(§%#k§.§""z§.eventName,false);
               this.§;"9§.§?#h§(§%#k§.§'"!§.eventName,false);
               this.§;"9§.§?#h§(§%#k§.§0"W§.eventName,false);
               this.§0%§ = true;
            }
         }
         else
         {
            this.§0%§ = false;
         }
         if(§3#U§.§#$4§.objects.getPigCount() == 0)
         {
            if(!this.§=#m§)
            {
               this.§;"9§.§?#h§(§%#k§.§@#l§.eventName,false);
               this.§=#m§ = true;
            }
         }
         else if(this.§=#m§)
         {
            this.§=#m§ = false;
         }
         this.§0$?§(param1);
         if(§3#U§.§#$4§.slingshot.mSlingShotState == § !o§.§3"'§)
         {
            this.§;"9§.§8"H§();
            if(!this.§@!a§ && §7"]§.§7#E§)
            {
               this.§6$ §(this.§?p§.§8'§());
               this.§?p§.§ !,§();
            }
         }
         if(!§3#U§.isPaused)
         {
            if(this.§+"=§ > 0)
            {
               this.§+"=§ -= param1;
            }
         }
         if(§7"]§.§<,§() == §4"c§.§]#q§.§5"g§)
         {
            this.§3"f§();
         }
         if(this.§7#Q§.visible)
         {
            if(§3#U§.§#$4§.slingshot.mSlingShotState == § !o§.§2"j§ && !(§3#U§.§#$4§ as §2$2§).§2"P§.§0Y§)
            {
               this.§6"T§(true,this.§!!p§.§,"Y§());
            }
         }
         if(this.§8F§)
         {
            this.§8F§ = false;
            this.§-!f§.setVisibility(false);
            this.§-!f§ = null;
            this.§;# §();
         }
         if(this.§-!f§ && this.§-!f§.visible)
         {
            if(this.§4!=§.§""W§)
            {
               this.§8F§ = true;
            }
         }
      }
      
      private function §3"f§() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:§7#c§ = §3#U§.§#$4§.particles as §7#c§;
         var _loc2_:int = 0;
         while(_loc2_ < §9"^§.§=!h§)
         {
            _loc3_ = this.§;#b§(§3#U§.§#$4§.§^n§.§4!l§,§3#U§.§#$4§.§^n§.§,$1§);
            _loc4_ = this.§;#b§(§3#U§.§#$4§.§^n§.§%$4§,0);
            _loc1_.§'#f§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      protected function §0$?§(param1:Number) : void
      {
         if(this.§!!p§.§,!X§())
         {
            if(§3#U§.§#$4§.slingshot.mDragging)
            {
               if(this.§1K§ == 0)
               {
                  this.§1K§ = §1#7§.§<"6§;
                  this.§^@§ = §&#§;
               }
               if(this.§^@§ > §&#§)
               {
                  this.§`T§();
               }
            }
            else if(this.§1K§ > 0)
            {
               this.§1K§ -= param1;
               if(this.§1K§ <= 0)
               {
                  this.§1K§ = -1;
                  if(this.§^@§ < §&#§)
                  {
                     this.§="t§();
                  }
               }
            }
            else if(this.§^@§ == §&#§)
            {
               this.§^@§ = §1#7§.§^#K§;
               this.§2"A§();
               this.§1K§ = -1;
            }
            else if(this.§^@§ > §&#§)
            {
               this.§^@§ -= param1;
               if(this.§^@§ <= §&#§)
               {
                  §4"y§.setText("0","TextField_EndLevelCounter");
                  this.skipToLevelEnd(§ try§.§^#I§);
                  this.§^@§ = §?#=§;
               }
               else
               {
                  §4"y§.setText("" + int(this.§^@§ / 1000),"TextField_EndLevelCounter");
               }
            }
            else if(!this.§4"Q§)
            {
               this.§+!x§.scaleX = 0.8;
               this.§+!x§.scaleY = 0.8;
            }
         }
         else if(this.§^@§ > §&#§)
         {
            this.§^@§ = §&#§;
            this.§1K§ = 0;
         }
      }
      
      private function §;#b§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      protected function onUIInteraction(param1:§ E§) : void
      {
         var totalBirds:int = 0;
         var remainingBirds:int = 0;
         var wingmanIndex:int = 0;
         var wingmanIndexString:String = null;
         var timer:Timer = null;
         var meScore:int = 0;
         var event:§ E§ = param1;
         if(§!"J§ || this.§""M§ > 0)
         {
            return;
         }
         if(event.eventIndex == 1)
         {
            if(§3#U§.§#$4§.slingshot.mDragging)
            {
               §3#U§.§#$4§.slingshot.shoot();
               this.§!!p§.changeGameState(§6"v§.§=!g§);
               return;
            }
            §3#U§.§#$4§.camera.stopDragging();
         }
         switch(event.eventName)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               dispatchEvent(new §^!S§(§^!S§.§"x§));
               if(this.§^@§ > §&#§)
               {
                  this.§="t§();
               }
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §^!S§(§^!S§.RESTART_LEVEL));
               break;
            case "CLOSE_TUTORIAL":
               §]i§.§,"f§();
               break;
            case "POWERUP1":
               this.§7!z§(§%#k§.§""z§.eventName);
               break;
            case "POWERUP2":
               this.§7!z§(§%#k§.§'"!§.eventName);
               break;
            case "POWERUP3":
               this.§7!z§(§%#k§.§0"W§.eventName);
               break;
            case "POWERUP4":
               this.§7!z§(§%#k§.§6`§.eventName);
               break;
            case "POWERUP5":
               this.§7!z§(§%#k§.§@#l§.eventName);
               break;
            case "POWERUP6":
               this.§7!z§(§%#k§.§>#Z§.eventName);
               break;
            case "POWERUP7":
               this.§7!z§(§%#k§.§[4§.eventName);
               break;
            case "POWERUP8":
               this.§7!z§(§%#k§.§'!N§.eventName);
               break;
            case "POWERUP_WINGMAN":
               if(this.§^@§ == §?#=§)
               {
                  return;
               }
               if(this.§+"=§ > 0)
               {
                  return;
               }
               if(§-#+§.§6!§.§=b§(§%#k§.§6"t§.§5"g§) > 0)
               {
                  this.§6"T§(false);
               }
               this.§;"9§.§"t§(event.eventName);
               totalBirds = §3#U§.§#$4§.slingshot.§`!R§();
               remainingBirds = §3#U§.§#$4§.slingshot.§]$>§();
               wingmanIndex = 1 + totalBirds - remainingBirds;
               wingmanIndexString = "";
               if(remainingBirds == 0)
               {
                  wingmanIndexString = "Last-chance";
               }
               else
               {
                  wingmanIndex = Math.max(Math.min(totalBirds,wingmanIndex));
                  wingmanIndexString = "Bird_number:" + wingmanIndex;
               }
               this.§9!4§();
               this.§`T§();
               this.§""M§ = §[L§;
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§6"t§.buttonName),false);
               break;
            case "POWERUP_MIGHTY_EAGLE":
               if(this.§^@§ == §?#=§)
               {
                  return;
               }
               if((§3#U§.§#$4§ as §2$2§).§2"P§.§8R§())
               {
                  return;
               }
               if((§3#U§.§#$4§ as §2$2§).§2"P§.useMightyEagle())
               {
                  this.§;"9§.§?#h§(§%#k§.§""z§.eventName,false);
                  this.§;"9§.§?#h§(§%#k§.§'"!§.eventName,false);
                  this.§;"9§.§?#h§(§%#k§.§'!N§.eventName,false);
                  this.§;"9§.§?#h§(§%#k§.§0"W§.eventName,false);
                  this.§;"9§.§?#h§(§%#k§.§6`§.eventName,false);
                  this.§;"9§.§?#h§(§%#k§.§@#l§.eventName,false);
                  this.§;"9§.§?#h§(§%#k§.§]k§.eventName,false);
                  this.§;"9§.§?#h§(§%#k§.§6"t§.eventName,false);
                  §3#U§.§#$4§.useMightyEagle();
                  meScore = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
                  §4"y§.setText(meScore.toString() + "%","TextField_MEPercentage");
                  this.§ ##§ = true;
                  this.§="M§.§[!4§ = this.§ ##§;
                  §]i§.showTutorials();
                  this.§9!4§();
                  this.§6"T§(false);
               }
               else
               {
                  this.§;"9§.§"t§(event.eventName);
               }
               this.§`T§();
               this.§""M§ = §[L§;
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§]k§.buttonName),false);
               break;
            case "POWERUPOVER1":
               if(§-#+§.§6!§.§=b§(§%#k§.§""z§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§""z§.buttonName),true);
               }
               break;
            case "POWERUPOVER2":
               if(§-#+§.§6!§.§=b§(§%#k§.§'"!§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§'"!§.buttonName),true);
               }
               break;
            case "POWERUPOVER3":
               if(§-#+§.§6!§.§=b§(§%#k§.§0"W§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§0"W§.buttonName),true);
               }
               break;
            case "POWERUPOVER4":
               if(§-#+§.§6!§.§=b§(§%#k§.§6`§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§6`§.buttonName),true);
               }
               break;
            case "POWERUPOVER5":
               if(§-#+§.§6!§.§=b§(§%#k§.§@#l§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§@#l§.buttonName),true);
               }
               break;
            case "POWERUPOVER6":
               if(§-#+§.§6!§.§=b§(§%#k§.§>#Z§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§>#Z§.buttonName),true);
               }
               break;
            case "POWERUPOVER7":
               if(§-#+§.§6!§.§=b§(§%#k§.§[4§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§[4§.buttonName),true);
               }
               break;
            case "POWERUPOVER8":
               if(§-#+§.§6!§.§=b§(§%#k§.§'!N§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§'!N§.buttonName),true);
               }
               break;
            case "POWERUPOVER_MIGHTY_EAGLE":
               if(§-#+§.§6!§.§=b§(§%#k§.§]k§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§]k§.buttonName),true);
               }
               break;
            case "POWERUPOVER_WINGMAN":
               if(§-#+§.§6!§.§=b§(§%#k§.§6"t§.§5"g§) <= 0)
               {
                  this.§@"-§(this.§^N§.getItemByName(§%#k§.§6"t§.buttonName),true);
               }
               break;
            case "POWERUPOUT1":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§""z§.buttonName),false);
               break;
            case "POWERUPOUT2":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§'"!§.buttonName),false);
               break;
            case "POWERUPOUT3":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§0"W§.buttonName),false);
               break;
            case "POWERUPOUT4":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§6`§.buttonName),false);
               break;
            case "POWERUPOUT5":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§@#l§.buttonName),false);
               break;
            case "POWERUPOUT6":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§>#Z§.buttonName),false);
               break;
            case "POWERUPOUT7":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§[4§.buttonName),false);
               break;
            case "POWERUPOUT8":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§'!N§.buttonName),false);
               break;
            case "POWERUPOUT_MIGHTY_EAGLE":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§]k§.buttonName),false);
               break;
            case "POWERUPOUT_WINGMAN":
               this.§@"-§(this.§^N§.getItemByName(§%#k§.§6"t§.buttonName),false);
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §]i§.§,"f§();
               break;
            case "ZOOM_IN":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§^!z§ = §6#]§;
               this.§'"0§ = §'Y§;
               break;
            case "ZOOM_OUT":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§^!z§ = -§6#]§;
               this.§'"0§ = §'Y§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§^!z§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§^!z§ = 0;
               break;
            case "SLINGSHOT_OPEN":
               if(this.§?p§.§8'§())
               {
                  §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               }
               else
               {
                  §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               }
               this.§?p§.§>#S§();
               break;
            case "SLINGSHOT_NORMAL":
               this.§;#c§("SLINGSHOT_NORMAL");
               break;
            case "SLINGSHOT_WOODCHIPPER":
            case "SLINGSHOT_BUY_SLING_1":
               this.§;#c§("SLINGSHOT_WOODCHIPPER");
               break;
            case "SLINGSHOT_GLASSBREAKER":
            case "SLINGSHOT_BUY_SLING_2":
               this.§;#c§("SLINGSHOT_GLASSBREAKER");
               break;
            case "SLINGSHOT_STONECUTTER":
            case "SLINGSHOT_BUY_SLING_3":
               this.§;#c§("SLINGSHOT_STONECUTTER");
               break;
            case "SLINGSHOT_GOLDEN":
            case "SLINGSHOT_BUY_SLING_4":
               this.§;#c§("SLINGSHOT_GOLDEN");
               break;
            case "SLINGSHOT_WISHBONE":
            case "SLINGSHOT_BUY_SLING_5":
               this.§;#c§("SLINGSHOT_WISHBONE");
               break;
            case "SLINGSHOT_XMASTREE":
            case "SLINGSHOT_BUY_SLING_6":
               this.§;#c§("SLINGSHOT_XMASTREE");
               break;
            case "SLINGSHOT_BOUNCY":
            case "SLINGSHOT_UNLOCK_BOUNCY":
               this.§;#c§("SLINGSHOT_BOUNCY");
               break;
            case "SLINGSHOT_DIAMOND":
            case "SLINGSHOT_UNLOCK_DIAMOND":
               this.§;#c§("SLINGSHOT_DIAMOND");
               break;
            case "LEVEL_END_NO":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               timer = new Timer(100);
               timer.addEventListener(TimerEvent.TIMER,function fn(param1:TimerEvent):void
               {
                  §`T§();
                  timer = null;
               });
               timer.start();
               break;
            case "LEVEL_END_YES":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.skipToLevelEnd(§ try§.§%#v§);
               break;
            case "SKIP_LEVEL_END":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.skipToLevelEnd(§ try§.§5!U§);
         }
      }
      
      private function §7!z§(param1:String) : void
      {
         if(this.§^@§ == §?#=§)
         {
            return;
         }
         this.§;"9§.§?#h§(param1,false);
         this.§;"9§.§"t§(param1);
         this.§`T§();
      }
      
      private function §@"-§(param1:§@"!§, param2:Boolean) : void
      {
         var getMoreMC:MovieClip = null;
         var button:§@"!§ = param1;
         var startPlaying:Boolean = param2;
         getMoreMC = button.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         if(!startPlaying)
         {
            getMoreMC.visible = false;
            return;
         }
         getMoreMC.visible = true;
         getMoreMC.mouseChildren = false;
         getMoreMC.mouseEnabled = false;
         getMoreMC.gotoAndPlay(2);
         getMoreMC.addEventListener(Event.ENTER_FRAME,function(param1:Event):void
         {
            if(getMoreMC.currentFrameLabel == "End")
            {
               getMoreMC.gotoAndStop(1);
               getMoreMC.removeEventListener(Event.ENTER_FRAME,arguments.callee);
            }
         });
      }
      
      private function §;#c§(param1:String) : void
      {
         if((§3#U§.§#$4§ as §2$2§).§2"P§.§8R§())
         {
            return;
         }
         var _loc2_:§'#v§ = §4"c§.§?3§(param1);
         if(_loc2_)
         {
            this.§?p§.§+"W§(_loc2_.§5"g§,false);
            this.§`T§();
         }
         this.§""M§ = §[L§;
      }
      
      public function §+#k§() : String
      {
         return "PlayView";
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:§6"6§ = null;
         if(!this.§`!x§ && !this.§'Z§)
         {
            return false;
         }
         if(this.isEagleUsed())
         {
            _loc1_ = this.§!!p§.§5#8§();
            if(!_loc1_)
            {
               return true;
            }
            return _loc1_.§,!x§ && _loc1_.§9!z§ && _loc1_.§8G§ > 3000;
         }
         if((this.§!!p§ as §<#Z§).§'"`§.§ !#§() && !this.§`C§)
         {
            return false;
         }
         return super.isAllowedToChangeVictoryState();
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if((this.§!!p§ as §<#Z§).§'"`§.§ !#§())
         {
            return false;
         }
         return super.isAllowedToChangeFailState();
      }
      
      private function §9!4§() : void
      {
         (this.§!!p§ as §<#Z§).§^Q§();
      }
      
      private function §@n§() : Boolean
      {
         if((this.§!!p§ as §<#Z§).§'"`§.§ !#§())
         {
            return false;
         }
         if(AngryBirdsBase.singleton.popupManager.§#"q§())
         {
            return false;
         }
         return true;
      }
      
      private function §<#B§(param1:§1#e§) : void
      {
         (§3#U§.§9#^§ as §,A§).§9"x§.§ !6§();
      }
      
      protected function skipToLevelEnd(param1:String) : void
      {
         var levelEndActionForAnalytics:String = param1;
         if((§3#U§.§#$4§.slingshot as §9"^§).mSlingShotState == §9"^§.§"!a§)
         {
            return;
         }
         if((§3#U§.§#$4§ as §2$2§).§2"P§.§8R§())
         {
            if(!this.§6#q§)
            {
               this.§6#q§ = new SyncingPopup(§]"$§.§[#=§,§^"U§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(this.§6#q§);
               (§3#U§.§#$4§ as §2$2§).§2"P§.addEventListener(Event.COMPLETE,function():void
               {
                  (§3#U§.§#$4§ as §2$2§).§2"P§.removeEventListener(Event.COMPLETE,§-"e§);
                  §6#q§.close();
                  §6#q§ = null;
                  skipToLevelEnd(levelEndActionForAnalytics);
               });
            }
            return;
         }
         § try§.§!!t§().§2$#§ = levelEndActionForAnalytics;
         this.§`!x§ = true;
         this.§`C§ = true;
         if(this.§7#Q§)
         {
            this.§7#Q§.setVisibility(false);
         }
         this.§;"9§.§!6§();
         this.§^@§ = §!#j§;
         if(this.§!!p§.§,"Y§())
         {
            this.§!!p§.§"!A§();
         }
         else
         {
            this.§!!p§.§ "i§();
         }
      }
      
      private function §2"A§() : void
      {
         this.§7#Q§.setVisibility(true);
         §4"y§.getItemByName("EndLevelDialogueTitle").y = §#!9§;
         (§4"y§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).gotoAndStop(1);
         §4"y§.getItemByName("Button_No").setVisibility(true);
         §4"y§.getItemByName("Button_No").mClip.scaleX = 1;
         §4"y§.getItemByName("Button_No").mClip.scaleY = 1;
         §4"y§.getItemByName("TextField_EndLevelCounter").setVisibility(true);
         this.§+!x§.scaleX = 1;
         this.§+!x§.scaleY = 1;
         if(§3#U§.§#$4§.slingshot.mSlingShotState == § !o§.§2"j§ && !(§3#U§.§#$4§ as §2$2§).§2"P§.§0Y§)
         {
            this.§6"T§(true,this.§!!p§.§,"Y§());
         }
         var _loc1_:MovieClip = §4"y§.getItemByName("TextField_EndLevelCounter").mClip;
         this.§'0§ = §&"H§.§6!§.§>##§(§&"H§.§6!§.§6C§(_loc1_,{},{},0.8),§&"H§.§6!§.§6C§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§&"H§.§!!;§),§&"H§.§6!§.§6C§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§&"H§.§;a§));
         this.§'0§.§"$ § = false;
         this.§'0§.delay = 0.1;
         this.§'0§.play();
      }
      
      private function §`T§() : void
      {
         var _loc1_:§4[§ = null;
         var _loc2_:§4[§ = null;
         if(this.§^@§ > §&#§)
         {
            this.§5#5§(this.§'0§);
            this.§'0§ = null;
            this.§^@§ = §!#j§;
            §4"y§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            _loc1_ = §&"H§.§6!§.§6C§(§4"y§.getItemByName("Button_No").mClip,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":1,
               "scaleY":1
            },0.2,§&"H§.§;a§);
            _loc1_.onComplete = this.§+_§;
            _loc1_.play();
            _loc2_ = §&"H§.§6!§.§6C§(§4"y§.getItemByName("EndLevelDialogueTitle").mClip,{"y":§>"e§},{"y":§#!9§},0.3,§&"H§.§;a§);
            _loc2_.onComplete = this.§!#G§;
            _loc2_.play();
            this.§4"Q§ = §&"H§.§6!§.§6C§(this.§+!x§,{
               "scaleX":0.8,
               "scaleY":0.8
            },{
               "scaleX":1,
               "scaleY":1
            },0.3,§&"H§.§;a§);
            this.§4"Q§.onComplete = this.§="t§;
            this.§4"Q§.play();
         }
      }
      
      private function §+_§() : void
      {
         §4"y§.getItemByName("Button_No").setVisibility(false);
      }
      
      private function §!#G§() : void
      {
         §4"y§.getItemByName("EndLevelDialogueTitle").y = §>"e§;
      }
      
      private function §="t§() : void
      {
         if(this.§1K§ <= 0)
         {
            this.§7#Q§.setVisibility(true);
            this.§^@§ = §!#j§;
            §4"y§.getItemByName("EndLevelDialogueTitle").y = §>"e§;
            §4"y§.getItemByName("Button_No").setVisibility(false);
            §4"y§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            this.§+!x§.scaleX = 0.8;
            this.§+!x§.scaleY = 0.8;
            (§4"y§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).play();
            this.§4"Q§ = null;
         }
      }
      
      private function §6"T§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:§4[§ = null;
         if(param1 && this.§?#o§)
         {
            return;
         }
         if(param1 && §`"O§.§6!§.§4u§())
         {
            return;
         }
         var _loc3_:§@"!§ = this.§^N§.getItemByName(§%#k§.§6"t§.buttonName);
         var _loc4_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderUse") as MovieClip;
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderImprove") as MovieClip;
         if(param1 && !this.§ ##§)
         {
            if(param2)
            {
               _loc6_ = _loc5_.Movieclip_SliderBackground;
               _loc5_.visible = true;
               _loc4_.visible = false;
            }
            else
            {
               _loc6_ = _loc4_.Movieclip_SliderBackground;
               _loc5_.visible = false;
               _loc4_.visible = true;
            }
            _loc6_.x = -_loc6_.width;
            (_loc7_ = §&"H§.§6!§.§6C§(_loc6_,{"x":0},null,0.7,§&"H§.§-t§)).§"$ §;
            _loc7_.§0! § = true;
            _loc7_.play();
            this.§?#o§ = true;
         }
         else
         {
            _loc4_.visible = false;
            _loc5_.visible = false;
         }
      }
      
      private function §;# §() : void
      {
         this.§;"9§.§!!i§();
         §]i§.showTutorials(false,true);
      }
      
      protected function handleCollectibleItems() : void
      {
         var _loc1_:§5!Z§ = null;
         if(§`"O§.§6!§.§8!>§())
         {
            _loc1_ = §`"O§.§6!§.§!!I§() as §5!Z§;
            if(_loc1_)
            {
               _loc1_.§3#0§();
            }
         }
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
