package §]§
{
   import § "L§.§23§;
   import § #j§.TutorialPopup;
   import § $0§.§<4§;
   import §"#k§.Starling;
   import §";§.§%"X§;
   import §";§.§false§;
   import §#"4§.§"!o§;
   import §#"4§.§<"G§;
   import §#g§.§!P§;
   import §#g§.§8§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §-^§.§8#b§;
   import §3"V§.§ b§;
   import §6"?§.§9L§;
   import §6#h§.§'!t§;
   import §6#h§.§5#&§;
   import §7#$§.§]#q§;
   import §8!A§.§^#N§;
   import §?#z§.§]$?§;
   import §^"3§.§`$4§;
   import §^"w§.§<#l§;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class § "F§ extends StatePlay
   {
      
      public static var §2O§:String;
      
      public static const § "f§:String = "4000-";
       
      
      protected var §!g§:Boolean;
      
      protected var §2#T§:String;
      
      protected var §`?§:§<#l§;
      
      public function § "F§(param1:§]#q§, param2:§%"q§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_FacebookLevelPlay[0]);
         var _loc1_:§23§ = §23§(§;!w§.getItemByName("Container_Pause"));
         this.§`?§ = new §<#l§(_loc1_);
         this.§`?§.§[x§();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§3#J§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§23§ = §23§(§;!w§.getItemByName("Container_Pause"));
         §;!V§ = new §9L§(_loc2_,mLevelManager,_loc1_,§#$&§,this.§`?§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§3#J§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§23§ = §23§(§;!w§.getItemByName("Container_Play"));
         §2#x§ = new §8#b§(_loc2_,mLevelManager,§!"K§,_loc1_,§#$&§);
      }
      
      override protected function playLevelStartSound() : void
      {
         § b§.§^"8§("level_start_military_a2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§!!l§(param1);
      }
      
      protected function §!!l§(param1:String) : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         this.§2#T§ = "";
         this.§!g§ = false;
         §;!w§.movieClip.mouseChildren = true;
         Starling.§4$#§.§0b§ = true;
      }
      
      override public function deActivate() : void
      {
         this.§=#s§();
         super.deActivate();
      }
      
      protected function §=#s§() : void
      {
         Starling.§4$#§.§0b§ = false;
         §;!w§.stage.frameRate = 60;
         AngryBirdsBase.singleton.popupManager.§0"O§(TutorialPopup.ID);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§'#^§();
      }
      
      override protected function getGameLogicController(param1:§8#3§) : §'!t§
      {
         return new §5#&§(param1,mLevelManager);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:int = §!"K§.getScore();
         §<"G§.§[#]§(§"!o§.§?%§,mLevelManager.currentLevel,_loc1_);
         var _loc2_:Array = (§]$?§.§2#§ as §!P§).§-!3§();
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §<4§(AngryBirdsBase.singleton.popupManager).§[#a§();
         if(!_loc1_)
         {
            §]$?§.resume();
         }
      }
      
      protected function §'#^§() : void
      {
      }
      
      override public function getVictoryStateName() : String
      {
         if(§2#x§.isEagleUsed())
         {
            return §!#l§.STATE_NAME;
         }
         return §+!F§.STATE_NAME;
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §2#x§.isAllowedToChangeVictoryState();
         if(_loc1_)
         {
            §;!w§.movieClip.mouseChildren = false;
            this.§!g§ = true;
         }
         return _loc1_ && this.§!g§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §2#x§.isAllowedToChangeFailState();
         if(_loc1_)
         {
            this.§!g§ = true;
            §;!w§.movieClip.mouseChildren = false;
         }
         return this.§!g§;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(Starling.§4$#§.§,$<§ > 10)
         {
            §;!w§.stage.frameRate = 30;
         }
         if(this.§2#T§ && this.§2#T§ != "" && §2#x§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §3#§(this.§2#T§);
            this.§2#T§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§^#N§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §^#N§.§0#T§:
               break;
            case §^#N§.§0!5§:
               § b§.§[#;§();
               §;g§(true);
               break;
            case §^#N§.RESUME_LEVEL:
               § b§.§&"O§();
               §;g§(false);
               break;
            case §^#N§.RESTART_LEVEL:
               _loc2_ = getLevelLoadStateName();
               if(!§2#x§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§2#T§ = _loc2_;
                  return;
               }
               §3#§(_loc2_);
               break;
            case §^#N§.§8#j§:
               _loc2_ = param1.§#$#§;
               if(!§2#x§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§2#T§ = _loc2_;
                  return;
               }
               §3#§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
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
         if((§]$?§.§2#§ as §!P§).§]!_§.§9$$§())
         {
            return;
         }
         super.restartLevel();
      }
   }
}
