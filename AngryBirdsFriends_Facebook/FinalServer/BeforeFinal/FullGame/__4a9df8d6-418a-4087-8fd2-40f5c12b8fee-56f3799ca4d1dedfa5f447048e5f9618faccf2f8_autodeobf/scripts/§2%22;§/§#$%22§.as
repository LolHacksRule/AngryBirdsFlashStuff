package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§#H§;
   import §#,§.§]$+§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&!_§.§"@§;
   import §&!_§.§0I§;
   import §'!j§.Starling;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §0!s§.§]!%§;
   import §4§.§9#i§;
   import §4§.§;!X§;
   import §8#K§.§3Z§;
   import §9?§.§'"U§;
   import §<#o§.TutorialPopup;
   import §<9§.;
   import §=!t§.§ $!§;
   import §=#f§.§""F§;
   import §>2§.§!6§;
   import §>2§.§"§;
   import §`#@§.§7n§;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class §#$"§ extends StatePlay
   {
      
      public static var §9#,§:String;
      
      public static const §3I§:String = "4000-";
       
      
      protected var §+"6§:Boolean;
      
      protected var §9"^§:String;
      
      protected var §7"@§:§'"U§;
      
      public function §#$"§(param1:§;"n§, param2:§4#c§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_FacebookLevelPlay[0]);
         var _loc1_:§]$+§ = §]$+§(§[$5§.getItemByName("Container_Pause"));
         this.§7"@§ = new §'"U§(_loc1_);
         this.§7"@§.§@e§();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§#H§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]$+§ = §]$+§(§[$5§.getItemByName("Container_Pause"));
         §<$'§ = new §#6§(_loc2_,mLevelManager,_loc1_,§+" §,this.§7"@§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§#H§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]$+§ = §]$+§(§[$5§.getItemByName("Container_Play"));
         §?!,§ = new § $!§(_loc2_,mLevelManager,§3!;§,_loc1_,§+" §);
      }
      
      override protected function playLevelStartSound() : void
      {
         §3Z§.§8!K§("level_start_military_a2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§=$,§(param1);
      }
      
      protected function §=$,§(param1:String) : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         this.§9"^§ = "";
         this.§+"6§ = false;
         §[$5§.movieClip.mouseChildren = true;
         Starling.§>x§.§@"8§ = true;
      }
      
      override public function deActivate() : void
      {
         this.§%#H§();
         super.deActivate();
      }
      
      protected function §%#H§() : void
      {
         Starling.§>x§.§@"8§ = false;
         §[$5§.stage.frameRate = 60;
         AngryBirdsBase.singleton.popupManager.§7$9§(TutorialPopup.ID);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§"#G§();
      }
      
      override protected function getGameLogicController(param1:§!6§) : §9#i§
      {
         return new §;!X§(param1,mLevelManager);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:int = §3!;§.getScore();
         §0I§.§4!c§(§"@§.§0!N§,mLevelManager.currentLevel,_loc1_);
         var _loc2_:Array = (§7n§.§6#K§ as §"#1§).§7$7§();
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §]!%§(AngryBirdsBase.singleton.popupManager).§?"N§();
         if(!_loc1_)
         {
            §7n§.resume();
         }
      }
      
      protected function §"#G§() : void
      {
      }
      
      override public function getVictoryStateName() : String
      {
         if(§?!,§.isEagleUsed())
         {
            return §3#[§.STATE_NAME;
         }
         return §!"m§.STATE_NAME;
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §?!,§.isAllowedToChangeVictoryState();
         if(_loc1_)
         {
            §[$5§.movieClip.mouseChildren = false;
            this.§+"6§ = true;
         }
         return _loc1_ && this.§+"6§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §?!,§.isAllowedToChangeFailState();
         if(_loc1_)
         {
            this.§+"6§ = true;
            §[$5§.movieClip.mouseChildren = false;
         }
         return this.§+"6§;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(Starling.§>x§.§!#j§ > 10)
         {
            §[$5§.stage.frameRate = 30;
         }
         if(this.§9"^§ && this.§9"^§ != "" && §?!,§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §1!L§(this.§9"^§);
            this.§9"^§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§""F§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §""F§.§;"]§:
               break;
            case §""F§.§@#A§:
               §3Z§.§6"@§();
               § =§(true);
               break;
            case §""F§.RESUME_LEVEL:
               §3Z§.§"x§();
               § =§(false);
               break;
            case §""F§.RESTART_LEVEL:
               _loc2_ = getLevelLoadStateName();
               if(!§?!,§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§9"^§ = _loc2_;
                  return;
               }
               §1!L§(_loc2_);
               break;
            case §""F§.§]E§:
               _loc2_ = param1.§6!=§;
               if(!§?!,§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§9"^§ = _loc2_;
                  return;
               }
               §1!L§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
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
         if((§7n§.§6#K§ as §"#1§).§=!G§.§6#J§())
         {
            return;
         }
         super.restartLevel();
      }
   }
}
