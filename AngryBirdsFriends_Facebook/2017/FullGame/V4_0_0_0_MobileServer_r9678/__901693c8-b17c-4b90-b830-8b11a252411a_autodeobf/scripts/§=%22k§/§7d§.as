package §="k§
{
   import § o§.§%"!§;
   import § o§.SyncingPopup;
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §%#A§.§^!4§;
   import §%#x§.§>#q§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §+!C§.§#!L§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6V§.§?!=§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §94§.§,#E§;
   import §94§.§7!c§;
   import §;5§.§12§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<"p§.§?!T§;
   import §<#m§.§^#o§;
   import §<o§.§3h§;
   import §@!n§.§`$<§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §[!2§.§2#E§;
   import §[§.§]"w§;
   import §`!R§.§&"8§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §7d§ extends §2#E§ implements §]"w§
   {
      
      public static const §,6§:Number = -250;
       
      
      private var §0#<§:§>#q§;
      
      private var §7#a§:SyncingPopup;
      
      private var §;K§:int;
      
      private var §`!f§:String;
      
      private var §8!1§:§'"S§;
      
      protected var §3#8§:§-#C§ = null;
      
      private var §?v§:§'=§;
      
      public function §7d§(param1:§]!_§, param2:§^#Q§, param3:§<&§, param4:§+#!§, param5:§>#q§)
      {
         this.§0#<§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§^!4§ = §@!3§.getItemByName("TextField_ChapterName") as §^!4§;
         _loc1_.§[!&§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§3"8§(param1);
         super.disable(param1);
         this.§%$#§(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         var _loc2_:§&"8§ = (§!#A§.§>q§ as §-#+§).§'M§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(§`$<§.§4#G§,this.§<"c§);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §@!3§.setVisibility(true);
         §@!3§.addEventListener(§3h§.§9"L§,this.onUIInteraction);
         var _loc2_:§&"8§ = (§!#A§.§>q§ as §-#+§).§'M§;
         if(_loc2_)
         {
            _loc2_.addEventListener(§`$<§.§4#G§,this.§<"c§);
         }
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§1b§);
         this.refresh();
         this.§9!W§(param1);
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §-#+§.§,!w§.§+#O§(param1);
      }
      
      private function §!!m§() : void
      {
         if(this.§3#8§ != null)
         {
            this.§3#8§.stop();
         }
         this.§3#8§ = null;
      }
      
      protected function §9!W§(param1:Boolean) : void
      {
         var _loc3_:§^!4§ = null;
         if(mLevelManager.currentLevel != null)
         {
            _loc3_ = §@!3§.getItemByName("TextField_ChapterName") as §^!4§;
            _loc3_.§[!&§.text = mLevelManager.getCurrentEpisodeModel().writtenName;
            (§@!3§.getItemByName("TextField_LevelName") as §^!4§).§[!&§.text = this.getLevelNameToDisplay(mLevelManager.currentLevel);
            (§@!3§.getItemByName("TextField_LevelName") as §^!4§).y = _loc3_.height + 15;
         }
         (§@!3§.getItemByName("Container_PauseMenu") as §]!_§).x = §,6§;
         this.§5#v§(false);
         var _loc2_:§]!_§ = §@!3§.getItemByName("Container_PauseMenu") as §]!_§;
         this.§?v§ = _loc2_.getItemByName("MovieClip_SoundsOff") as §'=§;
         this.§?v§.mClip.mouseEnabled = false;
         this.§5W§(!AngryBirdsBase.§""$§());
         §!#A§.pause();
         if(this.§3#8§ != null)
         {
            this.§3#8§.stop();
         }
         this.§0#<§.reset();
         this.§0#<§.§4#O§(true);
         this.§3#8§ = §6"w§.§ "D§.§5"L§(§6"w§.§ "D§.§""3§(§@!3§.getItemByName("Container_PauseMenu") as §]!_§,{"x":0},null,0.25),§6"w§.§ "D§.§""3§((§@!3§.getItemByName("MovieClip_DarkBG") as §'=§).mClip,{"alpha":1},{"alpha":0},0.25),§6"w§.§ "D§.§""3§((§@!3§.getItemByName("News_Item_Holder") as §]!_§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§3#8§.onComplete = this.§9=§;
         this.§3#8§.play();
      }
      
      protected function §9=§() : void
      {
         this.§5#v§(true);
         this.§!!m§();
      }
      
      protected function §5W§(param1:Boolean) : void
      {
         this.§?v§.mClip.visible = param1;
      }
      
      protected function §5#v§(param1:Boolean) : void
      {
         (§@!3§.getItemByName("Button_Resume") as §,#w§).setEnabled(param1);
         (§@!3§.getItemByName("Button_Replay") as §,#w§).setEnabled(param1);
         (§@!3§.getItemByName("Button_Menu") as §,#w§).setEnabled(param1);
      }
      
      protected function §%$#§(param1:String) : void
      {
         (§@!3§.getItemByName("Button_Resume") as §,#w§).setComponentVisualState(param1);
         (§@!3§.getItemByName("Button_Replay") as §,#w§).setComponentVisualState(param1);
         (§@!3§.getItemByName("Button_Menu") as §,#w§).setComponentVisualState(param1);
      }
      
      protected function §3"8§(param1:Boolean) : void
      {
         if(this.§3#8§ != null)
         {
            this.§3#8§.stop();
         }
         this.§3#8§ = §6"w§.§ "D§.§5"L§(§6"w§.§ "D§.§""3§(§@!3§.getItemByName("Container_PauseMenu") as §]!_§,{"x":§,6§},null,0.25),§6"w§.§ "D§.§""3§((§@!3§.getItemByName("MovieClip_DarkBG") as §'=§).mClip,{"alpha":0},{"alpha":1},0.25),§6"w§.§ "D§.§""3§((§@!3§.getItemByName("News_Item_Holder") as §]!_§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§3#8§.onComplete = this.§,"I§;
         this.§3#8§.play();
         if(this.§0#<§)
         {
            this.§0#<§.§4#O§(false);
         }
      }
      
      protected function §,"I§() : void
      {
         §@!3§.setVisibility(false);
         §@!3§.removeEventListener(§3h§.§9"L§,this.onUIInteraction);
         this.§!!m§();
      }
      
      protected function getLevelSelectionState() : String
      {
         var _loc1_:§9##§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc1_ && _loc1_.name == §,#E§.§4#"§)
         {
            return §,#E§.STATE_NAME;
         }
         return §7!c§.STATE_NAME;
      }
      
      private function §,K§(param1:Event) : void
      {
         (§!#A§.§#F§ as §#!L§).§1"-§.removeEventListener(Event.COMPLETE,this.§,K§);
         if(this.§7#a§)
         {
            this.§7#a§.close();
            this.§7#a§ = null;
         }
         this.onUIInteraction(new §3h§(§3h§.§9"L§,this.§;K§,this.§`!f§,this.§8!1§));
      }
      
      protected function onUIInteraction(param1:§3h§) : void
      {
         var _loc2_:§&"8§ = null;
         var _loc3_:* = false;
         if(§+#3§)
         {
            return;
         }
         if(["MENU","RESTART_LEVEL"].indexOf(param1.eventName) != -1 && (§!#A§.§#F§ as §#!L§).§1"-§.§"$1§(false))
         {
            this.§;K§ = param1.eventIndex;
            this.§`!f§ = param1.eventName;
            this.§8!1§ = param1.component;
            (§!#A§.§#F§ as §#!L§).§1"-§.addEventListener(Event.COMPLETE,this.§,K§);
            this.§7#a§ = new SyncingPopup(§%"!§.§4!P§,§^#o§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§7#a§);
            return;
         }
         if(param1.eventName == "RESTART_LEVEL")
         {
         }
         if(this.§0#<§)
         {
            this.§0#<§.uiInteractionHandler(param1.eventName);
         }
         switch(param1.eventName)
         {
            case "HELP":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               dispatchEvent(new §12§(§12§.RESUME_LEVEL));
               §?!T§.log(§`$<§.§;!@§);
               (§!#A§.§>q§ as §-#+§).§'M§.dispatchEvent(new §`$<§(§`$<§.§;!@§));
               break;
            case "RESTART_LEVEL":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               dispatchEvent(new §12§(§12§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               dispatchEvent(new §12§(§12§.RESUME_LEVEL));
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §!#&§.§^!2§();
               dispatchEvent(new §12§(§12§.§`"Q§,this.getLevelSelectionState()));
               §?!=§.§3!q§().§?l§(false,mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,§!#A§.§#F§.slingshot.§ "+§() - §!#A§.§#F§.slingshot.§%a§(),§!#A§.§#F§.slingshot.§ "+§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§!#A§.§#F§ as §#!L§).§>#Z§(),§!#A§.§=![§.getScore(),false);
               break;
            case "TOGGLE_SOUNDS":
               if(!§!#&§.§`"a§)
               {
                  §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               }
               _loc2_ = (§!#A§.§>q§ as §-#+§).§'M§;
               if(_loc2_)
               {
                  _loc2_.dispatchEvent(new §`$<§(§`$<§.§4#G§));
               }
               (§!#A§.§>q§ as §-#+§).§'M§.§7!r§();
               break;
            case "TOGGLE_PARTICLES":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               _loc3_ = !§!#A§.§-#?§();
               §!#A§.§-$>§(_loc3_);
               §@!3§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc3_);
               break;
            case "FULLSCREEN_BUTTON":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.§6"0§();
         }
      }
      
      protected function §<"c§(param1:§`$<§) : void
      {
         this.§5W§(!this.§?v§.mClip.visible);
      }
      
      public function §-"K§() : String
      {
         return "PauseView";
      }
   }
}
