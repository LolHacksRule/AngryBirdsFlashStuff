package §94§
{
   import §#"H§.TutorialPopup;
   import §%#A§.§]!_§;
   import §%#x§.§>#q§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §+!C§.§!!S§;
   import §+!C§.§#!L§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6V§.§@!o§;
   import §6V§.§`"5§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §9+§.Starling;
   import §;5§.§12§;
   import §<"1§.§'"S§;
   import §<#m§.§8!j§;
   import §="k§.§7d§;
   import §@#§.§^#Q§;
   import §["-§.§3"<§;
   import §["-§.§;#>§;
   import §[$&§.§#!J§;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class §&I§ extends StatePlay
   {
      
      public static var §4#X§:String;
      
      public static const §5#F§:String = "4000-";
       
      
      protected var §#I§:Boolean;
      
      protected var §#9§:String;
      
      protected var §0#<§:§>#q§;
      
      public function §&I§(param1:§^#Q§, param2:§+#!§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_FacebookLevelPlay[0]);
         var _loc1_:§]!_§ = §]!_§(§?Q§.getItemByName("Container_Pause"));
         this.§0#<§ = new §>#q§(_loc1_);
         this.§0#<§.§0!8§();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§<&§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]!_§ = §]!_§(§?Q§.getItemByName("Container_Pause"));
         §@c§ = new §7d§(_loc2_,mLevelManager,_loc1_,§-"Q§,this.§0#<§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§<&§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]!_§ = §]!_§(§?Q§.getItemByName("Container_Play"));
         §-"<§ = new §#!J§(_loc2_,mLevelManager,§?5§,_loc1_,§-"Q§);
      }
      
      override protected function playLevelStartSound() : void
      {
         §!#&§.§2!A§("level_start_military_a2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§ !-§(param1);
      }
      
      protected function § !-§(param1:String) : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         this.§#9§ = "";
         this.§#I§ = false;
         §?Q§.movieClip.mouseChildren = true;
         Starling.§?$#§.§1!s§ = true;
      }
      
      override public function deActivate() : void
      {
         this.§=#<§();
         super.deActivate();
      }
      
      protected function §=#<§() : void
      {
         Starling.§?$#§.§1!s§ = false;
         §?Q§.stage.frameRate = 60;
         AngryBirdsBase.singleton.popupManager.§?$=§(TutorialPopup.ID);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§6I§();
      }
      
      override protected function getGameLogicController(param1:§!!S§) : §;#>§
      {
         return new §3"<§(param1,mLevelManager);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:int = §?5§.getScore();
         §`"5§.§^!r§(§@!o§.§'l§,mLevelManager.currentLevel,_loc1_);
         var _loc2_:Array = (§!#A§.§#F§ as §#!L§).§>#Z§();
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §8!j§(AngryBirdsBase.singleton.popupManager).§`$§();
         if(!_loc1_)
         {
            §!#A§.resume();
         }
      }
      
      protected function §6I§() : void
      {
      }
      
      override public function getVictoryStateName() : String
      {
         if(§-"<§.isEagleUsed())
         {
            return §]#e§.STATE_NAME;
         }
         return §"!u§.STATE_NAME;
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §-"<§.isAllowedToChangeVictoryState();
         if(_loc1_)
         {
            §?Q§.movieClip.mouseChildren = false;
            this.§#I§ = true;
         }
         return _loc1_ && this.§#I§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §-"<§.isAllowedToChangeFailState();
         if(_loc1_)
         {
            this.§#I§ = true;
            §?Q§.movieClip.mouseChildren = false;
         }
         return this.§#I§;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(Starling.§?$#§.§^#y§ > 10)
         {
            §?Q§.stage.frameRate = 30;
         }
         if(this.§#9§ && this.§#9§ != "" && §-"<§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §5"p§(this.§#9§);
            this.§#9§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§12§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §12§.§2$#§:
               break;
            case §12§.§;"1§:
               §!#&§.§0!A§();
               §<"[§(true);
               break;
            case §12§.RESUME_LEVEL:
               §!#&§.§+#M§();
               §<"[§(false);
               break;
            case §12§.RESTART_LEVEL:
               _loc2_ = getLevelLoadStateName();
               if(!§-"<§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§#9§ = _loc2_;
                  return;
               }
               §5"p§(_loc2_);
               break;
            case §12§.§`"Q§:
               _loc2_ = param1.§3!6§;
               if(!§-"<§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§#9§ = _loc2_;
                  return;
               }
               §5"p§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
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
         if((§!#A§.§#F§ as §#!L§).§1"-§.§"$1§())
         {
            return;
         }
         super.restartLevel();
      }
   }
}
