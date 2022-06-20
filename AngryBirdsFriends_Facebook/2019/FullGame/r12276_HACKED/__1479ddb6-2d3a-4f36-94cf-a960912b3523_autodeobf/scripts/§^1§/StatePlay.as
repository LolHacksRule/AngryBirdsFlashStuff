package §^1§
{
   import § !3§.§9$4§;
   import § !3§.§^L§;
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §+!n§.§+!p§;
   import §2$;§.§!"e§;
   import §<#O§.§#!m§;
   import §=-§.§@$%§;
   import §>#Y§.§@!p§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §`#F§.§^#I§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §>"3§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §-!=§:§^L§;
      
      protected var §9"F§:§9$4§;
      
      public function StatePlay(param1:§4#?§, param2:§?!>§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §["j§() : §^L§
      {
         return this.§-!=§;
      }
      
      override protected function init() : void
      {
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §#]§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§<# §();
      }
      
      protected function §7"S§() : void
      {
         this.§=#5§();
         if(this.§-!=§)
         {
            this.§-!=§.dispose();
            this.§-!=§ = null;
         }
         if(this.§9"F§)
         {
            this.§9"F§.dispose();
            this.§9"F§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§@!p§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§!"e§ = §!"e§(§@!D§.getItemByName("Container_Pause"));
         this.§9"F§ = new §^#I§(_loc2_,mLevelManager,_loc1_,§,#a§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§@!p§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§!"e§ = §!"e§(§@!D§.getItemByName("Container_Play"));
         this.§-!=§ = new §#!m§(_loc2_,mLevelManager,§%#4§,_loc1_,§,#a§);
      }
      
      protected function §<# §() : void
      {
         this.§9"F§.addEventListener(§@$%§.§?2§,this.viewEventHandler);
         this.§9"F§.addEventListener(§@$%§.§,f§,this.viewEventHandler);
         this.§9"F§.addEventListener(§@$%§.RESTART_LEVEL,this.viewEventHandler);
         this.§9"F§.addEventListener(§@$%§.RESUME_LEVEL,this.viewEventHandler);
         this.§-!=§.addEventListener(§@$%§.§,f§,this.viewEventHandler);
         this.§-!=§.addEventListener(§@$%§.RESTART_LEVEL,this.viewEventHandler);
         this.§-!=§.addEventListener(§@$%§.RESUME_LEVEL,this.viewEventHandler);
         this.§-!=§.addEventListener(§@$%§.§`$;§,this.viewEventHandler);
      }
      
      protected function §=#5§() : void
      {
         this.§9"F§.removeEventListener(§@$%§.§?2§,this.viewEventHandler);
         this.§9"F§.removeEventListener(§@$%§.§,f§,this.viewEventHandler);
         this.§9"F§.removeEventListener(§@$%§.RESTART_LEVEL,this.viewEventHandler);
         this.§9"F§.removeEventListener(§@$%§.RESUME_LEVEL,this.viewEventHandler);
         this.§-!=§.removeEventListener(§@$%§.§,f§,this.viewEventHandler);
         this.§-!=§.removeEventListener(§@$%§.RESTART_LEVEL,this.viewEventHandler);
         this.§-!=§.removeEventListener(§@$%§.RESUME_LEVEL,this.viewEventHandler);
         this.§-!=§.removeEventListener(§@$%§.§`$;§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§`0§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §`0§() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         §4$4§.§?#l§();
      }
      
      protected function playLevelStartSound() : void
      {
         §4$4§.§'"j§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§#]§();
         this.§["u§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§7"S§();
         AngryBirdsBase.singleton.§5!3§ = false;
         super.deActivate();
      }
      
      protected function §["u§(param1:Boolean, param2:Boolean = true) : void
      {
         AngryBirdsBase.singleton.§5!3§ = param1;
         if(param1)
         {
            this.§-!=§.disable(param2);
            this.§9"F§.enable(param2);
         }
         else
         {
            this.§-!=§.enable(param2);
            this.§9"F§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§-!=§ && this.§-!=§.§7"&§())
         {
            this.§-!=§.update(param1);
         }
         if(this.§9"F§ && this.§9"F§.§7"&§())
         {
            this.§9"F§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§@$%§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §@$%§.§?2§:
               break;
            case §@$%§.§`$;§:
               this.§["u§(true);
               break;
            case §@$%§.RESUME_LEVEL:
               this.§["u§(false);
               break;
            case §@$%§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §@$%§.§,f§:
               _loc2_ = param1.§8#1§;
               §%!?§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§["j§.isEagleUsed())
         {
            return §5!6§.STATE_NAME;
         }
         return §-§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §%"`§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §2t§.STATE_NAME;
      }
      
      protected function restartLevel() : void
      {
         §%!?§(this.getLevelLoadStateName());
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
               if(!§+!p§.isPaused)
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
         if(§+!p§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §%!?§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §%!?§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§-!=§.§-#"§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
