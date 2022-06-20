package §94§
{
   import §%#A§.§]!_§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §;5§.§12§;
   import §="k§.§&w§;
   import §@#§.§^#Q§;
   import §[!2§.§,§;
   import §[!2§.§=!C§;
   import §[$&§.§^#S§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §3!n§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §-"<§:§=!C§;
      
      protected var §@c§:§,#0§;
      
      public function StatePlay(param1:§^#Q§, param2:§+#!§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §;"S§() : §=!C§
      {
         return this.§-"<§;
      }
      
      override protected function init() : void
      {
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §""p§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§@G§();
      }
      
      protected function §%#`§() : void
      {
         this.§'Z§();
         if(this.§-"<§)
         {
            this.§-"<§.dispose();
            this.§-"<§ = null;
         }
         if(this.§@c§)
         {
            this.§@c§.dispose();
            this.§@c§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§<&§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]!_§ = §]!_§(§?Q§.getItemByName("Container_Pause"));
         this.§@c§ = new §&w§(_loc2_,mLevelManager,_loc1_,§-"Q§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§<&§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]!_§ = §]!_§(§?Q§.getItemByName("Container_Play"));
         this.§-"<§ = new §^#S§(_loc2_,mLevelManager,§?5§,_loc1_,§-"Q§);
      }
      
      protected function §@G§() : void
      {
         this.§@c§.addEventListener(§12§.§2$#§,this.viewEventHandler);
         this.§@c§.addEventListener(§12§.§`"Q§,this.viewEventHandler);
         this.§@c§.addEventListener(§12§.RESTART_LEVEL,this.viewEventHandler);
         this.§@c§.addEventListener(§12§.RESUME_LEVEL,this.viewEventHandler);
         this.§-"<§.addEventListener(§12§.§`"Q§,this.viewEventHandler);
         this.§-"<§.addEventListener(§12§.RESTART_LEVEL,this.viewEventHandler);
         this.§-"<§.addEventListener(§12§.RESUME_LEVEL,this.viewEventHandler);
         this.§-"<§.addEventListener(§12§.§;"1§,this.viewEventHandler);
      }
      
      protected function §'Z§() : void
      {
         this.§@c§.removeEventListener(§12§.§2$#§,this.viewEventHandler);
         this.§@c§.removeEventListener(§12§.§`"Q§,this.viewEventHandler);
         this.§@c§.removeEventListener(§12§.RESTART_LEVEL,this.viewEventHandler);
         this.§@c§.removeEventListener(§12§.RESUME_LEVEL,this.viewEventHandler);
         this.§-"<§.removeEventListener(§12§.§`"Q§,this.viewEventHandler);
         this.§-"<§.removeEventListener(§12§.RESTART_LEVEL,this.viewEventHandler);
         this.§-"<§.removeEventListener(§12§.RESUME_LEVEL,this.viewEventHandler);
         this.§-"<§.removeEventListener(§12§.§;"1§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§1!j§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §1!j§() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         §!#&§.§^!2§();
      }
      
      protected function playLevelStartSound() : void
      {
         §!#&§.§2!A§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§""p§();
         this.§<"[§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§%#`§();
         AngryBirdsBase.singleton.§#!;§ = false;
         super.deActivate();
      }
      
      protected function §<"[§(param1:Boolean, param2:Boolean = true) : void
      {
         AngryBirdsBase.singleton.§#!;§ = param1;
         if(param1)
         {
            this.§-"<§.disable(param2);
            this.§@c§.enable(param2);
         }
         else
         {
            this.§-"<§.enable(param2);
            this.§@c§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§-"<§ && this.§-"<§.§!!?§())
         {
            this.§-"<§.update(param1);
         }
         if(this.§@c§ && this.§@c§.§!!?§())
         {
            this.§@c§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§12§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §12§.§2$#§:
               break;
            case §12§.§;"1§:
               this.§<"[§(true);
               break;
            case §12§.RESUME_LEVEL:
               this.§<"[§(false);
               break;
            case §12§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §12§.§`"Q§:
               _loc2_ = param1.§3!6§;
               §5"p§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§;"S§.isEagleUsed())
         {
            return §]#e§.STATE_NAME;
         }
         return §"!u§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §[j§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §9#P§.STATE_NAME;
      }
      
      protected function restartLevel() : void
      {
         §5"p§(this.getLevelLoadStateName());
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
               if(!§!#A§.isPaused)
               {
                  this.restartLevel();
                  break;
               }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§!#A§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §5"p§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §5"p§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§-"<§.§6e§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
