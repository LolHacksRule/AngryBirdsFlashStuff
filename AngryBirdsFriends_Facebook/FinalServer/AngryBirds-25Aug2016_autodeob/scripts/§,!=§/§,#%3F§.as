package §,!=§
{
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §&#k§.TutorialPopup;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §'z§.§4!x§;
   import §'z§.§7!J§;
   import §3!Q§.§<K§;
   import §52§.§#!,§;
   import §52§.§#%§;
   import §6!!§.§,_§;
   import §6!S§.§^0§;
   import §6"r§.§0"<§;
   import §8§.§#$+§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §>!#§.§,"W§;
   import §>!#§.§;-§;
   import §?",§.§4"0§;
   import §?§.§>"$§;
   import §^!,§.§'!T§;
   import §^a§.Starling;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class §,#?§ extends StatePlay
   {
      
      public static var §2!0§:String;
      
      public static const §;s§:String = "4000-";
       
      
      protected var §1?§:Boolean;
      
      protected var §[!E§:String;
      
      protected var §,X§:§^0§;
      
      public function §,#?§(param1:§#!?§, param2:§]#[§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_FacebookLevelPlay[0]);
         var _loc1_:§0"<§ = §0"<§(§!$§.getItemByName("Container_Pause"));
         this.§,X§ = new §^0§(_loc1_);
         this.§,X§.§2$#§();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§,"n§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§0"<§ = §0"<§(§!$§.getItemByName("Container_Pause"));
         § ""§ = new §4"0§(_loc2_,mLevelManager,_loc1_,§'#w§,this.§,X§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§,"n§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§0"<§ = §0"<§(§!$§.getItemByName("Container_Play"));
         §2!z§ = new §,_§(_loc2_,mLevelManager,§1#p§,_loc1_,§'#w§);
      }
      
      override protected function playLevelStartSound() : void
      {
         §#$+§.§=#P§("levelstartmilitarya2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§?!+§(param1);
      }
      
      protected function §?!+§(param1:String) : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         this.§[!E§ = "";
         this.§1?§ = false;
         §!$§.movieClip.mouseChildren = true;
         Starling.§<#`§.§`q§ = true;
      }
      
      override public function deActivate() : void
      {
         this.§9#G§();
         super.deActivate();
      }
      
      protected function §9#G§() : void
      {
         Starling.§<#`§.§`q§ = false;
         §!$§.stage.frameRate = 60;
         AngryBirdsBase.singleton.popupManager.closePopupById(TutorialPopup.ID);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§4"4§();
      }
      
      override protected function getGameLogicController(param1:§#!,§) : §7!J§
      {
         return new §4!x§(param1,mLevelManager);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:int = §1#p§.getScore();
         §,"W§.§`#f§(§;-§.§2x§,mLevelManager.currentLevel,_loc1_);
         (§>"$§.§3#'§ as §#%§).§[5§();
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §'!T§(AngryBirdsBase.singleton.popupManager).§5"'§();
         if(!_loc1_)
         {
            §>"$§.resume();
         }
      }
      
      protected function §4"4§() : void
      {
      }
      
      override public function getVictoryStateName() : String
      {
         if(§2!z§.isEagleUsed())
         {
            return §`$ §.STATE_NAME;
         }
         return §3"%§.STATE_NAME;
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §2!z§.isAllowedToChangeVictoryState();
         if(_loc1_)
         {
            §!$§.movieClip.mouseChildren = false;
            this.§1?§ = true;
         }
         return _loc1_ && this.§1?§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §2!z§.isAllowedToChangeFailState();
         if(_loc1_)
         {
            this.§1?§ = true;
            §!$§.movieClip.mouseChildren = false;
         }
         return this.§1?§;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(Starling.§<#`§.§'#s§ > 10)
         {
            §!$§.stage.frameRate = 30;
         }
         if(this.§[!E§ && this.§[!E§ != "" && §2!z§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §7P§(this.§[!E§);
            this.§[!E§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§<K§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §<K§.§!#]§:
               break;
            case §<K§.§;#u§:
               §#$+§.§#"r§();
               §`k§(true);
               break;
            case §<K§.RESUME_LEVEL:
               §#$+§.§;$&§();
               §`k§(false);
               break;
            case §<K§.RESTART_LEVEL:
               _loc2_ = getLevelLoadStateName();
               if(!§2!z§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§[!E§ = _loc2_;
                  return;
               }
               §7P§(_loc2_);
               break;
            case §<K§.§4?§:
               _loc2_ = param1.§5!<§;
               if(!§2!z§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§[!E§ = _loc2_;
                  return;
               }
               §7P§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
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
   }
}
