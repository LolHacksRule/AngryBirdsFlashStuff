package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §%9§.§5$!§;
   import §1!T§.§&!?§;
   import §1!T§.§>""§;
   import §2G§.§3W§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   import §?",§.§8q§;
   import §?"@§.§^!S§;
   import §@!M§.§!"p§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §2#B§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §-2§:§>""§;
      
      protected var §?#?§:§&!?§;
      
      public function StatePlay(param1:§8=§, param2:§""C§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §@#?§() : §>""§
      {
         return this.§-2§;
      }
      
      override protected function init() : void
      {
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §@G§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§1#E§();
      }
      
      protected function §6!f§() : void
      {
         this.§&#M§();
         if(this.§-2§)
         {
            this.§-2§.dispose();
            this.§-2§ = null;
         }
         if(this.§?#?§)
         {
            this.§?#?§.dispose();
            this.§?#?§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§3W§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§[#K§ = §[#K§(§`!H§.getItemByName("Container_Pause"));
         this.§?#?§ = new §8q§(_loc2_,mLevelManager,_loc1_,§1a§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§3W§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§[#K§ = §[#K§(§`!H§.getItemByName("Container_Play"));
         this.§-2§ = new §5$!§(_loc2_,mLevelManager,§!!p§,_loc1_,§1a§);
      }
      
      protected function §1#E§() : void
      {
         this.§?#?§.addEventListener(§^!S§.§2#+§,this.viewEventHandler);
         this.§?#?§.addEventListener(§^!S§.§]y§,this.viewEventHandler);
         this.§?#?§.addEventListener(§^!S§.RESTART_LEVEL,this.viewEventHandler);
         this.§?#?§.addEventListener(§^!S§.RESUME_LEVEL,this.viewEventHandler);
         this.§-2§.addEventListener(§^!S§.§]y§,this.viewEventHandler);
         this.§-2§.addEventListener(§^!S§.RESTART_LEVEL,this.viewEventHandler);
         this.§-2§.addEventListener(§^!S§.RESUME_LEVEL,this.viewEventHandler);
         this.§-2§.addEventListener(§^!S§.§"x§,this.viewEventHandler);
      }
      
      protected function §&#M§() : void
      {
         this.§?#?§.removeEventListener(§^!S§.§2#+§,this.viewEventHandler);
         this.§?#?§.removeEventListener(§^!S§.§]y§,this.viewEventHandler);
         this.§?#?§.removeEventListener(§^!S§.RESTART_LEVEL,this.viewEventHandler);
         this.§?#?§.removeEventListener(§^!S§.RESUME_LEVEL,this.viewEventHandler);
         this.§-2§.removeEventListener(§^!S§.§]y§,this.viewEventHandler);
         this.§-2§.removeEventListener(§^!S§.RESTART_LEVEL,this.viewEventHandler);
         this.§-2§.removeEventListener(§^!S§.RESUME_LEVEL,this.viewEventHandler);
         this.§-2§.removeEventListener(§^!S§.§"x§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§-!A§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §-!A§() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         §!"p§.§>#p§();
      }
      
      protected function playLevelStartSound() : void
      {
         §!"p§.§%!R§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@G§();
         this.§-$5§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§6!f§();
         AngryBirdsBase.singleton.§<!_§ = false;
         super.deActivate();
      }
      
      protected function §-$5§(param1:Boolean, param2:Boolean = true) : void
      {
         AngryBirdsBase.singleton.§<!_§ = param1;
         if(param1)
         {
            this.§-2§.disable(param2);
            this.§?#?§.enable(param2);
         }
         else
         {
            this.§-2§.enable(param2);
            this.§?#?§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§-2§ && this.§-2§.§`#§())
         {
            this.§-2§.update(param1);
         }
         if(this.§?#?§ && this.§?#?§.§`#§())
         {
            this.§?#?§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§^!S§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §^!S§.§2#+§:
               break;
            case §^!S§.§"x§:
               this.§-$5§(true);
               break;
            case §^!S§.RESUME_LEVEL:
               this.§-$5§(false);
               break;
            case §^!S§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §^!S§.§]y§:
               _loc2_ = param1.§5"a§;
               §1"h§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§@#?§.isEagleUsed())
         {
            return §@,§.STATE_NAME;
         }
         return §["F§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §;$+§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §8"o§.STATE_NAME;
      }
      
      protected function restartLevel() : void
      {
         §1"h§(this.getLevelLoadStateName());
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
               if(!§3#U§.isPaused)
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
         if(§3#U§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §1"h§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §1"h§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§-2§.§+X§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
