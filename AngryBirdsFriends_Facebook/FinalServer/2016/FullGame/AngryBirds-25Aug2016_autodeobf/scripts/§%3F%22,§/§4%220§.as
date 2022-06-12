package §?",§
{
   import §!x§.§4"d§;
   import §"G§.§,"0§;
   import §#v§.§#!?§;
   import §#v§.§=!Z§;
   import §%$!§.§,"n§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §,!=§.§5#J§;
   import §,!=§.§<!B§;
   import §0#d§.§<#u§;
   import §3!Q§.§<K§;
   import §3!T§.§3">§;
   import §4#%§.§@#@§;
   import §52§.§#%§;
   import §6!S§.§^0§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §8§.§#$+§;
   import §9!s§.§!#d§;
   import §>!#§.§-#A§;
   import §?"R§.SyncingPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §4"0§ extends §,"0§ implements §@#@§
   {
      
      public static const §2$8§:Number = -250;
       
      
      private var §,X§:§^0§;
      
      private var §'"P§:SyncingPopup;
      
      private var §[!_§:int;
      
      private var §;#A§:String;
      
      private var §"!a§:§0!?§;
      
      protected var §1x§:§+,§ = null;
      
      private var §`!c§:§="T§;
      
      public function §4"0§(param1:§0"<§, param2:§#!?§, param3:§,"n§, param4:§]#[§, param5:§^0§)
      {
         this.§,X§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§]$!§ = §@#_§.getItemByName("TextField_ChapterName") as §]$!§;
         _loc1_.§@]§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§-#Q§(param1);
         super.disable(param1);
         this.§4,§(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         var _loc2_:§<#u§ = (§>"$§.§<_§ as §8G§).§&#§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(§!#d§.§,#E§,this.§`"f§);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §@#_§.setVisibility(true);
         §@#_§.addEventListener(§3">§.§6!3§,this.onUIInteraction);
         var _loc2_:§<#u§ = (§>"$§.§<_§ as §8G§).§&#§;
         if(_loc2_)
         {
            _loc2_.addEventListener(§!#d§.§,#E§,this.§`"f§);
         }
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§[8§);
         this.refresh();
         this.§'!G§(param1);
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §8G§.§4"`§.§[!2§(param1);
      }
      
      private function §<!Q§() : void
      {
         if(this.§1x§ != null)
         {
            this.§1x§.stop();
         }
         this.§1x§ = null;
      }
      
      protected function §'!G§(param1:Boolean) : void
      {
         var _loc3_:§]$!§ = null;
         if(mLevelManager.currentLevel != null)
         {
            _loc3_ = §@#_§.getItemByName("TextField_ChapterName") as §]$!§;
            _loc3_.§@]§.text = mLevelManager.getCurrentEpisodeModel().writtenName;
            (§@#_§.getItemByName("TextField_LevelName") as §]$!§).§@]§.text = this.getLevelNameToDisplay(mLevelManager.currentLevel);
            (§@#_§.getItemByName("TextField_LevelName") as §]$!§).y = _loc3_.height + 15;
         }
         (§@#_§.getItemByName("Container_PauseMenu") as §0"<§).x = §2$8§;
         this.§#"'§(false);
         var _loc2_:§0"<§ = §@#_§.getItemByName("Container_PauseMenu") as §0"<§;
         this.§`!c§ = _loc2_.getItemByName("MovieClip_SoundsOff") as §="T§;
         this.§`!c§.mClip.mouseEnabled = false;
         this.§5$4§(!AngryBirdsBase.§-"W§());
         §>"$§.pause();
         if(this.§1x§ != null)
         {
            this.§1x§.stop();
         }
         this.§,X§.reset();
         this.§,X§.§=!!§(true);
         this.§1x§ = §""Z§.§3!]§.§[$2§(§""Z§.§3!]§.§5"0§(§@#_§.getItemByName("Container_PauseMenu") as §0"<§,{"x":0},null,0.25),§""Z§.§3!]§.§5"0§((§@#_§.getItemByName("MovieClip_DarkBG") as §="T§).mClip,{"alpha":1},{"alpha":0},0.25),§""Z§.§3!]§.§5"0§((§@#_§.getItemByName("News_Item_Holder") as §0"<§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§1x§.onComplete = this.§#!T§;
         this.§1x§.play();
      }
      
      protected function §#!T§() : void
      {
         this.§#"'§(true);
         this.§<!Q§();
      }
      
      protected function §5$4§(param1:Boolean) : void
      {
         this.§`!c§.mClip.visible = param1;
      }
      
      protected function §#"'§(param1:Boolean) : void
      {
         (§@#_§.getItemByName("Button_Resume") as §=O§).setEnabled(param1);
         (§@#_§.getItemByName("Button_Replay") as §=O§).setEnabled(param1);
         (§@#_§.getItemByName("Button_Menu") as §=O§).setEnabled(param1);
      }
      
      protected function §4,§(param1:String) : void
      {
         (§@#_§.getItemByName("Button_Resume") as §=O§).setComponentVisualState(param1);
         (§@#_§.getItemByName("Button_Replay") as §=O§).setComponentVisualState(param1);
         (§@#_§.getItemByName("Button_Menu") as §=O§).setComponentVisualState(param1);
      }
      
      protected function §-#Q§(param1:Boolean) : void
      {
         if(this.§1x§ != null)
         {
            this.§1x§.stop();
         }
         this.§1x§ = §""Z§.§3!]§.§[$2§(§""Z§.§3!]§.§5"0§(§@#_§.getItemByName("Container_PauseMenu") as §0"<§,{"x":§2$8§},null,0.25),§""Z§.§3!]§.§5"0§((§@#_§.getItemByName("MovieClip_DarkBG") as §="T§).mClip,{"alpha":0},{"alpha":1},0.25),§""Z§.§3!]§.§5"0§((§@#_§.getItemByName("News_Item_Holder") as §0"<§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§1x§.onComplete = this.§>"I§;
         this.§1x§.play();
         if(this.§,X§)
         {
            this.§,X§.§=!!§(false);
         }
      }
      
      protected function §>"I§() : void
      {
         §@#_§.setVisibility(false);
         §@#_§.removeEventListener(§3">§.§6!3§,this.onUIInteraction);
         this.§<!Q§();
      }
      
      protected function getLevelSelectionState() : String
      {
         var _loc1_:§=!Z§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc1_ && _loc1_.name == §5#J§.§2#W§)
         {
            return §5#J§.STATE_NAME;
         }
         return §<!B§.STATE_NAME;
      }
      
      private function §@"u§(param1:Event) : void
      {
         (§>"$§.§3#'§ as §#%§).§4"w§.removeEventListener(Event.COMPLETE,this.§@"u§);
         if(this.§'"P§)
         {
            this.§'"P§.close();
            this.§'"P§ = null;
         }
         this.onUIInteraction(new §3">§(§3">§.§6!3§,this.§[!_§,this.§;#A§,this.§"!a§));
      }
      
      protected function onUIInteraction(param1:§3">§) : void
      {
         var _loc2_:§<#u§ = null;
         var _loc3_:* = false;
         if(§21§)
         {
            return;
         }
         if(["MENU","RESTART_LEVEL"].indexOf(param1.eventName) != -1 && (§>"$§.§3#'§ as §#%§).§4"w§.§-#!§)
         {
            this.§[!_§ = param1.§##I§;
            this.§;#A§ = param1.eventName;
            this.§"!a§ = param1.§##M§;
            (§>"$§.§3#'§ as §#%§).§4"w§.addEventListener(Event.COMPLETE,this.§@"u§);
            this.§'"P§ = new SyncingPopup(§[W§.§5Z§,§<d§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§'"P§);
            return;
         }
         if(param1.eventName == "RESTART_LEVEL")
         {
         }
         if(this.§,X§)
         {
            this.§,X§.uiInteractionHandler(param1.eventName);
         }
         switch(param1.eventName)
         {
            case "HELP":
               dispatchEvent(new §<K§(§<K§.RESUME_LEVEL));
               §4"d§.log(§!#d§.§[#=§);
               (§>"$§.§<_§ as §8G§).§&#§.dispatchEvent(new §!#d§(§!#d§.§[#=§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §<K§(§<K§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §<K§(§<K§.RESUME_LEVEL));
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §#$+§.§#$-§();
               dispatchEvent(new §<K§(§<K§.§4?§,this.getLevelSelectionState()));
               §-#A§.§6$2§().§?!5§(false,mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,§>"$§.§3#'§.slingshot.§`b§() - §>"$§.§3#'§.slingshot.§3!4§(),§>"$§.§3#'§.slingshot.§`b§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§>"$§.§3#'§ as §#%§).§[5§(),§>"$§.§#0§.getScore(),false);
               break;
            case "TOGGLE_SOUNDS":
               _loc2_ = (§>"$§.§<_§ as §8G§).§&#§;
               if(_loc2_)
               {
                  _loc2_.dispatchEvent(new §!#d§(§!#d§.§,#E§));
               }
               (§>"$§.§<_§ as §8G§).§&#§.§+!j§();
               break;
            case "TOGGLE_PARTICLES":
               _loc3_ = !§>"$§.§-$5§();
               §>"$§.§,#K§(_loc3_);
               §@#_§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc3_);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§&f§();
         }
      }
      
      protected function §`"f§(param1:§!#d§) : void
      {
         this.§5$4§(!this.§`!c§.mClip.visible);
      }
      
      public function §<$#§() : String
      {
         return "PauseView";
      }
   }
}
