package §<#O§
{
   import § !3§.§^L§;
   import § "v§.§+o§;
   import § "v§.§4$4§;
   import § "v§.§5#=§;
   import § "v§.§8M§;
   import § "v§.§9!p§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.SyncingPopup;
   import § null§.§5"<§;
   import § null§.§@§;
   import §%$0§.§0E§;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §+"Y§.§="d§;
   import §+"_§.§>"%§;
   import §,!m§.§'Z§;
   import §-"e§.§!"=§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §0!>§.§ !b§;
   import §0!>§.§;#$§;
   import §2$;§.§!"e§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §2E§.§&#a§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§7J§;
   import §2E§.§[S§;
   import §2E§.§]!P§;
   import §4#$§.§5"L§;
   import §4$A§.§=$5§;
   import §8#^§.§-B§;
   import §9!6§.§## §;
   import §9!6§.§-§;
   import §<"I§.§1!^§;
   import §<"I§.§8!<§;
   import §<"I§.§<$B§;
   import §<8§.§6!1§;
   import §=!&§.§<$!§;
   import §=-§.§@$%§;
   import §=X§.§3§;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §>#Y§.§@!p§;
   import §?$#§.§&$0§;
   import §?$#§.§2!"§;
   import §?$#§.§]"]§;
   import §?$#§.§^#j§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§?"m§;
   import §@!_§.§ !G§;
   import §[#v§.§>#P§;
   import §]M§.§=!a§;
   import §^0§.§3!U§;
   import §^0§.§]#m§;
   import §^1§.§%"`§;
   import §^1§.§-§;
   import §^1§.§2t§;
   import §^1§.§4!s§;
   import §^1§.§5!6§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §<0§ extends §^L§ implements §'r§, §=$5§
   {
      
      private static const §5"m§:Number = -5 * 1000;
      
      private static const §&$8§:Number = 10 * 1000;
      
      public static const §6]§:int = 50;
      
      public static var §8#+§:Number = 0;
      
      public static var §'#4§:int = 0;
      
      private static const §<"^§:Number = 20;
      
      private static const §&!P§:Number = 0.1;
      
      public static const §=!@§:String = "4000-";
      
      private static const §0"O§:int = 0;
      
      private static const §""I§:int = -1;
      
      private static const §-i§:int = -2;
      
      private static const §["d§:int = 700;
      
      private static const §>V§:Number = -43.05;
      
      private static const §5"'§:Number = -2.05;
       
      
      private var §&"'§:Number = -5000.0;
      
      private var §'"%§:int = 0;
      
      private var §4"F§:Number = 0;
      
      private var §7#L§:Number = 0;
      
      protected var §7@§:Boolean;
      
      private var §`$2§:Boolean = false;
      
      protected var §!!%§:§[S§;
      
      private var §6"_§:Vector.<int>;
      
      private var §]X§:Boolean;
      
      private var §%$9§:Boolean;
      
      private var §##c§:String = "";
      
      protected var §-!9§:§'Z§;
      
      private var §!!X§:Boolean = true;
      
      private var §9#j§:Boolean = false;
      
      private var §+$;§:Boolean = false;
      
      private var §!!u§:SyncingPopup;
      
      protected var §[!A§:§8!<§;
      
      protected var §1!C§:§!"=§;
      
      protected var § !O§:Boolean = false;
      
      private var §6$5§:§@#5§;
      
      private var §;#X§:Number = 0;
      
      private var §;b§:Number = 0;
      
      private var §&"+§:Number;
      
      protected var §%#4§:§;#$§;
      
      private var §4$-§:Number = 0;
      
      private var §1#"§:§&#a§;
      
      private var §,!2§:Boolean = false;
      
      private var §0A§:Boolean = false;
      
      private var §+!C§:Boolean;
      
      private const §9Q§:int = 500;
      
      private const §2!§:int = 10000;
      
      private const §=V§:int = 20.0;
      
      private const §-!'§:int = 8000;
      
      private const §3![§:int = 1000;
      
      private var §-!B§:int;
      
      private var §8!m§:Boolean;
      
      private var §1"x§:Boolean = false;
      
      private var §[$6§:Boolean;
      
      protected var §]!r§:§!"e§;
      
      private var §0!H§:§!"e§;
      
      private var §"6§:int;
      
      private var §]"5§:int;
      
      private var §,""§:§@#5§;
      
      private var §[$>§:MovieClip;
      
      private var §?#A§:§@#5§;
      
      private var §9#1§:int;
      
      protected var §6#d§:§!"e§;
      
      private var §'!$§:Boolean = false;
      
      private var §!!_§:§!"e§;
      
      protected var §1z§:§3!U§;
      
      public function §<0§(param1:§!"e§, param2:§4#?§, param3:§;#$§, param4:§@!p§, param5:§?!>§)
      {
         this.§!!%§ = new §[S§();
         this.§6"_§ = new Vector.<int>(32);
         this.§1#"§ = new §&#a§();
         this.§%#4§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         this.§6"_§[3] = 5000;
         this.§6"_§[7] = 5000;
         this.§6"_§[8] = 5000;
         this.§6"_§[9] = 5000;
         this.§6"_§[18] = 5000;
         §<!§.setVisibility(false);
         this.§6#d§ = §<!§.getItemByName("Container_Buttons") as §!"e§;
         this.§!!_§ = §<!§.getItemByName("Container_Overlay") as §!"e§;
         this.§!!_§.setVisibility(true);
         this.§'!$§ = false;
         this.§1z§ = (§+!p§.§`?§ as §^#j§).objects as §3!U§;
         this.§0"G§();
         this.§>"v§();
         this.§9!Q§();
         this.§5$D§();
         this.§6U§();
         this.levelStarted();
         if((§+!p§.§;"-§ as §^"a§).§?"c§)
         {
            (§+!p§.§;"-§ as §^"a§).§?"c§.addEventListener(§-B§.§5!C§,this.§8"]§);
         }
         this.§8!m§ = false;
         this.§]!r§ = §<!§.getItemByName("Container_ZoomButtons") as §!"e§;
         this.§9#1§ = 0;
         §<!§.getItemByName("ScoreMultiplierIcon").setVisibility(false);
      }
      
      protected function §0"G§() : void
      {
         this.§0!H§ = §<!§.getItemByName("Container_EndLevelDialogue") as §!"e§;
         this.§0!H§.setVisibility(false);
         this.§[$>§ = §<!§.getItemByName("EndLevelDialogueBG").mClip;
         this.§"6§ = §0"O§;
         this.§]"5§ = 0;
      }
      
      protected function §>"v§() : void
      {
         this.§-!9§ = new §'Z§(§<!§);
      }
      
      protected function §9!Q§() : void
      {
         this.§[!A§ = new §8!<§(§<!§,mLevelManager);
      }
      
      protected function §5$D§() : void
      {
         var _loc2_:§^#i§ = null;
         this.§1!C§ = new §!"=§(§<!§,mLevelManager);
         var _loc1_:Object = §,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§6!D§(§ !G§.§!"J§);
         if(!_loc1_)
         {
            this.§1!C§.§?"I§(§!"=§.§!$#§(),true);
         }
         else
         {
            _loc2_ = §[9§.§%"%§(_loc1_[0]);
            if(_loc2_ && _loc2_.§3$<§)
            {
               this.§1!C§.§?"I§(_loc1_[0],true);
            }
            else
            {
               this.§1!C§.§?"I§(§[9§.§&#H§.§=#@§,true);
            }
         }
      }
      
      override public function dispose() : void
      {
         if((§+!p§.§;"-§ as §^"a§).§?"c§)
         {
            (§+!p§.§;"-§ as §^"a§).§?"c§.removeEventListener(§-B§.§5!C§,this.§8"]§);
         }
         this.disable(false);
         this.§1!C§.dispose();
         this.§1#"§ = null;
         this.§ "5§();
         §5"L§.§3"1§.removeEventListener(§<$!§.§?"+§,this.§0"k§);
         this.§<"N§(this.§,""§);
         this.§,""§ = null;
         this.§<"N§(this.§?#A§);
         this.§?#A§ = null;
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         var _loc2_:Boolean = §-#6§(AngryBirdsBase.singleton.popupManager).§!=§();
         if(!_loc2_)
         {
            §+!p§.resume();
         }
         §<!§.setVisibility(true);
         §<!§.addEventListener(§3#6§.§[!$§,this.onUIInteraction);
         this.§#!'§();
         if(!this.§1"x§)
         {
            this.§[!A§.activate(§ !b§(this.§%#4§),false,false);
         }
         if(!this.§+!C§)
         {
            this.§=!D§(false);
         }
         if(§!"=§.§7#M§)
         {
            §<!§.getItemByName("Button_Slingshot").setVisibility(true);
         }
         else
         {
            §<!§.getItemByName("Button_Slingshot").setVisibility(false);
         }
         §5"L§.§3"1§.addEventListener(§<$!§.§?"+§,this.§0"k§);
         if(!this.§!!_§)
         {
            this.§&Q§();
         }
      }
      
      protected function §8"]§(param1:§-B§) : void
      {
         this.§2I§();
      }
      
      override public function disable(param1:Boolean) : void
      {
         §<!§.setVisibility(false);
         §<!§.removeEventListener(§3#6§.§[!$§,this.onUIInteraction);
         §="d§.§0"<§();
         this.§-!9§.deActivate();
         this.§[!A§.deActivate();
         this.§1!C§.deActivate();
         this.§%#4§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^#;§);
         if(this.§6$5§)
         {
            this.§<"N§(this.§6$5§);
            this.§6$5§ = null;
         }
         this.§<"N§(this.§,""§);
         this.§,""§ = null;
         this.§<"N§(this.§?#A§);
         this.§?#A§ = null;
         §+!p§.§`?§.§7"f§(false);
         this.§7#k§();
         this.§0Z§();
         super.disable(param1);
      }
      
      private function §<"N§(param1:§@#5§) : void
      {
         if(param1)
         {
            param1.§+!_§();
         }
      }
      
      protected function § "5§() : void
      {
         var _loc2_:§+o§ = null;
         if(§+!p§.§`?§.background)
         {
            §+!p§.§`?§.background.stopAmbientSound();
         }
         §4$4§.§'!?§(§5#=§.§!!Q§);
         §8#+§ = 0;
         var _loc1_:§8M§ = §4$4§.§`!U§(§5#=§.§!!Q§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§2"S§(this.§##c§);
            if(_loc2_ != null)
            {
               §8#+§ = _loc2_.§6#=§;
            }
            §4$4§.§'!?§(§5#=§.§!!Q§);
         }
      }
      
      protected function §#!'§() : void
      {
         this.§@!J§();
         this.§-!9§.activate();
         if(this.§9#j§)
         {
            this.§%#4§.addEventListener(MouseEvent.MOUSE_DOWN,this.§^#;§);
         }
         §<!§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§&"+§ = 2500;
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§ "O§);
         this.§0Z§();
      }
      
      protected function levelStarted() : void
      {
         var _loc2_:Array = null;
         var _loc3_:§1!^§ = null;
         §'@§.§4"x§(§7J§.§,!L§,mLevelManager.currentLevel);
         §'@§.trackPageView(this,this.§6#U§());
         if(mLevelManager.currentLevel != §?"m§.§<f§)
         {
            §?"m§.§<f§ = mLevelManager.currentLevel;
            this.§4$-§ = 0;
         }
         else
         {
            ++this.§4$-§;
         }
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel);
         §]!P§.§1!7§().§'#h§(mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,_loc1_,this.§4$-§);
         if((§+!p§.§;"-§ as §^"a§).§?"c§)
         {
            (§+!p§.§;"-§ as §^"a§).§?"c§.levelStarted();
         }
         this.showScoresForLevel();
         this.§2I§();
         this.§9#j§ = false;
         this.§+$;§ = false;
         this.§%#4§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^#;§);
         if(§!"=§.§7#M§)
         {
            §<!§.getItemByName("Button_Slingshot").setEnabled(true);
            this.§ !O§ = false;
            if(this.§6$5§)
            {
               this.§<"N§(this.§6$5§);
               this.§6$5§ = null;
            }
         }
         (§+!p§.§`?§ as §^#j§).§'#>§.§>!c§ = false;
         this.§-!B§ = this.§3![§;
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            if(§=!a§.§3"1§.§@o§())
            {
               _loc2_ = new Array();
               for each(_loc3_ in §<$B§.§]!n§)
               {
                  _loc2_.push(_loc3_);
               }
               _loc2_.push(§<$B§.§,"S§);
               this.§,$=§(_loc2_);
            }
            else
            {
               this.§,$=§(§<$B§.§]!n§);
            }
         }
         else if((mLevelManager as §?"m§).§ "$§())
         {
            this.§,$=§(§<$B§.§-8§);
         }
         else
         {
            this.§,$=§(§<$B§.§7o§);
         }
         this.§1!C§.activate(§ !b§(this.§%#4§));
         §<!§.getItemByName("Container_Slingshot_Buttons").setVisibility(false);
         this.§1"x§ = false;
         this.§+!C§ = false;
         this.handleCollectibleItems();
      }
      
      protected function §,$=§(param1:Array) : void
      {
         var _loc5_:§1!^§ = null;
         var _loc6_:§6!1§ = null;
         var _loc7_:String = null;
         var _loc9_:MovieClip = null;
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         var _loc2_:Number = 100;
         for each(_loc5_ in §<$B§.§7#p§)
         {
            _loc6_ = §<!§.getItemByName(_loc5_.buttonName);
            _loc7_ = _loc5_.buttonName + "_" + §5"L§.§3"1§.brandedTournamentAssetId;
            if(§=@§.§8!l§(_loc7_))
            {
               _loc9_ = new §=@§.§9!x§(_loc7_)();
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
            if(!_loc5_.§[#;§)
            {
               if(§!",§.§3"1§.§2![§(_loc5_.§=#@§) <= 0)
               {
                  continue;
               }
            }
            (_loc6_ = §<!§.getItemByName(_loc5_.buttonName) as §;!b§).x = _loc2_;
            _loc6_.y = 44;
            _loc6_.setVisibility(true);
            _loc2_ += 65;
         }
      }
      
      protected function §6U§() : void
      {
         this.§!!%§.§,#T§(0);
         this.§1"M§(0);
         this.§7@§ = false;
         this.§-!9§.§8#!§ = this.§7@§;
      }
      
      private function §^#;§(param1:MouseEvent) : void
      {
         this.§+$;§ = true;
         this.§%#4§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^#;§);
      }
      
      protected function §2I§() : void
      {
         this.§-!9§.levelStarted((§+!p§.§;"-§ as §^"a§).§?"c§.§^!4§(),mLevelManager.currentLevel,(§+!p§.§;"-§ as §^"a§).§?"c§.§5$>§() == §9! §.§9!o§);
      }
      
      protected function §@!J§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§8M§ = null;
         if(mLevelManager.currentLevel.indexOf("3001-") > -1 || mLevelManager.currentLevel.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(mLevelManager.currentLevel.indexOf("3001-") > -1)
            {
               this.§##c§ = §5#=§.§&"x§;
               if(mLevelManager.currentLevel.indexOf("3001-1") > -1)
               {
                  _loc1_ = §5#=§.§ !x§;
               }
               else if(mLevelManager.currentLevel.indexOf("3001-2") > -1)
               {
                  _loc1_ = §5#=§.§]#^§;
                  this.§##c§ = §5#=§.§<!?§;
               }
               else
               {
                  _loc1_ = §5#=§.§ !x§;
               }
               if(AngryBirdsBase.singleton.§8"v§().previousState != this.§##3§())
               {
                  §8#+§ = 0;
               }
            }
            else if(§'#4§ <= 1)
            {
               this.§##c§ = §5#=§.§7#^§;
               _loc1_ = §5#=§.§#@§;
               _loc2_ = 1;
               §4$4§.removeEventListener(§9!p§.SOUND_COMPLETE,this.§ "`§);
               §4$4§.addEventListener(§9!p§.SOUND_COMPLETE,this.§ "`§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §4$4§.§`!U§(§5#=§.§!!Q§);
               if(!_loc3_)
               {
                  §4$4§.§<!A§(§5#=§.§!!Q§,1,1);
               }
               §4$4§.§<#<§(_loc1_,this.§##c§,3000,§5#=§.§!!Q§,_loc2_,0.75,§8#+§);
            }
         }
      }
      
      private function § "`§(param1:§9!p§) : void
      {
         if(param1.§9§ == §5#=§.§7#^§ && this.§##c§ == §5#=§.§7#^§ && AngryBirdsBase.singleton.§"#O§() != §4!s§.STATE_NAME)
         {
            §4$4§.removeEventListener(§9!p§.SOUND_COMPLETE,this.§ "`§);
            ++§<0§.§'#4§;
         }
      }
      
      private function §`"'§(param1:Number) : void
      {
         if(this.§;#X§)
         {
            this.§;b§ += param1;
            if(this.§;b§ > §<"^§)
            {
               this.§%#4§.§7$7§(true,this.§;#X§);
               this.§;b§ = 0;
            }
         }
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:String = "ALL_EXTRABIRD";
         if((mLevelManager as §?"m§).§ "$§())
         {
            _loc1_ = "ALL_MUSHROOM";
         }
         §="d§.§ S§(_loc1_,true);
         §="d§.showTutorials(true,true);
      }
      
      protected function §-p§(param1:String) : §=!Z§
      {
         var _loc2_:§=!Z§ = this.§1#"§[param1];
         if(!_loc2_)
         {
            _loc2_ = §<!§.getItemByName(param1) as §=!Z§;
            this.§1#"§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      protected function §'#<§(param1:Number) : void
      {
      }
      
      public function §6#U§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §2!^§() : String
      {
         return §'@§.§!<§;
      }
      
      protected function §1"M§(param1:Number) : void
      {
         this.§6c§();
         var _loc2_:int = this.§%#4§.getScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§!!%§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§!!%§.getValue() + param1 * §6]§);
            this.§!!%§.§,#T§(_loc4_);
         }
         if(this.§`$2§)
         {
            §<!§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§-!9§.§1"M§(_loc4_,_loc2_,_loc3_);
      }
      
      protected function showScoresForLevel() : void
      {
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§ c§,null);
      }
      
      private function §7#k§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§&"'§ > §&$8§)
         {
            _loc1_ = Math.round(1000 / this.§&"'§ * this.§'"%§);
            _loc2_ = mLevelManager.currentLevel;
            _loc3_ = (§+!p§.§;"-§ as §^"a§).§&m§();
            §'@§.§^!0§(_loc1_,_loc2_,Starling.§," §,_loc3_);
         }
      }
      
      private function §>x§(param1:Number) : void
      {
         this.§&"'§ += param1;
         if(this.§&"'§ > 0)
         {
            ++this.§'"%§;
         }
         if(this.§4"F§ != §+!p§.§+#L§() || this.§7#L§ != §+!p§.§[#%§())
         {
            this.§0Z§();
         }
      }
      
      private function §0Z§() : void
      {
         this.§&"'§ = §5"m§;
         this.§'"%§ = 0;
         this.§4"F§ = §+!p§.§+#L§();
         this.§7#L§ = §+!p§.§[#%§();
      }
      
      protected function §'#Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§]X§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§6"_§.length)
            {
               _loc1_ += this.§6"_§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§]X§ = true;
               §7J§.§4"x§(§7J§.§>!s§,mLevelManager.currentLevel);
            }
         }
         if(this.§%$9§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §6c§() : void
      {
         var _loc1_:int = this.§%#4§.getScore();
         var _loc2_:int = this.§!!%§.getValue();
         if(_loc2_ < _loc1_ && this.§]X§)
         {
            this.§%$9§ = true;
         }
      }
      
      protected function §!#d§(param1:Boolean = true) : void
      {
         if(!§!"=§.§7#M§)
         {
            return;
         }
         this.§ !O§ = true;
         §<!§.getItemByName("Button_Slingshot").setEnabled(false);
         this.§<"N§(this.§6$5§);
         this.§6$5§ = §5"<§.§3"1§.§3#§(§<!§.getItemByName("Button_Slingshot").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§6$5§.delay = 2;
         }
         else
         {
            this.§6$5§.delay = 0.5;
         }
         this.§6$5§.play();
         this.§6$5§.onComplete = this.§[#W§;
      }
      
      private function §[#W§() : void
      {
         §<!§.getItemByName("Button_Slingshot").setVisibility(false);
      }
      
      protected function §!#1§() : Boolean
      {
         if((§+!p§.§`?§ as §^#j§).§'#>§.§#!?§() && !this.§!!u§)
         {
            this.§!!u§ = new SyncingPopup(§-!S§.§ !^§,§## §.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§!!u§);
            (§+!p§.§`?§ as §^#j§).§'#>§.addEventListener(Event.COMPLETE,this.§ #R§);
         }
         return !(§+!p§.§`?§ as §^#j§).§'#>§.§#!?§();
      }
      
      private function § #R§(param1:Event) : void
      {
         (§+!p§.§`?§ as §^#j§).§'#>§.removeEventListener(Event.COMPLETE,this.§ #R§);
         this.§!!u§.close();
         this.§!!u§ = null;
      }
      
      protected function §##3§() : String
      {
         return §4!s§.STATE_NAME;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§7@§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §2t§.STATE_NAME;
      }
      
      public function getLoserState() : String
      {
         return §%"`§.STATE_NAME;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Vector.<String> = null;
         this.§'#Z§();
         super.update(param1);
         if(this.§9#1§ > 0)
         {
            this.§9#1§ -= param1;
         }
         if(AngryBirdsBase.singleton.popupManager.§!=§())
         {
            if(!this.§8!m§)
            {
               this.§8!m§ = true;
               _loc3_ = new Vector.<String>();
               _loc3_.push(§4$4§.§1#l§);
               §4$4§.§3V§(_loc3_);
               if(this.§-!9§)
               {
                  this.§-!9§.deActivate();
               }
            }
            return;
         }
         if(this.§8!m§)
         {
            this.§8!m§ = false;
            if(this.§-!9§)
            {
               this.§-!9§.activate();
            }
            §4$4§.§4!S§();
         }
         this.§1"M§(param1);
         var _loc2_:Boolean = this.§!!X§ = this.§-!9§.run(param1);
         this.§[!A§.run(param1);
         this.§1!C§.run(param1);
         this.§`"'§(param1);
         this.§%#4§.mouseEnabled = !this.§1!C§.§^"_§();
         if(this.§1!C§.§^"_§())
         {
            if(this.§[$6§)
            {
               this.§]!r§.getItemByName("Button_ZoomIn").setEnabled(false);
               this.§]!r§.getItemByName("Button_ZoomOut").setEnabled(false);
               this.§]!r§.getItemByName("Button_Magnify").setEnabled(false);
               this.§[$6§ = false;
            }
         }
         else if(!this.§[$6§)
         {
            this.§]!r§.getItemByName("Button_ZoomIn").setEnabled(true);
            this.§]!r§.getItemByName("Button_ZoomOut").setEnabled(true);
            this.§]!r§.getItemByName("Button_Magnify").setEnabled(true);
            this.§[$6§ = true;
         }
         this.§>x§(param1);
         if(!§+!p§.§`?§.§+"l§ || !this.§7@§)
         {
            this.§'#<§(param1);
         }
         if(AngryBirdsBase.singleton.§8"v§().previousState == §^1§.§-§.STATE_NAME || AngryBirdsBase.singleton.§8"v§().previousState == §>#P§.STATE_NAME)
         {
            if(!this.§9#j§)
            {
               this.§%#4§.addEventListener(MouseEvent.MOUSE_DOWN,this.§^#;§);
               this.§9#j§ = true;
            }
            if(_loc2_ || this.§+$;§)
            {
               this.§&"+§ -= param1;
               if(this.§&"+§ < 0 || this.§+$;§)
               {
                  if(!this.§!#1§())
                  {
                  }
               }
            }
         }
         else if(AngryBirdsBase.singleton.§8"v§().previousState == §5!6§.STATE_NAME)
         {
            if(!this.§!#1§())
            {
            }
         }
         if(!§+!p§.§`?§.slingshot.birdsAvailable)
         {
            if(!this.§,!2§)
            {
               this.§[!A§.§&!!§(§<$B§.§+"4§.eventName,false);
               this.§[!A§.§&!!§(§<$B§.§<$§.eventName,false);
               this.§[!A§.§&!!§(§<$B§.§ !n§.eventName,false);
               this.§,!2§ = true;
            }
         }
         else
         {
            this.§,!2§ = false;
         }
         if(§+!p§.§`?§.objects.getPigCount() == 0)
         {
            if(!this.§0A§)
            {
               this.§[!A§.§&!!§(§<$B§.§!"C§.eventName,false);
               this.§0A§ = true;
            }
         }
         else if(this.§0A§)
         {
            this.§0A§ = false;
         }
         this.§3Z§(param1);
         if(§+!p§.§`?§.slingshot.mSlingShotState == §2!"§.§ "X§)
         {
            this.§[!A§.§"$9§();
            if(!this.§ !O§ && §!"=§.§7#M§)
            {
               this.§!#d§(this.§1!C§.§^"_§());
               this.§1!C§.§2#d§();
            }
         }
         if(!§+!p§.isPaused)
         {
            if(this.§-!B§ > 0)
            {
               this.§-!B§ -= param1;
            }
         }
         if(§!"=§.§!$#§() == §[9§.§%"<§.§=#@§)
         {
            this.§]!>§();
         }
         if(this.§0!H§.visible)
         {
            if(§+!p§.§`?§.slingshot.mSlingShotState == §2!"§.§1#%§ && !(§+!p§.§`?§ as §^#j§).§'#>§.§>!c§)
            {
               this.§=!D§(true,this.§%#4§.§`[§());
            }
         }
         if(this.§'!$§)
         {
            this.§'!$§ = false;
            this.§!!_§.setVisibility(false);
            this.§!!_§ = null;
            this.§&Q§();
         }
         if(this.§!!_§ && this.§!!_§.visible)
         {
            if(this.§1z§.§"!>§)
            {
               this.§'!$§ = true;
            }
         }
      }
      
      private function §]!>§() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:§0E§ = §+!p§.§`?§.particles as §0E§;
         var _loc2_:int = 0;
         while(_loc2_ < §]"]§.§5"2§)
         {
            _loc3_ = this.§!7§(§+!p§.§`?§.§%?§.§4$%§,§+!p§.§`?§.§%?§.§9"<§);
            _loc4_ = this.§!7§(§+!p§.§`?§.§%?§.§6"B§,0);
            _loc1_.§"#f§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      protected function §3Z§(param1:Number) : void
      {
         if(this.§%#4§.§@!x§())
         {
            if(§+!p§.§`?§.slingshot.mDragging)
            {
               if(this.§]"5§ == 0)
               {
                  this.§]"5§ = §&$0§.§;!n§;
                  this.§"6§ = §0"O§;
               }
               if(this.§"6§ > §0"O§)
               {
                  this.§>t§();
               }
            }
            else if(this.§]"5§ > 0)
            {
               this.§]"5§ -= param1;
               if(this.§]"5§ <= 0)
               {
                  this.§]"5§ = -1;
                  if(this.§"6§ < §0"O§)
                  {
                     this.§]!@§();
                  }
               }
            }
            else if(this.§"6§ == §0"O§)
            {
               this.§"6§ = §&$0§.§2!4§;
               this.§08§();
               this.§]"5§ = -1;
            }
            else if(this.§"6§ > §0"O§)
            {
               this.§"6§ -= param1;
               if(this.§"6§ <= §0"O§)
               {
                  §<!§.setText("0","TextField_EndLevelCounter");
                  this.skipToLevelEnd(§]!P§.§>#l§);
                  this.§"6§ = §-i§;
               }
               else
               {
                  §<!§.setText("" + int(this.§"6§ / 1000),"TextField_EndLevelCounter");
               }
            }
            else if(!this.§?#A§)
            {
               this.§[$>§.scaleX = 0.8;
               this.§[$>§.scaleY = 0.8;
            }
         }
         else if(this.§"6§ > §0"O§)
         {
            this.§"6§ = §0"O§;
            this.§]"5§ = 0;
         }
      }
      
      private function §!7§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      protected function onUIInteraction(param1:§3#6§) : void
      {
         var totalBirds:int = 0;
         var remainingBirds:int = 0;
         var wingmanIndex:int = 0;
         var wingmanIndexString:String = null;
         var timer:Timer = null;
         var meScore:int = 0;
         var event:§3#6§ = param1;
         if(§&"-§ || this.§9#1§ > 0)
         {
            return;
         }
         if(event.eventIndex == 1)
         {
            if(§+!p§.§`?§.slingshot.mDragging)
            {
               §+!p§.§`?§.slingshot.shoot();
               this.§%#4§.changeGameState(§;#$§.§5#,§);
               return;
            }
            §+!p§.§`?§.camera.stopDragging();
         }
         switch(event.eventName)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               dispatchEvent(new §@$%§(§@$%§.§`$;§));
               if(this.§"6§ > §0"O§)
               {
                  this.§]!@§();
               }
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §@$%§(§@$%§.RESTART_LEVEL));
               break;
            case "CLOSE_TUTORIAL":
               §="d§.§0"<§();
               break;
            case "POWERUP1":
               this.§9"]§(§<$B§.§+"4§.eventName);
               break;
            case "POWERUP2":
               this.§9"]§(§<$B§.§<$§.eventName);
               break;
            case "POWERUP3":
               this.§9"]§(§<$B§.§ !n§.eventName);
               break;
            case "POWERUP4":
               this.§9"]§(§<$B§.§5#J§.eventName);
               break;
            case "POWERUP5":
               this.§9"]§(§<$B§.§!"C§.eventName);
               break;
            case "POWERUP6":
               this.§9"]§(§<$B§.§^!n§.eventName);
               break;
            case "POWERUP7":
               this.§9"]§(§<$B§.§,"S§.eventName);
               break;
            case "POWERUP8":
               this.§9"]§(§<$B§.§[D§.eventName);
               break;
            case "POWERUP_WINGMAN":
               if(this.§"6§ == §-i§)
               {
                  return;
               }
               if(this.§-!B§ > 0)
               {
                  return;
               }
               if(§!",§.§3"1§.§2![§(§<$B§.§0"s§.§=#@§) > 0)
               {
                  this.§=!D§(false);
               }
               this.§[!A§.§,"9§(event.eventName);
               totalBirds = §+!p§.§`?§.slingshot.§?#&§();
               remainingBirds = §+!p§.§`?§.slingshot.§,"j§();
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
               this.§##g§();
               this.§>t§();
               this.§9#1§ = §["d§;
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§0"s§.buttonName),false);
               break;
            case "POWERUP_MIGHTY_EAGLE":
               if(this.§"6§ == §-i§)
               {
                  return;
               }
               if((§+!p§.§`?§ as §^#j§).§'#>§.§#!?§())
               {
                  return;
               }
               if((§+!p§.§`?§ as §^#j§).§'#>§.useMightyEagle())
               {
                  this.§[!A§.§&!!§(§<$B§.§+"4§.eventName,false);
                  this.§[!A§.§&!!§(§<$B§.§<$§.eventName,false);
                  this.§[!A§.§&!!§(§<$B§.§[D§.eventName,false);
                  this.§[!A§.§&!!§(§<$B§.§ !n§.eventName,false);
                  this.§[!A§.§&!!§(§<$B§.§5#J§.eventName,false);
                  this.§[!A§.§&!!§(§<$B§.§!"C§.eventName,false);
                  this.§[!A§.§&!!§(§<$B§.§`"K§.eventName,false);
                  this.§[!A§.§&!!§(§<$B§.§0"s§.eventName,false);
                  §+!p§.§`?§.useMightyEagle();
                  meScore = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
                  §<!§.setText(meScore.toString() + "%","TextField_MEPercentage");
                  this.§7@§ = true;
                  this.§-!9§.§8#!§ = this.§7@§;
                  §="d§.showTutorials();
                  this.§##g§();
                  this.§=!D§(false);
               }
               else
               {
                  this.§[!A§.§,"9§(event.eventName);
               }
               this.§>t§();
               this.§9#1§ = §["d§;
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§`"K§.buttonName),false);
               break;
            case "POWERUPOVER1":
               if(§!",§.§3"1§.§2![§(§<$B§.§+"4§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§+"4§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER2":
               if(§!",§.§3"1§.§2![§(§<$B§.§<$§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§<$§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER3":
               if(§!",§.§3"1§.§2![§(§<$B§.§ !n§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§ !n§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER4":
               if(§!",§.§3"1§.§2![§(§<$B§.§5#J§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§5#J§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER5":
               if(§!",§.§3"1§.§2![§(§<$B§.§!"C§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§!"C§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER6":
               if(§!",§.§3"1§.§2![§(§<$B§.§^!n§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§^!n§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER7":
               if(§!",§.§3"1§.§2![§(§<$B§.§,"S§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§,"S§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER8":
               if(§!",§.§3"1§.§2![§(§<$B§.§[D§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§[D§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER_MIGHTY_EAGLE":
               if(§!",§.§3"1§.§2![§(§<$B§.§`"K§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§`"K§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOVER_WINGMAN":
               if(§!",§.§3"1§.§2![§(§<$B§.§0"s§.§=#@§) <= 0)
               {
                  this.§"!X§(this.§6#d§.getItemByName(§<$B§.§0"s§.buttonName),true);
                  break;
               }
               break;
            case "POWERUPOUT1":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§+"4§.buttonName),false);
               break;
            case "POWERUPOUT2":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§<$§.buttonName),false);
               break;
            case "POWERUPOUT3":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§ !n§.buttonName),false);
               break;
            case "POWERUPOUT4":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§5#J§.buttonName),false);
               break;
            case "POWERUPOUT5":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§!"C§.buttonName),false);
               break;
            case "POWERUPOUT6":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§^!n§.buttonName),false);
               break;
            case "POWERUPOUT7":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§,"S§.buttonName),false);
               break;
            case "POWERUPOUT8":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§[D§.buttonName),false);
               break;
            case "POWERUPOUT_MIGHTY_EAGLE":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§`"K§.buttonName),false);
               break;
            case "POWERUPOUT_WINGMAN":
               this.§"!X§(this.§6#d§.getItemByName(§<$B§.§0"s§.buttonName),false);
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §="d§.§0"<§();
               break;
            case "ZOOM_IN":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§;#X§ = §&!P§;
               this.§;b§ = §<"^§;
               break;
            case "ZOOM_OUT":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§;#X§ = -§&!P§;
               this.§;b§ = §<"^§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§;#X§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§;#X§ = 0;
               break;
            case "SLINGSHOT_OPEN":
               if(this.§1!C§.§^"_§())
               {
                  §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               }
               else
               {
                  §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               }
               this.§1!C§.§?"§();
               break;
            case "SLINGSHOT_NORMAL":
               this.§"D§("SLINGSHOT_NORMAL");
               break;
            case "SLINGSHOT_WOODCHIPPER":
            case "SLINGSHOT_BUY_SLING_1":
               this.§"D§("SLINGSHOT_WOODCHIPPER");
               break;
            case "SLINGSHOT_GLASSBREAKER":
            case "SLINGSHOT_BUY_SLING_2":
               this.§"D§("SLINGSHOT_GLASSBREAKER");
               break;
            case "SLINGSHOT_STONECUTTER":
            case "SLINGSHOT_BUY_SLING_3":
               this.§"D§("SLINGSHOT_STONECUTTER");
               break;
            case "SLINGSHOT_GOLDEN":
            case "SLINGSHOT_BUY_SLING_4":
               this.§"D§("SLINGSHOT_GOLDEN");
               break;
            case "SLINGSHOT_WISHBONE":
            case "SLINGSHOT_BUY_SLING_5":
               this.§"D§("SLINGSHOT_WISHBONE");
               break;
            case "SLINGSHOT_XMASTREE":
            case "SLINGSHOT_BUY_SLING_6":
               this.§"D§("SLINGSHOT_XMASTREE");
               break;
            case "SLINGSHOT_BOUNCY":
            case "SLINGSHOT_UNLOCK_BOUNCY":
               this.§"D§("SLINGSHOT_BOUNCY");
               break;
            case "SLINGSHOT_DIAMOND":
            case "SLINGSHOT_UNLOCK_DIAMOND":
               this.§"D§("SLINGSHOT_DIAMOND");
               break;
            case "LEVEL_END_NO":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               timer = new Timer(100);
               timer.addEventListener(TimerEvent.TIMER,function fn(param1:TimerEvent):void
               {
                  §>t§();
                  timer = null;
               });
               timer.start();
               break;
            case "LEVEL_END_YES":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.skipToLevelEnd(§]!P§.§^#a§);
               break;
            case "SKIP_LEVEL_END":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.skipToLevelEnd(§]!P§.§3"Z§);
         }
      }
      
      private function §9"]§(param1:String) : void
      {
         if(this.§"6§ == §-i§)
         {
            return;
         }
         this.§[!A§.§&!!§(param1,false);
         this.§[!A§.§,"9§(param1);
         this.§>t§();
      }
      
      private function §"!X§(param1:§6!1§, param2:Boolean) : void
      {
         var getMoreMC:MovieClip = null;
         var button:§6!1§ = param1;
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
      
      private function §"D§(param1:String) : void
      {
         if((§+!p§.§`?§ as §^#j§).§'#>§.§#!?§())
         {
            return;
         }
         var _loc2_:§^#i§ = §[9§.§ e§(param1);
         if(_loc2_)
         {
            this.§1!C§.§?"I§(_loc2_.§=#@§,false);
            this.§>t§();
         }
         this.§9#1§ = §["d§;
      }
      
      public function §9M§() : String
      {
         return "PlayView";
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:§]#m§ = null;
         if(!this.§!!X§ && !this.§+$;§)
         {
            return false;
         }
         if(this.isEagleUsed())
         {
            _loc1_ = this.§%#4§.§]V§();
            if(!_loc1_)
            {
               return true;
            }
            return _loc1_.§7!F§ && _loc1_.§@#j§ && _loc1_.§<K§ > 3000;
         }
         if((this.§%#4§ as § !b§).§'"&§.§'"Z§() && !this.§1"x§)
         {
            return false;
         }
         return super.isAllowedToChangeVictoryState();
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if((this.§%#4§ as § !b§).§'"&§.§'"Z§())
         {
            return false;
         }
         return super.isAllowedToChangeFailState();
      }
      
      private function §##g§() : void
      {
         (this.§%#4§ as § !b§).§?"'§();
      }
      
      private function §+l§() : Boolean
      {
         if((this.§%#4§ as § !b§).§'"&§.§'"Z§())
         {
            return false;
         }
         if(AngryBirdsBase.singleton.popupManager.§!=§())
         {
            return false;
         }
         return true;
      }
      
      private function §0"k§(param1:§<$!§) : void
      {
         (§+!p§.§;"-§ as §^"a§).§?"c§.§`$'§();
      }
      
      protected function skipToLevelEnd(param1:String) : void
      {
         var levelEndActionForAnalytics:String = param1;
         if((§+!p§.§`?§.slingshot as §]"]§).mSlingShotState == §]"]§.§""m§)
         {
            return;
         }
         if((§+!p§.§`?§ as §^#j§).§'#>§.§#!?§())
         {
            if(!this.§!!u§)
            {
               this.§!!u§ = new SyncingPopup(§-!S§.§ !^§,§## §.DEFAULT);
               AngryBirdsBase.singleton.popupManager.openPopup(this.§!!u§);
               (§+!p§.§`?§ as §^#j§).§'#>§.addEventListener(Event.COMPLETE,function():void
               {
                  (§+!p§.§`?§ as §^#j§).§'#>§.removeEventListener(Event.COMPLETE,§ #R§);
                  §!!u§.close();
                  §!!u§ = null;
                  skipToLevelEnd(levelEndActionForAnalytics);
               });
            }
            return;
         }
         §]!P§.§1!7§().§]"F§ = levelEndActionForAnalytics;
         this.§!!X§ = true;
         this.§1"x§ = true;
         if(this.§0!H§)
         {
            this.§0!H§.setVisibility(false);
         }
         this.§[!A§.§?#t§();
         this.§"6§ = §""I§;
         if(this.§%#4§.§`[§())
         {
            this.§%#4§.§ !!§();
         }
         else
         {
            this.§%#4§.§,$1§();
         }
      }
      
      private function §08§() : void
      {
         this.§0!H§.setVisibility(true);
         §<!§.getItemByName("EndLevelDialogueTitle").y = §>V§;
         (§<!§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).gotoAndStop(1);
         §<!§.getItemByName("Button_No").setVisibility(true);
         §<!§.getItemByName("Button_No").mClip.scaleX = 1;
         §<!§.getItemByName("Button_No").mClip.scaleY = 1;
         §<!§.getItemByName("TextField_EndLevelCounter").setVisibility(true);
         this.§[$>§.scaleX = 1;
         this.§[$>§.scaleY = 1;
         if(§+!p§.§`?§.slingshot.mSlingShotState == §2!"§.§1#%§ && !(§+!p§.§`?§ as §^#j§).§'#>§.§>!c§)
         {
            this.§=!D§(true,this.§%#4§.§`[§());
         }
         var _loc1_:MovieClip = §<!§.getItemByName("TextField_EndLevelCounter").mClip;
         this.§,""§ = §5"<§.§3"1§.§]#6§(§5"<§.§3"1§.§3#§(_loc1_,{},{},0.8),§5"<§.§3"1§.§3#§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§5"<§.§6=§),§5"<§.§3"1§.§3#§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§5"<§.§`#3§));
         this.§,""§.§]!3§ = false;
         this.§,""§.delay = 0.1;
         this.§,""§.play();
      }
      
      private function §>t§() : void
      {
         var _loc1_:§@#5§ = null;
         var _loc2_:§@#5§ = null;
         if(this.§"6§ > §0"O§)
         {
            this.§<"N§(this.§,""§);
            this.§,""§ = null;
            this.§"6§ = §""I§;
            §<!§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            _loc1_ = §5"<§.§3"1§.§3#§(§<!§.getItemByName("Button_No").mClip,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":1,
               "scaleY":1
            },0.2,§5"<§.§`#3§);
            _loc1_.onComplete = this.§+!d§;
            _loc1_.play();
            _loc2_ = §5"<§.§3"1§.§3#§(§<!§.getItemByName("EndLevelDialogueTitle").mClip,{"y":§5"'§},{"y":§>V§},0.3,§5"<§.§`#3§);
            _loc2_.onComplete = this.§+"0§;
            _loc2_.play();
            this.§?#A§ = §5"<§.§3"1§.§3#§(this.§[$>§,{
               "scaleX":0.8,
               "scaleY":0.8
            },{
               "scaleX":1,
               "scaleY":1
            },0.3,§5"<§.§`#3§);
            this.§?#A§.onComplete = this.§]!@§;
            this.§?#A§.play();
         }
      }
      
      private function §+!d§() : void
      {
         §<!§.getItemByName("Button_No").setVisibility(false);
      }
      
      private function §+"0§() : void
      {
         §<!§.getItemByName("EndLevelDialogueTitle").y = §5"'§;
      }
      
      private function §]!@§() : void
      {
         if(this.§]"5§ <= 0)
         {
            this.§0!H§.setVisibility(true);
            this.§"6§ = §""I§;
            §<!§.getItemByName("EndLevelDialogueTitle").y = §5"'§;
            §<!§.getItemByName("Button_No").setVisibility(false);
            §<!§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            this.§[$>§.scaleX = 0.8;
            this.§[$>§.scaleY = 0.8;
            (§<!§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).play();
            this.§?#A§ = null;
         }
      }
      
      private function §=!D§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:§@#5§ = null;
         if(param1 && this.§+!C§)
         {
            return;
         }
         if(param1 && §=!a§.§3"1§.§@o§())
         {
            return;
         }
         var _loc3_:§6!1§ = this.§6#d§.getItemByName(§<$B§.§0"s§.buttonName);
         var _loc4_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderUse") as MovieClip;
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_SliderImprove") as MovieClip;
         if(param1 && !this.§7@§)
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
            (_loc7_ = §5"<§.§3"1§.§3#§(_loc6_,{"x":0},null,0.7,§5"<§.§5!p§)).§]!3§;
            _loc7_.§7!z§ = true;
            _loc7_.play();
            this.§+!C§ = true;
         }
         else
         {
            _loc4_.visible = false;
            _loc5_.visible = false;
         }
      }
      
      private function §&Q§() : void
      {
         this.§[!A§.§0$-§();
         §="d§.showTutorials(false,true);
      }
      
      protected function handleCollectibleItems() : void
      {
         var _loc1_:§>"%§ = null;
         if(§=!a§.§3"1§.§#"P§())
         {
            _loc1_ = §=!a§.§3"1§.§>"Q§() as §>"%§;
            if(_loc1_)
            {
               _loc1_.§'"C§();
            }
         }
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
