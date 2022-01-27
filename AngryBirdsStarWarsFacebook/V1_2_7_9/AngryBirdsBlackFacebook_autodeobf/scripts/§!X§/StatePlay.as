package §!X§
{
   import §""d§.§,m§;
   import §%S§.§`!R§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §1!X§.§!"#§;
   import §1!X§.§76§;
   import §<I§.§'#!§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import §`"8§.§4"K§;
   import §`"]§.§7f§;
   import com.angrybirds.§;!e§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §8a§
   {
      
      public static const §'#2§:String = "StatePlay";
       
      
      protected var §]"+§:§!"#§;
      
      protected var §<"6§:§76§;
      
      public function StatePlay(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §3"`§() : §!"#§
      {
         return this.§]"+§;
      }
      
      override protected function init() : void
      {
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §4!m§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§"w§();
      }
      
      protected function §!%§() : void
      {
         this.§7"#§();
         if(this.§]"+§)
         {
            this.§]"+§.dispose();
            this.§]"+§ = null;
         }
         if(this.§<"6§)
         {
            this.§<"6§.dispose();
            this.§<"6§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§4"K§ = §;"@§.singleton.dataModel;
         var _loc2_:§,m§ = §,m§(§>I§.getItemByName("Container_Pause"));
         this.§<"6§ = new §`!R§(_loc2_,§ !p§,_loc1_,§8-§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§4"K§ = §;"@§.singleton.dataModel;
         var _loc2_:§,m§ = §,m§(§>I§.getItemByName("Container_Play"));
         this.§]"+§ = new §7f§(_loc2_,§ !p§,§^!!§,_loc1_,§8-§);
      }
      
      protected function §"w§() : void
      {
         this.§<"6§.addEventListener(§'#!§.§<"T§,this.viewEventHandler);
         this.§<"6§.addEventListener(§'#!§.§8!F§,this.viewEventHandler);
         this.§<"6§.addEventListener(§'#!§.RESTART_LEVEL,this.viewEventHandler);
         this.§<"6§.addEventListener(§'#!§.RESUME_LEVEL,this.viewEventHandler);
         this.§]"+§.addEventListener(§'#!§.§8!F§,this.viewEventHandler);
         this.§]"+§.addEventListener(§'#!§.RESTART_LEVEL,this.viewEventHandler);
         this.§]"+§.addEventListener(§'#!§.RESUME_LEVEL,this.viewEventHandler);
         this.§]"+§.addEventListener(§'#!§.§]"U§,this.viewEventHandler);
      }
      
      protected function §7"#§() : void
      {
         this.§<"6§.removeEventListener(§'#!§.§<"T§,this.viewEventHandler);
         this.§<"6§.removeEventListener(§'#!§.§8!F§,this.viewEventHandler);
         this.§<"6§.removeEventListener(§'#!§.RESTART_LEVEL,this.viewEventHandler);
         this.§<"6§.removeEventListener(§'#!§.RESUME_LEVEL,this.viewEventHandler);
         this.§]"+§.removeEventListener(§'#!§.§8!F§,this.viewEventHandler);
         this.§]"+§.removeEventListener(§'#!§.RESTART_LEVEL,this.viewEventHandler);
         this.§]"+§.removeEventListener(§'#!§.RESUME_LEVEL,this.viewEventHandler);
         this.§]"+§.removeEventListener(§'#!§.§]"U§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§+<§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §+<§() : void
      {
         §@§.§+A§();
      }
      
      protected function playLevelStartSound() : void
      {
         §@§.§9!5§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4!m§();
         this.§#"G§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§!%§();
         §;"@§.singleton.§1"2§ = false;
         super.deActivate();
      }
      
      protected function §#"G§(param1:Boolean, param2:Boolean = true) : void
      {
         §;"@§.singleton.§1"2§ = param1;
         if(param1)
         {
            this.§]"+§.disable(param2);
            this.§<"6§.enable(param2);
         }
         else
         {
            this.§]"+§.enable(param2);
            this.§<"6§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§]"+§ && this.§]"+§.isEnabled())
         {
            this.§]"+§.update(param1);
         }
         if(this.§<"6§ && this.§<"6§.isEnabled())
         {
            this.§<"6§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§'#!§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §'#!§.§<"T§:
               break;
            case §'#!§.§]"U§:
               this.§#"G§(true);
               break;
            case §'#!§.RESUME_LEVEL:
               this.§#"G§(false);
               break;
            case §'#!§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §'#!§.§8!F§:
               _loc2_ = param1.§^#1§;
               §0"B§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§3"`§.isEagleUsed())
         {
            return §^!6§.§'#2§;
         }
         return §%" §.§'#2§;
      }
      
      override public function getLoserStateName() : String
      {
         return §9c§.§'#2§;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §>!I§.§'#2§;
      }
      
      protected function restartLevel() : void
      {
         §0"B§(this.getLevelLoadStateName());
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
               if(!§;!e§.isPaused)
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
         if(§;!e§.§[!S§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §0"B§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §0"B§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§]"+§.§@"A§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
