package §,!=§
{
   import §"G§.§"q§;
   import §"G§.§%n§;
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §'U§.§]#[§;
   import §3!Q§.§<K§;
   import §6!!§.§;!-§;
   import §6"r§.§0"<§;
   import §8§.§#$+§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?",§.§>"V§;
   import §?§.§>"$§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §]#v§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §2!z§:§%n§;
      
      protected var § ""§:§"q§;
      
      public function StatePlay(param1:§#!?§, param2:§]#[§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §@'§() : §%n§
      {
         return this.§2!z§;
      }
      
      override protected function init() : void
      {
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §=#o§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§ !b§();
      }
      
      protected function §+!"§() : void
      {
         this.§,"O§();
         if(this.§2!z§)
         {
            this.§2!z§.dispose();
            this.§2!z§ = null;
         }
         if(this.§ ""§)
         {
            this.§ ""§.dispose();
            this.§ ""§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§,"n§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§0"<§ = §0"<§(§!$§.getItemByName("Container_Pause"));
         this.§ ""§ = new §>"V§(_loc2_,mLevelManager,_loc1_,§'#w§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§,"n§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§0"<§ = §0"<§(§!$§.getItemByName("Container_Play"));
         this.§2!z§ = new §;!-§(_loc2_,mLevelManager,§1#p§,_loc1_,§'#w§);
      }
      
      protected function § !b§() : void
      {
         this.§ ""§.addEventListener(§<K§.§!#]§,this.viewEventHandler);
         this.§ ""§.addEventListener(§<K§.§4?§,this.viewEventHandler);
         this.§ ""§.addEventListener(§<K§.RESTART_LEVEL,this.viewEventHandler);
         this.§ ""§.addEventListener(§<K§.RESUME_LEVEL,this.viewEventHandler);
         this.§2!z§.addEventListener(§<K§.§4?§,this.viewEventHandler);
         this.§2!z§.addEventListener(§<K§.RESTART_LEVEL,this.viewEventHandler);
         this.§2!z§.addEventListener(§<K§.RESUME_LEVEL,this.viewEventHandler);
         this.§2!z§.addEventListener(§<K§.§;#u§,this.viewEventHandler);
      }
      
      protected function §,"O§() : void
      {
         this.§ ""§.removeEventListener(§<K§.§!#]§,this.viewEventHandler);
         this.§ ""§.removeEventListener(§<K§.§4?§,this.viewEventHandler);
         this.§ ""§.removeEventListener(§<K§.RESTART_LEVEL,this.viewEventHandler);
         this.§ ""§.removeEventListener(§<K§.RESUME_LEVEL,this.viewEventHandler);
         this.§2!z§.removeEventListener(§<K§.§4?§,this.viewEventHandler);
         this.§2!z§.removeEventListener(§<K§.RESTART_LEVEL,this.viewEventHandler);
         this.§2!z§.removeEventListener(§<K§.RESUME_LEVEL,this.viewEventHandler);
         this.§2!z§.removeEventListener(§<K§.§;#u§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§7$7§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §7$7§() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         §#$+§.§#$-§();
      }
      
      protected function playLevelStartSound() : void
      {
         §#$+§.§=#P§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§=#o§();
         this.§`k§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§+!"§();
         AngryBirdsBase.singleton.§2a§ = false;
         super.deActivate();
      }
      
      protected function §`k§(param1:Boolean, param2:Boolean = true) : void
      {
         AngryBirdsBase.singleton.§2a§ = param1;
         if(param1)
         {
            this.§2!z§.disable(param2);
            this.§ ""§.enable(param2);
         }
         else
         {
            this.§2!z§.enable(param2);
            this.§ ""§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§2!z§ && this.§2!z§.§@!G§())
         {
            this.§2!z§.update(param1);
         }
         if(this.§ ""§ && this.§ ""§.§@!G§())
         {
            this.§ ""§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§<K§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §<K§.§!#]§:
               break;
            case §<K§.§;#u§:
               this.§`k§(true);
               break;
            case §<K§.RESUME_LEVEL:
               this.§`k§(false);
               break;
            case §<K§.RESTART_LEVEL:
               this.§^`§();
               break;
            case §<K§.§4?§:
               _loc2_ = param1.§5!<§;
               §7P§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§@'§.isEagleUsed())
         {
            return §`$ §.STATE_NAME;
         }
         return §3"%§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §6!'§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §@#j§.STATE_NAME;
      }
      
      protected function §^`§() : void
      {
         §7P§(this.getLevelLoadStateName());
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
               if(!§>"$§.isPaused)
               {
                  this.§^`§();
               }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§>"$§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §7P§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §7P§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§2!z§.§?§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
