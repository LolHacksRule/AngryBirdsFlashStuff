package §3=§
{
   import § #@§.§#"$§;
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §,"8§.§6!v§;
   import §1!2§.§=C§;
   import §3"G§.§16§;
   import §5!$§.§<c§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §]"'§.§""K§;
   import §`"S§.§+l§;
   import §`"S§.§31§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §6y§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §3"@§:§+l§;
      
      protected var §;#K§:§31§;
      
      public function StatePlay(param1:§'![§, param2:§16§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §"#Z§() : §+l§
      {
         return this.§3"@§;
      }
      
      override protected function init() : void
      {
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §0"!§() : void
      {
         this.addPauseView();
         this.addPlayView();
         this.§%;§();
      }
      
      protected function §["v§() : void
      {
         this.§-J§();
         if(this.§3"@§)
         {
            this.§3"@§.dispose();
            this.§3"@§ = null;
         }
         if(this.§;#K§)
         {
            this.§;#K§.dispose();
            this.§;#K§ = null;
         }
      }
      
      protected function addPauseView() : void
      {
         var _loc1_:§""K§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§<c§ = §<c§(§<"`§.getItemByName("Container_Pause"));
         this.§;#K§ = new §=C§(_loc2_,mLevelManager,_loc1_,§1#@§);
      }
      
      protected function addPlayView() : void
      {
         var _loc1_:§""K§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§<c§ = §<c§(§<"`§.getItemByName("Container_Play"));
         this.§3"@§ = new §#"$§(_loc2_,mLevelManager,§'"A§,_loc1_,§1#@§);
      }
      
      protected function §%;§() : void
      {
         this.§;#K§.addEventListener(§6!v§.§7G§,this.viewEventHandler);
         this.§;#K§.addEventListener(§6!v§.§5"R§,this.viewEventHandler);
         this.§;#K§.addEventListener(§6!v§.RESTART_LEVEL,this.viewEventHandler);
         this.§;#K§.addEventListener(§6!v§.RESUME_LEVEL,this.viewEventHandler);
         this.§3"@§.addEventListener(§6!v§.§5"R§,this.viewEventHandler);
         this.§3"@§.addEventListener(§6!v§.RESTART_LEVEL,this.viewEventHandler);
         this.§3"@§.addEventListener(§6!v§.RESUME_LEVEL,this.viewEventHandler);
         this.§3"@§.addEventListener(§6!v§.§#j§,this.viewEventHandler);
      }
      
      protected function §-J§() : void
      {
         this.§;#K§.removeEventListener(§6!v§.§7G§,this.viewEventHandler);
         this.§;#K§.removeEventListener(§6!v§.§5"R§,this.viewEventHandler);
         this.§;#K§.removeEventListener(§6!v§.RESTART_LEVEL,this.viewEventHandler);
         this.§;#K§.removeEventListener(§6!v§.RESUME_LEVEL,this.viewEventHandler);
         this.§3"@§.removeEventListener(§6!v§.§5"R§,this.viewEventHandler);
         this.§3"@§.removeEventListener(§6!v§.RESTART_LEVEL,this.viewEventHandler);
         this.§3"@§.removeEventListener(§6!v§.RESUME_LEVEL,this.viewEventHandler);
         this.§3"@§.removeEventListener(§6!v§.§#j§,this.viewEventHandler);
      }
      
      override protected function levelStarted() : void
      {
         this.§<!B§();
         super.levelStarted();
         this.playLevelStartSound();
      }
      
      protected function §<!B§() : void
      {
         AngryBirdsBase.singleton.stopThemeMusic();
         §[#%§.§^L§();
      }
      
      protected function playLevelStartSound() : void
      {
         §[#%§.§!"0§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0"!§();
         this.§"!e§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§["v§();
         AngryBirdsBase.singleton.§<#[§ = false;
         super.deActivate();
      }
      
      protected function §"!e§(param1:Boolean, param2:Boolean = true) : void
      {
         AngryBirdsBase.singleton.§<#[§ = param1;
         if(param1)
         {
            this.§3"@§.disable(param2);
            this.§;#K§.enable(param2);
         }
         else
         {
            this.§3"@§.enable(param2);
            this.§;#K§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§3"@§ && this.§3"@§.§<<§())
         {
            this.§3"@§.update(param1);
         }
         if(this.§;#K§ && this.§;#K§.§<<§())
         {
            this.§;#K§.update(param1);
         }
      }
      
      protected function viewEventHandler(param1:§6!v§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §6!v§.§7G§:
               break;
            case §6!v§.§#j§:
               this.§"!e§(true);
               break;
            case §6!v§.RESUME_LEVEL:
               this.§"!e§(false);
               break;
            case §6!v§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §6!v§.§5"R§:
               _loc2_ = param1.§?h§;
               §%D§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§"#Z§.isEagleUsed())
         {
            return §?"5§.STATE_NAME;
         }
         return §>#r§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §0K§.STATE_NAME;
      }
      
      protected function getLevelLoadStateName() : String
      {
         return §#$@§.STATE_NAME;
      }
      
      protected function restartLevel() : void
      {
         §%D§(this.getLevelLoadStateName());
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
               if(!§%"T§.isPaused)
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
         if(§%"T§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §%D§(this.getLevelLoadStateName());
                  break;
               case Keyboard.NUMBER_6:
                  §%D§(this.getLevelLoadStateName());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function showTutorials() : void
      {
         this.§3"@§.§-$#§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
