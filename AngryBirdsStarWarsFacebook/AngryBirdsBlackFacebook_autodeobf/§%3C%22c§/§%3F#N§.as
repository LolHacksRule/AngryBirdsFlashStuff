package §<"c§
{
   import § "p§.§##N§;
   import §!"e§.§9#B§;
   import §"a§.§6#!§;
   import §#!'§.§6"]§;
   import §+D§.§ #^§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §,"N§.§@>§;
   import §0!]§.§9§;
   import §1!i§.§>!%§;
   import §5§.§0"d§;
   import §5§.§0§;
   import §5§.TutorialPopup;
   import §6!H§.§,#E§;
   import §6!H§.§8!r§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §8!E§.§^![§;
   import §;"Y§.§&#X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§[#;§;
   import §^#>§.§#_§;
   import §^#>§.§8"f§;
   import §^#>§.§;x§;
   import §^#>§.§>f§;
   import §^z§.§5S§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class §?#N§ extends §6"a§
   {
      
      public static var §"3§:Boolean = false;
       
      
      protected var §,#^§:Boolean;
      
      protected var §03§:Boolean;
      
      protected var §4"+§:§9#9§;
      
      protected var §%!X§:String;
      
      protected var §>!,§:§2"W§;
      
      public function §?#N§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelPlay[0]);
         §@;§.getItemByName("Button_ExtraBird").mClip.extraBird.stop();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Pause"));
         §2!j§ = new §##N§(_loc2_,§+!b§,_loc1_,§^"N§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Play"));
         §?#M§ = new §^![§(_loc2_,§+!b§,§ F§,_loc1_,§^"N§);
      }
      
      override public function showTutorials() : void
      {
         §4#;§.singleton.tutorialPopupManager.openMultipleTutorialPopups(this.getTutorialsToShow());
      }
      
      protected function getTutorialsToShow() : Vector.<String>
      {
         var _loc4_:§8!r§ = null;
         var _loc1_:§0#2§ = §4#;§.singleton.tutorialPopupManager;
         var _loc2_:Vector.<String> = _loc1_.§>?§.getTutorialNamesForMapping(§0"d§.§=!7§);
         var _loc3_:§6"w§ = §@#B§(§4#;§.singleton.dataModel).§]"<§;
         for each(_loc4_ in _loc3_.§;#?§.§^"'§)
         {
            if(!(_loc4_.§7!%§ == §,#E§.§'"d§ && §+!b§.getCurrentEpisodeModel().name == "2000"))
            {
               if(_loc3_.§8#K§(_loc4_.§="A§) > 0)
               {
                  _loc2_.unshift(_loc4_.§="A§);
               }
            }
         }
         return _loc2_;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§%!X§ = "";
         this.§03§ = false;
         this.§,#^§ = false;
         this.§4"+§ = new §9#9§(this.§%"9§);
         §@;§.movieClip.mouseChildren = true;
         this.§,"a§();
         §,!q§.§9!,§.slingshot.addEventListener(§;x§.§?!i§,this.§3#]§);
         this.showTutorials();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>!,§)
         {
            this.§>!,§.§5"]§();
            this.§>!,§.§8Q§();
         }
         this.§4"+§.dispose();
         this.§4"+§ = null;
         §,!q§.§9!,§.slingshot.removeEventListener(§;x§.§?!i§,this.§3#]§);
         §4#;§.singleton.popupManager.§,"o§(TutorialPopup.§%!h§);
         §@!m§(§4#;§.singleton).§""s§.§>Z§();
      }
      
      private function §3#]§(param1:Event) : void
      {
         this.§,"a§();
      }
      
      private function §,"a§() : void
      {
         §^![§(§?#M§).§-u§(§>f§(§,!q§.§9!,§.slingshot).§0"%§.levelItem.itemName.split("_")[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.showLevelScores();
         this.§>!,§ = new §2"W§(§+!b§.currentLevelNumericName);
         §6"]§.§2!L§(§>!%§.§,6§,§+!b§.currentLevelNumericName);
      }
      
      override protected function levelCompleted() : void
      {
         var _loc4_:Vector.<String> = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         super.levelCompleted();
         var _loc1_:String = §+!b§.currentLevelNumericName;
         var _loc2_:int = § F§.getScore(10);
         §6"]§.§2!L§(§>!%§.§""+§,_loc1_,_loc2_);
         var _loc3_:§8"f§ = §,!q§.§9!,§ as §8"f§;
         if(_loc3_)
         {
            _loc4_ = _loc3_.§ !S§();
            _loc5_ = [];
            for each(_loc6_ in _loc4_)
            {
               _loc5_.push(_loc6_);
            }
            §6"]§.§@!f§(_loc5_,_loc1_,_loc2_);
         }
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §9#B§(§4#;§.singleton.popupManager).§""n§();
         if(!_loc1_)
         {
            §,!q§.resume();
         }
      }
      
      protected function showLevelScores() : void
      {
         §@!m§(§4#;§.singleton).§""s§.showLevelScores(§[#;§(§+!b§).getEpisodeForLevel(§+!b§.currentLevel).name,§+!b§.currentLevel,false);
      }
      
      override protected function getGameLogicController(param1:§#_§) : §6#!§
      {
         return new §5S§(param1,§+!b§);
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §?#M§.isAllowedToChangeVictoryState();
         if(!this.§03§ && _loc1_)
         {
            this.§03§ = true;
            §@;§.movieClip.mouseChildren = false;
            this.§4"+§.§7"c§(true);
         }
         return this.§,#^§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §?#M§.isAllowedToChangeFailState();
         if(!this.§03§ && _loc1_)
         {
            this.§03§ = true;
            §@;§.movieClip.mouseChildren = false;
            this.§4"+§.§7"c§(false);
         }
         return this.§,#^§;
      }
      
      protected function §%"9§(param1:Boolean) : void
      {
         this.§,#^§ = param1;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§?#M§ && §?#M§.isEnabled())
         {
            if(this.§>!,§ && !§4#;§.singleton.popupManager.§""n§())
            {
               this.§>!,§.§4K§(param1);
            }
         }
         if(this.§%!X§ && this.§%!X§ != "" && §?#M§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            § g§(this.§%!X§);
            this.§%!X§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§"!4§) : void
      {
         var _loc2_:String = null;
         if(this.§03§)
         {
            return;
         }
         switch(param1.type)
         {
            case §"!4§.§ z§:
               break;
            case §"!4§.§!#B§:
               §'#`§(true);
               break;
            case §"!4§.RESUME_LEVEL:
               §'#`§(false);
               break;
            case §"!4§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §"!4§.§@L§:
               _loc2_ = param1.§^"y§;
               if(!§?#M§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§%!X§ = _loc2_;
                  return;
               }
               § g§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         if(this.§03§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(this.§03§)
         {
            return;
         }
         super.keyUp(param1);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(this.§03§)
         {
            return;
         }
         super.keyDown(param1);
      }
      
      override protected function restartLevel() : void
      {
         var _loc1_:String = getLevelLoadStateName();
         if(!§?#M§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            this.§%!X§ = _loc1_;
            return;
         }
         § g§(_loc1_);
      }
   }
}
