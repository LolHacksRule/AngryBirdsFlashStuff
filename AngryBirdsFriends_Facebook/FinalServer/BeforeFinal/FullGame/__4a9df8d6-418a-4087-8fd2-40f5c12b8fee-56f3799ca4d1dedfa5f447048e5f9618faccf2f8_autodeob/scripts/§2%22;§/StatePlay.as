package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§#H§;
   import §#,§.§]$+§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §,"v§.§;"n§;
   import §3!!§.§-"C§;
   import §3!!§.§^"S§;
   import §8#K§.§3Z§;
   import §<9§.§-"q§;
   import §=!t§.§24§;
   import §=#f§.§""F§;
   import §`#@§.§7n§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §>"§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §?!,§:§^"S§;
      
      protected var §<$'§:§-"C§;
      
      public function StatePlay(param1:§;"n§, param2:§4#c§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §-#5§() : §^"S§
      {
         return this.§?!,§;
      }
      
      override protected function init() : void
      {
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §&#v§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§1o§();
      }
      
      protected function §=##§() : void
      {
         this.§>!W§();
         if(this.§?!,§)
         {
            this.§?!,§.dispose();
            this.§?!,§ = null;
         }
         if(this.§<$'§)
         {
            this.§<$'§.dispose();
            this.§<$'§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§#H§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]$+§ = §]$+§(§[$5§.getItemByName("Container_Pause"));
         this.§<$'§ = new §-"q§(_loc2_,mLevelManager,_loc1_,§+" §);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§#H§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]$+§ = §]$+§(§[$5§.getItemByName("Container_Play"));
         this.§?!,§ = new §24§(_loc2_,mLevelManager,§3!;§,_loc1_,§+" §);
      }
      
      protected function §1o§() : void
      {
         this.§<$'§.addEventListener(§""F§.§;"]§,this.viewEventHandler);
         this.§<$'§.addEventListener(§""F§.§]E§,this.viewEventHandler);
         this.§<$'§.addEventListener(§""F§.RESTART_LEVEL,this.viewEventHandler);
         this.§<$'§.addEventListener(§""F§.RESUME_LEVEL,this.viewEventHandler);
         this.§?!,§.addEventListener(§""F§.§]E§,this.viewEventHandler);
         this.§?!,§.addEventListener(§""F§.RESTART_LEVEL,this.viewEventHandler);
         this.§?!,§.addEventListener(§""F§.RESUME_LEVEL,this.viewEventHandler);
         this.§?!,§.addEventListener(§""F§.§@#A§,this.viewEventHandler);
      }
      
      protected function §>!W§() : void
      {
         this.§<$'§.removeEventListener(§""F§.§;"]§,this.viewEventHandler);
         this.§<$'§.removeEventListener(§""F§.§]E§,this.viewEventHandler);
         this.§<$'§.removeEventListener(§""F§.RESTART_LEVEL,this.viewEventHandler);
         this.§<$'§.removeEventListener(§""F§.RESUME_LEVEL,this.viewEventHandler);
         this.§?!,§.removeEventListener(§""F§.§]E§,this.viewEventHandler);
         this.§?!,§.removeEventListener(§""F§.RESTART_LEVEL,this.viewEventHandler);
         this.§?!,§.removeEventListener(§""F§.RESUME_LEVEL,this.viewEventHandler);
         this.§?!,§.removeEventListener(§""F§.§@#A§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§-"[§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §-"[§() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         §3Z§.§3j§();
      }
      
      protected function playLevelStartSound() : void
      {
         §3Z§.§8!K§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§&#v§();
         this.§ =§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§=##§();
         AngryBirdsBase.singleton.§^"6§ = false;
         super.deActivate();
      }
      
      protected function § =§(param1:Boolean, param2:Boolean = true) : void
      {
         AngryBirdsBase.singleton.§^"6§ = param1;
         if(param1)
         {
            this.§?!,§.disable(param2);
            this.§<$'§.enable(param2);
         }
         else
         {
            this.§?!,§.enable(param2);
            this.§<$'§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§?!,§ && this.§?!,§.§'#r§())
         {
            this.§?!,§.update(param1);
         }
         if(this.§<$'§ && this.§<$'§.§'#r§())
         {
            this.§<$'§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§""F§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §""F§.§;"]§:
               break;
            case §""F§.§@#A§:
               this.§ =§(true);
               break;
            case §""F§.RESUME_LEVEL:
               this.§ =§(false);
               break;
            case §""F§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §""F§.§]E§:
               _loc2_ = param1.§6!=§;
               §1!L§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§-#5§.isEagleUsed())
         {
            return §3#[§.STATE_NAME;
         }
         return §!"m§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §9#6§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §9!R§.STATE_NAME;
      }
      
      protected function restartLevel() : void
      {
         §1!L§(this.getLevelLoadStateName());
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
               if(!§7n§.isPaused)
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
         if(§7n§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §1!L§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §1!L§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§?!,§.§-#R§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
