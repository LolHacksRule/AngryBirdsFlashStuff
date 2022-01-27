package §<"c§
{
   import § "p§.§2!Y§;
   import §+D§.§ #^§;
   import §,"N§.§@>§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §8!E§.§true §;
   import §;!W§.§7"]§;
   import §;!W§.§8§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §-f§
   {
      
      public static const §^!7§:String = "StatePlay";
       
      
      protected var §?#M§:§7"]§;
      
      protected var §2!j§:§8#0§;
      
      public function StatePlay(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §?D§() : §7"]§
      {
         return this.§?#M§;
      }
      
      override protected function init() : void
      {
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §-#3§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§+#-§();
      }
      
      protected function §8#?§() : void
      {
         this.§+O§();
         if(this.§?#M§)
         {
            this.§?#M§.dispose();
            this.§?#M§ = null;
         }
         if(this.§2!j§)
         {
            this.§2!j§.dispose();
            this.§2!j§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Pause"));
         this.§2!j§ = new §2!Y§(_loc2_,§+!b§,_loc1_,§^"N§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§@>§ = §4#;§.singleton.dataModel;
         var _loc2_:§ #^§ = § #^§(§@;§.getItemByName("Container_Play"));
         this.§?#M§ = new §true §(_loc2_,§+!b§,§ F§,_loc1_,§^"N§);
      }
      
      protected function §+#-§() : void
      {
         this.§2!j§.addEventListener(§"!4§.§ z§,this.viewEventHandler);
         this.§2!j§.addEventListener(§"!4§.§@L§,this.viewEventHandler);
         this.§2!j§.addEventListener(§"!4§.RESTART_LEVEL,this.viewEventHandler);
         this.§2!j§.addEventListener(§"!4§.RESUME_LEVEL,this.viewEventHandler);
         this.§?#M§.addEventListener(§"!4§.§@L§,this.viewEventHandler);
         this.§?#M§.addEventListener(§"!4§.RESTART_LEVEL,this.viewEventHandler);
         this.§?#M§.addEventListener(§"!4§.RESUME_LEVEL,this.viewEventHandler);
         this.§?#M§.addEventListener(§"!4§.§!#B§,this.viewEventHandler);
      }
      
      protected function §+O§() : void
      {
         this.§2!j§.removeEventListener(§"!4§.§ z§,this.viewEventHandler);
         this.§2!j§.removeEventListener(§"!4§.§@L§,this.viewEventHandler);
         this.§2!j§.removeEventListener(§"!4§.RESTART_LEVEL,this.viewEventHandler);
         this.§2!j§.removeEventListener(§"!4§.RESUME_LEVEL,this.viewEventHandler);
         this.§?#M§.removeEventListener(§"!4§.§@L§,this.viewEventHandler);
         this.§?#M§.removeEventListener(§"!4§.RESTART_LEVEL,this.viewEventHandler);
         this.§?#M§.removeEventListener(§"!4§.RESUME_LEVEL,this.viewEventHandler);
         this.§?#M§.removeEventListener(§"!4§.§!#B§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§"!i§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §"!i§() : void
      {
         §4#;§.singleton.stopThemeMusic();
         §?!r§.§0"#§();
      }
      
      protected function playLevelStartSound() : void
      {
         §?!r§.§]!H§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§-#3§();
         this.§'#`§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§8#?§();
         §4#;§.singleton.§-2§ = false;
         super.deActivate();
      }
      
      protected function §'#`§(param1:Boolean, param2:Boolean = true) : void
      {
         §4#;§.singleton.§-2§ = param1;
         if(param1)
         {
            this.§?#M§.disable(param2);
            this.§2!j§.enable(param2);
         }
         else
         {
            this.§?#M§.enable(param2);
            this.§2!j§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§?#M§ && this.§?#M§.isEnabled())
         {
            this.§?#M§.update(param1);
         }
         if(this.§2!j§ && this.§2!j§.isEnabled())
         {
            this.§2!j§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§"!4§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §"!4§.§ z§:
               break;
            case §"!4§.§!#B§:
               this.§'#`§(true);
               break;
            case §"!4§.RESUME_LEVEL:
               this.§'#`§(false);
               break;
            case §"!4§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §"!4§.§@L§:
               _loc2_ = param1.§^"y§;
               § g§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§?D§.isEagleUsed())
         {
            return §1!#§.§^!7§;
         }
         return §5"p§.§^!7§;
      }
      
      override public function getLoserStateName() : String
      {
         return §^#M§.§^!7§;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function restartLevel() : void
      {
         § g§(this.getLevelLoadStateName());
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
               if(!§,!q§.isPaused)
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
         if(§,!q§.§<N§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  § g§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  § g§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§?#M§.§`Z§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
