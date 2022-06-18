package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §0!>§.§ !b§;
   import §0!>§.§;#$§;
   import §2$;§.§!"e§;
   import §2E§.§'@§;
   import §2E§.§7J§;
   import §9!6§.§-§;
   import §9m§.§0#E§;
   import §<#O§.§<0§;
   import §<8§.§8!g§;
   import §=-§.§@$%§;
   import §>#Y§.§@!p§;
   import §?$#§.§<d§;
   import §?$#§.§^#j§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §`!u§.TutorialPopup;
   import §`#F§.§^"2§;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class §2#u§ extends StatePlay
   {
      
      public static var §7#>§:String;
      
      public static const §=!@§:String = "4000-";
       
      
      protected var §!"h§:Boolean;
      
      protected var §,#t§:String;
      
      protected var §%!o§:§0#E§;
      
      public function §2#u§(param1:§4#?§, param2:§?!>§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_FacebookLevelPlay[0]);
         var _loc1_:§!"e§ = §!"e§(§@!D§.getItemByName("Container_Pause"));
         this.§%!o§ = new §0#E§(_loc1_);
         this.§%!o§.§;!K§();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§@!p§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§!"e§ = §!"e§(§@!D§.getItemByName("Container_Pause"));
         §9"F§ = new §^"2§(_loc2_,mLevelManager,_loc1_,§,#a§,this.§%!o§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§@!p§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§!"e§ = §!"e§(§@!D§.getItemByName("Container_Play"));
         §-!=§ = new §<0§(_loc2_,mLevelManager,§%#4§,_loc1_,§,#a§);
      }
      
      override protected function playLevelStartSound() : void
      {
         §4$4§.§'"j§("level_start_military_a2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§ [§(param1);
      }
      
      protected function § [§(param1:String) : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         this.§,#t§ = "";
         this.§!"h§ = false;
         §@!D§.movieClip.mouseChildren = true;
         Starling.§%!q§.§!$=§ = true;
      }
      
      override public function deActivate() : void
      {
         this.§="`§();
         super.deActivate();
      }
      
      protected function §="`§() : void
      {
         Starling.§%!q§.§!$=§ = false;
         §@!D§.stage.frameRate = 60;
         AngryBirdsBase.singleton.popupManager.§>#g§(TutorialPopup.ID);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§>#<§();
      }
      
      override protected function getGameLogicController(param1:§<d§) : §;#$§
      {
         return new § !b§(param1,mLevelManager);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:int = §%#4§.getScore();
         §'@§.§4"x§(§7J§.§%#w§,mLevelManager.currentLevel,_loc1_);
         (§+!p§.§`?§ as §^#j§).§"C§();
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §-#6§(AngryBirdsBase.singleton.popupManager).§!=§();
         if(!_loc1_)
         {
            §+!p§.resume();
         }
      }
      
      protected function §>#<§() : void
      {
      }
      
      override public function getVictoryStateName() : String
      {
         if(§-!=§.isEagleUsed())
         {
            return §5!6§.STATE_NAME;
         }
         return §^1§.§-§.STATE_NAME;
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §-!=§.isAllowedToChangeVictoryState();
         if(_loc1_)
         {
            §@!D§.movieClip.mouseChildren = false;
            this.§!"h§ = true;
         }
         return _loc1_ && this.§!"h§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §-!=§.isAllowedToChangeFailState();
         if(_loc1_)
         {
            this.§!"h§ = true;
            §@!D§.movieClip.mouseChildren = false;
         }
         return this.§!"h§;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(Starling.§%!q§.§%#'§ > 10)
         {
            §@!D§.stage.frameRate = 30;
         }
         if(this.§,#t§ && this.§,#t§ != "" && §-!=§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §%!?§(this.§,#t§);
            this.§,#t§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§@$%§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §@$%§.§?2§:
               break;
            case §@$%§.§`$;§:
               §4$4§.§3V§();
               §["u§(true);
               break;
            case §@$%§.RESUME_LEVEL:
               §4$4§.§4!S§();
               §["u§(false);
               break;
            case §@$%§.RESTART_LEVEL:
               _loc2_ = getLevelLoadStateName();
               if(!§-!=§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§,#t§ = _loc2_;
                  return;
               }
               §%!?§(_loc2_);
               break;
            case §@$%§.§,f§:
               _loc2_ = param1.§8#1§;
               if(!§-!=§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§,#t§ = _loc2_;
                  return;
               }
               §%!?§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
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
         if((§+!p§.§`?§ as §^#j§).§'#>§.§#!?§())
         {
            return;
         }
         super.restartLevel();
      }
   }
}
