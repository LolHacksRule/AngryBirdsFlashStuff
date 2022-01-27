package §%"Q§
{
   import §&!j§.§5#+§;
   import §18§.§-!>§;
   import §1v§.§!!b§;
   import §1v§.§-!6§;
   import §3W§.§2!p§;
   import §4"k§.§&s§;
   import §9"U§.§'!;§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import §null §.§5#§;
   
   public class StatePlay extends §+"J§
   {
      
      public static const §-!U§:String = "StatePlay";
       
      
      protected var §-S§:§!!b§;
      
      protected var §,8§:§-!6§;
      
      public function StatePlay(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §>T§() : §!!b§
      {
         return this.§-S§;
      }
      
      override protected function init() : void
      {
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §5"z§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§>"J§();
      }
      
      protected function §,"o§() : void
      {
         this.§&"h§();
         if(this.§-S§)
         {
            this.§-S§.dispose();
            this.§-S§ = null;
         }
         if(this.§,8§)
         {
            this.§,8§.dispose();
            this.§,8§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§'!;§ = §4"#§.singleton.dataModel;
         var _loc2_:§@!8§ = §@!8§(§^!b§.getItemByName("Container_Pause"));
         this.§,8§ = new §2!p§(_loc2_,§'""§,_loc1_,§-1§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§'!;§ = §4"#§.singleton.dataModel;
         var _loc2_:§@!8§ = §@!8§(§^!b§.getItemByName("Container_Play"));
         this.§-S§ = new §&s§(_loc2_,§'""§,§3!d§,_loc1_,§-1§);
      }
      
      protected function §>"J§() : void
      {
         this.§,8§.addEventListener(§-!>§.§ "D§,this.viewEventHandler);
         this.§,8§.addEventListener(§-!>§.§5!w§,this.viewEventHandler);
         this.§,8§.addEventListener(§-!>§.RESTART_LEVEL,this.viewEventHandler);
         this.§,8§.addEventListener(§-!>§.RESUME_LEVEL,this.viewEventHandler);
         this.§-S§.addEventListener(§-!>§.§5!w§,this.viewEventHandler);
         this.§-S§.addEventListener(§-!>§.RESTART_LEVEL,this.viewEventHandler);
         this.§-S§.addEventListener(§-!>§.RESUME_LEVEL,this.viewEventHandler);
         this.§-S§.addEventListener(§-!>§.§@! §,this.viewEventHandler);
      }
      
      protected function §&"h§() : void
      {
         this.§,8§.removeEventListener(§-!>§.§ "D§,this.viewEventHandler);
         this.§,8§.removeEventListener(§-!>§.§5!w§,this.viewEventHandler);
         this.§,8§.removeEventListener(§-!>§.RESTART_LEVEL,this.viewEventHandler);
         this.§,8§.removeEventListener(§-!>§.RESUME_LEVEL,this.viewEventHandler);
         this.§-S§.removeEventListener(§-!>§.§5!w§,this.viewEventHandler);
         this.§-S§.removeEventListener(§-!>§.RESTART_LEVEL,this.viewEventHandler);
         this.§-S§.removeEventListener(§-!>§.RESUME_LEVEL,this.viewEventHandler);
         this.§-S§.removeEventListener(§-!>§.§@! §,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§ !'§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function § !'§() : void
      {
         §=Q§.§!#,§();
      }
      
      protected function playLevelStartSound() : void
      {
         §=Q§.§5"w§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§5"z§();
         this.§ 4§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§,"o§();
         §4"#§.singleton.§ "#§ = false;
         super.deActivate();
      }
      
      protected function § 4§(param1:Boolean, param2:Boolean = true) : void
      {
         §4"#§.singleton.§ "#§ = param1;
         if(param1)
         {
            this.§-S§.disable(param2);
            this.§,8§.enable(param2);
         }
         else
         {
            this.§-S§.enable(param2);
            this.§,8§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§-S§ && this.§-S§.isEnabled())
         {
            this.§-S§.update(param1);
         }
         if(this.§,8§ && this.§,8§.isEnabled())
         {
            this.§,8§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§-!>§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §-!>§.§ "D§:
               break;
            case §-!>§.§@! §:
               this.§ 4§(true);
               break;
            case §-!>§.RESUME_LEVEL:
               this.§ 4§(false);
               break;
            case §-!>§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §-!>§.§5!w§:
               _loc2_ = param1.§[Q§;
               §`0§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§>T§.isEagleUsed())
         {
            return §`=§.§-!U§;
         }
         return §^!e§.§-!U§;
      }
      
      override public function getLoserStateName() : String
      {
         return §,!§.§-!U§;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §7"9§.§-!U§;
      }
      
      protected function restartLevel() : void
      {
         §`0§(this.getLevelLoadStateName());
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
               if(!§<!J§.isPaused)
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
         if(§<!J§.§<C§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §`0§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §`0§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§-S§.§]!O§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
