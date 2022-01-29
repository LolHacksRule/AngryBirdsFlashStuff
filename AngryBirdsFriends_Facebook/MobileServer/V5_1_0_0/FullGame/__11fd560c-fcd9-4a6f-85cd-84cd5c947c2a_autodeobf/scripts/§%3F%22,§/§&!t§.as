package §?",§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §"!@§.§1S§;
   import §"!@§.§>N§;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §1!T§.§##[§;
   import §2G§.§3W§;
   import §3"I§.§ E§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §6§.§<#Q§;
   import §8§.§!#L§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §<h§.§%M§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §=#G§.§<#Z§;
   import §?"@§.§^!S§;
   import §?P§.SyncingPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@0§.§2$2§;
   import §]!6§.§6Y§;
   import §`!e§.§=Z§;
   import §`7§.§ try§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §&!t§ extends §##[§ implements §8#§
   {
      
      public static const §9"q§:Number = -250;
       
      
      private var §@$+§:§<#Q§;
      
      private var §6#q§:SyncingPopup;
      
      private var §,#d§:int;
      
      private var §-$9§:String;
      
      private var §"#?§:§'#0§;
      
      protected var §""P§:§4[§ = null;
      
      private var §?Y§:§@N§;
      
      public function §&!t§(param1:§[#K§, param2:§8=§, param3:§3W§, param4:§""C§, param5:§<#Q§)
      {
         this.§@$+§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function refresh() : void
      {
         var _loc1_:§%M§ = §4"y§.getItemByName("TextField_ChapterName") as §%M§;
         _loc1_.§4!"§.autoSize = TextFieldAutoSize.CENTER;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§ N§(param1);
         super.disable(param1);
         this.§]!S§(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         var _loc2_:§]!4§ = (§3#U§.§9#^§ as §,A§).§9"x§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(§=Z§.§4#=§,this.§5"_§);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §4"y§.setVisibility(true);
         §4"y§.addEventListener(§ E§.§=$1§,this.onUIInteraction);
         var _loc2_:§]!4§ = (§3#U§.§9#^§ as §,A§).§9"x§;
         if(_loc2_)
         {
            _loc2_.addEventListener(§=Z§.§4#=§,this.§5"_§);
         }
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§=!?§);
         this.refresh();
         this.§4"2§(param1);
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §,A§.§6#6§.§7#J§(param1);
      }
      
      private function §;$;§() : void
      {
         if(this.§""P§ != null)
         {
            this.§""P§.stop();
         }
         this.§""P§ = null;
      }
      
      protected function §4"2§(param1:Boolean) : void
      {
         var _loc5_:§%M§ = null;
         if(mLevelManager.currentLevel != null)
         {
            (_loc5_ = §4"y§.getItemByName("TextField_ChapterName") as §%M§).§4!"§.text = mLevelManager.getCurrentEpisodeModel().writtenName;
            (§4"y§.getItemByName("TextField_LevelName") as §%M§).§4!"§.text = this.getLevelNameToDisplay(mLevelManager.currentLevel);
            (§4"y§.getItemByName("TextField_LevelName") as §%M§).y = _loc5_.height + 15;
         }
         (§4"y§.getItemByName("Container_PauseMenu") as §[#K§).x = §9"q§;
         this.§6!5§(false);
         var _loc2_:§[#K§ = §4"y§.getItemByName("Container_PauseMenu") as §[#K§;
         this.§?Y§ = _loc2_.getItemByName("MovieClip_SoundsOff") as §@N§;
         this.§?Y§.mClip.mouseEnabled = false;
         this.§5h§(!AngryBirdsBase.§5!p§());
         §3#U§.pause();
         var _loc3_:§!#L§ = (§3#U§.§8I§ as §<#Z§).§'"`§.levelObjects;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.§&#1§())
         {
            _loc3_.getObject(_loc4_).update(0,null);
            _loc4_++;
         }
         if(this.§""P§ != null)
         {
            this.§""P§.stop();
         }
         this.§@$+§.reset();
         this.§@$+§.§%"t§(true);
         this.§""P§ = §&"H§.§6!§.§5!j§(§&"H§.§6!§.§6C§(§4"y§.getItemByName("Container_PauseMenu") as §[#K§,{"x":0},null,0.25),§&"H§.§6!§.§6C§((§4"y§.getItemByName("MovieClip_DarkBG") as §@N§).mClip,{"alpha":1},{"alpha":0},0.25),§&"H§.§6!§.§6C§((§4"y§.getItemByName("News_Item_Holder") as §[#K§).mClip,{"alpha":1},{"alpha":0},0.25));
         this.§""P§.onComplete = this.§=k§;
         this.§""P§.play();
      }
      
      protected function §=k§() : void
      {
         this.§6!5§(true);
         this.§;$;§();
      }
      
      protected function §5h§(param1:Boolean) : void
      {
         this.§?Y§.mClip.visible = param1;
      }
      
      protected function §6!5§(param1:Boolean) : void
      {
         (§4"y§.getItemByName("Button_Resume") as §>"0§).setEnabled(param1);
         (§4"y§.getItemByName("Button_Replay") as §>"0§).setEnabled(param1);
         (§4"y§.getItemByName("Button_Menu") as §>"0§).setEnabled(param1);
      }
      
      protected function §]!S§(param1:String) : void
      {
         (§4"y§.getItemByName("Button_Resume") as §>"0§).setComponentVisualState(param1);
         (§4"y§.getItemByName("Button_Replay") as §>"0§).setComponentVisualState(param1);
         (§4"y§.getItemByName("Button_Menu") as §>"0§).setComponentVisualState(param1);
      }
      
      protected function § N§(param1:Boolean) : void
      {
         if(this.§""P§ != null)
         {
            this.§""P§.stop();
         }
         this.§""P§ = §&"H§.§6!§.§5!j§(§&"H§.§6!§.§6C§(§4"y§.getItemByName("Container_PauseMenu") as §[#K§,{"x":§9"q§},null,0.25),§&"H§.§6!§.§6C§((§4"y§.getItemByName("MovieClip_DarkBG") as §@N§).mClip,{"alpha":0},{"alpha":1},0.25),§&"H§.§6!§.§6C§((§4"y§.getItemByName("News_Item_Holder") as §[#K§).mClip,{"alpha":0},{"alpha":1},0.25));
         this.§""P§.onComplete = this.§[#l§;
         this.§""P§.play();
         if(this.§@$+§)
         {
            this.§@$+§.§%"t§(false);
         }
      }
      
      protected function §[#l§() : void
      {
         §4"y§.setVisibility(false);
         §4"y§.removeEventListener(§ E§.§=$1§,this.onUIInteraction);
         this.§;$;§();
      }
      
      protected function getLevelSelectionState() : String
      {
         var _loc1_:§"m§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc1_ && _loc1_.name == §>N§.§]$+§)
         {
            return §>N§.STATE_NAME;
         }
         return §1S§.STATE_NAME;
      }
      
      private function §!#e§(param1:Event) : void
      {
         (§3#U§.§#$4§ as §2$2§).§2"P§.removeEventListener(Event.COMPLETE,this.§!#e§);
         if(this.§6#q§)
         {
            this.§6#q§.close();
            this.§6#q§ = null;
         }
         this.onUIInteraction(new § E§(§ E§.§=$1§,this.§,#d§,this.§-$9§,this.§"#?§));
      }
      
      protected function onUIInteraction(param1:§ E§) : void
      {
         var _loc2_:§]!4§ = null;
         var _loc3_:* = false;
         if(§!"J§)
         {
            return;
         }
         if(["MENU","RESTART_LEVEL"].indexOf(param1.eventName) != -1 && (§3#U§.§#$4§ as §2$2§).§2"P§.§8R§(false))
         {
            this.§,#d§ = param1.eventIndex;
            this.§-$9§ = param1.eventName;
            this.§"#?§ = param1.component;
            (§3#U§.§#$4§ as §2$2§).§2"P§.addEventListener(Event.COMPLETE,this.§!#e§);
            this.§6#q§ = new SyncingPopup(§]"$§.§[#=§,§^"U§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§6#q§);
            return;
         }
         if(param1.eventName == "RESTART_LEVEL")
         {
         }
         if(this.§@$+§)
         {
            this.§@$+§.uiInteractionHandler(param1.eventName);
         }
         switch(param1.eventName)
         {
            case "HELP":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               dispatchEvent(new §^!S§(§^!S§.RESUME_LEVEL));
               §6Y§.log(§=Z§.§?q§);
               (§3#U§.§9#^§ as §,A§).§9"x§.dispatchEvent(new §=Z§(§=Z§.§?q§));
               break;
            case "RESTART_LEVEL":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               dispatchEvent(new §^!S§(§^!S§.RESTART_LEVEL));
               break;
            case "RESUME_LEVEL":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               dispatchEvent(new §^!S§(§^!S§.RESUME_LEVEL));
               break;
            case "END_LEVEL":
               break;
            case "MENU":
               §!"p§.§>#p§();
               dispatchEvent(new §^!S§(§^!S§.§]y§,this.getLevelSelectionState()));
               § try§.§!!t§().§+" §(false,mLevelManager.currentLevel,this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§3#U§.§#$4§.slingshot.§`!R§() - §3#U§.§#$4§.slingshot.§]$>§(),§3#U§.§#$4§.slingshot.§`!R§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel),(§3#U§.§#$4§ as §2$2§).§<Q§(),§3#U§.§8I§.getScore(),false);
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               break;
            case "TOGGLE_SOUNDS":
               if(!§!"p§.§<x§)
               {
                  §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               }
               _loc2_ = (§3#U§.§9#^§ as §,A§).§9"x§;
               if(_loc2_)
               {
                  _loc2_.dispatchEvent(new §=Z§(§=Z§.§4#=§));
               }
               (§3#U§.§9#^§ as §,A§).§9"x§.§&#;§();
               break;
            case "TOGGLE_PARTICLES":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               _loc3_ = !§3#U§.§3#=§();
               §3#U§.§-#p§(_loc3_);
               §4"y§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc3_);
               break;
            case "FULLSCREEN_BUTTON":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.§5#p§();
         }
      }
      
      protected function §5"_§(param1:§=Z§) : void
      {
         this.§5h§(!this.§?Y§.mClip.visible);
      }
      
      public function §+#k§() : String
      {
         return "PauseView";
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
