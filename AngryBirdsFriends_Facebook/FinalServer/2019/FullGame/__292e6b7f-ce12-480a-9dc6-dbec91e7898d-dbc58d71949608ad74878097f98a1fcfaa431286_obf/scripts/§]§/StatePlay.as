package §]§
{
   import § "L§.§23§;
   import §!1§.§'$>§;
   import §!1§.§]^§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §-^§.§-#R§;
   import §3"V§.§ b§;
   import §6"?§.§]"K§;
   import §7#$§.§]#q§;
   import §8!A§.§^#N§;
   import §?#z§.§]$?§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §'"V§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §2#x§:§]^§;
      
      protected var §;!V§:§'$>§;
      
      public function StatePlay(param1:§]#q§, param2:§%"q§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §>$+§() : §]^§
      {
         return this.§2#x§;
      }
      
      override protected function init() : void
      {
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §;6§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§86§();
      }
      
      protected function §,$D§() : void
      {
         this.§;[§();
         if(this.§2#x§)
         {
            this.§2#x§.dispose();
            this.§2#x§ = null;
         }
         if(this.§;!V§)
         {
            this.§;!V§.dispose();
            this.§;!V§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§3#J§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§23§ = §23§(§;!w§.getItemByName("Container_Pause"));
         this.§;!V§ = new §]"K§(_loc2_,mLevelManager,_loc1_,§#$&§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§3#J§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§23§ = §23§(§;!w§.getItemByName("Container_Play"));
         this.§2#x§ = new §-#R§(_loc2_,mLevelManager,§!"K§,_loc1_,§#$&§);
      }
      
      protected function §86§() : void
      {
         this.§;!V§.addEventListener(§^#N§.§0#T§,this.viewEventHandler);
         this.§;!V§.addEventListener(§^#N§.§8#j§,this.viewEventHandler);
         this.§;!V§.addEventListener(§^#N§.RESTART_LEVEL,this.viewEventHandler);
         this.§;!V§.addEventListener(§^#N§.RESUME_LEVEL,this.viewEventHandler);
         this.§2#x§.addEventListener(§^#N§.§8#j§,this.viewEventHandler);
         this.§2#x§.addEventListener(§^#N§.RESTART_LEVEL,this.viewEventHandler);
         this.§2#x§.addEventListener(§^#N§.RESUME_LEVEL,this.viewEventHandler);
         this.§2#x§.addEventListener(§^#N§.§0!5§,this.viewEventHandler);
      }
      
      protected function §;[§() : void
      {
         this.§;!V§.removeEventListener(§^#N§.§0#T§,this.viewEventHandler);
         this.§;!V§.removeEventListener(§^#N§.§8#j§,this.viewEventHandler);
         this.§;!V§.removeEventListener(§^#N§.RESTART_LEVEL,this.viewEventHandler);
         this.§;!V§.removeEventListener(§^#N§.RESUME_LEVEL,this.viewEventHandler);
         this.§2#x§.removeEventListener(§^#N§.§8#j§,this.viewEventHandler);
         this.§2#x§.removeEventListener(§^#N§.RESTART_LEVEL,this.viewEventHandler);
         this.§2#x§.removeEventListener(§^#N§.RESUME_LEVEL,this.viewEventHandler);
         this.§2#x§.removeEventListener(§^#N§.§0!5§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§="§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §="§() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         § b§.§#! §();
      }
      
      protected function playLevelStartSound() : void
      {
         § b§.§^"8§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§;6§();
         this.§;g§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§,$D§();
         AngryBirdsBase.singleton.§4! § = false;
         super.deActivate();
      }
      
      protected function §;g§(param1:Boolean, param2:Boolean = true) : void
      {
         AngryBirdsBase.singleton.§4! § = param1;
         if(param1)
         {
            this.§2#x§.disable(param2);
            this.§;!V§.enable(param2);
         }
         else
         {
            this.§2#x§.enable(param2);
            this.§;!V§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§2#x§ && this.§2#x§.§9#e§())
         {
            this.§2#x§.update(param1);
         }
         if(this.§;!V§ && this.§;!V§.§9#e§())
         {
            this.§;!V§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§^#N§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §^#N§.§0#T§:
               break;
            case §^#N§.§0!5§:
               this.§;g§(true);
               break;
            case §^#N§.RESUME_LEVEL:
               this.§;g§(false);
               break;
            case §^#N§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §^#N§.§8#j§:
               _loc2_ = param1.§#$#§;
               §3#§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§>$+§.isEagleUsed())
         {
            return §!#l§.STATE_NAME;
         }
         return §+!F§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §>"d§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §8$C§.STATE_NAME;
      }
      
      protected function restartLevel() : void
      {
         §3#§(this.getLevelLoadStateName());
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         super.keyUp(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§]$?§.isPaused)
               {
                  this.restartLevel();
               }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§]$?§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §3#§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §3#§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§2#x§.§<#p§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
