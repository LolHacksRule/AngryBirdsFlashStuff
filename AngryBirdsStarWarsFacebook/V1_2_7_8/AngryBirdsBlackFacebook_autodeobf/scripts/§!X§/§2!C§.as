package §!X§
{
   import §""d§.§,m§;
   import §%S§.§=#"§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §,#+§.§@"F§;
   import §,o§.§0#"§;
   import §0R§.§0!8§;
   import §0b§.§&w§;
   import §0b§.§7">§;
   import §0b§.TutorialPopup;
   import §4##§.§7!B§;
   import §5!q§.§&§;
   import §5!q§.§-R§;
   import §5!q§.§3"X§;
   import §5!q§.§6"@§;
   import §7"O§.§4"S§;
   import §7A§.§>!]§;
   import §<"s§.§@![§;
   import §<I§.§'#!§;
   import §@b§.§&M§;
   import §@b§.§1"0§;
   import §]!=§.§;"I§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import §`"8§.§4"K§;
   import §`"]§.§'b§;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class §2!C§ extends § H§
   {
      
      public static var §'"i§:Boolean = false;
       
      
      protected var §4"L§:Boolean;
      
      protected var §[!1§:Boolean;
      
      protected var § #!§:§4"S§;
      
      protected var §,#'§:String;
      
      protected var §]<§:§="#§;
      
      public function §2!C§(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelPlay[0]);
         §>I§.getItemByName("Button_ExtraBird").mClip.extraBird.stop();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§4"K§ = §;"@§.singleton.dataModel;
         var _loc2_:§,m§ = §,m§(§>I§.getItemByName("Container_Pause"));
         §<"6§ = new §=#"§(_loc2_,§ !p§,_loc1_,§8-§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§4"K§ = §;"@§.singleton.dataModel;
         var _loc2_:§,m§ = §,m§(§>I§.getItemByName("Container_Play"));
         §]"+§ = new §'b§(_loc2_,§ !p§,§^!!§,_loc1_,§8-§);
      }
      
      override public function showTutorials() : void
      {
         §;"@§.singleton.tutorialPopupManager.openMultipleTutorialPopups(this.getTutorialsToShow());
      }
      
      protected function getTutorialsToShow() : Vector.<String>
      {
         var _loc4_:§1"0§ = null;
         var _loc1_:§7">§ = §;"@§.singleton.tutorialPopupManager;
         var _loc2_:Vector.<String> = _loc1_.§4!H§.getTutorialNamesForMapping(§&w§.§4$§);
         var _loc3_:§#f§ = §-!w§(§;"@§.singleton.dataModel).§=>§;
         for each(_loc4_ in _loc3_.§[!D§.§8"A§)
         {
            if(!(_loc4_.§%"0§ == §&M§.§0!f§ && § !p§.getCurrentEpisodeModel().name == "2000"))
            {
               if(_loc3_.§"!V§(_loc4_.§0B§) > 0)
               {
                  _loc2_.unshift(_loc4_.§0B§);
               }
            }
         }
         return _loc2_;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§,#'§ = "";
         this.§[!1§ = false;
         this.§4"L§ = false;
         this.§ #!§ = new §4"S§(this.§&-§);
         §>I§.movieClip.mouseChildren = true;
         this.§##4§();
         §;!e§.§<x§.slingshot.addEventListener(§-R§.§?!`§,this.§<"@§);
         this.showTutorials();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§]<§)
         {
            this.§]<§.§7!5§();
            this.§]<§.§[!6§();
         }
         this.§ #!§.dispose();
         this.§ #!§ = null;
         §;!e§.§<x§.slingshot.removeEventListener(§-R§.§?!`§,this.§<"@§);
         §;"@§.singleton.popupManager.§7M§(TutorialPopup.§^"3§);
         §&"1§(§;"@§.singleton).§`!u§.§0"i§();
      }
      
      private function §<"@§(param1:Event) : void
      {
         this.§##4§();
      }
      
      private function §##4§() : void
      {
         §'b§(§]"+§).§[y§(§&#3§(§;!e§.§<x§.slingshot).§""H§.levelItem.itemName.split("_")[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.showLevelScores();
         this.§]<§ = new §="#§(§ !p§.currentLevelNumericName);
         §0!8§.§-!7§(§>!]§.§ ">§,§ !p§.currentLevelNumericName);
      }
      
      override protected function levelCompleted() : void
      {
         var _loc4_:Vector.<String> = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         super.levelCompleted();
         var _loc1_:String = § !p§.currentLevelNumericName;
         var _loc2_:int = §^!!§.getScore(10);
         §0!8§.§-!7§(§>!]§.§6k§,_loc1_,_loc2_);
         var _loc3_:§6"@§ = §;!e§.§<x§ as §6"@§;
         if(_loc3_)
         {
            _loc4_ = _loc3_.§#s§();
            _loc5_ = [];
            for each(_loc6_ in _loc4_)
            {
               _loc5_.push(_loc6_);
            }
            §0!8§.§&",§(_loc5_,_loc1_,_loc2_);
         }
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §@![§(§;"@§.singleton.popupManager).§;"<§();
         if(!_loc1_)
         {
            §;!e§.resume();
         }
      }
      
      protected function showLevelScores() : void
      {
         §&"1§(§;"@§.singleton).§`!u§.showLevelScores(§@"F§(§ !p§).getEpisodeForLevel(§ !p§.currentLevel).name,§ !p§.currentLevel,false);
      }
      
      override protected function getGameLogicController(param1:§3"X§) : §;"I§
      {
         return new §0#"§(param1,§ !p§);
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §]"+§.isAllowedToChangeVictoryState();
         if(!this.§[!1§ && _loc1_)
         {
            this.§[!1§ = true;
            §>I§.movieClip.mouseChildren = false;
            this.§ #!§.§!!`§(true);
         }
         return this.§4"L§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §]"+§.isAllowedToChangeFailState();
         if(!this.§[!1§ && _loc1_)
         {
            this.§[!1§ = true;
            §>I§.movieClip.mouseChildren = false;
            this.§ #!§.§!!`§(false);
         }
         return this.§4"L§;
      }
      
      protected function §&-§(param1:Boolean) : void
      {
         this.§4"L§ = param1;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§]"+§ && §]"+§.isEnabled())
         {
            if(this.§]<§ && !§;"@§.singleton.popupManager.§;"<§())
            {
               this.§]<§.§&]§(param1);
            }
         }
         if(this.§,#'§ && this.§,#'§ != "" && §]"+§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §0"B§(this.§,#'§);
            this.§,#'§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§'#!§) : void
      {
         var _loc2_:String = null;
         if(this.§[!1§)
         {
            return;
         }
         switch(param1.type)
         {
            case §'#!§.§<"T§:
               break;
            case §'#!§.§]"U§:
               §#"G§(true);
               break;
            case §'#!§.RESUME_LEVEL:
               §#"G§(false);
               break;
            case §'#!§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §'#!§.§8!F§:
               _loc2_ = param1.§^#1§;
               if(!§]"+§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§,#'§ = _loc2_;
                  return;
               }
               §0"B§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         if(this.§[!1§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(this.§[!1§)
         {
            return;
         }
         super.keyUp(param1);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(this.§[!1§)
         {
            return;
         }
         super.keyDown(param1);
      }
      
      override protected function restartLevel() : void
      {
         var _loc1_:String = getLevelLoadStateName();
         if(!§]"+§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            this.§,#'§ = _loc1_;
            return;
         }
         §0"B§(_loc1_);
      }
   }
}
