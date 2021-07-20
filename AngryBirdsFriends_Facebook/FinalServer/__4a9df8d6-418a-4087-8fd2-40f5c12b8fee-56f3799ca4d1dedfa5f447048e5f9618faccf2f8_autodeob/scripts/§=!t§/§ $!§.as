package §=!t§
{
   import § !j§.§4#c§;
   import § §.§[$3§;
   import §!"'§.§0"Z§;
   import §!#C§.§ $?§;
   import §!#C§.§#H§;
   import §!#C§.§4!Q§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §&!_§.§!!K§;
   import §&!_§.§"@§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §&!_§.§@"E§;
   import §&!_§.§[!j§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §&0§.§-"P§;
   import §&n§.§]"%§;
   import §'!j§.Starling;
   import §'"6§.§,R§;
   import §,!Q§.§8#=§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-$!§.§<U§;
   import §-;§.§+"d§;
   import §-;§.§<K§;
   import §-;§.§]$=§;
   import §0!s§.§]!%§;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §2";§.§!"m§;
   import §2";§.§,t§;
   import §2";§.§3#[§;
   import §2";§.§9!R§;
   import §2";§.§9§;
   import §2J§.§]#@§;
   import §3!!§.§^"S§;
   import §3+§.§`o§;
   import §4§.§9#i§;
   import §4§.§;!X§;
   import §6!3§.§4!o§;
   import §6!3§.§<"V§;
   import §7"p§.§%6§;
   import §8#K§.§-!o§;
   import §8#K§.§1^§;
   import §8#K§.§3Z§;
   import §8#K§.§4"s§;
   import §8#K§.§@!m§;
   import §9$2§.§7"L§;
   import §<!r§.§'##§;
   import §=#f§.§""F§;
   import §>2§.§!!W§;
   import §>2§.§"§;
   import §>2§.§6#t§;
   import §>2§.§7#;§;
   import §>z§.§#"l§;
   import §>z§.SyncingPopup;
   import §?!]§.§6#k§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class § $!§ extends §^"S§ implements §,!n§, §%!#§
   {
      
      private static const §^#_§:Number = -5 * 1000;
      
      private static const §]!V§:Number = 10 * 1000;
      
      public static const §@"&§:int = 50;
      
      public static var §+$C§:Number = 0;
      
      public static var §]"J§:int = 0;
      
      private static const §&!]§:Number = 20;
      
      private static const §[#=§:Number = 0.1;
      
      public static const §3I§:String = "4000-";
      
      private static const §+-§:int = 0;
      
      private static const §1!g§:int = -1;
      
      private static const §[<§:int = -2;
      
      private static const §[$!§:int = 700;
      
      private static const §[!v§:Number = -43.05;
      
      private static const §"!j§:Number = -2.05;
       
      
      private var §@o§:Number = -5000.0;
      
      private var §7!D§:int = 0;
      
      private var §^#b§:Number = 0;
      
      private var §%"'§:Number = 0;
      
      protected var §5$#§:Boolean;
      
      private var §<#s§:Boolean = false;
      
      protected var §`$!§:§@"E§;
      
      private var §;"t§:Vector.<int>;
      
      private var §]$C§:Boolean;
      
      private var §&#w§:Boolean;
      
      private var §5$7§:String = "";
      
      protected var §<"9§:§-"P§;
      
      private var §0#R§:Boolean = true;
      
      private var §4z§:Boolean = false;
      
      private var §^$6§:Boolean = false;
      
      private var §8#m§:SyncingPopup;
      
      protected var §`6§:§]$=§;
      
      protected var §!"q§:§<U§;
      
      protected var §%#O§:Boolean = false;
      
      private var §=7§:§7$C§;
      
      private var §"$0§:Number = 0;
      
      private var §&"d§:Number = 0;
      
      private var §,z§:Number;
      
      protected var §3!;§:§9#i§;
      
      private var §&!^§:Number = 0;
      
      private var §2"s§:§[!j§;
      
      private var §0"<§:Boolean = false;
      
      private var §6#"§:Boolean = false;
      
      private var §%$B§:Boolean;
      
      private const §-#4§:int = 500;
      
      private const §8O§:int = 10000;
      
      private const §[#g§:int = 20.0;
      
      private const §&`§:int = 8000;
      
      private const §3U§:int = 1000;
      
      private var §[#?§:int;
      
      private var §?">§:Boolean;
      
      private var §]#D§:Boolean = false;
      
      private var §@]§:Boolean;
      
      protected var § !B§:§]$+§;
      
      private var §&=§:§]$+§;
      
      private var §2"q§:int;
      
      private var §?!&§:int;
      
      private var §'#$§:§7$C§;
      
      private var §>#g§:MovieClip;
      
      private var §4b§:§7$C§;
      
      private var §^!P§:int;
      
      protected var §[#[§:§]$+§;
      
      private var §@#d§:Boolean = false;
      
      private var §8!f§:§]$+§;
      
      protected var §<?§:§4!o§;
      
      public function § $!§(param1:§]$+§, param2:§;"n§, param3:§9#i§, param4:§#H§, param5:§4#c§)
      {
         this.§`$!§ = new §@"E§();
         this.§;"t§ = new Vector.<int>(32);
         this.§2"s§ = new §[!j§();
         this.§3!;§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         this.§;"t§[3] = 5000;
         this.§;"t§[7] = 5000;
         this.§;"t§[8] = 5000;
         this.§;"t§[9] = 5000;
         this.§;"t§[18] = 5000;
         §6#`§.setVisibility(false);
         this.§[#[§ = §6#`§.getItemByName("Container_Buttons") as §]$+§;
         this.§8!f§ = §6#`§.getItemByName("Container_Overlay") as §]$+§;
         this.§8!f§.setVisibility(true);
         this.§@#d§ = false;
         this.§<?§ = (§7n§.§6#K§ as §"#1§).objects as §4!o§;
         this.§="9§();
         this.§="i§();
         this.§0>§();
         this.§@#n§();
         this.§#!9§();
         this.levelStarted();
         if((§7n§.§-$<§ as § #v§).§=#+§)
         {
            (§7n§.§-$<§ as § #v§).§=#+§.addEventListener(§6#k§.§!!&§,this.§>"M§);
         }
         this.§?">§ = false;
         this.§ !B§ = §6#`§.getItemByName("Container_ZoomButtons") as §]$+§;
         this.§^!P§ = 0;
         §6#`§.getItemByName("ScoreMultiplierIcon").setVisibility(false);
      }
      
      protected function §="9§() : void
      {
         this.§&=§ = §6#`§.getItemByName("Container_EndLevelDialogue") as §]$+§;
         this.§&=§.setVisibility(false);
         this.§>#g§ = §6#`§.getItemByName("EndLevelDialogueBG").mClip;
         this.§2"q§ = §+-§;
         this.§?!&§ = 0;
      }
      
      protected function §="i§() : void
      {
         this.§<"9§ = new §-"P§(§6#`§);
      }
      
      protected function §0>§() : void
      {
         this.§`6§ = new §]$=§(§6#`§,mLevelManager);
      }
      
      protected function §@#n§() : void
      {
         var _loc2_:§ $<§ = null;
         this.§!"q§ = new §<U§(§6#`§,mLevelManager);
         var _loc1_:Object = §4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§'k§(§[$3§.§5M§);
         if(!_loc1_)
         {
            this.§!"q§.§<#@§(§<U§.§='§(),true);
         }
         else
         {
            _loc2_ = §0$@§.§"P§(_loc1_[0]);
            if(_loc2_ && _loc2_.§!"8§)
            {
               this.§!"q§.§<#@§(_loc1_[0],true);
            }
            else
            {
               this.§!"q§.§<#@§(§0$@§.§&D§.§1#7§,true);
            }
         }
      }
      
      override public function dispose() : void
      {
         if((§7n§.§-$<§ as § #v§).§=#+§)
         {
            (§7n§.§-$<§ as § #v§).§=#+§.removeEventListener(§6#k§.§!!&§,this.§>"M§);
         }
         this.disable(false);
         this.§!"q§.dispose();
         this.§2"s§ = null;
         this.§'#>§();
         §'##§.§`"H§.removeEventListener(§]#@§.§4#p§,this.§-!C§);
         this.§2#w§(this.§'#$§);
         this.§'#$§ = null;
         this.§2#w§(this.§4b§);
         this.§4b§ = null;
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         var _loc2_:Boolean = §]!%§(AngryBirdsBase.singleton.popupManager).§?"N§();
         if(!_loc2_)
         {
            §7n§.resume();
         }
         §6#`§.setVisibility(true);
         §6#`§.addEventListener(§0"Z§.§0#,§,this.onUIInteraction);
         this.§5#T§();
         if(!this.§]#D§)
         {
            this.§`6§.activate(§;!X§(this.§3!;§),false,false);
         }
         if(!this.§%$B§)
         {
            this.§'z§(false);
         }
         if(§<U§.§?#5§)
         {
            §6#`§.getItemByName("Button_Slingshot").setVisibility(true);
         }
         else
         {
            §6#`§.getItemByName("Button_Slingshot").setVisibility(false);
         }
         §'##§.§`"H§.addEventListener(§]#@§.§4#p§,this.§-!C§);
         if(!this.§8!f§)
         {
            this.§3r§();
         }
      }
      
      protected function §>"M§(param1:§6#k§) : void
      {
         this.§!!v§();
      }
      
      override public function disable(param1:Boolean) : void
      {
         §6#`§.setVisibility(false);
         §6#`§.removeEventListener(§0"Z§.§0#,§,this.onUIInteraction);
         §,R§.§+g§();
         this.§<"9§.deActivate();
         this.§`6§.deActivate();
         this.§!"q§.deActivate();
         this.§3!;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3#6§);
         if(this.§=7§)
         {
            this.§2#w§(this.§=7§);
            this.§=7§ = null;
         }
         this.§2#w§(this.§'#$§);
         this.§'#$§ = null;
         this.§2#w§(this.§4b§);
         this.§4b§ = null;
         §7n§.§6#K§.§&"!§(false);
         this.§7"x§();
         this.§@5§();
         super.disable(param1);
      }
      
      private function §2#w§(param1:§7$C§) : void
      {
         if(param1)
         {
            param1.§%"#§();
         }
      }
      
      protected function §'#>§() : void
      {
         var _loc2_:§-!o§ = null;
         if(§7n§.§6#K§.background)
         {
            §7n§.§6#K§.background.stopAmbientSound();
         }
         §3Z§.§&$?§(§4"s§.§+@§);
         §+$C§ = 0;
         var _loc1_:§@!m§ = §3Z§.§["C§(§4"s§.§+@§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§!p§(this.§5$7§);
            if(_loc2_ != null)
            {
               §+$C§ = _loc2_.§ !n§;
            }
            §3Z§.§&$?§(§4"s§.§+@§);
         }
      }
      
      protected function §5#T§() : void
      {
         this.§%" §();
         this.§<"9§.activate();
         if(this.§4z§)
         {
            this.§3!;§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3#6§);
         }
         §6#`§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§,z§ = 2500;
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§@?§);
         this.§@5§();
      }
      
      protected function levelStarted() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§<K§ = null;
         §0I§.§4!c§(§"@§.§<S§,mLevelManager.currentLevel);
         §0I§.trackPageView(this,this.§#"!§());
         if(mLevelManager.currentLevel != §;#A§.§;]§)
         {
            §;#A§.§;]§ = mLevelManager.currentLevel;
            this.§&!^§ = 0;
         }
         else
         {
            ++this.§&!^§;
         }
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel);
         §!!K§.§%#S§().§>8§(mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,_loc1_,this.§&!^§);
         if((§7n§.§-$<§ as § #v§).§=#+§)
         {
            (§7n§.§-$<§ as § #v§).§=#+§.levelStarted();
         }
         this.showScoresForLevel();
         this.§!!v§();
         this.§4z§ = false;
         this.§^$6§ = false;
         this.§3!;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3#6§);
         if(§<U§.§?#5§)
         {
            §6#`§.getItemByName("Button_Slingshot").setEnabled(true);
            this.§%#O§ = false;
            if(this.§=7§)
            {
               this.§2#w§(this.§=7§);
               this.§=7§ = null;
            }
         }
         (§7n§.§6#K§ as §"#1§).§=!G§.§>j§ = false;
         this.§[#?§ = this.§3U§;
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            if(§7"L§.§`"H§.§,$1§())
            {
               _loc2_ = new Array();
               for each(_loc3_ in §+"d§.§-$D§)
               {
                  _loc2_.push(_loc3_);
               }
               _loc2_.push(§+"d§.§true §);
               this.§0"W§(_loc2_);
            }
            else
            {
               this.§0"W§(§+"d§.§-$D§);
            }
         }
         else if((mLevelManager as §;#A§).§[!0§())
         {
            this.§0"W§(§+"d§.§%#`§);
         }
         else
         {
            this.§0"W§(§+"d§.§catch§);
         }
         this.§!"q§.activate(§;!X§(this.§3!;§));
         §6#`§.getItemByName("Container_Slingshot_Buttons").setVisibility(false);
         this.§]#D§ = false;
         this.§%$B§ = false;
         this.handleCollectibleItems();
      }
      
      protected function §0"W§(param1:Array) : void
      {
         var _loc5_:§<K§ = null;
         var _loc6_:§8#=§ = null;
         var _loc7_:String = null;
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         var _loc2_:Number = 100;
         for each(_loc5_ in §+"d§.§8"z§)
         {
            _loc6_ = §6#`§.getItemByName(_loc5_.buttonName);
            _loc7_ = _loc5_.buttonName + "_" + §'##§.§`"H§.brandedTournamentAssetId;
            if(§6$A§.§9"w§(_loc7_))
            {
               _loc9_ = new (_loc8_ = §6$A§.§1!m§(_loc7_))();
               _loc10_ = 0;
               while(_loc10_ < _loc6_.mClip.framesLoaded)
               {
                  (_loc11_ = _loc6_.mClip.getChildByName("Icon") as MovieClip).removeChildren();
                  _loc11_.addChild(_loc9_);
                  _loc6_.mClip.nextFrame();
                  _loc10_++;
               }
               _loc6_.mClip.gotoAndStop(1);
            }
            _loc6_.setVisibility(false);
         }
         for each(_loc5_ in param1)
         {
            (_loc6_ = §6#`§.getItemByName(_loc5_.buttonName) as § !>§).x = _loc2_;
            _loc6_.y = 44;
            _loc6_.setVisibility(true);
            _loc2_ += 65;
         }
      }
      
      protected function §#!9§() : void
      {
         this.§`$!§.§@&§(0);
         this.§<$#§(0);
         this.§5$#§ = false;
         this.§<"9§.§]#Z§ = this.§5$#§;
      }
      
      private function §3#6§(param1:MouseEvent) : void
      {
         this.§^$6§ = true;
         this.§3!;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3#6§);
      }
      
      protected function §!!v§() : void
      {
         this.§<"9§.levelStarted((§7n§.§-$<§ as § #v§).§=#+§.§6§(),mLevelManager.currentLevel,(§7n§.§-$<§ as § #v§).§=#+§.§=a§() == §`""§.§`"j§);
      }
      
      protected function §%" §() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§@!m§ = null;
         var _loc4_:§-!o§ = null;
         if(mLevelManager.currentLevel.indexOf("3001-") > -1 || mLevelManager.currentLevel.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(mLevelManager.currentLevel.indexOf("3001-") > -1)
            {
               this.§5$7§ = §4"s§.§<#5§;
               if(mLevelManager.currentLevel.indexOf("3001-1") > -1)
               {
                  _loc1_ = §4"s§.§ $4§;
               }
               else if(mLevelManager.currentLevel.indexOf("3001-2") > -1)
               {
                  _loc1_ = §4"s§.§+&§;
                  this.§5$7§ = §4"s§.§7"f§;
               }
               else
               {
                  _loc1_ = §4"s§.§ $4§;
               }
               if(AngryBirdsBase.singleton.§-j§().previousState != this.§&#H§())
               {
                  §+$C§ = 0;
               }
            }
            else if(§]"J§ <= 1)
            {
               this.§5$7§ = §4"s§.§[$,§;
               _loc1_ = §4"s§.§&#`§;
               _loc2_ = 1;
               §3Z§.removeEventListener(§1^§.SOUND_COMPLETE,this.§]"3§);
               §3Z§.addEventListener(§1^§.SOUND_COMPLETE,this.§]"3§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §3Z§.§["C§(§4"s§.§+@§);
               if(!_loc3_)
               {
                  §3Z§.§'#E§(§4"s§.§+@§,1,1);
               }
               _loc4_ = §3Z§.§0#3§(_loc1_,this.§5$7§,3000,§4"s§.§+@§,_loc2_,0.75,§+$C§);
            }
         }
      }
      
      private function §]"3§(param1:§1^§) : void
      {
         if(param1.§^"4§ == §4"s§.§[$,§ && this.§5$7§ == §4"s§.§[$,§ && AngryBirdsBase.singleton.§2"Q§() != §,t§.STATE_NAME)
         {
            §3Z§.removeEventListener(§1^§.SOUND_COMPLETE,this.§]"3§);
            ++§ $!§.§]"J§;
         }
      }
      
      private function §<# §(param1:Number) : void
      {
         if(this.§"$0§)
         {
            this.§&"d§ += param1;
            if(this.§&"d§ > §&!]§)
            {
               this.§3!;§.§=W§(true,this.§"$0§);
               this.§&"d§ = 0;
            }
         }
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:String = "ALL_EXTRABIRD";
         if((mLevelManager as §;#A§).§[!0§())
         {
            _loc1_ = "ALL_MUSHROOM";
         }
         §,R§.§>#?§(_loc1_,true);
         §,R§.showTutorials(true,true);
      }
      
      protected function §+$ §(param1:String) : §'!`§
      {
         var _loc2_:§'!`§ = this.§2"s§[param1];
         if(!_loc2_)
         {
            _loc2_ = §6#`§.getItemByName(param1) as §'!`§;
            this.§2"s§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      protected function §6!h§(param1:Number) : void
      {
      }
      
      public function §#"!§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §;!=§() : String
      {
         return §0I§.§2!n§;
      }
      
      protected function §<$#§(param1:Number) : void
      {
         this.§'!g§();
         var _loc2_:int = this.§3!;§.getScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§`$!§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§`$!§.getValue() + param1 * §@"&§);
            this.§`$!§.§@&§(_loc4_);
         }
         if(this.§<#s§)
         {
            §6#`§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§<"9§.§<$#§(_loc4_,_loc2_,_loc3_);
      }
      
      protected function showScoresForLevel() : void
      {
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§>#D§,null);
      }
      
      private function §7"x§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§@o§ > §]!V§)
         {
            _loc1_ = Math.round(1000 / this.§@o§ * this.§7!D§);
            _loc2_ = mLevelManager.currentLevel;
            _loc3_ = (§7n§.§-$<§ as § #v§).§]#p§();
            §0I§.§?#k§(_loc1_,_loc2_,Starling.§&"f§,_loc3_);
         }
      }
      
      private function §+"C§(param1:Number) : void
      {
         this.§@o§ += param1;
         if(this.§@o§ > 0)
         {
            ++this.§7!D§;
         }
         if(this.§^#b§ != §7n§.§]!M§() || this.§%"'§ != §7n§.§8j§())
         {
            this.§@5§();
         }
      }
      
      private function §@5§() : void
      {
         this.§@o§ = §^#_§;
         this.§7!D§ = 0;
         this.§^#b§ = §7n§.§]!M§();
         this.§%"'§ = §7n§.§8j§();
      }
      
      protected function §]g§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§]$C§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§;"t§.length)
            {
               _loc1_ += this.§;"t§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§]$C§ = true;
               §"@§.§4!c§(§"@§.§]2§,mLevelManager.currentLevel);
            }
         }
         if(this.§&#w§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §'!g§() : void
      {
         var _loc1_:int = this.§3!;§.getScore();
         var _loc2_:int = this.§`$!§.getValue();
         if(_loc2_ < _loc1_ && this.§]$C§)
         {
            this.§&#w§ = true;
         }
      }
      
      protected function §=!4§(param1:Boolean = true) : void
      {
         if(!§<U§.§?#5§)
         {
            return;
         }
         this.§%#O§ = true;
         §6#`§.getItemByName("Button_Slingshot").setEnabled(false);
         this.§2#w§(this.§=7§);
         this.§=7§ = §"!&§.§`"H§.§1"W§(§6#`§.getItemByName("Button_Slingshot").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§=7§.delay = 2;
         }
         else
         {
            this.§=7§.delay = 0.5;
         }
         this.§=7§.play();
         this.§=7§.onComplete = this.§-"E§;
      }
      
      private function §-"E§() : void
      {
         §6#`§.getItemByName("Button_Slingshot").setVisibility(false);
      }
      
      protected function §&!=§() : Boolean
      {
         if((§7n§.§6#K§ as §"#1§).§=!G§.§6#J§() && !this.§8#m§)
         {
            this.§8#m§ = new SyncingPopup(§#"l§.§?!b§,§]"Y§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§8#m§);
            (§7n§.§6#K§ as §"#1§).§=!G§.addEventListener(Event.COMPLETE,this.§3_§);
         }
         return !(§7n§.§6#K§ as §"#1§).§=!G§.§6#J§();
      }
      
      private function §3_§(param1:Event) : void
      {
         (§7n§.§6#K§ as §"#1§).§=!G§.removeEventListener(Event.COMPLETE,this.§3_§);
         this.§8#m§.close();
         this.§8#m§ = null;
      }
      
      protected function §&#H§() : String
      {
         return §,t§.STATE_NAME;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§5$#§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §9!R§.STATE_NAME;
      }
      
      public function getLoserState() : String
      {
         return §9#6§.STATE_NAME;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Vector.<String> = null;
         this.§]g§();
         super.update(param1);
         if(this.§^!P§ > 0)
         {
            this.§^!P§ -= param1;
         }
         if(AngryBirdsBase.singleton.popupManager.§?"N§())
         {
            if(!this.§?">§)
            {
               this.§?">§ = true;
               _loc3_ = new Vector.<String>();
               _loc3_.push(§3Z§.§[!F§);
               §3Z§.§6"@§(_loc3_);
               if(this.§<"9§)
               {
                  this.§<"9§.deActivate();
               }
            }
            return;
         }
         if(this.§?">§)
         {
            this.§?">§ = false;
            if(this.§<"9§)
            {
               this.§<"9§.activate();
            }
            §3Z§.§"x§();
         }
         this.§<$#§(param1);
         var _loc2_:Boolean = this.§0#R§ = this.§<"9§.run(param1);
         this.§`6§.run(param1);
         this.§!"q§.run(param1);
         this.§<# §(param1);
         this.§3!;§.mouseEnabled = !this.§!"q§.§=!j§();
         if(this.§!"q§.§=!j§())
         {
            if(this.§@]§)
            {
               this.§ !B§.getItemByName("Button_ZoomIn").setEnabled(false);
               this.§ !B§.getItemByName("Button_ZoomOut").setEnabled(false);
               this.§ !B§.getItemByName("Button_Magnify").setEnabled(false);
               this.§@]§ = false;
            }
         }
         else if(!this.§@]§)
         {
            this.§ !B§.getItemByName("Button_ZoomIn").setEnabled(true);
            this.§ !B§.getItemByName("Button_ZoomOut").setEnabled(true);
            this.§ !B§.getItemByName("Button_Magnify").setEnabled(true);
            this.§@]§ = true;
         }
         this.§+"C§(param1);
         if(!§7n§.§6#K§.§>q§ || !this.§5$#§)
         {
            this.§6!h§(param1);
         }
         if(AngryBirdsBase.singleton.§-j§().previousState == §!"m§.STATE_NAME || AngryBirdsBase.singleton.§-j§().previousState == §`o§.STATE_NAME)
         {
            if(!this.§4z§)
            {
               this.§3!;§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3#6§);
               this.§4z§ = true;
            }
            if(_loc2_ || this.§^$6§)
            {
               this.§,z§ -= param1;
               if(this.§,z§ < 0 || this.§^$6§)
               {
                  if(this.§&!=§())
                  {
                     addr647:
                  }
               }
               §§goto(addr668);
            }
            §§goto(addr647);
         }
         else if(AngryBirdsBase.singleton.§-j§().previousState == §3#[§.STATE_NAME)
         {
            if(!this.§&!=§())
            {
            }
         }
         addr668:
         if(!§7n§.§6#K§.slingshot.birdsAvailable)
         {
            if(!this.§0"<§)
            {
               this.§`6§.§2L§(§+"d§.§1J§.eventName,false);
               this.§`6§.§2L§(§+"d§.§[p§.eventName,false);
               this.§`6§.§2L§(§+"d§.§#T§.eventName,false);
               this.§0"<§ = true;
            }
         }
         else
         {
            this.§0"<§ = false;
         }
         if(§7n§.§6#K§.objects.getPigCount() == 0)
         {
            if(!this.§6#"§)
            {
               this.§`6§.§2L§(§+"d§.§,!$§.eventName,false);
               this.§6#"§ = true;
            }
         }
         else if(this.§6#"§)
         {
            this.§6#"§ = false;
         }
         this.§ !v§(param1);
         if(§7n§.§6#K§.slingshot.mSlingShotState == §6#t§.§`!t§)
         {
            this.§`6§.§5m§();
            if(!this.§%#O§ && §<U§.§?#5§)
            {
               this.§=!4§(this.§!"q§.§=!j§());
               this.§!"q§.§"'§();
            }
         }
         if(!§7n§.isPaused)
         {
            if(this.§[#?§ > 0)
            {
               this.§[#?§ -= param1;
            }
         }
         if(§<U§.§='§() == §0$@§.§9!§.§1#7§)
         {
            this.§57§();
         }
         if(this.§&=§.visible)
         {
            if(§7n§.§6#K§.slingshot.mSlingShotState == §6#t§.§2Y§ && !(§7n§.§6#K§ as §"#1§).§=!G§.§>j§)
            {
               this.§'z§(true,this.§3!;§.§^"j§());
            }
         }
         if(this.§@#d§)
         {
            this.§@#d§ = false;
            this.§8!f§.setVisibility(false);
            this.§8!f§ = null;
            this.§3r§();
         }
         if(this.§8!f§ && this.§8!f§.visible)
         {
            if(this.§<?§.§8"X§)
            {
               this.§@#d§ = true;
            }
         }
      }
      
      private function §57§() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:§%6§ = §7n§.§6#K§.particles as §%6§;
         var _loc2_:int = 0;
         while(_loc2_ < §7#;§.§+!Y§)
         {
            _loc3_ = this.§[?§(§7n§.§6#K§.§;$5§.§"!]§,§7n§.§6#K§.§;$5§.§8#4§);
            _loc4_ = this.§[?§(§7n§.§6#K§.§;$5§.§"l§,0);
            _loc1_.§5l§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      protected function § !v§(param1:Number) : void
      {
         if(this.§3!;§.§,_§())
         {
            if(§7n§.§6#K§.slingshot.mDragging)
            {
               if(this.§?!&§ == 0)
               {
                  this.§?!&§ = §!!W§.§`"I§;
                  this.§2"q§ = §+-§;
               }
               if(this.§2"q§ > §+-§)
               {
                  this.§-#y§();
               }
            }
            else if(this.§?!&§ > 0)
            {
               this.§?!&§ -= param1;
               if(this.§?!&§ <= 0)
               {
                  this.§?!&§ = -1;
                  if(this.§2"q§ < §+-§)
                  {
                     this.§ "0§();
                  }
               }
            }
            else if(this.§2"q§ == §+-§)
            {
               this.§2"q§ = §!!W§.§[!B§;
               this.§&M§();
               this.§?!&§ = -1;
            }
            else if(this.§2"q§ > §+-§)
            {
               this.§2"q§ -= param1;
               if(this.§2"q§ <= §+-§)
               {
                  §6#`§.setText("0","TextField_EndLevelCounter");
                  this.skipToLevelEnd(§!!K§.§@k§);
                  this.§2"q§ = §[<§;
               }
               else
               {
                  §6#`§.setText("" + int(this.§2"q§ / 1000),"TextField_EndLevelCounter");
               }
            }
            else if(!this.§4b§)
            {
               this.§>#g§.scaleX = 0.8;
               this.§>#g§.scaleY = 0.8;
            }
         }
         else if(this.§2"q§ > §+-§)
         {
            this.§2"q§ = §+-§;
            this.§?!&§ = 0;
         }
      }
      
      private function §[?§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      protected function onUIInteraction(param1:§0"Z§) : void
      {
         var totalBirds:int = 0;
         var remainingBirds:int = 0;
         var wingmanIndex:int = 0;
         var wingmanIndexString:String = null;
         var timer:Timer = null;
         var meScore:int = 0;
         var event:§0"Z§ = param1;
         if(§^!!§ || this.§^!P§ > 0)
         {
            return;
         }
         if(event.eventIndex == 1)
         {
            if(§7n§.§6#K§.slingshot.mDragging)
            {
               §7n§.§6#K§.slingshot.shoot();
               this.§3!;§.changeGameState(§9#i§.§;"w§);
               return;
            }
            §7n§.§6#K§.camera.stopDragging();
         }
         switch(event.eventName)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               dispatchEvent(new §""F§(§""F§.§@#A§));
               if(this.§2"q§ > §+-§)
               {
                  this.§ "0§();
               }
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §""F§(§""F§.RESTART_LEVEL));
               break;
            case "CLOSE_TUTORIAL":
               §,R§.§+g§();
               break;
            case "POWERUP1":
               this.§4!e§(§+"d§.§1J§.eventName);
               break;
            case "POWERUP2":
               this.§4!e§(§+"d§.§[p§.eventName);
               break;
            case "POWERUP3":
               this.§4!e§(§+"d§.§#T§.eventName);
               break;
            case "POWERUP4":
               this.§4!e§(§+"d§.§&!w§.eventName);
               break;
            case "POWERUP5":
               this.§4!e§(§+"d§.§,!$§.eventName);
               break;
            case "POWERUP6":
               this.§4!e§(§+"d§.§!"§.eventName);
               break;
            case "POWERUP7":
               this.§4!e§(§+"d§.§true §.eventName);
               break;
            case "POWERUP8":
               this.§4!e§(§+"d§.§?"$§.eventName);
               break;
            case "POWERUP_WINGMAN":
               if(this.§2"q§ == §[<§)
               {
                  return;
               }
               if(this.§[#?§ > 0)
               {
                  return;
               }
               if(§ $?§.§`"H§.§0#s§(§+"d§.§]#_§.§1#7§) > 0)
               {
                  this.§'z§(false);
               }
               this.§`6§.§@!c§(event.eventName);
               totalBirds = §7n§.§6#K§.slingshot.§=!q§();
               remainingBirds = §7n§.§6#K§.slingshot.§;O§();
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
               this.§@$D§();
               this.§-#y§();
               this.§^!P§ = §[$!§;
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§]#_§.buttonName),false);
               break;
            case "POWERUP_MIGHTY_EAGLE":
               if(this.§2"q§ == §[<§)
               {
                  return;
               }
               if((§7n§.§6#K§ as §"#1§).§=!G§.§6#J§())
               {
                  return;
               }
               if((§7n§.§6#K§ as §"#1§).§=!G§.useMightyEagle())
               {
                  this.§`6§.§2L§(§+"d§.§1J§.eventName,false);
                  this.§`6§.§2L§(§+"d§.§[p§.eventName,false);
                  this.§`6§.§2L§(§+"d§.§?"$§.eventName,false);
                  this.§`6§.§2L§(§+"d§.§#T§.eventName,false);
                  this.§`6§.§2L§(§+"d§.§&!w§.eventName,false);
                  this.§`6§.§2L§(§+"d§.§,!$§.eventName,false);
                  this.§`6§.§2L§(§+"d§.§ !T§.eventName,false);
                  this.§`6§.§2L§(§+"d§.§]#_§.eventName,false);
                  §7n§.§6#K§.useMightyEagle();
                  meScore = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
                  §6#`§.setText(meScore.toString() + "%","TextField_MEPercentage");
                  this.§5$#§ = true;
                  this.§<"9§.§]#Z§ = this.§5$#§;
                  §,R§.showTutorials();
                  this.§@$D§();
                  this.§'z§(false);
               }
               else
               {
                  this.§`6§.§@!c§(event.eventName);
               }
               this.§-#y§();
               this.§^!P§ = §[$!§;
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§ !T§.buttonName),false);
               break;
            case "POWERUPOVER1":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§1J§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§1J§.buttonName),true);
               }
               break;
            case "POWERUPOVER2":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§[p§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§[p§.buttonName),true);
               }
               break;
            case "POWERUPOVER3":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§#T§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§#T§.buttonName),true);
               }
               break;
            case "POWERUPOVER4":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§&!w§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§&!w§.buttonName),true);
               }
               break;
            case "POWERUPOVER5":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§,!$§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§,!$§.buttonName),true);
               }
               break;
            case "POWERUPOVER6":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§!"§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§!"§.buttonName),true);
               }
               break;
            case "POWERUPOVER7":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§true §.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§true §.buttonName),true);
               }
               break;
            case "POWERUPOVER8":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§?"$§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§?"$§.buttonName),true);
               }
               break;
            case "POWERUPOVER_MIGHTY_EAGLE":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§ !T§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§ !T§.buttonName),true);
               }
               break;
            case "POWERUPOVER_WINGMAN":
               if(§ $?§.§`"H§.§0#s§(§+"d§.§]#_§.§1#7§) <= 0)
               {
                  this.§+!m§(this.§[#[§.getItemByName(§+"d§.§]#_§.buttonName),true);
               }
               break;
            case "POWERUPOUT1":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§1J§.buttonName),false);
               break;
            case "POWERUPOUT2":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§[p§.buttonName),false);
               break;
            case "POWERUPOUT3":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§#T§.buttonName),false);
               break;
            case "POWERUPOUT4":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§&!w§.buttonName),false);
               break;
            case "POWERUPOUT5":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§,!$§.buttonName),false);
               break;
            case "POWERUPOUT6":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§!"§.buttonName),false);
               break;
            case "POWERUPOUT7":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§true §.buttonName),false);
               break;
            case "POWERUPOUT8":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§?"$§.buttonName),false);
               break;
            case "POWERUPOUT_MIGHTY_EAGLE":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§ !T§.buttonName),false);
               break;
            case "POWERUPOUT_WINGMAN":
               this.§+!m§(this.§[#[§.getItemByName(§+"d§.§]#_§.buttonName),false);
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §,R§.§+g§();
               break;
            case "ZOOM_IN":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§"$0§ = §[#=§;
               this.§&"d§ = §&!]§;
               break;
            case "ZOOM_OUT":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§"$0§ = -§[#=§;
               this.§&"d§ = §&!]§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§"$0§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§"$0§ = 0;
               break;
            case "SLINGSHOT_OPEN":
               if(this.§!"q§.§=!j§())
               {
                  §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               }
               else
               {
                  §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               }
               this.§!"q§.§?#>§();
               break;
            case "SLINGSHOT_NORMAL":
               this.§[#r§("SLINGSHOT_NORMAL");
               break;
            case "SLINGSHOT_WOODCHIPPER":
            case "SLINGSHOT_BUY_SLING_1":
               this.§[#r§("SLINGSHOT_WOODCHIPPER");
               break;
            case "SLINGSHOT_GLASSBREAKER":
            case "SLINGSHOT_BUY_SLING_2":
               this.§[#r§("SLINGSHOT_GLASSBREAKER");
               break;
            case "SLINGSHOT_STONECUTTER":
            case "SLINGSHOT_BUY_SLING_3":
               this.§[#r§("SLINGSHOT_STONECUTTER");
               break;
            case "SLINGSHOT_GOLDEN":
            case "SLINGSHOT_BUY_SLING_4":
               this.§[#r§("SLINGSHOT_GOLDEN");
               break;
            case "SLINGSHOT_WISHBONE":
            case "SLINGSHOT_BUY_SLING_5":
               this.§[#r§("SLINGSHOT_WISHBONE");
               break;
            case "SLINGSHOT_XMASTREE":
            case "SLINGSHOT_BUY_SLING_6":
               this.§[#r§("SLINGSHOT_XMASTREE");
               break;
            case "SLINGSHOT_BOUNCY":
            case "SLINGSHOT_UNLOCK_BOUNCY":
               this.§[#r§("SLINGSHOT_BOUNCY");
               break;
            case "SLINGSHOT_DIAMOND":
            case "SLINGSHOT_UNLOCK_DIAMOND":
               this.§[#r§("SLINGSHOT_DIAMOND");
               break;
            case "LEVEL_END_NO":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               timer = new Timer(100);
               timer.addEventListener(TimerEvent.TIMER,function fn(param1:TimerEvent):void
               {
                  §-#y§();
                  timer = null;
               });
               timer.start();
               break;
            case "LEVEL_END_YES":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.skipToLevelEnd(§!!K§.§#"i§);
               break;
            case "SKIP_LEVEL_END":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.skipToLevelEnd(§!!K§.§8"W§);
         }
      }
      
      private function §4!e§(param1:String) : void
      {
         if(this.§2"q§ == §[<§)
         {
            return;
         }
         this.§`6§.§2L§(param1,false);
         this.§`6§.§@!c§(param1);
         this.§-#y§();
      }
      
      private function §+!m§(param1:§8#=§, param2:Boolean) : void
      {
         var getMoreMC:MovieClip = null;
         var button:§8#=§ = param1;
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
      
      private function §[#r§(param1:String) : void
      {
         if((§7n§.§6#K§ as §"#1§).§=!G§.§6#J§())
         {
            return;
         }
         var _loc2_:§ $<§ = §0$@§.§#"z§(param1);
         if(_loc2_)
         {
            this.§!"q§.§<#@§(_loc2_.§1#7§,false);
            this.§-#y§();
         }
         this.§^!P§ = §[$!§;
      }
      
      public function §+"-§() : String
      {
         return "PlayView";
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:§<"V§ = null;
         if(!this.§0#R§ && !this.§^$6§)
         {
            return false;
         }
         if(this.isEagleUsed())
         {
            _loc1_ = this.§3!;§.§9#N§();
            if(!_loc1_)
            {
               return true;
            }
            return _loc1_.§=!d§ && _loc1_.§>6§ && _loc1_.§7$;§ > 3000;
         }
         if((this.§3!;§ as §;!X§).§1$'§.§-#g§() && !this.§]#D§)
         {
            return false;
         }
         return super.isAllowedToChangeVictoryState();
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if((this.§3!;§ as §;!X§).§1$'§.§-#g§())
         {
            return false;
         }
         return super.isAllowedToChangeFailState();
      }
      
      private function §@$D§() : void
      {
         (this.§3!;§ as §;!X§).§<"Z§();
      }
      
      private function §[!$§() : Boolean
      {
         if((this.§3!;§ as §;!X§).§1$'§.§-#g§())
         {
            return false;
         }
         if(AngryBirdsBase.singleton.popupManager.§?"N§())
         {
            return false;
         }
         return true;
      }
      
      private function §-!C§(param1:§]#@§) : void
      {
         (§7n§.§-$<§ as § #v§).§=#+§.§@!>§();
      }
      
      protected function skipToLevelEnd(param1:String) : void
      {
         var levelEndActionForAnalytics:String = param1;
         if((§7n§.§6#K§.slingshot as §7#;§).mSlingShotState == §7#;§.§%"d§)
         {
            return;
         }
         if((§7n§.§6#K§ as §"#1§).§=!G§.§6#J§())
         {
            if(!this.§8#m§)
            {
               this.§8#m§ = new SyncingPopup(§#"l§.§?!b§,§]"Y§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(this.§8#m§);
               (§7n§.§6#K§ as §"#1§).§=!G§.addEventListener(Event.COMPLETE,function():void
               {
                  (§7n§.§6#K§ as §"#1§).§=!G§.removeEventListener(Event.COMPLETE,§3_§);
                  §8#m§.close();
                  §8#m§ = null;
                  skipToLevelEnd(levelEndActionForAnalytics);
               });
            }
            return;
         }
         §!!K§.§%#S§().§;#,§ = levelEndActionForAnalytics;
         this.§0#R§ = true;
         this.§]#D§ = true;
         if(this.§&=§)
         {
            this.§&=§.setVisibility(false);
         }
         this.§`6§.§#$&§();
         this.§2"q§ = §1!g§;
         if(this.§3!;§.§^"j§())
         {
            this.§3!;§.§]!y§();
         }
         else
         {
            this.§3!;§.§7p§();
         }
      }
      
      private function §&M§() : void
      {
         this.§&=§.setVisibility(true);
         §6#`§.getItemByName("EndLevelDialogueTitle").y = §[!v§;
         (§6#`§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).gotoAndStop(1);
         §6#`§.getItemByName("Button_No").setVisibility(true);
         §6#`§.getItemByName("Button_No").mClip.scaleX = 1;
         §6#`§.getItemByName("Button_No").mClip.scaleY = 1;
         §6#`§.getItemByName("TextField_EndLevelCounter").setVisibility(true);
         this.§>#g§.scaleX = 1;
         this.§>#g§.scaleY = 1;
         if(§7n§.§6#K§.slingshot.mSlingShotState == §6#t§.§2Y§ && !(§7n§.§6#K§ as §"#1§).§=!G§.§>j§)
         {
            this.§'z§(true,this.§3!;§.§^"j§());
         }
         var _loc1_:MovieClip = §6#`§.getItemByName("TextField_EndLevelCounter").mClip;
         this.§'#$§ = §"!&§.§`"H§.§?"§(§"!&§.§`"H§.§1"W§(_loc1_,{},{},0.8),§"!&§.§`"H§.§1"W§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§"!&§.§%# §),§"!&§.§`"H§.§1"W§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§"!&§.§6!j§));
         this.§'#$§.§6!'§ = false;
         this.§'#$§.delay = 0.1;
         this.§'#$§.play();
      }
      
      private function §-#y§() : void
      {
         var _loc1_:§7$C§ = null;
         var _loc2_:§7$C§ = null;
         if(this.§2"q§ > §+-§)
         {
            this.§2#w§(this.§'#$§);
            this.§'#$§ = null;
            this.§2"q§ = §1!g§;
            §6#`§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            _loc1_ = §"!&§.§`"H§.§1"W§(§6#`§.getItemByName("Button_No").mClip,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":1,
               "scaleY":1
            },0.2,§"!&§.§6!j§);
            _loc1_.onComplete = this.§6!Q§;
            _loc1_.play();
            _loc2_ = §"!&§.§`"H§.§1"W§(§6#`§.getItemByName("EndLevelDialogueTitle").mClip,{"y":§"!j§},{"y":§[!v§},0.3,§"!&§.§6!j§);
            _loc2_.onComplete = this.§%#,§;
            _loc2_.play();
            this.§4b§ = §"!&§.§`"H§.§1"W§(this.§>#g§,{
               "scaleX":0.8,
               "scaleY":0.8
            },{
               "scaleX":1,
               "scaleY":1
            },0.3,§"!&§.§6!j§);
            this.§4b§.onComplete = this.§ "0§;
            this.§4b§.play();
         }
      }
      
      private function §6!Q§() : void
      {
         §6#`§.getItemByName("Button_No").setVisibility(false);
      }
      
      private function §%#,§() : void
      {
         §6#`§.getItemByName("EndLevelDialogueTitle").y = §"!j§;
      }
      
      private function § "0§() : void
      {
         if(this.§?!&§ <= 0)
         {
            this.§&=§.setVisibility(true);
            this.§2"q§ = §1!g§;
            §6#`§.getItemByName("EndLevelDialogueTitle").y = §"!j§;
            §6#`§.getItemByName("Button_No").setVisibility(false);
            §6#`§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            this.§>#g§.scaleX = 0.8;
            this.§>#g§.scaleY = 0.8;
            (§6#`§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).play();
            this.§4b§ = null;
         }
      }
      
      private function §'z§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:§7$C§ = null;
         if(param1 && this.§%$B§)
         {
            return;
         }
         if(param1 && §7"L§.§`"H§.§,$1§())
         {
            return;
         }
         var _loc3_:§8#=§ = this.§[#[§.getItemByName(§+"d§.§]#_§.buttonName);
         var _loc4_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderUse") as MovieClip;
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderImprove") as MovieClip;
         if(param1 && !this.§5$#§)
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
            (_loc7_ = §"!&§.§`"H§.§1"W§(_loc6_,{"x":0},null,0.7,§"!&§.§="L§)).§6!'§;
            _loc7_.§=F§ = true;
            _loc7_.play();
            this.§%$B§ = true;
         }
         else
         {
            _loc4_.visible = false;
            _loc5_.visible = false;
         }
      }
      
      private function §3r§() : void
      {
         this.§`6§.§[!!§();
         §,R§.showTutorials(false,true);
      }
      
      protected function handleCollectibleItems() : void
      {
         var _loc1_:§]"%§ = null;
         if(§7"L§.§`"H§.§58§())
         {
            _loc1_ = §7"L§.§`"H§.§9'§() as §]"%§;
            if(_loc1_)
            {
               _loc1_.§@"$§();
            }
         }
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
