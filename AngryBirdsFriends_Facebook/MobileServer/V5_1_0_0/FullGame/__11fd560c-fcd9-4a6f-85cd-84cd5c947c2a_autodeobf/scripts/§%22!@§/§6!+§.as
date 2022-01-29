package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §%9§.§0J§;
   import §1!=§.§4$"§;
   import §2G§.§3W§;
   import §2I§.TutorialPopup;
   import §3#T§.§'§;
   import §5P§.§""C§;
   import §6§.§<#Q§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   import §=#G§.§6"v§;
   import §=#G§.§<#Z§;
   import §?",§.§&!t§;
   import §?"@§.§^!S§;
   import §?"e§.Starling;
   import §@!M§.§!"p§;
   import §@0§.§%!q§;
   import §@0§.§2$2§;
   import §`7§.§`"x§;
   import §`7§.§`m§;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class §6!+§ extends StatePlay
   {
      
      public static var §0$8§:String;
      
      public static const §<"z§:String = "4000-";
       
      
      protected var §#w§:Boolean;
      
      protected var §#?§:String;
      
      protected var §@$+§:§<#Q§;
      
      public function §6!+§(param1:§8=§, param2:§""C§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_FacebookLevelPlay[0]);
         var _loc1_:§[#K§ = §[#K§(§`!H§.getItemByName("Container_Pause"));
         this.§@$+§ = new §<#Q§(_loc1_);
         this.§@$+§.§5"X§();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§3W§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§[#K§ = §[#K§(§`!H§.getItemByName("Container_Pause"));
         §?#?§ = new §&!t§(_loc2_,mLevelManager,_loc1_,§1a§,this.§@$+§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§3W§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§[#K§ = §[#K§(§`!H§.getItemByName("Container_Play"));
         §-2§ = new §0J§(_loc2_,mLevelManager,§!!p§,_loc1_,§1a§);
      }
      
      override protected function playLevelStartSound() : void
      {
         §!"p§.§%!R§("level_start_military_a2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§8#v§(param1);
      }
      
      protected function §8#v§(param1:String) : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         this.§#?§ = "";
         this.§#w§ = false;
         §`!H§.movieClip.mouseChildren = true;
         Starling.§@#K§.§8"l§ = true;
      }
      
      override public function deActivate() : void
      {
         this.§1"+§();
         super.deActivate();
      }
      
      protected function §1"+§() : void
      {
         Starling.§@#K§.§8"l§ = false;
         §`!H§.stage.frameRate = 60;
         AngryBirdsBase.singleton.popupManager.§""^§(TutorialPopup.ID);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§2w§();
      }
      
      override protected function getGameLogicController(param1:§%!q§) : §6"v§
      {
         return new §<#Z§(param1,mLevelManager);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:int = §!!p§.getScore();
         §`"x§.§"<§(§`m§.§&G§,mLevelManager.currentLevel,_loc1_);
         var _loc2_:Array = (§3#U§.§#$4§ as §2$2§).§<Q§();
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §4$"§(AngryBirdsBase.singleton.popupManager).§#"q§();
         if(!_loc1_)
         {
            §3#U§.resume();
         }
      }
      
      protected function §2w§() : void
      {
      }
      
      override public function getVictoryStateName() : String
      {
         if(§-2§.isEagleUsed())
         {
            return §@,§.STATE_NAME;
         }
         return §["F§.STATE_NAME;
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §-2§.isAllowedToChangeVictoryState();
         if(_loc1_)
         {
            §`!H§.movieClip.mouseChildren = false;
            this.§#w§ = true;
         }
         return _loc1_ && this.§#w§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §-2§.isAllowedToChangeFailState();
         if(_loc1_)
         {
            this.§#w§ = true;
            §`!H§.movieClip.mouseChildren = false;
         }
         return this.§#w§;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(Starling.§@#K§.§;#7§ > 10)
         {
            §`!H§.stage.frameRate = 30;
         }
         if(this.§#?§ && this.§#?§ != "" && §-2§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §1"h§(this.§#?§);
            this.§#?§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§^!S§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §^!S§.§2#+§:
               break;
            case §^!S§.§"x§:
               §!"p§.§7$3§();
               §-$5§(true);
               break;
            case §^!S§.RESUME_LEVEL:
               §!"p§.§8#l§();
               §-$5§(false);
               break;
            case §^!S§.RESTART_LEVEL:
               _loc2_ = getLevelLoadStateName();
               if(!§-2§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§#?§ = _loc2_;
                  return;
               }
               §1"h§(_loc2_);
               break;
            case §^!S§.§]y§:
               _loc2_ = param1.§5"a§;
               if(!§-2§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§#?§ = _loc2_;
                  return;
               }
               §1"h§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
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
         if((§3#U§.§#$4§ as §2$2§).§2"P§.§8R§())
         {
            return;
         }
         super.restartLevel();
      }
   }
}
