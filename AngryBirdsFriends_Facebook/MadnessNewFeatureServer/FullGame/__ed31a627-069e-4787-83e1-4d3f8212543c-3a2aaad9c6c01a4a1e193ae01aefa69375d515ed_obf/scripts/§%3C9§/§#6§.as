package §<9§
{
   import § !j§.§4#c§;
   import §!"'§.§0"Z§;
   import §!#C§.§#H§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §&!_§.§!!K§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §1#v§.§;!Y§;
   import §2";§.§+!I§;
   import §2";§.§9§;
   import §3!!§.§;2§;
   import §4§.§;!X§;
   import §6!3§.§'!§;
   import §8#K§.§3Z§;
   import §9?§.§'"U§;
   import §=#f§.§""F§;
   import §>2§.§"§;
   import §>z§.§#"l§;
   import §>z§.SyncingPopup;
   import §?!]§.§6#k§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §#6§ extends §;2§ implements §%!#§
   {
      
      public static const §&#<§:Number = -250;
       
      
      private var §7"@§:§'"U§;
      
      private var §8#m§:SyncingPopup;
      
      private var §>G§:int;
      
      private var §8"q§:String;
      
      private var §^"a§:§6"n§;
      
      protected var §8$6§:§7$C§ = null;
      
      private var §#"L§:§'!`§;
      
      public function §#6§(param1:§]$+§, param2:§;"n§, param3:§#H§, param4:§4#c§, param5:§'"U§)
      {
         this.§7"@§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§`"$§ = §6#`§.getItemByName("TextField_ChapterName") as §`"$§;
         _loc1_.§2"<§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§9"-§(param1);
         super.disable(param1);
         this.§];§(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         var _loc2_:§`""§ = (§7n§.§-$<§ as § #v§).§=#+§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(§6#k§.§3>§,this.§2Q§);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §6#`§.setVisibility(true);
         §6#`§.addEventListener(§0"Z§.§0#,§,this.onUIInteraction);
         var _loc2_:§`""§ = (§7n§.§-$<§ as § #v§).§=#+§;
         if(_loc2_)
         {
            _loc2_.addEventListener(§6#k§.§3>§,this.§2Q§);
         }
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§8#p§);
         this.refresh();
         this.§=$%§(param1);
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return § #v§.§#<§.§`!-§(param1);
      }
      
      private function §+"7§() : void
      {
         if(this.§8$6§ != null)
         {
            this.§8$6§.stop();
         }
         this.§8$6§ = null;
      }
      
      protected function §=$%§(param1:Boolean) : void
      {
         var _loc5_:§`"$§ = null;
         if(mLevelManager.currentLevel != null)
         {
            (_loc5_ = §6#`§.getItemByName("TextField_ChapterName") as §`"$§).§2"<§.text = mLevelManager.getCurrentEpisodeModel().writtenName;
            (§6#`§.getItemByName("TextField_LevelName") as §`"$§).§2"<§.text = this.getLevelNameToDisplay(mLevelManager.currentLevel);
            (§6#`§.getItemByName("TextField_LevelName") as §`"$§).y = _loc5_.height + 15;
         }
         (§6#`§.getItemByName("Container_PauseMenu") as §]$+§).x = §&#<§;
         this.§=#%§(false);
         var _loc2_:§]$+§ = §6#`§.getItemByName("Container_PauseMenu") as §]$+§;
         this.§#"L§ = _loc2_.getItemByName("MovieClip_SoundsOff") as §'!`§;
         this.§#"L§.mClip.mouseEnabled = false;
         this.§?"b§(!AngryBirdsBase.§"!v§());
         §7n§.pause();
         var _loc3_:§'!§ = (§7n§.§ "'§ as §;!X§).§1$'§.levelObjects;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.§&P§())
         {
            _loc3_.getObject(_loc4_).update(0,null);
            _loc4_++;
         }
         if(this.§8$6§ != null)
         {
            this.§8$6§.stop();
         }
         this.§7"@§.reset();
         this.§7"@§.§0#i§(true);
         this.§8$6§ = §"!&§.§`"H§.§;#r§(§"!&§.§`"H§.§1"W§(§6#`§.getItemByName("Container_PauseMenu") as §]$+§,{"x":0},null,0.25),§"!&§.§`"H§.§1"W§((§6#`§.getItemByName("MovieClip_DarkBG") as §'!`§).mClip,{"alpha":1},{"alpha":0},0.25),§"!&§.§`"H§.§1"W§((§6#`§.getItemByName("News_Item_Holder") as §]$+§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§8$6§.onComplete = this.§;!O§;
         this.§8$6§.play();
      }
      
      protected function §;!O§() : void
      {
         this.§=#%§(true);
         this.§+"7§();
      }
      
      protected function §?"b§(param1:Boolean) : void
      {
         this.§#"L§.mClip.visible = param1;
      }
      
      protected function §=#%§(param1:Boolean) : void
      {
         (§6#`§.getItemByName("Button_Resume") as § !>§).setEnabled(param1);
         (§6#`§.getItemByName("Button_Replay") as § !>§).setEnabled(param1);
         (§6#`§.getItemByName("Button_Menu") as § !>§).setEnabled(param1);
      }
      
      protected function §];§(param1:String) : void
      {
         (§6#`§.getItemByName("Button_Resume") as § !>§).setComponentVisualState(param1);
         (§6#`§.getItemByName("Button_Replay") as § !>§).setComponentVisualState(param1);
         (§6#`§.getItemByName("Button_Menu") as § !>§).setComponentVisualState(param1);
      }
      
      protected function §9"-§(param1:Boolean) : void
      {
         if(this.§8$6§ != null)
         {
            this.§8$6§.stop();
         }
         this.§8$6§ = §"!&§.§`"H§.§;#r§(§"!&§.§`"H§.§1"W§(§6#`§.getItemByName("Container_PauseMenu") as §]$+§,{"x":§&#<§},null,0.25),§"!&§.§`"H§.§1"W§((§6#`§.getItemByName("MovieClip_DarkBG") as §'!`§).mClip,{"alpha":0},{"alpha":1},0.25),§"!&§.§`"H§.§1"W§((§6#`§.getItemByName("News_Item_Holder") as §]$+§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§8$6§.onComplete = this.§4#+§;
         this.§8$6§.play();
         if(this.§7"@§)
         {
            this.§7"@§.§0#i§(false);
         }
      }
      
      protected function §4#+§() : void
      {
         §6#`§.setVisibility(false);
         §6#`§.removeEventListener(§0"Z§.§0#,§,this.onUIInteraction);
         this.§+"7§();
      }
      
      protected function getLevelSelectionState() : String
      {
         var _loc1_:§ T§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc1_ && _loc1_.name == §+!I§.§3"J§)
         {
            return §+!I§.STATE_NAME;
         }
         return §9#7§.STATE_NAME;
      }
      
      private function §?$@§(param1:Event) : void
      {
         (§7n§.§6#K§ as §"#1§).§=!G§.removeEventListener(Event.COMPLETE,this.§?$@§);
         if(this.§8#m§)
         {
            this.§8#m§.close();
            this.§8#m§ = null;
         }
         this.onUIInteraction(new §0"Z§(§0"Z§.§0#,§,this.§>G§,this.§8"q§,this.§^"a§));
      }
      
      protected function onUIInteraction(param1:§0"Z§) : void
      {
         var _loc2_:§`""§ = null;
         var _loc3_:* = false;
         if(§^!!§)
         {
            return;
         }
         if(["MENU","RESTART_LEVEL"].indexOf(param1.eventName) != -1 && (§7n§.§6#K§ as §"#1§).§=!G§.§6#J§(false))
         {
            this.§>G§ = param1.eventIndex;
            this.§8"q§ = param1.eventName;
            this.§^"a§ = param1.component;
            (§7n§.§6#K§ as §"#1§).§=!G§.addEventListener(Event.COMPLETE,this.§?$@§);
            this.§8#m§ = new SyncingPopup(§#"l§.§?!b§,§]"Y§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§8#m§);
            return;
         }
         if(param1.eventName == "RESTART_LEVEL")
         {
         }
         if(this.§7"@§)
         {
            this.§7"@§.uiInteractionHandler(param1.eventName);
         }
         switch(param1.eventName)
         {
            case "HELP":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               dispatchEvent(new §""F§(§""F§.RESUME_LEVEL));
               §;!Y§.log(§6#k§.§#"H§);
               (§7n§.§-$<§ as § #v§).§=#+§.dispatchEvent(new §6#k§(§6#k§.§#"H§));
               break;
            case "RESTART_LEVEL":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               dispatchEvent(new §""F§(§""F§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               dispatchEvent(new §""F§(§""F§.RESUME_LEVEL));
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §3Z§.§3j§();
               dispatchEvent(new §""F§(§""F§.§]E§,this.getLevelSelectionState()));
               §!!K§.§%#S§().§'D§(false,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§7n§.§6#K§.slingshot.§=!q§() - §7n§.§6#K§.slingshot.§;O§(),§7n§.§6#K§.slingshot.§=!q§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§7n§.§6#K§ as §"#1§).§7$7§(),§7n§.§ "'§.getScore(),false);
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               break;
            case "TOGGLE_SOUNDS":
               if(!§3Z§.§&"A§)
               {
                  §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               }
               _loc2_ = (§7n§.§-$<§ as § #v§).§=#+§;
               if(_loc2_)
               {
                  _loc2_.dispatchEvent(new §6#k§(§6#k§.§3>§));
               }
               (§7n§.§-$<§ as § #v§).§=#+§.§'t§();
               break;
            case "TOGGLE_PARTICLES":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               _loc3_ = !§7n§.§?$5§();
               §7n§.§4#P§(_loc3_);
               §6#`§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc3_);
               break;
            case "FULLSCREEN_BUTTON":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.§1a§();
         }
      }
      
      protected function §2Q§(param1:§6#k§) : void
      {
         this.§?"b§(!this.§#"L§.mClip.visible);
      }
      
      public function §+"-§() : String
      {
         return "PauseView";
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
