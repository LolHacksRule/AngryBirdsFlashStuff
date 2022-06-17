package §3=§
{
   import § !D§.§'"u§;
   import § !D§.§4B§;
   import § #@§.§!!A§;
   import §!L§.§6!<§;
   import §!L§.§<"s§;
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+#B§.§4$7§;
   import §+#B§.§5"w§;
   import §,"8§.§6!v§;
   import §1!2§.§[#v§;
   import §3"G§.§16§;
   import §3R§.§?M§;
   import §4!n§.§'!,§;
   import §5!$§.§<c§;
   import §6W§.TutorialPopup;
   import §;$5§.§6"8§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §]"'§.§""K§;
   import §]"P§.Starling;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class §0!e§ extends StatePlay
   {
      
      public static var §?#s§:String;
      
      public static const §]#S§:String = "4000-";
       
      
      protected var §84§:Boolean;
      
      protected var §4C§:String;
      
      protected var §["6§:§?M§;
      
      public function §0!e§(param1:§'![§, param2:§16§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_FacebookLevelPlay[0]);
         var _loc1_:§<c§ = §<c§(§<"`§.getItemByName("Container_Pause"));
         this.§["6§ = new §?M§(_loc1_);
         this.§["6§.§-#B§();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§""K§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§<c§ = §<c§(§<"`§.getItemByName("Container_Pause"));
         §;#K§ = new §[#v§(_loc2_,mLevelManager,_loc1_,§1#@§,this.§["6§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§""K§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§<c§ = §<c§(§<"`§.getItemByName("Container_Play"));
         §3"@§ = new §!!A§(_loc2_,mLevelManager,§'"A§,_loc1_,§1#@§);
      }
      
      override protected function playLevelStartSound() : void
      {
         §[#%§.§!"0§("level_start_military_a2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§5!E§(param1);
      }
      
      protected function §5!E§(param1:String) : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         this.§4C§ = "";
         this.§84§ = false;
         §<"`§.movieClip.mouseChildren = true;
         Starling.§3!I§.§-#a§ = true;
      }
      
      override public function deActivate() : void
      {
         this.§&#2§();
         super.deActivate();
      }
      
      protected function §&#2§() : void
      {
         Starling.§3!I§.§-#a§ = false;
         §<"`§.stage.frameRate = 60;
         AngryBirdsBase.singleton.popupManager.§2;§(TutorialPopup.ID);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§?#n§();
      }
      
      override protected function getGameLogicController(param1:§'"u§) : §<"s§
      {
         return new §6!<§(param1,mLevelManager);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:int = §'"A§.getScore();
         §5"w§.§-!I§(§4$7§.§"#0§,mLevelManager.currentLevel,_loc1_);
         (§%"T§.§;`§ as §4B§).§ #O§();
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §6"8§(AngryBirdsBase.singleton.popupManager).§`'§();
         if(!_loc1_)
         {
            §%"T§.resume();
         }
      }
      
      protected function §?#n§() : void
      {
      }
      
      override public function getVictoryStateName() : String
      {
         if(§3"@§.isEagleUsed())
         {
            return §?"5§.STATE_NAME;
         }
         return §>#r§.STATE_NAME;
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §3"@§.isAllowedToChangeVictoryState();
         if(_loc1_)
         {
            §<"`§.movieClip.mouseChildren = false;
            this.§84§ = true;
         }
         return _loc1_ && this.§84§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §3"@§.isAllowedToChangeFailState();
         if(_loc1_)
         {
            this.§84§ = true;
            §<"`§.movieClip.mouseChildren = false;
         }
         return this.§84§;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(Starling.§3!I§.§ !c§ > 10)
         {
            §<"`§.stage.frameRate = 30;
         }
         if(this.§4C§ && this.§4C§ != "" && §3"@§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §%D§(this.§4C§);
            this.§4C§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§6!v§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §6!v§.§7G§:
               break;
            case §6!v§.§#j§:
               §[#%§.§<"I§();
               §"!e§(true);
               break;
            case §6!v§.RESUME_LEVEL:
               §[#%§.§%x§();
               §"!e§(false);
               break;
            case §6!v§.RESTART_LEVEL:
               _loc2_ = getLevelLoadStateName();
               if(!§3"@§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§4C§ = _loc2_;
                  return;
               }
               §%D§(_loc2_);
               break;
            case §6!v§.§5"R§:
               _loc2_ = param1.§?h§;
               if(!§3"@§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§4C§ = _loc2_;
                  return;
               }
               §%D§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         switch(param1.keyCode)
         {
            case Keyboard.F8:
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
      }
      
      override public function getTargetFrameRate() : int
      {
         if(Capabilities.manufacturer == "Google Pepper")
         {
            return 30;
         }
         return super.getTargetFrameRate();
      }
      
      override protected function restartLevel() : void
      {
         if((§%"T§.§;`§ as §4B§).§##`§.§0"§())
         {
            return;
         }
         super.restartLevel();
      }
   }
}
