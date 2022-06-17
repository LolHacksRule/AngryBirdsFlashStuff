package § #@§
{
   import § !D§.§"b§;
   import § !D§.§0$?§;
   import § !D§.§4B§;
   import § !D§.§;#W§;
   import § O§.§&# §;
   import § O§.§6f§;
   import § O§.§7!S§;
   import §!!T§.§1"9§;
   import §!!t§.§<!x§;
   import §!"e§.§9!x§;
   import §!§.§="D§;
   import §!L§.§6!<§;
   import §!L§.§<"s§;
   import §"!>§.§'!x§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §#M§.§<"c§;
   import §%A§.§]#e§;
   import §'#g§.§&"Y§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§4"[§;
   import §+#B§.§4$7§;
   import §+#B§.§5"w§;
   import §+#B§.§["Q§;
   import §,"8§.§6!v§;
   import §-!!§.§`§;
   import §-!!§.§`h§;
   import §-#R§.§"2§;
   import §-#R§.§0!w§;
   import §-#R§.§4"p§;
   import §3!5§.§0#r§;
   import §3"G§.§16§;
   import §3=§.§#$@§;
   import §3=§.§0K§;
   import §3=§.§1#V§;
   import §3=§.§>#r§;
   import §3=§.§?"5§;
   import §4!n§.§#$>§;
   import §5!$§.§"S§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §5"G§.§8"`§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §;$5§.§6"8§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"9§.§'#M§;
   import §>"9§.§'#X§;
   import §>"9§.§1"T§;
   import §>"9§.§4§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?!N§.SyncingPopup;
   import §[!B§.§&#`§;
   import §[";§.§8!n§;
   import §]"'§.§""K§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import §]"P§.Starling;
   import §`"S§.§+l§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §!!A§ extends §+l§ implements §0"+§, §="D§
   {
      
      private static const §!!X§:Number = -5 * 1000;
      
      private static const §-#w§:Number = 10 * 1000;
      
      public static const §^!=§:int = 50;
      
      public static var §^#8§:Number = 0;
      
      public static var §?#'§:int = 0;
      
      private static const §9z§:Number = 20;
      
      private static const §;#X§:Number = 0.1;
      
      public static const §]#S§:String = "4000-";
      
      private static const §"!R§:int = 0;
      
      private static const §7#n§:int = -1;
      
      private static const §0#'§:int = -2;
      
      private static const §[#H§:int = 700;
      
      private static const §[$%§:Number = -43.05;
      
      private static const §!E§:Number = -2.05;
       
      
      private var §2#x§:Number = -5000.0;
      
      private var §1$,§:int = 0;
      
      private var §0"X§:Number = 0;
      
      private var §!"s§:Number = 0;
      
      protected var §>#b§:Boolean;
      
      private var §=#7§:Boolean = false;
      
      protected var §[!m§:§["Q§;
      
      private var §6#n§:Vector.<int>;
      
      private var §@"X§:Boolean;
      
      private var §[7§:Boolean;
      
      private var §4y§:String = "";
      
      protected var §-#6§:§9!x§;
      
      private var §,!'§:Boolean = true;
      
      private var §`"v§:Boolean = false;
      
      private var §?;§:Boolean = false;
      
      private var §1"O§:SyncingPopup;
      
      protected var §2$&§:§"2§;
      
      protected var §7!_§:§&# §;
      
      protected var §?#G§:Boolean = false;
      
      private var §7$8§:§]%§;
      
      private var §4"d§:Number = 0;
      
      private var §7m§:Number = 0;
      
      private var §[b§:Number;
      
      protected var §'"A§:§<"s§;
      
      private var §`z§:Number = 0;
      
      private var §0t§:§4"[§;
      
      private var §'$<§:Boolean = false;
      
      private var §!#"§:Boolean = false;
      
      private var §2!T§:Boolean;
      
      private const §%#`§:int = 500;
      
      private const §`,§:int = 10000;
      
      private const §42§:int = 20.0;
      
      private const §>7§:int = 8000;
      
      private const §?$B§:int = 1000;
      
      private var §?#w§:int;
      
      private var §+,§:Boolean;
      
      private var §`"V§:Boolean = false;
      
      private var §"#V§:Boolean;
      
      protected var §3#i§:§<c§;
      
      private var §2b§:§<c§;
      
      private var §,#R§:int;
      
      private var §9!V§:int;
      
      private var §]#L§:§]%§;
      
      private var §4$D§:MovieClip;
      
      private var §5$ §:§]%§;
      
      private var §8!w§:int;
      
      protected var §#!^§:§<c§;
      
      private var §4e§:Boolean = false;
      
      private var §8#U§:§<c§;
      
      protected var §]#t§:§`h§;
      
      public function §!!A§(param1:§<c§, param2:§'![§, param3:§<"s§, param4:§""K§, param5:§16§)
      {
         this.§[!m§ = new §["Q§();
         this.§6#n§ = new Vector.<int>(32);
         this.§0t§ = new §4"[§();
         this.§'"A§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         this.§6#n§[3] = 5000;
         this.§6#n§[7] = 5000;
         this.§6#n§[8] = 5000;
         this.§6#n§[9] = 5000;
         this.§6#n§[18] = 5000;
         §+!9§.setVisibility(false);
         this.§#!^§ = §+!9§.getItemByName("Container_Buttons") as §<c§;
         this.§8#U§ = §+!9§.getItemByName("Container_Overlay") as §<c§;
         this.§8#U§.setVisibility(true);
         this.§4e§ = false;
         this.§]#t§ = (§%"T§.§;`§ as §4B§).objects as §`h§;
         this.§6#U§();
         this.§@#y§();
         this.§##;§();
         this.§+G§();
         this.§#!W§();
         this.levelStarted();
         if((§%"T§.§>$<§ as §'"a§).§1#b§)
         {
            (§%"T§.§>$<§ as §'"a§).§1#b§.addEventListener(§'!x§.§ #n§,this.§;!J§);
         }
         this.§+,§ = false;
         this.§3#i§ = §+!9§.getItemByName("Container_ZoomButtons") as §<c§;
         this.§8!w§ = 0;
         §+!9§.getItemByName("ScoreMultiplierIcon").setVisibility(false);
      }
      
      protected function §6#U§() : void
      {
         this.§2b§ = §+!9§.getItemByName("Container_EndLevelDialogue") as §<c§;
         this.§2b§.setVisibility(false);
         this.§4$D§ = §+!9§.getItemByName("EndLevelDialogueBG").mClip;
         this.§,#R§ = §"!R§;
         this.§9!V§ = 0;
      }
      
      protected function §@#y§() : void
      {
         this.§-#6§ = new §9!x§(§+!9§);
      }
      
      protected function §##;§() : void
      {
         this.§2$&§ = new §"2§(§+!9§,mLevelManager);
      }
      
      protected function §+G§() : void
      {
         var _loc2_:§6f§ = null;
         this.§7!_§ = new §&# §(§+!9§,mLevelManager);
         var _loc1_:Object = §@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§7#Y§(§&"Y§.§0!2§);
         if(!_loc1_)
         {
            this.§7!_§.§=!%§(§&# §.§!$0§(),true);
         }
         else
         {
            _loc2_ = §7!S§.§%$<§(_loc1_[0]);
            if(_loc2_ && _loc2_.§%!`§)
            {
               this.§7!_§.§=!%§(_loc1_[0],true);
            }
            else
            {
               this.§7!_§.§=!%§(§7!S§.§#"x§.§]'§,true);
            }
         }
      }
      
      override public function dispose() : void
      {
         if((§%"T§.§>$<§ as §'"a§).§1#b§)
         {
            (§%"T§.§>$<§ as §'"a§).§1#b§.removeEventListener(§'!x§.§ #n§,this.§;!J§);
         }
         this.disable(false);
         this.§7!_§.dispose();
         this.§0t§ = null;
         this.§#"%§();
         §^"C§.§?q§.removeEventListener(§0#r§.§'$>§,this.§5"9§);
         this.§%"4§(this.§]#L§);
         this.§]#L§ = null;
         this.§%"4§(this.§5$ §);
         this.§5$ § = null;
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         var _loc2_:Boolean = §6"8§(AngryBirdsBase.singleton.popupManager).§`'§();
         if(!_loc2_)
         {
            §%"T§.resume();
         }
         §+!9§.setVisibility(true);
         §+!9§.addEventListener(§8"`§.§,$A§,this.onUIInteraction);
         this.§>A§();
         if(!this.§`"V§)
         {
            this.§2$&§.activate(§6!<§(this.§'"A§),false,false);
         }
         if(!this.§2!T§)
         {
            this.§="^§(false);
         }
         if(§&# §.§=# §)
         {
            §+!9§.getItemByName("Button_Slingshot").setVisibility(true);
         }
         else
         {
            §+!9§.getItemByName("Button_Slingshot").setVisibility(false);
         }
         §^"C§.§?q§.addEventListener(§0#r§.§'$>§,this.§5"9§);
         if(!this.§8#U§)
         {
            this.§4$4§();
         }
      }
      
      protected function §;!J§(param1:§'!x§) : void
      {
         this.§'!q§();
      }
      
      override public function disable(param1:Boolean) : void
      {
         §+!9§.setVisibility(false);
         §+!9§.removeEventListener(§8"`§.§,$A§,this.onUIInteraction);
         §&#`§.§-#_§();
         this.§-#6§.deActivate();
         this.§2$&§.deActivate();
         this.§7!_§.deActivate();
         this.§'"A§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]$$§);
         if(this.§7$8§)
         {
            this.§%"4§(this.§7$8§);
            this.§7$8§ = null;
         }
         this.§%"4§(this.§]#L§);
         this.§]#L§ = null;
         this.§%"4§(this.§5$ §);
         this.§5$ § = null;
         §%"T§.§;`§.§?"G§(false);
         this.§@"Q§();
         this.§`x§();
         super.disable(param1);
      }
      
      private function §%"4§(param1:§]%§) : void
      {
         if(param1)
         {
            param1.§6X§();
         }
      }
      
      protected function §#"%§() : void
      {
         var _loc2_:§1"T§ = null;
         if(§%"T§.§;`§.background)
         {
            §%"T§.§;`§.background.stopAmbientSound();
         }
         §[#%§.§3$A§(§'#M§.§>+§);
         §^#8§ = 0;
         var _loc1_:§'#X§ = §[#%§.§<"!§(§'#M§.§>+§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§<#z§(this.§4y§);
            if(_loc2_ != null)
            {
               §^#8§ = _loc2_.§?!b§;
            }
            §[#%§.§3$A§(§'#M§.§>+§);
         }
      }
      
      protected function §>A§() : void
      {
         this.§[!#§();
         this.§-#6§.activate();
         if(this.§`"v§)
         {
            this.§'"A§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]$$§);
         }
         §+!9§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§[b§ = 2500;
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§#g§);
         this.§`x§();
      }
      
      protected function levelStarted() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§4"p§ = null;
         §5"w§.§-!I§(§4$7§.§<"T§,mLevelManager.currentLevel);
         §5"w§.trackPageView(this,this.§5!R§());
         if(mLevelManager.currentLevel != §,-§.§;!d§)
         {
            §,-§.§;!d§ = mLevelManager.currentLevel;
            this.§`z§ = 0;
         }
         else
         {
            ++this.§`z§;
         }
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel);
         §+$A§.§@"i§().§&"@§(mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,_loc1_,this.§`z§);
         if((§%"T§.§>$<§ as §'"a§).§1#b§)
         {
            (§%"T§.§>$<§ as §'"a§).§1#b§.levelStarted();
         }
         this.showScoresForLevel();
         this.§'!q§();
         this.§`"v§ = false;
         this.§?;§ = false;
         this.§'"A§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]$$§);
         if(§&# §.§=# §)
         {
            §+!9§.getItemByName("Button_Slingshot").setEnabled(true);
            this.§?#G§ = false;
            if(this.§7$8§)
            {
               this.§%"4§(this.§7$8§);
               this.§7$8§ = null;
            }
         }
         (§%"T§.§;`§ as §4B§).§##`§.§3!v§ = false;
         this.§?#w§ = this.§?$B§;
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            if(§1"9§.§?q§.§7#h§())
            {
               _loc2_ = new Array();
               for each(_loc3_ in §0!w§.§ "!§)
               {
                  _loc2_.push(_loc3_);
               }
               _loc2_.push(§0!w§.§9#%§);
               this.§5V§(_loc2_);
            }
            else
            {
               this.§5V§(§0!w§.§ "!§);
            }
         }
         else if((mLevelManager as §,-§).§88§())
         {
            this.§5V§(§0!w§.§<,§);
         }
         else
         {
            this.§5V§(§0!w§.§@"B§);
         }
         this.§7!_§.activate(§6!<§(this.§'"A§));
         §+!9§.getItemByName("Container_Slingshot_Buttons").setVisibility(false);
         this.§`"V§ = false;
         this.§2!T§ = false;
         this.handleCollectibleItems();
      }
      
      protected function §5V§(param1:Array) : void
      {
         var _loc5_:§4"p§ = null;
         var _loc6_:§#$>§ = null;
         var _loc7_:String = null;
         var _loc9_:MovieClip = null;
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         var _loc2_:Number = 100;
         for each(_loc5_ in §0!w§.§+#I§)
         {
            _loc6_ = §+!9§.getItemByName(_loc5_.buttonName);
            _loc7_ = _loc5_.buttonName + "_" + §^"C§.§?q§.brandedTournamentAssetId;
            if(§2"O§.§;#m§(_loc7_))
            {
               _loc9_ = new §2"O§.§`>§(_loc7_)();
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
            (_loc6_ = §+!9§.getItemByName(_loc5_.buttonName) as §"S§).x = _loc2_;
            _loc6_.y = 44;
            _loc6_.setVisibility(true);
            _loc2_ += 65;
         }
      }
      
      protected function §#!W§() : void
      {
         this.§[!m§.§<!Q§(0);
         this.§5+§(0);
         this.§>#b§ = false;
         this.§-#6§.§1$!§ = this.§>#b§;
      }
      
      private function §]$$§(param1:MouseEvent) : void
      {
         this.§?;§ = true;
         this.§'"A§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]$$§);
      }
      
      protected function §'!q§() : void
      {
         this.§-#6§.levelStarted((§%"T§.§>$<§ as §'"a§).§1#b§.§2!#§(),mLevelManager.currentLevel,(§%"T§.§>$<§ as §'"a§).§1#b§.§9$@§() == §<"c§.§09§);
      }
      
      protected function §[!#§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§'#X§ = null;
         if(mLevelManager.currentLevel.indexOf("3001-") > -1 || mLevelManager.currentLevel.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(mLevelManager.currentLevel.indexOf("3001-") > -1)
            {
               this.§4y§ = §'#M§.§>!7§;
               if(mLevelManager.currentLevel.indexOf("3001-1") > -1)
               {
                  _loc1_ = §'#M§.§9y§;
               }
               else if(mLevelManager.currentLevel.indexOf("3001-2") > -1)
               {
                  _loc1_ = §'#M§.§6"C§;
                  this.§4y§ = §'#M§.§3+§;
               }
               else
               {
                  _loc1_ = §'#M§.§9y§;
               }
               if(AngryBirdsBase.singleton.§1h§().previousState != this.§6!W§())
               {
                  §^#8§ = 0;
               }
            }
            else if(§?#'§ <= 1)
            {
               this.§4y§ = §'#M§.§+#H§;
               _loc1_ = §'#M§.§%W§;
               _loc2_ = 1;
               §[#%§.removeEventListener(§4#8§.SOUND_COMPLETE,this.§^"<§);
               §[#%§.addEventListener(§4#8§.SOUND_COMPLETE,this.§^"<§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §[#%§.§<"!§(§'#M§.§>+§);
               if(!_loc3_)
               {
                  §[#%§.§8!3§(§'#M§.§>+§,1,1);
               }
               §[#%§.§'#-§(_loc1_,this.§4y§,3000,§'#M§.§>+§,_loc2_,0.75,§^#8§);
            }
         }
      }
      
      private function §^"<§(param1:§4#8§) : void
      {
         if(param1.§##§ == §'#M§.§+#H§ && this.§4y§ == §'#M§.§+#H§ && AngryBirdsBase.singleton.§""[§() != §1#V§.STATE_NAME)
         {
            §[#%§.removeEventListener(§4#8§.SOUND_COMPLETE,this.§^"<§);
            ++§!!A§.§?#'§;
         }
      }
      
      private function §#"'§(param1:Number) : void
      {
         if(this.§4"d§)
         {
            this.§7m§ += param1;
            if(this.§7m§ > §9z§)
            {
               this.§'"A§.§+s§(true,this.§4"d§);
               this.§7m§ = 0;
            }
         }
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:String = "ALL_EXTRABIRD";
         if((mLevelManager as §,-§).§88§())
         {
            _loc1_ = "ALL_MUSHROOM";
         }
         §&#`§.§5"s§(_loc1_,true);
         §&#`§.showTutorials(true,true);
      }
      
      protected function §^"1§(param1:String) : §>#8§
      {
         var _loc2_:§>#8§ = this.§0t§[param1];
         if(!_loc2_)
         {
            _loc2_ = §+!9§.getItemByName(param1) as §>#8§;
            this.§0t§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      protected function §1!-§(param1:Number) : void
      {
      }
      
      public function §5!R§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§1#&§;
      }
      
      protected function §5+§(param1:Number) : void
      {
         this.§@$5§();
         var _loc2_:int = this.§'"A§.getScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§[!m§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§[!m§.getValue() + param1 * §^!=§);
            this.§[!m§.§<!Q§(_loc4_);
         }
         if(this.§=#7§)
         {
            §+!9§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§-#6§.§5+§(_loc4_,_loc2_,_loc3_);
      }
      
      protected function showScoresForLevel() : void
      {
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§ !h§,null);
      }
      
      private function §@"Q§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§2#x§ > §-#w§)
         {
            _loc1_ = Math.round(1000 / this.§2#x§ * this.§1$,§);
            _loc2_ = mLevelManager.currentLevel;
            _loc3_ = (§%"T§.§>$<§ as §'"a§).§?$9§();
            §5"w§.§+![§(_loc1_,_loc2_,Starling.§^$?§,_loc3_);
         }
      }
      
      private function §@0§(param1:Number) : void
      {
         this.§2#x§ += param1;
         if(this.§2#x§ > 0)
         {
            ++this.§1$,§;
         }
         if(this.§0"X§ != §%"T§.§@" §() || this.§!"s§ != §%"T§.§=$D§())
         {
            this.§`x§();
         }
      }
      
      private function §`x§() : void
      {
         this.§2#x§ = §!!X§;
         this.§1$,§ = 0;
         this.§0"X§ = §%"T§.§@" §();
         this.§!"s§ = §%"T§.§=$D§();
      }
      
      protected function §-"y§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§@"X§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§6#n§.length)
            {
               _loc1_ += this.§6#n§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§@"X§ = true;
               §4$7§.§-!I§(§4$7§.§@!$§,mLevelManager.currentLevel);
            }
         }
         if(this.§[7§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §@$5§() : void
      {
         var _loc1_:int = this.§'"A§.getScore();
         var _loc2_:int = this.§[!m§.getValue();
         if(_loc2_ < _loc1_ && this.§@"X§)
         {
            this.§[7§ = true;
         }
      }
      
      protected function §4#a§(param1:Boolean = true) : void
      {
         if(!§&# §.§=# §)
         {
            return;
         }
         this.§?#G§ = true;
         §+!9§.getItemByName("Button_Slingshot").setEnabled(false);
         this.§%"4§(this.§7$8§);
         this.§7$8§ = §'#n§.§?q§.§9!N§(§+!9§.getItemByName("Button_Slingshot").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§7$8§.delay = 2;
         }
         else
         {
            this.§7$8§.delay = 0.5;
         }
         this.§7$8§.play();
         this.§7$8§.onComplete = this.§1Z§;
      }
      
      private function §1Z§() : void
      {
         §+!9§.getItemByName("Button_Slingshot").setVisibility(false);
      }
      
      protected function §&!=§() : Boolean
      {
         if((§%"T§.§;`§ as §4B§).§##`§.§0"§() && !this.§1"O§)
         {
            this.§1"O§ = new SyncingPopup(§%#§.§3t§,§9#5§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§1"O§);
            (§%"T§.§;`§ as §4B§).§##`§.addEventListener(Event.COMPLETE,this.§]!y§);
         }
         return !(§%"T§.§;`§ as §4B§).§##`§.§0"§();
      }
      
      private function §]!y§(param1:Event) : void
      {
         (§%"T§.§;`§ as §4B§).§##`§.removeEventListener(Event.COMPLETE,this.§]!y§);
         this.§1"O§.close();
         this.§1"O§ = null;
      }
      
      protected function §6!W§() : String
      {
         return §1#V§.STATE_NAME;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§>#b§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §#$@§.STATE_NAME;
      }
      
      public function getLoserState() : String
      {
         return §0K§.STATE_NAME;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Vector.<String> = null;
         this.§-"y§();
         super.update(param1);
         if(this.§8!w§ > 0)
         {
            this.§8!w§ -= param1;
         }
         if(AngryBirdsBase.singleton.popupManager.§`'§())
         {
            if(!this.§+,§)
            {
               this.§+,§ = true;
               _loc3_ = new Vector.<String>();
               _loc3_.push(§[#%§.§-"I§);
               §[#%§.§<"I§(_loc3_);
               if(this.§-#6§)
               {
                  this.§-#6§.deActivate();
               }
            }
            return;
         }
         if(this.§+,§)
         {
            this.§+,§ = false;
            if(this.§-#6§)
            {
               this.§-#6§.activate();
            }
            §[#%§.§%x§();
         }
         this.§5+§(param1);
         var _loc2_:Boolean = this.§,!'§ = this.§-#6§.run(param1);
         this.§2$&§.run(param1);
         this.§7!_§.run(param1);
         this.§#"'§(param1);
         this.§'"A§.mouseEnabled = !this.§7!_§.§'!T§();
         if(this.§7!_§.§'!T§())
         {
            if(this.§"#V§)
            {
               this.§3#i§.getItemByName("Button_ZoomIn").setEnabled(false);
               this.§3#i§.getItemByName("Button_ZoomOut").setEnabled(false);
               this.§3#i§.getItemByName("Button_Magnify").setEnabled(false);
               this.§"#V§ = false;
            }
         }
         else if(!this.§"#V§)
         {
            this.§3#i§.getItemByName("Button_ZoomIn").setEnabled(true);
            this.§3#i§.getItemByName("Button_ZoomOut").setEnabled(true);
            this.§3#i§.getItemByName("Button_Magnify").setEnabled(true);
            this.§"#V§ = true;
         }
         this.§@0§(param1);
         if(!§%"T§.§;`§.§0!,§ || !this.§>#b§)
         {
            this.§1!-§(param1);
         }
         if(AngryBirdsBase.singleton.§1h§().previousState == §>#r§.STATE_NAME || AngryBirdsBase.singleton.§1h§().previousState == §<!x§.STATE_NAME)
         {
            if(!this.§`"v§)
            {
               this.§'"A§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]$$§);
               this.§`"v§ = true;
            }
            if(_loc2_ || this.§?;§)
            {
               this.§[b§ -= param1;
               if(this.§[b§ < 0 || this.§?;§)
               {
                  if(!this.§&!=§())
                  {
                  }
               }
            }
         }
         else if(AngryBirdsBase.singleton.§1h§().previousState == §?"5§.STATE_NAME)
         {
            if(!this.§&!=§())
            {
            }
         }
         if(!§%"T§.§;`§.slingshot.birdsAvailable)
         {
            if(!this.§'$<§)
            {
               this.§2$&§.§7#o§(§0!w§.§3#D§.eventName,false);
               this.§2$&§.§7#o§(§0!w§.§ #;§.eventName,false);
               this.§2$&§.§7#o§(§0!w§.§,"w§.eventName,false);
               this.§'$<§ = true;
            }
         }
         else
         {
            this.§'$<§ = false;
         }
         if(§%"T§.§;`§.objects.getPigCount() == 0)
         {
            if(!this.§!#"§)
            {
               this.§2$&§.§7#o§(§0!w§.§<!y§.eventName,false);
               this.§!#"§ = true;
            }
         }
         else if(this.§!#"§)
         {
            this.§!#"§ = false;
         }
         this.§`$#§(param1);
         if(§%"T§.§;`§.slingshot.mSlingShotState == §"b§.§4#C§)
         {
            this.§2$&§.§%"j§();
            if(!this.§?#G§ && §&# §.§=# §)
            {
               this.§4#a§(this.§7!_§.§'!T§());
               this.§7!_§.§@!j§();
            }
         }
         if(!§%"T§.isPaused)
         {
            if(this.§?#w§ > 0)
            {
               this.§?#w§ -= param1;
            }
         }
         if(§&# §.§!$0§() == §7!S§.§&"z§.§]'§)
         {
            this.§%![§();
         }
         if(this.§2b§.visible)
         {
            if(§%"T§.§;`§.slingshot.mSlingShotState == §"b§.§70§ && !(§%"T§.§;`§ as §4B§).§##`§.§3!v§)
            {
               this.§="^§(true,this.§'"A§.§[u§());
            }
         }
         if(this.§4e§)
         {
            this.§4e§ = false;
            this.§8#U§.setVisibility(false);
            this.§8#U§ = null;
            this.§4$4§();
         }
         if(this.§8#U§ && this.§8#U§.visible)
         {
            if(this.§]#t§.§^#x§)
            {
               this.§4e§ = true;
            }
         }
      }
      
      private function §%![§() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:§]#e§ = §%"T§.§;`§.particles as §]#e§;
         var _loc2_:int = 0;
         while(_loc2_ < §0$?§.§@!J§)
         {
            _loc3_ = this.§!U§(§%"T§.§;`§.§!!,§.§+#G§,§%"T§.§;`§.§!!,§.§+U§);
            _loc4_ = this.§!U§(§%"T§.§;`§.§!!,§.§5#O§,0);
            _loc1_.§+!3§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      protected function §`$#§(param1:Number) : void
      {
         if(this.§'"A§.§2!0§())
         {
            if(§%"T§.§;`§.slingshot.mDragging)
            {
               if(this.§9!V§ == 0)
               {
                  this.§9!V§ = §;#W§.§&"j§;
                  this.§,#R§ = §"!R§;
               }
               if(this.§,#R§ > §"!R§)
               {
                  this.§;!z§();
               }
            }
            else if(this.§9!V§ > 0)
            {
               this.§9!V§ -= param1;
               if(this.§9!V§ <= 0)
               {
                  this.§9!V§ = -1;
                  if(this.§,#R§ < §"!R§)
                  {
                     this.§+$C§();
                  }
               }
            }
            else if(this.§,#R§ == §"!R§)
            {
               this.§,#R§ = §;#W§.§1!D§;
               this.§-!V§();
               this.§9!V§ = -1;
            }
            else if(this.§,#R§ > §"!R§)
            {
               this.§,#R§ -= param1;
               if(this.§,#R§ <= §"!R§)
               {
                  §+!9§.setText("0","TextField_EndLevelCounter");
                  this.skipToLevelEnd(§+$A§.§^Q§);
                  this.§,#R§ = §0#'§;
               }
               else
               {
                  §+!9§.setText("" + int(this.§,#R§ / 1000),"TextField_EndLevelCounter");
               }
            }
            else if(!this.§5$ §)
            {
               this.§4$D§.scaleX = 0.8;
               this.§4$D§.scaleY = 0.8;
            }
         }
         else if(this.§,#R§ > §"!R§)
         {
            this.§,#R§ = §"!R§;
            this.§9!V§ = 0;
         }
      }
      
      private function §!U§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      protected function onUIInteraction(param1:§8"`§) : void
      {
         var totalBirds:int = 0;
         var remainingBirds:int = 0;
         var wingmanIndex:int = 0;
         var wingmanIndexString:String = null;
         var timer:Timer = null;
         var meScore:int = 0;
         var event:§8"`§ = param1;
         if(§<`§ || this.§8!w§ > 0)
         {
            return;
         }
         if(event.eventIndex == 1)
         {
            if(§%"T§.§;`§.slingshot.mDragging)
            {
               §%"T§.§;`§.slingshot.shoot();
               this.§'"A§.changeGameState(§<"s§.§3#f§);
               return;
            }
            §%"T§.§;`§.camera.stopDragging();
         }
         switch(event.eventName)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               dispatchEvent(new §6!v§(§6!v§.§#j§));
               if(this.§,#R§ > §"!R§)
               {
                  this.§+$C§();
               }
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §6!v§(§6!v§.RESTART_LEVEL));
               break;
            case "CLOSE_TUTORIAL":
               §&#`§.§-#_§();
               break;
            case "POWERUP1":
               this.§^#F§(§0!w§.§3#D§.eventName);
               break;
            case "POWERUP2":
               this.§^#F§(§0!w§.§ #;§.eventName);
               break;
            case "POWERUP3":
               this.§^#F§(§0!w§.§,"w§.eventName);
               break;
            case "POWERUP4":
               this.§^#F§(§0!w§.§%#p§.eventName);
               break;
            case "POWERUP5":
               this.§^#F§(§0!w§.§<!y§.eventName);
               break;
            case "POWERUP6":
               this.§^#F§(§0!w§.§8$B§.eventName);
               break;
            case "POWERUP7":
               this.§^#F§(§0!w§.§9#%§.eventName);
               break;
            case "POWERUP8":
               this.§^#F§(§0!w§.§<L§.eventName);
               break;
            case "POWERUP_WINGMAN":
               if(this.§,#R§ == §0#'§)
               {
                  return;
               }
               if(this.§?#w§ > 0)
               {
                  return;
               }
               if(§#$D§.§?q§.§<"M§(§0!w§.§2$?§.§]'§) > 0)
               {
                  this.§="^§(false);
               }
               this.§2$&§.§?z§(event.eventName);
               totalBirds = §%"T§.§;`§.slingshot.§@$B§();
               remainingBirds = §%"T§.§;`§.slingshot.§17§();
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
               this.§^#q§();
               this.§;!z§();
               this.§8!w§ = §[#H§;
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§2$?§.buttonName),false);
               break;
            case "POWERUP_MIGHTY_EAGLE":
               if(this.§,#R§ == §0#'§)
               {
                  return;
               }
               if((§%"T§.§;`§ as §4B§).§##`§.§0"§())
               {
                  return;
               }
               if((§%"T§.§;`§ as §4B§).§##`§.useMightyEagle())
               {
                  this.§2$&§.§7#o§(§0!w§.§3#D§.eventName,false);
                  this.§2$&§.§7#o§(§0!w§.§ #;§.eventName,false);
                  this.§2$&§.§7#o§(§0!w§.§<L§.eventName,false);
                  this.§2$&§.§7#o§(§0!w§.§,"w§.eventName,false);
                  this.§2$&§.§7#o§(§0!w§.§%#p§.eventName,false);
                  this.§2$&§.§7#o§(§0!w§.§<!y§.eventName,false);
                  this.§2$&§.§7#o§(§0!w§.§'!z§.eventName,false);
                  this.§2$&§.§7#o§(§0!w§.§2$?§.eventName,false);
                  §%"T§.§;`§.useMightyEagle();
                  meScore = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
                  §+!9§.setText(meScore.toString() + "%","TextField_MEPercentage");
                  this.§>#b§ = true;
                  this.§-#6§.§1$!§ = this.§>#b§;
                  §&#`§.showTutorials();
                  this.§^#q§();
                  this.§="^§(false);
               }
               else
               {
                  this.§2$&§.§?z§(event.eventName);
               }
               this.§;!z§();
               this.§8!w§ = §[#H§;
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§'!z§.buttonName),false);
               break;
            case "POWERUPOVER1":
               if(§#$D§.§?q§.§<"M§(§0!w§.§3#D§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§3#D§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER2":
               if(§#$D§.§?q§.§<"M§(§0!w§.§ #;§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§ #;§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER3":
               if(§#$D§.§?q§.§<"M§(§0!w§.§,"w§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§,"w§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER4":
               if(§#$D§.§?q§.§<"M§(§0!w§.§%#p§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§%#p§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER5":
               if(§#$D§.§?q§.§<"M§(§0!w§.§<!y§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§<!y§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER6":
               if(§#$D§.§?q§.§<"M§(§0!w§.§8$B§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§8$B§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER7":
               if(§#$D§.§?q§.§<"M§(§0!w§.§9#%§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§9#%§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER8":
               if(§#$D§.§?q§.§<"M§(§0!w§.§<L§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§<L§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER_MIGHTY_EAGLE":
               if(§#$D§.§?q§.§<"M§(§0!w§.§'!z§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§'!z§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER_WINGMAN":
               if(§#$D§.§?q§.§<"M§(§0!w§.§2$?§.§]'§) <= 0)
               {
                  this.§]!5§(this.§#!^§.getItemByName(§0!w§.§2$?§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOUT1":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§3#D§.buttonName),false);
               break;
            case "POWERUPOUT2":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§ #;§.buttonName),false);
               break;
            case "POWERUPOUT3":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§,"w§.buttonName),false);
               break;
            case "POWERUPOUT4":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§%#p§.buttonName),false);
               break;
            case "POWERUPOUT5":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§<!y§.buttonName),false);
               break;
            case "POWERUPOUT6":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§8$B§.buttonName),false);
               break;
            case "POWERUPOUT7":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§9#%§.buttonName),false);
               break;
            case "POWERUPOUT8":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§<L§.buttonName),false);
               break;
            case "POWERUPOUT_MIGHTY_EAGLE":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§'!z§.buttonName),false);
               break;
            case "POWERUPOUT_WINGMAN":
               this.§]!5§(this.§#!^§.getItemByName(§0!w§.§2$?§.buttonName),false);
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §&#`§.§-#_§();
               break;
            case "ZOOM_IN":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§4"d§ = §;#X§;
               this.§7m§ = §9z§;
               break;
            case "ZOOM_OUT":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§4"d§ = -§;#X§;
               this.§7m§ = §9z§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§4"d§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§4"d§ = 0;
               break;
            case "SLINGSHOT_OPEN":
               if(this.§7!_§.§'!T§())
               {
                  §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               }
               else
               {
                  §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               }
               this.§7!_§.§1!y§();
               break;
            case "SLINGSHOT_NORMAL":
               this.§->§("SLINGSHOT_NORMAL");
               break;
            case "SLINGSHOT_WOODCHIPPER":
            case "SLINGSHOT_BUY_SLING_1":
               this.§->§("SLINGSHOT_WOODCHIPPER");
               break;
            case "SLINGSHOT_GLASSBREAKER":
            case "SLINGSHOT_BUY_SLING_2":
               this.§->§("SLINGSHOT_GLASSBREAKER");
               break;
            case "SLINGSHOT_STONECUTTER":
            case "SLINGSHOT_BUY_SLING_3":
               this.§->§("SLINGSHOT_STONECUTTER");
               break;
            case "SLINGSHOT_GOLDEN":
            case "SLINGSHOT_BUY_SLING_4":
               this.§->§("SLINGSHOT_GOLDEN");
               break;
            case "SLINGSHOT_WISHBONE":
            case "SLINGSHOT_BUY_SLING_5":
               this.§->§("SLINGSHOT_WISHBONE");
               break;
            case "SLINGSHOT_XMASTREE":
            case "SLINGSHOT_BUY_SLING_6":
               this.§->§("SLINGSHOT_XMASTREE");
               break;
            case "SLINGSHOT_BOUNCY":
            case "SLINGSHOT_UNLOCK_BOUNCY":
               this.§->§("SLINGSHOT_BOUNCY");
               break;
            case "SLINGSHOT_DIAMOND":
            case "SLINGSHOT_UNLOCK_DIAMOND":
               this.§->§("SLINGSHOT_DIAMOND");
               break;
            case "LEVEL_END_NO":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               timer = new Timer(100);
               timer.addEventListener(TimerEvent.TIMER,function fn(param1:TimerEvent):void
               {
                  §;!z§();
                  timer = null;
               });
               timer.start();
               break;
            case "LEVEL_END_YES":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.skipToLevelEnd(§+$A§.§+# §);
               break;
            case "SKIP_LEVEL_END":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.skipToLevelEnd(§+$A§.§#!o§);
         }
      }
      
      private function §^#F§(param1:String) : void
      {
         if(this.§,#R§ == §0#'§)
         {
            return;
         }
         this.§2$&§.§7#o§(param1,false);
         this.§2$&§.§?z§(param1);
         this.§;!z§();
      }
      
      private function §]!5§(param1:§#$>§, param2:Boolean) : void
      {
         var getMoreMC:MovieClip = null;
         var button:§#$>§ = param1;
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
      
      private function §->§(param1:String) : void
      {
         if((§%"T§.§;`§ as §4B§).§##`§.§0"§())
         {
            return;
         }
         var _loc2_:§6f§ = §7!S§.§6!T§(param1);
         if(_loc2_)
         {
            this.§7!_§.§=!%§(_loc2_.§]'§,false);
            this.§;!z§();
         }
         this.§8!w§ = §[#H§;
      }
      
      public function §+"n§() : String
      {
         return "PlayView";
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:§`#9§ = null;
         if(!this.§,!'§ && !this.§?;§)
         {
            return false;
         }
         if(this.isEagleUsed())
         {
            _loc1_ = this.§'"A§.§@%§();
            if(!_loc1_)
            {
               return true;
            }
            return _loc1_.§0!@§ && _loc1_.§9!r§ && _loc1_.§>"&§ > 3000;
         }
         if((this.§'"A§ as §6!<§).§-a§.§7#,§() && !this.§`"V§)
         {
            return false;
         }
         return super.isAllowedToChangeVictoryState();
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if((this.§'"A§ as §6!<§).§-a§.§7#,§())
         {
            return false;
         }
         return super.isAllowedToChangeFailState();
      }
      
      private function §^#q§() : void
      {
         (this.§'"A§ as §6!<§).§@#-§();
      }
      
      private function §]#j§() : Boolean
      {
         if((this.§'"A§ as §6!<§).§-a§.§7#,§())
         {
            return false;
         }
         if(AngryBirdsBase.singleton.popupManager.§`'§())
         {
            return false;
         }
         return true;
      }
      
      private function §5"9§(param1:§0#r§) : void
      {
         (§%"T§.§>$<§ as §'"a§).§1#b§.§"";§();
      }
      
      protected function skipToLevelEnd(param1:String) : void
      {
         var levelEndActionForAnalytics:String = param1;
         if((§%"T§.§;`§.slingshot as §0$?§).mSlingShotState == §0$?§.§?P§)
         {
            return;
         }
         if((§%"T§.§;`§ as §4B§).§##`§.§0"§())
         {
            if(!this.§1"O§)
            {
               this.§1"O§ = new SyncingPopup(§%#§.§3t§,§9#5§.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(this.§1"O§);
               (§%"T§.§;`§ as §4B§).§##`§.addEventListener(Event.COMPLETE,function():void
               {
                  (§%"T§.§;`§ as §4B§).§##`§.removeEventListener(Event.COMPLETE,§]!y§);
                  §1"O§.close();
                  §1"O§ = null;
                  skipToLevelEnd(levelEndActionForAnalytics);
               });
            }
            return;
         }
         §+$A§.§@"i§().§<#;§ = levelEndActionForAnalytics;
         this.§,!'§ = true;
         this.§`"V§ = true;
         if(this.§2b§)
         {
            this.§2b§.setVisibility(false);
         }
         this.§2$&§.§ $7§();
         this.§,#R§ = §7#n§;
         if(this.§'"A§.§[u§())
         {
            this.§'"A§.§1X§();
         }
         else
         {
            this.§'"A§.§"!_§();
         }
      }
      
      private function §-!V§() : void
      {
         this.§2b§.setVisibility(true);
         §+!9§.getItemByName("EndLevelDialogueTitle").y = §[$%§;
         (§+!9§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).gotoAndStop(1);
         §+!9§.getItemByName("Button_No").setVisibility(true);
         §+!9§.getItemByName("Button_No").mClip.scaleX = 1;
         §+!9§.getItemByName("Button_No").mClip.scaleY = 1;
         §+!9§.getItemByName("TextField_EndLevelCounter").setVisibility(true);
         this.§4$D§.scaleX = 1;
         this.§4$D§.scaleY = 1;
         if(§%"T§.§;`§.slingshot.mSlingShotState == §"b§.§70§ && !(§%"T§.§;`§ as §4B§).§##`§.§3!v§)
         {
            this.§="^§(true,this.§'"A§.§[u§());
         }
         var _loc1_:MovieClip = §+!9§.getItemByName("TextField_EndLevelCounter").mClip;
         this.§]#L§ = §'#n§.§?q§.§[#F§(§'#n§.§?q§.§9!N§(_loc1_,{},{},0.8),§'#n§.§?q§.§9!N§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§'#n§.§[i§),§'#n§.§?q§.§9!N§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§'#n§.§`"E§));
         this.§]#L§.§#$0§ = false;
         this.§]#L§.delay = 0.1;
         this.§]#L§.play();
      }
      
      private function §;!z§() : void
      {
         var _loc1_:§]%§ = null;
         var _loc2_:§]%§ = null;
         if(this.§,#R§ > §"!R§)
         {
            this.§%"4§(this.§]#L§);
            this.§]#L§ = null;
            this.§,#R§ = §7#n§;
            §+!9§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            _loc1_ = §'#n§.§?q§.§9!N§(§+!9§.getItemByName("Button_No").mClip,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":1,
               "scaleY":1
            },0.2,§'#n§.§`"E§);
            _loc1_.onComplete = this.§5"N§;
            _loc1_.play();
            _loc2_ = §'#n§.§?q§.§9!N§(§+!9§.getItemByName("EndLevelDialogueTitle").mClip,{"y":§!E§},{"y":§[$%§},0.3,§'#n§.§`"E§);
            _loc2_.onComplete = this.§^#k§;
            _loc2_.play();
            this.§5$ § = §'#n§.§?q§.§9!N§(this.§4$D§,{
               "scaleX":0.8,
               "scaleY":0.8
            },{
               "scaleX":1,
               "scaleY":1
            },0.3,§'#n§.§`"E§);
            this.§5$ §.onComplete = this.§+$C§;
            this.§5$ §.play();
         }
      }
      
      private function §5"N§() : void
      {
         §+!9§.getItemByName("Button_No").setVisibility(false);
      }
      
      private function §^#k§() : void
      {
         §+!9§.getItemByName("EndLevelDialogueTitle").y = §!E§;
      }
      
      private function §+$C§() : void
      {
         if(this.§9!V§ <= 0)
         {
            this.§2b§.setVisibility(true);
            this.§,#R§ = §7#n§;
            §+!9§.getItemByName("EndLevelDialogueTitle").y = §!E§;
            §+!9§.getItemByName("Button_No").setVisibility(false);
            §+!9§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            this.§4$D§.scaleX = 0.8;
            this.§4$D§.scaleY = 0.8;
            (§+!9§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).play();
            this.§5$ § = null;
         }
      }
      
      private function §="^§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:§]%§ = null;
         if(param1 && this.§2!T§)
         {
            return;
         }
         if(param1 && §1"9§.§?q§.§7#h§())
         {
            return;
         }
         var _loc3_:§#$>§ = this.§#!^§.getItemByName(§0!w§.§2$?§.buttonName);
         var _loc4_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderUse") as MovieClip;
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderImprove") as MovieClip;
         if(param1 && !this.§>#b§)
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
            (_loc7_ = §'#n§.§?q§.§9!N§(_loc6_,{"x":0},null,0.7,§'#n§.§-#o§)).§#$0§;
            _loc7_.§-#u§ = true;
            _loc7_.play();
            this.§2!T§ = true;
         }
         else
         {
            _loc4_.visible = false;
            _loc5_.visible = false;
         }
      }
      
      private function §4$4§() : void
      {
         this.§2$&§.§<u§();
         §&#`§.showTutorials(false,true);
      }
      
      protected function handleCollectibleItems() : void
      {
         var _loc1_:§8!n§ = null;
         if(§1"9§.§?q§.§-"?§())
         {
            _loc1_ = §1"9§.§?q§.§[!8§() as §8!n§;
            if(_loc1_)
            {
               _loc1_.§[#O§();
            }
         }
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
