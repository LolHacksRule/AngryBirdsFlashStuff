package §1!2§
{
   import § !D§.§4B§;
   import §!§.§="D§;
   import §!L§.§6!<§;
   import §"!>§.§'!x§;
   import §"$=§.§'![§;
   import §"$=§.§[§;
   import §#M§.§<"c§;
   import §+#B§.§+$A§;
   import §,"8§.§6!v§;
   import §-!!§.§7S§;
   import §3"G§.§16§;
   import §3=§.§!!V§;
   import §3=§.§8$8§;
   import §3R§.§?M§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §5"G§.§8"`§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §9#K§.§=#f§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?!N§.SyncingPopup;
   import §]"'§.§""K§;
   import §`"S§.§]!a§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §[#v§ extends §]!a§ implements §="D§
   {
      
      public static const §2_§:Number = -250;
       
      
      private var §["6§:§?M§;
      
      private var §1"O§:SyncingPopup;
      
      private var §&#Y§:int;
      
      private var §]!,§:String;
      
      private var §9c§:§'!,§;
      
      protected var §!![§:§]%§ = null;
      
      private var §8"i§:§>#8§;
      
      public function §[#v§(param1:§<c§, param2:§'![§, param3:§""K§, param4:§16§, param5:§?M§)
      {
         this.§["6§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§-#j§ = §+!9§.getItemByName("TextField_ChapterName") as §-#j§;
         _loc1_.§^g§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§]#n§(param1);
         super.disable(param1);
         this.§2"`§(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         var _loc2_:§<"c§ = (§%"T§.§>$<§ as §'"a§).§1#b§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(§'!x§.§2#o§,this.§ "D§);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §+!9§.setVisibility(true);
         §+!9§.addEventListener(§8"`§.§,$A§,this.onUIInteraction);
         var _loc2_:§<"c§ = (§%"T§.§>$<§ as §'"a§).§1#b§;
         if(_loc2_)
         {
            _loc2_.addEventListener(§'!x§.§2#o§,this.§ "D§);
         }
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§4E§);
         this.refresh();
         this.§throw§(param1);
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §'"a§.§&$%§.§#6§(param1);
      }
      
      private function §2!]§() : void
      {
         if(this.§!![§ != null)
         {
            this.§!![§.stop();
         }
         this.§!![§ = null;
      }
      
      protected function §throw§(param1:Boolean) : void
      {
         var _loc5_:§-#j§ = null;
         if(mLevelManager.currentLevel != null)
         {
            (_loc5_ = §+!9§.getItemByName("TextField_ChapterName") as §-#j§).§^g§.text = mLevelManager.getCurrentEpisodeModel().writtenName;
            (§+!9§.getItemByName("TextField_LevelName") as §-#j§).§^g§.text = this.getLevelNameToDisplay(mLevelManager.currentLevel);
            (§+!9§.getItemByName("TextField_LevelName") as §-#j§).y = _loc5_.height + 15;
         }
         (§+!9§.getItemByName("Container_PauseMenu") as §<c§).x = §2_§;
         this.§%B§(false);
         var _loc2_:§<c§ = §+!9§.getItemByName("Container_PauseMenu") as §<c§;
         this.§8"i§ = _loc2_.getItemByName("MovieClip_SoundsOff") as §>#8§;
         this.§8"i§.mClip.mouseEnabled = false;
         this.§9#F§(!AngryBirdsBase.§!"4§());
         §%"T§.pause();
         var _loc3_:§7S§ = (§%"T§.§+"M§ as §6!<§).§-a§.levelObjects;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.§ "Z§())
         {
            _loc3_.getObject(_loc4_).update(0,null);
            _loc4_++;
         }
         if(this.§!![§ != null)
         {
            this.§!![§.stop();
         }
         this.§["6§.reset();
         this.§["6§.§]c§(true);
         this.§!![§ = §'#n§.§?q§.§set §(§'#n§.§?q§.§9!N§(§+!9§.getItemByName("Container_PauseMenu") as §<c§,{"x":0},null,0.25),§'#n§.§?q§.§9!N§((§+!9§.getItemByName("MovieClip_DarkBG") as §>#8§).mClip,{"alpha":1},{"alpha":0},0.25),§'#n§.§?q§.§9!N§((§+!9§.getItemByName("News_Item_Holder") as §<c§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§!![§.onComplete = this.§"#I§;
         this.§!![§.play();
      }
      
      protected function §"#I§() : void
      {
         this.§%B§(true);
         this.§2!]§();
      }
      
      protected function §9#F§(param1:Boolean) : void
      {
         this.§8"i§.mClip.visible = param1;
      }
      
      protected function §%B§(param1:Boolean) : void
      {
         (§+!9§.getItemByName("Button_Resume") as §"S§).setEnabled(param1);
         (§+!9§.getItemByName("Button_Replay") as §"S§).setEnabled(param1);
         (§+!9§.getItemByName("Button_Menu") as §"S§).setEnabled(param1);
      }
      
      protected function §2"`§(param1:String) : void
      {
         (§+!9§.getItemByName("Button_Resume") as §"S§).setComponentVisualState(param1);
         (§+!9§.getItemByName("Button_Replay") as §"S§).setComponentVisualState(param1);
         (§+!9§.getItemByName("Button_Menu") as §"S§).setComponentVisualState(param1);
      }
      
      protected function §]#n§(param1:Boolean) : void
      {
         if(this.§!![§ != null)
         {
            this.§!![§.stop();
         }
         this.§!![§ = §'#n§.§?q§.§set §(§'#n§.§?q§.§9!N§(§+!9§.getItemByName("Container_PauseMenu") as §<c§,{"x":§2_§},null,0.25),§'#n§.§?q§.§9!N§((§+!9§.getItemByName("MovieClip_DarkBG") as §>#8§).mClip,{"alpha":0},{"alpha":1},0.25),§'#n§.§?q§.§9!N§((§+!9§.getItemByName("News_Item_Holder") as §<c§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§!![§.onComplete = this.§-#`§;
         this.§!![§.play();
         if(this.§["6§)
         {
            this.§["6§.§]c§(false);
         }
      }
      
      protected function §-#`§() : void
      {
         §+!9§.setVisibility(false);
         §+!9§.removeEventListener(§8"`§.§,$A§,this.onUIInteraction);
         this.§2!]§();
      }
      
      protected function getLevelSelectionState() : String
      {
         var _loc1_:§[#5§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc1_ && _loc1_.name == §!!V§.§""W§)
         {
            return §!!V§.STATE_NAME;
         }
         return §8$8§.STATE_NAME;
      }
      
      private function §]$,§(param1:Event) : void
      {
         (§%"T§.§;`§ as §4B§).§##`§.removeEventListener(Event.COMPLETE,this.§]$,§);
         if(this.§1"O§)
         {
            this.§1"O§.close();
            this.§1"O§ = null;
         }
         this.onUIInteraction(new §8"`§(§8"`§.§,$A§,this.§&#Y§,this.§]!,§,this.§9c§));
      }
      
      protected function onUIInteraction(param1:§8"`§) : void
      {
         var _loc2_:§<"c§ = null;
         var _loc3_:* = false;
         if(§<`§)
         {
            return;
         }
         if(["MENU","RESTART_LEVEL"].indexOf(param1.eventName) != -1 && (§%"T§.§;`§ as §4B§).§##`§.§0"§(false))
         {
            this.§&#Y§ = param1.eventIndex;
            this.§]!,§ = param1.eventName;
            this.§9c§ = param1.component;
            (§%"T§.§;`§ as §4B§).§##`§.addEventListener(Event.COMPLETE,this.§]$,§);
            this.§1"O§ = new SyncingPopup(§%#§.§3t§,§9#5§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§1"O§);
            return;
         }
         if(param1.eventName == "RESTART_LEVEL")
         {
         }
         if(this.§["6§)
         {
            this.§["6§.uiInteractionHandler(param1.eventName);
         }
         switch(param1.eventName)
         {
            case "HELP":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               dispatchEvent(new §6!v§(§6!v§.RESUME_LEVEL));
               §=#f§.log(§'!x§.§%!b§);
               (§%"T§.§>$<§ as §'"a§).§1#b§.dispatchEvent(new §'!x§(§'!x§.§%!b§));
               break;
            case "RESTART_LEVEL":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               dispatchEvent(new §6!v§(§6!v§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               dispatchEvent(new §6!v§(§6!v§.RESUME_LEVEL));
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §[#%§.§^L§();
               dispatchEvent(new §6!v§(§6!v§.§5"R§,this.getLevelSelectionState()));
               §+$A§.§@"i§().§>e§(false,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§%"T§.§;`§.slingshot.§@$B§() - §%"T§.§;`§.slingshot.§17§(),§%"T§.§;`§.slingshot.§@$B§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§%"T§.§;`§ as §4B§).§ #O§(),§%"T§.§+"M§.getScore(),false);
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               break;
            case "TOGGLE_SOUNDS":
               if(!§[#%§.§6!§)
               {
                  §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               }
               _loc2_ = (§%"T§.§>$<§ as §'"a§).§1#b§;
               if(_loc2_)
               {
                  _loc2_.dispatchEvent(new §'!x§(§'!x§.§2#o§));
               }
               (§%"T§.§>$<§ as §'"a§).§1#b§.§&#H§();
               break;
            case "TOGGLE_PARTICLES":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               _loc3_ = !§%"T§.§=!'§();
               §%"T§.§0"q§(_loc3_);
               §+!9§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc3_);
               break;
            case "FULLSCREEN_BUTTON":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.§3'§();
         }
      }
      
      protected function § "D§(param1:§'!x§) : void
      {
         this.§9#F§(!this.§8"i§.mClip.visible);
      }
      
      public function §+"n§() : String
      {
         return "PauseView";
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
