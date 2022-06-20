package §[$&§
{
   import § "$§.§'"R§;
   import § o§.§%"!§;
   import § o§.SyncingPopup;
   import §!@§.§,!z§;
   import §%#A§.§'=§;
   import §%#A§.§]!_§;
   import §&"J§.§4"W§;
   import §&"J§.§<&§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §+!C§.§#!L§;
   import §+!C§.§1!$§;
   import §+!C§.§9!b§;
   import §+!C§.§]#b§;
   import §1#W§.§!#&§;
   import §1#W§.§5I§;
   import §1#W§.§9§;
   import §1#W§.§="D§;
   import §1#W§.§`#+§;
   import §6"r§.§!#A§;
   import §6V§.§#j§;
   import §6V§.§&"g§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§@!o§;
   import §6V§.§`"5§;
   import §8"X§.§#p§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §9+§.Starling;
   import §94§.§"!u§;
   import §94§.§9#P§;
   import §94§.§[j§;
   import §94§.§]#e§;
   import §94§.§`"m§;
   import §;5§.§12§;
   import §;P§.§-#b§;
   import §;P§.§7;§;
   import §;P§.§super§;
   import §<"1§.§[!K§;
   import §<#m§.§8!j§;
   import §<#m§.§^#o§;
   import §<o§.§3h§;
   import §<u§.§ "a§;
   import §=#C§.§1"r§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import §>!5§.§<j§;
   import §>!5§.§?c§;
   import §@!n§.§`$<§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §[!2§.§=!C§;
   import §["-§.§3"<§;
   import §["-§.§;#>§;
   import §["r§.§8`§;
   import §[§.§]"w§;
   import §]#K§.§>#x§;
   import §];§.§-!t§;
   import §^"f§.§^d§;
   import §^$1§.§6#J§;
   import §`!R§.§&"8§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §#!J§ extends §=!C§ implements §7#M§, §]"w§
   {
      
      private static const §]o§:Number = -5 * 1000;
      
      private static const §,>§:Number = 10 * 1000;
      
      public static const §8!w§:int = 50;
      
      public static var §7#B§:Number = 0;
      
      public static var §3u§:int = 0;
      
      private static const §,w§:Number = 20;
      
      private static const §0!u§:Number = 0.1;
      
      public static const §5#F§:String = "4000-";
      
      private static const §+?§:int = 0;
      
      private static const §`!Z§:int = -1;
      
      private static const §#"§:int = -2;
      
      private static const §^1§:int = 700;
      
      private static const §-!+§:Number = -43.05;
      
      private static const §+H§:Number = -2.05;
       
      
      private var §;!X§:Number = -5000.0;
      
      private var §+#;§:int = 0;
      
      private var §3!x§:Number = 0;
      
      private var §!! §:Number = 0;
      
      protected var §["m§:Boolean;
      
      private var §#!]§:Boolean = false;
      
      protected var §-!;§:§#j§;
      
      private var §-"P§:Vector.<int>;
      
      private var § 3§:Boolean;
      
      private var §"![§:Boolean;
      
      private var §9!2§:String = "";
      
      protected var §"@§:§^d§;
      
      private var §9!<§:Boolean = true;
      
      private var §1"e§:Boolean = false;
      
      private var §&$>§:Boolean = false;
      
      private var §7#a§:SyncingPopup;
      
      protected var §,!=§:§7;§;
      
      protected var §%""§:§1"r§;
      
      protected var §1"R§:Boolean = false;
      
      private var §3#y§:§-#C§;
      
      private var §6"^§:Number = 0;
      
      private var §4"y§:Number = 0;
      
      private var §&!k§:Number;
      
      protected var §?5§:§;#>§;
      
      private var §<"X§:Number = 0;
      
      private var §5#1§:§&"g§;
      
      private var §4z§:Boolean = false;
      
      private var §@"J§:Boolean = false;
      
      private var §'!`§:Boolean;
      
      private const §-#N§:int = 500;
      
      private const §]"d§:int = 10000;
      
      private const §0#v§:int = 20.0;
      
      private const §;!G§:int = 8000;
      
      private const §1!3§:int = 1000;
      
      private var §;3§:int;
      
      private var §<!S§:Boolean;
      
      private var §6@§:Boolean = false;
      
      private var §4W§:Boolean;
      
      protected var §%#+§:§]!_§;
      
      private var §<##§:§]!_§;
      
      private var §+9§:int;
      
      private var §7#_§:int;
      
      private var §`#V§:§-#C§;
      
      private var §"#b§:MovieClip;
      
      private var §6!]§:§-#C§;
      
      private var § #u§:int;
      
      protected var §"!K§:§]!_§;
      
      private var §"Y§:Boolean = false;
      
      private var §-+§:§]!_§;
      
      protected var §7%§:§<j§;
      
      public function §#!J§(param1:§]!_§, param2:§^#Q§, param3:§;#>§, param4:§<&§, param5:§+#!§)
      {
         this.§-!;§ = new §#j§();
         this.§-"P§ = new Vector.<int>(32);
         this.§5#1§ = new §&"g§();
         this.§?5§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         this.§-"P§[3] = 5000;
         this.§-"P§[7] = 5000;
         this.§-"P§[8] = 5000;
         this.§-"P§[9] = 5000;
         this.§-"P§[18] = 5000;
         §@!3§.setVisibility(false);
         this.§"!K§ = §@!3§.getItemByName("Container_Buttons") as §]!_§;
         this.§-+§ = §@!3§.getItemByName("Container_Overlay") as §]!_§;
         this.§-+§.setVisibility(true);
         this.§"Y§ = false;
         this.§7%§ = (§!#A§.§#F§ as §#!L§).objects as §<j§;
         this.§&#$§();
         this.§3#d§();
         this.§>N§();
         this.§`!"§();
         this.§>!o§();
         this.levelStarted();
         if((§!#A§.§>q§ as §-#+§).§'M§)
         {
            (§!#A§.§>q§ as §-#+§).§'M§.addEventListener(§`$<§.§^"v§,this.§@y§);
         }
         this.§<!S§ = false;
         this.§%#+§ = §@!3§.getItemByName("Container_ZoomButtons") as §]!_§;
         this.§ #u§ = 0;
         §@!3§.getItemByName("ScoreMultiplierIcon").setVisibility(false);
      }
      
      protected function §&#$§() : void
      {
         this.§<##§ = §@!3§.getItemByName("Container_EndLevelDialogue") as §]!_§;
         this.§<##§.setVisibility(false);
         this.§"#b§ = §@!3§.getItemByName("EndLevelDialogueBG").mClip;
         this.§+9§ = §+?§;
         this.§7#_§ = 0;
      }
      
      protected function §3#d§() : void
      {
         this.§"@§ = new §^d§(§@!3§);
      }
      
      protected function §>N§() : void
      {
         this.§,!=§ = new §7;§(§@!3§,mLevelManager);
      }
      
      protected function §`!"§() : void
      {
         var _loc2_:§6!u§ = null;
         this.§%""§ = new §1"r§(§@!3§,mLevelManager);
         var _loc1_:Object = §`]§(AngryBirdsBase.singleton.dataModel).§ in§.§@;§(§,!z§.§]#t§);
         if(!_loc1_)
         {
            this.§%""§.§!!!§(§1"r§.§,#8§(),true);
         }
         else
         {
            _loc2_ = §7"G§.§-o§(_loc1_[0]);
            if(_loc2_ && _loc2_.§3"i§)
            {
               this.§%""§.§!!!§(_loc1_[0],true);
            }
            else
            {
               this.§%""§.§!!!§(§7"G§.§!k§.§?"9§,true);
            }
         }
      }
      
      override public function dispose() : void
      {
         if((§!#A§.§>q§ as §-#+§).§'M§)
         {
            (§!#A§.§>q§ as §-#+§).§'M§.removeEventListener(§`$<§.§^"v§,this.§@y§);
         }
         this.disable(false);
         this.§%""§.dispose();
         this.§5#1§ = null;
         this.§#"l§();
         §-!t§.§ "D§.removeEventListener(§'"R§.§4&§,this.§^!p§);
         this.§`!O§(this.§`#V§);
         this.§`#V§ = null;
         this.§`!O§(this.§6!]§);
         this.§6!]§ = null;
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         var _loc2_:Boolean = §8!j§(AngryBirdsBase.singleton.popupManager).§`$§();
         if(!_loc2_)
         {
            §!#A§.resume();
         }
         §@!3§.setVisibility(true);
         §@!3§.addEventListener(§3h§.§9"L§,this.onUIInteraction);
         this.§!9§();
         this.§,!=§.activate(§3"<§(this.§?5§),false,false);
         if(!this.§'!`§)
         {
            this.§##P§(false);
         }
         if(§1"r§.§@1§)
         {
            §@!3§.getItemByName("Button_Slingshot").setVisibility(true);
         }
         else
         {
            §@!3§.getItemByName("Button_Slingshot").setVisibility(false);
         }
         §-!t§.§ "D§.addEventListener(§'"R§.§4&§,this.§^!p§);
         if(!this.§-+§)
         {
            this.§^!R§();
         }
      }
      
      protected function §@y§(param1:§`$<§) : void
      {
         this.§]X§();
      }
      
      override public function disable(param1:Boolean) : void
      {
         §@!3§.setVisibility(false);
         §@!3§.removeEventListener(§3h§.§9"L§,this.onUIInteraction);
         §8`§.§]=§();
         this.§"@§.deActivate();
         this.§,!=§.deActivate();
         this.§%""§.deActivate();
         this.§?5§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!"Q§);
         if(this.§3#y§)
         {
            this.§`!O§(this.§3#y§);
            this.§3#y§ = null;
         }
         this.§`!O§(this.§`#V§);
         this.§`#V§ = null;
         this.§`!O§(this.§6!]§);
         this.§6!]§ = null;
         §!#A§.§#F§.§#2§(false);
         this.§&"§();
         this.§"#+§();
         super.disable(param1);
      }
      
      private function §`!O§(param1:§-#C§) : void
      {
         if(param1)
         {
            param1.§=`§();
         }
      }
      
      protected function §#"l§() : void
      {
         var _loc2_:§="D§ = null;
         if(§!#A§.§#F§.background)
         {
            §!#A§.§#F§.background.stopAmbientSound();
         }
         §!#&§.§4#J§(§`#+§.§;#G§);
         §7#B§ = 0;
         var _loc1_:§5I§ = §!#&§.§3!c§(§`#+§.§;#G§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§8]§(this.§9!2§);
            if(_loc2_ != null)
            {
               §7#B§ = _loc2_.§^§;
            }
            §!#&§.§4#J§(§`#+§.§;#G§);
         }
      }
      
      protected function §!9§() : void
      {
         this.§;#$§();
         this.§"@§.activate();
         if(this.§1"e§)
         {
            this.§?5§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!"Q§);
         }
         §@!3§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§&!k§ = 2500;
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§ y§);
         this.§"#+§();
      }
      
      protected function levelStarted() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§-#b§ = null;
         §`"5§.§^!r§(§@!o§.§8z§,mLevelManager.currentLevel);
         §`"5§.trackPageView(this,this.§>"-§());
         if(mLevelManager.currentLevel != §`!Q§.§,#,§)
         {
            §`!Q§.§,#,§ = mLevelManager.currentLevel;
            this.§<"X§ = 0;
         }
         else
         {
            ++this.§<"X§;
         }
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel);
         §?!=§.§3!q§().§@#d§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,_loc1_,this.§<"X§);
         if((§!#A§.§>q§ as §-#+§).§'M§)
         {
            (§!#A§.§>q§ as §-#+§).§'M§.levelStarted();
         }
         this.showScoresForLevel();
         this.§]X§();
         this.§1"e§ = false;
         this.§&$>§ = false;
         this.§?5§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!"Q§);
         if(§1"r§.§@1§)
         {
            §@!3§.getItemByName("Button_Slingshot").setEnabled(true);
            this.§1"R§ = false;
            if(this.§3#y§)
            {
               this.§`!O§(this.§3#y§);
               this.§3#y§ = null;
            }
         }
         (§!#A§.§#F§ as §#!L§).§1"-§.§#"i§ = false;
         this.§;3§ = this.§1!3§;
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            if(§ "a§.§ "D§.§!#d§())
            {
               _loc2_ = new Array();
               for each(_loc3_ in §super§.§;N§)
               {
                  _loc2_.push(_loc3_);
               }
               _loc2_.push(§super§.§^!M§);
               this.§"#!§(_loc2_);
            }
            else
            {
               this.§"#!§(§super§.§;N§);
            }
         }
         else if((mLevelManager as §`!Q§).§?"X§())
         {
            this.§"#!§(§super§.§`j§);
         }
         else
         {
            this.§"#!§(§super§.§>!X§);
         }
         this.§%""§.activate(§3"<§(this.§?5§));
         §@!3§.getItemByName("Container_Slingshot_Buttons").setVisibility(false);
         this.§6@§ = false;
         this.§'!`§ = false;
         this.handleCollectibleItems();
      }
      
      protected function §"#!§(param1:Array) : void
      {
         var _loc5_:§-#b§ = null;
         var _loc6_:§[!K§ = null;
         var _loc2_:Number = 100;
         for each(_loc5_ in §super§.§`t§)
         {
            (_loc6_ = §@!3§.getItemByName(_loc5_.buttonName)).setVisibility(false);
         }
         for each(_loc5_ in param1)
         {
            (_loc6_ = §@!3§.getItemByName(_loc5_.buttonName)).x = _loc2_;
            _loc6_.y = 44;
            _loc6_.setVisibility(true);
            _loc2_ += 65;
         }
      }
      
      protected function §>!o§() : void
      {
         this.§-!;§.§`"x§(0);
         this.§'"G§(0);
         this.§["m§ = false;
         this.§"@§.§2m§ = this.§["m§;
      }
      
      private function §!"Q§(param1:MouseEvent) : void
      {
         this.§&$>§ = true;
         this.§?5§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!"Q§);
      }
      
      protected function §]X§() : void
      {
         this.§"@§.levelStarted((§!#A§.§>q§ as §-#+§).§'M§.§!"w§(),mLevelManager.currentLevel,(§!#A§.§>q§ as §-#+§).§'M§.§6'§() == §&"8§.§6D§);
      }
      
      protected function §;#$§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§5I§ = null;
         var _loc4_:§="D§ = null;
         if(mLevelManager.currentLevel.indexOf("3001-") > -1 || mLevelManager.currentLevel.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(mLevelManager.currentLevel.indexOf("3001-") > -1)
            {
               this.§9!2§ = §`#+§.§-1§;
               if(mLevelManager.currentLevel.indexOf("3001-1") > -1)
               {
                  _loc1_ = §`#+§.§##^§;
               }
               else if(mLevelManager.currentLevel.indexOf("3001-2") > -1)
               {
                  _loc1_ = §`#+§.§]c§;
                  this.§9!2§ = §`#+§.§8"k§;
               }
               else
               {
                  _loc1_ = §`#+§.§##^§;
               }
               if(AngryBirdsBase.singleton.§[##§().previousState != this.§#+§())
               {
                  §7#B§ = 0;
               }
            }
            else if(§3u§ <= 1)
            {
               this.§9!2§ = §`#+§.§7"i§;
               _loc1_ = §`#+§.§>"v§;
               _loc2_ = 1;
               §!#&§.removeEventListener(§9#1§.SOUND_COMPLETE,this.§0#j§);
               §!#&§.addEventListener(§9#1§.SOUND_COMPLETE,this.§0#j§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §!#&§.§3!c§(§`#+§.§;#G§);
               if(!_loc3_)
               {
                  §!#&§.§!"k§(§`#+§.§;#G§,1,1);
               }
               _loc4_ = §!#&§.§>"y§(_loc1_,this.§9!2§,3000,§`#+§.§;#G§,_loc2_,0.75,§7#B§);
            }
         }
      }
      
      private function §0#j§(param1:§9#1§) : void
      {
         if(param1.§%5§ == §`#+§.§7"i§ && this.§9!2§ == §`#+§.§7"i§ && AngryBirdsBase.singleton.§'N§() != §`"m§.STATE_NAME)
         {
            §!#&§.removeEventListener(§9#1§.SOUND_COMPLETE,this.§0#j§);
            ++§#!J§.§3u§;
         }
      }
      
      private function §1"u§(param1:Number) : void
      {
         if(this.§6"^§)
         {
            this.§4"y§ += param1;
            if(this.§4"y§ > §,w§)
            {
               this.§?5§.§3!H§(true,this.§6"^§);
               this.§4"y§ = 0;
            }
         }
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:String = "ALL_EXTRABIRD";
         if((mLevelManager as §`!Q§).§?"X§())
         {
            _loc1_ = "ALL_MUSHROOM";
         }
         §8`§.§="@§(_loc1_,true);
         §8`§.showTutorials(true,true);
      }
      
      protected function § T§(param1:String) : §'=§
      {
         var _loc2_:§'=§ = this.§5#1§[param1];
         if(!_loc2_)
         {
            _loc2_ = §@!3§.getItemByName(param1) as §'=§;
            this.§5#1§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      protected function §0# §(param1:Number) : void
      {
      }
      
      public function §>"-§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§<^§;
      }
      
      protected function §'"G§(param1:Number) : void
      {
         this.§&#?§();
         var _loc2_:int = this.§?5§.getScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§-!;§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§-!;§.getValue() + param1 * §8!w§);
            this.§-!;§.§`"x§(_loc4_);
         }
         if(this.§#!]§)
         {
            §@!3§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§"@§.§'"G§(_loc4_,_loc2_,_loc3_);
      }
      
      protected function showScoresForLevel() : void
      {
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§[$"§,null);
      }
      
      private function §&"§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§;!X§ > §,>§)
         {
            _loc1_ = Math.round(1000 / this.§;!X§ * this.§+#;§);
            _loc2_ = mLevelManager.currentLevel;
            _loc3_ = (§!#A§.§>q§ as §-#+§).§3#3§();
            §`"5§.§,"B§(_loc1_,_loc2_,Starling.§-m§,_loc3_);
         }
      }
      
      private function §2!#§(param1:Number) : void
      {
         this.§;!X§ += param1;
         if(this.§;!X§ > 0)
         {
            ++this.§+#;§;
         }
         if(this.§3!x§ != §!#A§.§4#2§() || this.§!! § != §!#A§.§%!o§())
         {
            this.§"#+§();
         }
      }
      
      private function §"#+§() : void
      {
         this.§;!X§ = §]o§;
         this.§+#;§ = 0;
         this.§3!x§ = §!#A§.§4#2§();
         this.§!! § = §!#A§.§%!o§();
      }
      
      protected function §7#§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§ 3§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§-"P§.length)
            {
               _loc1_ += this.§-"P§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§ 3§ = true;
               §@!o§.§^!r§(§@!o§.§[!D§,mLevelManager.currentLevel);
            }
         }
         if(this.§"![§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §&#?§() : void
      {
         var _loc1_:int = this.§?5§.getScore();
         var _loc2_:int = this.§-!;§.getValue();
         if(_loc2_ < _loc1_ && this.§ 3§)
         {
            this.§"![§ = true;
         }
      }
      
      protected function §5$;§(param1:Boolean = true) : void
      {
         if(!§1"r§.§@1§)
         {
            return;
         }
         this.§1"R§ = true;
         §@!3§.getItemByName("Button_Slingshot").setEnabled(false);
         this.§`!O§(this.§3#y§);
         this.§3#y§ = §6"w§.§ "D§.§""3§(§@!3§.getItemByName("Button_Slingshot").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§3#y§.delay = 2;
         }
         else
         {
            this.§3#y§.delay = 0.5;
         }
         this.§3#y§.play();
         this.§3#y§.onComplete = this.§+$6§;
      }
      
      private function §+$6§() : void
      {
         §@!3§.getItemByName("Button_Slingshot").setVisibility(false);
      }
      
      protected function §+#&§() : Boolean
      {
         if((§!#A§.§#F§ as §#!L§).§1"-§.§"$1§() && !this.§7#a§)
         {
            this.§7#a§ = new SyncingPopup(§%"!§.§4!P§,§^#o§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§7#a§);
            (§!#A§.§#F§ as §#!L§).§1"-§.addEventListener(Event.COMPLETE,this.§[!V§);
         }
         return !(§!#A§.§#F§ as §#!L§).§1"-§.§"$1§();
      }
      
      private function §[!V§(param1:Event) : void
      {
         (§!#A§.§#F§ as §#!L§).§1"-§.removeEventListener(Event.COMPLETE,this.§[!V§);
         this.§7#a§.close();
         this.§7#a§ = null;
      }
      
      protected function §#+§() : String
      {
         return §`"m§.STATE_NAME;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§["m§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §9#P§.STATE_NAME;
      }
      
      public function getLoserState() : String
      {
         return §[j§.STATE_NAME;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Vector.<String> = null;
         this.§7#§();
         super.update(param1);
         if(this.§ #u§ > 0)
         {
            this.§ #u§ -= param1;
         }
         if(AngryBirdsBase.singleton.popupManager.§`$§())
         {
            if(!this.§<!S§)
            {
               this.§<!S§ = true;
               _loc3_ = new Vector.<String>();
               _loc3_.push(§!#&§.§6#h§);
               §!#&§.§0!A§(_loc3_);
               if(this.§"@§)
               {
                  this.§"@§.deActivate();
               }
            }
            return;
         }
         if(this.§<!S§)
         {
            this.§<!S§ = false;
            if(this.§"@§)
            {
               this.§"@§.activate();
            }
            §!#&§.§+#M§();
         }
         this.§'"G§(param1);
         var _loc2_:Boolean = this.§9!<§ = this.§"@§.run(param1);
         this.§,!=§.run(param1);
         this.§%""§.run(param1);
         this.§1"u§(param1);
         this.§?5§.mouseEnabled = !this.§%""§.§'#i§();
         if(this.§%""§.§'#i§())
         {
            if(this.§4W§)
            {
               this.§%#+§.getItemByName("Button_ZoomIn").setEnabled(false);
               this.§%#+§.getItemByName("Button_ZoomOut").setEnabled(false);
               this.§%#+§.getItemByName("Button_Magnify").setEnabled(false);
               this.§4W§ = false;
            }
         }
         else if(!this.§4W§)
         {
            this.§%#+§.getItemByName("Button_ZoomIn").setEnabled(true);
            this.§%#+§.getItemByName("Button_ZoomOut").setEnabled(true);
            this.§%#+§.getItemByName("Button_Magnify").setEnabled(true);
            this.§4W§ = true;
         }
         this.§2!#§(param1);
         if(!§!#A§.§#F§.§]"p§ || !this.§["m§)
         {
            this.§0# §(param1);
         }
         if(AngryBirdsBase.singleton.§[##§().previousState == §"!u§.STATE_NAME || AngryBirdsBase.singleton.§[##§().previousState == §#p§.STATE_NAME)
         {
            if(!this.§1"e§)
            {
               this.§?5§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!"Q§);
               this.§1"e§ = true;
            }
            if(_loc2_ || this.§&$>§)
            {
               this.§&!k§ -= param1;
               if(this.§&!k§ < 0 || this.§&$>§)
               {
                  if(!this.§+#&§())
                  {
                  }
               }
               §§goto(addr659);
            }
         }
         else if(AngryBirdsBase.singleton.§[##§().previousState == §]#e§.STATE_NAME)
         {
            if(!this.§+#&§())
            {
            }
         }
         addr659:
         if(!§!#A§.§#F§.slingshot.birdsAvailable)
         {
            if(!this.§4z§)
            {
               this.§,!=§.§;T§(§super§.§@"B§.eventName,false);
               this.§,!=§.§;T§(§super§.§&"l§.eventName,false);
               this.§,!=§.§;T§(§super§.§!!y§.eventName,false);
               this.§4z§ = true;
            }
         }
         else
         {
            this.§4z§ = false;
         }
         if(§!#A§.§#F§.objects.getPigCount() == 0)
         {
            if(!this.§@"J§)
            {
               this.§,!=§.§;T§(§super§.§9!T§.eventName,false);
               this.§@"J§ = true;
            }
         }
         else if(this.§@"J§)
         {
            this.§@"J§ = false;
         }
         this.§="a§(param1);
         if(§!#A§.§#F§.slingshot.mSlingShotState == §]#b§.§-"1§)
         {
            this.§,!=§.§3#"§();
            if(!this.§1"R§ && §1"r§.§@1§)
            {
               this.§5$;§(this.§%""§.§'#i§());
               this.§%""§.§7!8§();
            }
         }
         if(!§!#A§.isPaused)
         {
            if(this.§;3§ > 0)
            {
               this.§;3§ -= param1;
            }
         }
         if(§1"r§.§,#8§() == §7"G§.§1d§.§?"9§)
         {
            this.§1$4§();
         }
         if(this.§<##§.visible)
         {
            if(§!#A§.§#F§.slingshot.mSlingShotState == §]#b§.§,$9§ && !(§!#A§.§#F§ as §#!L§).§1"-§.§#"i§)
            {
               this.§##P§(true,this.§?5§.§3"T§());
            }
         }
         if(this.§"Y§)
         {
            this.§"Y§ = false;
            this.§-+§.setVisibility(false);
            this.§-+§ = null;
            this.§^!R§();
         }
         if(this.§-+§ && this.§-+§.visible)
         {
            if(this.§7%§.§&U§)
            {
               this.§"Y§ = true;
            }
         }
      }
      
      private function §1$4§() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:§6#J§ = §!#A§.§#F§.particles as §6#J§;
         var _loc2_:int = 0;
         while(_loc2_ < §9!b§.§9#y§)
         {
            _loc3_ = this.§[§(§!#A§.§#F§.§>$$§.§!"n§,§!#A§.§#F§.§>$$§.§9m§);
            _loc4_ = this.§[§(§!#A§.§#F§.§>$$§.§'##§,0);
            _loc1_.§<!Q§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      protected function §="a§(param1:Number) : void
      {
         if(this.§?5§.§&"i§())
         {
            if(§!#A§.§#F§.slingshot.mDragging)
            {
               if(this.§7#_§ == 0)
               {
                  this.§7#_§ = §1!$§.§?!§;
                  this.§+9§ = §+?§;
               }
               if(this.§+9§ > §+?§)
               {
                  this.§=6§();
               }
            }
            else if(this.§7#_§ > 0)
            {
               this.§7#_§ -= param1;
               if(this.§7#_§ <= 0)
               {
                  this.§7#_§ = -1;
                  if(this.§+9§ < §+?§)
                  {
                     this.§!"8§();
                  }
               }
            }
            else if(this.§+9§ == §+?§)
            {
               this.§+9§ = §1!$§.§&#2§;
               this.§<I§();
               this.§7#_§ = -1;
            }
            else if(this.§+9§ > §+?§)
            {
               this.§+9§ -= param1;
               if(this.§+9§ <= §+?§)
               {
                  §@!3§.setText("0","TextField_EndLevelCounter");
                  this.skipToLevelEnd(§?!=§.§%!l§);
                  this.§+9§ = §#"§;
               }
               else
               {
                  §@!3§.setText("" + int(this.§+9§ / 1000),"TextField_EndLevelCounter");
               }
            }
            else if(!this.§6!]§)
            {
               this.§"#b§.scaleX = 0.8;
               this.§"#b§.scaleY = 0.8;
            }
         }
         else if(this.§+9§ > §+?§)
         {
            this.§+9§ = §+?§;
            this.§7#_§ = 0;
         }
      }
      
      private function §[§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      protected function onUIInteraction(param1:§3h§) : void
      {
         var totalBirds:int = 0;
         var remainingBirds:int = 0;
         var wingmanIndex:int = 0;
         var wingmanIndexString:String = null;
         var timer:Timer = null;
         var meScore:int = 0;
         var event:§3h§ = param1;
         if(§+#3§ || this.§ #u§ > 0)
         {
            return;
         }
         if(event.eventIndex == 1)
         {
            if(§!#A§.§#F§.slingshot.mDragging)
            {
               §!#A§.§#F§.slingshot.shoot();
               this.§?5§.changeGameState(§;#>§.§<#]§);
               return;
            }
            §!#A§.§#F§.camera.stopDragging();
         }
         switch(event.eventName)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               dispatchEvent(new §12§(§12§.§;"1§));
               if(this.§+9§ > §+?§)
               {
                  this.§!"8§();
               }
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §12§(§12§.RESTART_LEVEL));
               break;
            case "CLOSE_TUTORIAL":
               §8`§.§]=§();
               break;
            case "POWERUP1":
               this.§##t§(§super§.§@"B§.eventName);
               break;
            case "POWERUP2":
               this.§##t§(§super§.§&"l§.eventName);
               break;
            case "POWERUP3":
               this.§##t§(§super§.§!!y§.eventName);
               break;
            case "POWERUP4":
               this.§##t§(§super§.§+!d§.eventName);
               break;
            case "POWERUP5":
               this.§##t§(§super§.§9!T§.eventName);
               break;
            case "POWERUP6":
               this.§##t§(§super§.§%#[§.eventName);
               break;
            case "POWERUP7":
               this.§##t§(§super§.§^!M§.eventName);
               break;
            case "POWERUP_WINGMAN":
               if(this.§+9§ == §#"§)
               {
                  return;
               }
               if(this.§;3§ > 0)
               {
                  return;
               }
               if(§4"W§.§ "D§.§04§(§super§.§#"[§.§?"9§) > 0)
               {
                  this.§##P§(false);
               }
               this.§,!=§.§>$7§(event.eventName);
               totalBirds = §!#A§.§#F§.slingshot.§ "+§();
               remainingBirds = §!#A§.§#F§.slingshot.§%a§();
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
               this.§"#@§();
               this.§=6§();
               this.§ #u§ = §^1§;
               this.§"!=§(this.§"!K§.getItemByName(§super§.§#"[§.buttonName),false);
               break;
            case "POWERUP_MIGHTY_EAGLE":
               if(this.§+9§ == §#"§)
               {
                  return;
               }
               if((§!#A§.§#F§ as §#!L§).§1"-§.§"$1§())
               {
                  return;
               }
               if((§!#A§.§#F§ as §#!L§).§1"-§.useMightyEagle())
               {
                  this.§,!=§.§;T§(§super§.§@"B§.eventName,false);
                  this.§,!=§.§;T§(§super§.§&"l§.eventName,false);
                  this.§,!=§.§;T§(§super§.§!!y§.eventName,false);
                  this.§,!=§.§;T§(§super§.§+!d§.eventName,false);
                  this.§,!=§.§;T§(§super§.§9!T§.eventName,false);
                  this.§,!=§.§;T§(§super§.§["0§.eventName,false);
                  this.§,!=§.§;T§(§super§.§#"[§.eventName,false);
                  §!#A§.§#F§.useMightyEagle();
                  meScore = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
                  §@!3§.setText(meScore.toString() + "%","TextField_MEPercentage");
                  this.§["m§ = true;
                  this.§"@§.§2m§ = this.§["m§;
                  §8`§.showTutorials();
                  this.§"#@§();
                  this.§##P§(false);
               }
               else
               {
                  this.§,!=§.§>$7§(event.eventName);
               }
               this.§=6§();
               this.§ #u§ = §^1§;
               this.§"!=§(this.§"!K§.getItemByName(§super§.§["0§.buttonName),false);
               break;
            case "POWERUPOVER1":
               if(§4"W§.§ "D§.§04§(§super§.§@"B§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§@"B§.buttonName),true);
               }
               break;
            case "POWERUPOVER2":
               if(§4"W§.§ "D§.§04§(§super§.§&"l§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§&"l§.buttonName),true);
               }
               break;
            case "POWERUPOVER3":
               if(§4"W§.§ "D§.§04§(§super§.§!!y§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§!!y§.buttonName),true);
               }
               break;
            case "POWERUPOVER4":
               if(§4"W§.§ "D§.§04§(§super§.§+!d§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§+!d§.buttonName),true);
               }
               break;
            case "POWERUPOVER5":
               if(§4"W§.§ "D§.§04§(§super§.§9!T§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§9!T§.buttonName),true);
               }
               break;
            case "POWERUPOVER6":
               if(§4"W§.§ "D§.§04§(§super§.§%#[§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§%#[§.buttonName),true);
               }
               break;
            case "POWERUPOVER7":
               if(§4"W§.§ "D§.§04§(§super§.§^!M§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§^!M§.buttonName),true);
               }
               break;
            case "POWERUPOVER_MIGHTY_EAGLE":
               if(§4"W§.§ "D§.§04§(§super§.§["0§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§["0§.buttonName),true);
               }
               break;
            case "POWERUPOVER_WINGMAN":
               if(§4"W§.§ "D§.§04§(§super§.§#"[§.§?"9§) <= 0)
               {
                  this.§"!=§(this.§"!K§.getItemByName(§super§.§#"[§.buttonName),true);
               }
               break;
            case "POWERUPOUT1":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§@"B§.buttonName),false);
               break;
            case "POWERUPOUT2":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§&"l§.buttonName),false);
               break;
            case "POWERUPOUT3":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§!!y§.buttonName),false);
               break;
            case "POWERUPOUT4":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§+!d§.buttonName),false);
               break;
            case "POWERUPOUT5":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§9!T§.buttonName),false);
               break;
            case "POWERUPOUT6":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§%#[§.buttonName),false);
               break;
            case "POWERUPOUT7":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§^!M§.buttonName),false);
               break;
            case "POWERUPOUT_MIGHTY_EAGLE":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§["0§.buttonName),false);
               break;
            case "POWERUPOUT_WINGMAN":
               this.§"!=§(this.§"!K§.getItemByName(§super§.§#"[§.buttonName),false);
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §8`§.§]=§();
               break;
            case "ZOOM_IN":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§6"^§ = §0!u§;
               this.§4"y§ = §,w§;
               break;
            case "ZOOM_OUT":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§6"^§ = -§0!u§;
               this.§4"y§ = §,w§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§6"^§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§6"^§ = 0;
               break;
            case "SLINGSHOT_OPEN":
               if(this.§%""§.§'#i§())
               {
                  §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
               }
               else
               {
                  §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               }
               this.§%""§.§,X§();
               break;
            case "SLINGSHOT_NORMAL":
               this.§2"E§("SLINGSHOT_NORMAL");
               break;
            case "SLINGSHOT_WOODCHIPPER":
            case "SLINGSHOT_BUY_SLING_1":
               this.§2"E§("SLINGSHOT_WOODCHIPPER");
               break;
            case "SLINGSHOT_GLASSBREAKER":
            case "SLINGSHOT_BUY_SLING_2":
               this.§2"E§("SLINGSHOT_GLASSBREAKER");
               break;
            case "SLINGSHOT_STONECUTTER":
            case "SLINGSHOT_BUY_SLING_3":
               this.§2"E§("SLINGSHOT_STONECUTTER");
               break;
            case "SLINGSHOT_GOLDEN":
            case "SLINGSHOT_BUY_SLING_4":
               this.§2"E§("SLINGSHOT_GOLDEN");
               break;
            case "SLINGSHOT_WISHBONE":
            case "SLINGSHOT_BUY_SLING_5":
               this.§2"E§("SLINGSHOT_WISHBONE");
               break;
            case "SLINGSHOT_XMASTREE":
            case "SLINGSHOT_BUY_SLING_6":
               this.§2"E§("SLINGSHOT_XMASTREE");
               break;
            case "SLINGSHOT_BOUNCY":
            case "SLINGSHOT_UNLOCK_BOUNCY":
               this.§2"E§("SLINGSHOT_BOUNCY");
               break;
            case "SLINGSHOT_DIAMOND":
            case "SLINGSHOT_UNLOCK_DIAMOND":
               this.§2"E§("SLINGSHOT_DIAMOND");
               break;
            case "LEVEL_END_NO":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               timer = new Timer(100);
               timer.addEventListener(TimerEvent.TIMER,function fn(param1:TimerEvent):void
               {
                  §=6§();
                  timer = null;
               });
               timer.start();
               break;
            case "LEVEL_END_YES":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.skipToLevelEnd(§?!=§.§6"c§);
               break;
            case "SKIP_LEVEL_END":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.skipToLevelEnd(§?!=§.§%!<§);
         }
      }
      
      private function §##t§(param1:String) : void
      {
         if(this.§+9§ == §#"§)
         {
            return;
         }
         this.§,!=§.§;T§(param1,false);
         this.§,!=§.§>$7§(param1);
         this.§=6§();
      }
      
      private function §"!=§(param1:§[!K§, param2:Boolean) : void
      {
         var getMoreMC:MovieClip = null;
         var button:§[!K§ = param1;
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
      
      private function §2"E§(param1:String) : void
      {
         if((§!#A§.§#F§ as §#!L§).§1"-§.§"$1§())
         {
            return;
         }
         var _loc2_:§6!u§ = §7"G§.§3g§(param1);
         if(_loc2_)
         {
            this.§%""§.§!!!§(_loc2_.§?"9§,false);
            this.§=6§();
         }
         this.§ #u§ = §^1§;
      }
      
      public function §-"K§() : String
      {
         return "PlayView";
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:§?c§ = null;
         if(!this.§9!<§ && !this.§&$>§)
         {
            return false;
         }
         if(this.isEagleUsed())
         {
            _loc1_ = this.§?5§.§>"h§();
            if(!_loc1_)
            {
               return true;
            }
            return _loc1_.§;D§ && _loc1_.§9#@§ && _loc1_.§`"b§ > 3000;
         }
         if((this.§?5§ as §3"<§).§"!!§.§7"Y§() && !this.§6@§)
         {
            return false;
         }
         return super.isAllowedToChangeVictoryState();
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if((this.§?5§ as §3"<§).§"!!§.§7"Y§())
         {
            return false;
         }
         return super.isAllowedToChangeFailState();
      }
      
      private function §"#@§() : void
      {
         (this.§?5§ as §3"<§).§@+§();
      }
      
      private function §#$!§() : Boolean
      {
         if((this.§?5§ as §3"<§).§"!!§.§7"Y§())
         {
            return false;
         }
         if(AngryBirdsBase.singleton.popupManager.§`$§())
         {
            return false;
         }
         return true;
      }
      
      private function §^!p§(param1:§'"R§) : void
      {
         (§!#A§.§>q§ as §-#+§).§'M§.§'!v§();
      }
      
      protected function skipToLevelEnd(param1:String) : void
      {
         var levelEndActionForAnalytics:String = param1;
         if((§!#A§.§#F§ as §#!L§).§1"-§.§"$1§())
         {
            if(!this.§7#a§)
            {
               this.§7#a§ = new SyncingPopup(§%"!§.§4!P§,§^#o§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(this.§7#a§);
               (§!#A§.§#F§ as §#!L§).§1"-§.addEventListener(Event.COMPLETE,function():void
               {
                  (§!#A§.§#F§ as §#!L§).§1"-§.removeEventListener(Event.COMPLETE,§[!V§);
                  §7#a§.close();
                  §7#a§ = null;
                  skipToLevelEnd(levelEndActionForAnalytics);
               });
            }
            return;
         }
         §?!=§.§3!q§().§1!@§ = levelEndActionForAnalytics;
         this.§9!<§ = true;
         this.§6@§ = true;
         if(this.§<##§)
         {
            this.§<##§.setVisibility(false);
         }
         this.§,!=§.§?!k§();
         this.§+9§ = §`!Z§;
         if(this.§?5§.§3"T§())
         {
            this.§?5§.§!#X§();
         }
         else
         {
            this.§?5§.§%^§();
         }
      }
      
      private function §<I§() : void
      {
         this.§<##§.setVisibility(true);
         §@!3§.getItemByName("EndLevelDialogueTitle").y = §-!+§;
         (§@!3§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).gotoAndStop(1);
         §@!3§.getItemByName("Button_No").setVisibility(true);
         §@!3§.getItemByName("Button_No").mClip.scaleX = 1;
         §@!3§.getItemByName("Button_No").mClip.scaleY = 1;
         §@!3§.getItemByName("TextField_EndLevelCounter").setVisibility(true);
         this.§"#b§.scaleX = 1;
         this.§"#b§.scaleY = 1;
         if(§!#A§.§#F§.slingshot.mSlingShotState == §]#b§.§,$9§ && !(§!#A§.§#F§ as §#!L§).§1"-§.§#"i§)
         {
            this.§##P§(true,this.§?5§.§3"T§());
         }
         var _loc1_:MovieClip = §@!3§.getItemByName("TextField_EndLevelCounter").mClip;
         this.§`#V§ = §6"w§.§ "D§.§=!b§(§6"w§.§ "D§.§""3§(_loc1_,{},{},0.8),§6"w§.§ "D§.§""3§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§6"w§.§'#v§),§6"w§.§ "D§.§""3§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§6"w§.§]i§));
         this.§`#V§.§&#X§ = false;
         this.§`#V§.delay = 0.1;
         this.§`#V§.play();
      }
      
      private function §=6§() : void
      {
         var _loc1_:§-#C§ = null;
         var _loc2_:§-#C§ = null;
         if(this.§+9§ > §+?§)
         {
            this.§`!O§(this.§`#V§);
            this.§`#V§ = null;
            this.§+9§ = §`!Z§;
            §@!3§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            _loc1_ = §6"w§.§ "D§.§""3§(§@!3§.getItemByName("Button_No").mClip,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":1,
               "scaleY":1
            },0.2,§6"w§.§]i§);
            _loc1_.onComplete = this.§0!Z§;
            _loc1_.play();
            _loc2_ = §6"w§.§ "D§.§""3§(§@!3§.getItemByName("EndLevelDialogueTitle").mClip,{"y":§+H§},{"y":§-!+§},0.3,§6"w§.§]i§);
            _loc2_.onComplete = this.§"#R§;
            _loc2_.play();
            this.§6!]§ = §6"w§.§ "D§.§""3§(this.§"#b§,{
               "scaleX":0.8,
               "scaleY":0.8
            },{
               "scaleX":1,
               "scaleY":1
            },0.3,§6"w§.§]i§);
            this.§6!]§.onComplete = this.§!"8§;
            this.§6!]§.play();
         }
      }
      
      private function §0!Z§() : void
      {
         §@!3§.getItemByName("Button_No").setVisibility(false);
      }
      
      private function §"#R§() : void
      {
         §@!3§.getItemByName("EndLevelDialogueTitle").y = §+H§;
      }
      
      private function §!"8§() : void
      {
         if(this.§7#_§ <= 0)
         {
            this.§<##§.setVisibility(true);
            this.§+9§ = §`!Z§;
            §@!3§.getItemByName("EndLevelDialogueTitle").y = §+H§;
            §@!3§.getItemByName("Button_No").setVisibility(false);
            §@!3§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            this.§"#b§.scaleX = 0.8;
            this.§"#b§.scaleY = 0.8;
            (§@!3§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).play();
            this.§6!]§ = null;
         }
      }
      
      private function §##P§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:§-#C§ = null;
         if(param1 && this.§'!`§)
         {
            return;
         }
         if(param1 && § "a§.§ "D§.§!#d§())
         {
            return;
         }
         var _loc3_:§[!K§ = this.§"!K§.getItemByName(§super§.§#"[§.buttonName);
         var _loc4_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderUse") as MovieClip;
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderImprove") as MovieClip;
         if(param1 && !this.§["m§)
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
            (_loc7_ = §6"w§.§ "D§.§""3§(_loc6_,{"x":0},null,0.7,§6"w§.§ # §)).§&#X§;
            _loc7_.§+"+§ = true;
            _loc7_.play();
            this.§'!`§ = true;
         }
         else
         {
            _loc4_.visible = false;
            _loc5_.visible = false;
         }
      }
      
      private function §^!R§() : void
      {
         this.§,!=§.§=#m§();
         §8`§.showTutorials(false,true);
      }
      
      protected function handleCollectibleItems() : void
      {
         var _loc1_:§>#x§ = null;
         if(§ "a§.§ "D§.§ #b§())
         {
            _loc1_ = § "a§.§ "D§.§^W§() as §>#x§;
            if(_loc1_)
            {
               _loc1_.§3$%§();
            }
         }
      }
   }
}
