package §,!=§
{
   import §!x§.§4"I§;
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §'z§.§7!J§;
   import §52§.§#!,§;
   import §?§.§>"$§;
   import flash.events.KeyboardEvent;
   
   public class §]#v§ extends §7"S§
   {
       
      
      protected var §1#p§:§7!J§;
      
      private var §[#O§:Boolean = false;
      
      public function §]#v§(param1:§#!?§, param2:§]#[§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§1#p§.init();
         this.§[#O§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §>"$§.§3#'§.§5'§(true);
         §>"$§.§3#'§.§;W§(true);
         this.resumeEngine();
         if(this.§1#p§ == null)
         {
            this.§1#p§ = this.getGameLogicController(§>"$§.§3#'§);
         }
         §>"$§.setController(this.§1#p§);
         if(§>"$§.§3#'§.§?#W§ == 0)
         {
            this.levelStarted();
         }
         §>"$§.§3#'§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §>"$§.resume();
      }
      
      protected function getGameLogicController(param1:§#!,§) : §7!J§
      {
         return new §7!J§(param1,mLevelManager);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§>"$§.isPaused)
         {
            this.§1#p§.update(param1);
         }
         if(this.§1#p§.§=!@§())
         {
            if(this.§1#p§.§1#!§ == §7!J§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§[#O§)
               {
                  this.§[#O§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §7P§(this.getVictoryStateName());
               }
            }
            else if(this.§1#p§.§1#!§ == §7!J§.§%"!§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §7P§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function isAllowedToChangeFailState() : Boolean
      {
         return true;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryStateName() : String
      {
         return null;
      }
      
      public function getLoserStateName() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§>"$§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §>"$§.§3#'§.§%"s§();
                  break;
               case 66:
                  §>"$§.§3#'§.§%l§();
            }
         }
         §>"$§.§#0§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §>"$§.§#0§.keyUp(param1);
      }
      
      public function §6!o§() : void
      {
         var _loc1_:Number = §>"$§.§3#'§.camera.§5,§ - §>"$§.§3#'§.camera.§8#V§;
         var _loc2_:Number = (§>"$§.§3#'§.camera.§0=§ - §>"$§.§3#'§.camera.§8#V§) / 2;
         if(_loc1_ > _loc2_)
         {
            §4"I§.§;!f§("Cursor_Zoom_Out");
         }
         else
         {
            §4"I§.§;!f§("Cursor_Zoom_In");
         }
      }
   }
}
