package §"!@§
{
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §=#G§.§6"v§;
   import §@0§.§%!q§;
   import §]!6§.§7Z§;
   import flash.events.KeyboardEvent;
   
   public class §2#B§ extends §@"S§
   {
       
      
      protected var §!!p§:§6"v§;
      
      private var §##d§:Boolean = false;
      
      public function §2#B§(param1:§8=§, param2:§""C§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§!!p§.init();
         this.§##d§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3#U§.§#$4§.§;"?§(true);
         §3#U§.§#$4§.§0"2§(true);
         this.resumeEngine();
         if(this.§!!p§ == null)
         {
            this.§!!p§ = this.getGameLogicController(§3#U§.§#$4§);
         }
         §3#U§.setController(this.§!!p§);
         if(§3#U§.§#$4§.§&!§ == 0)
         {
            this.levelStarted();
         }
         §3#U§.§#$4§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §3#U§.resume();
      }
      
      protected function getGameLogicController(param1:§%!q§) : §6"v§
      {
         return new §6"v§(param1,mLevelManager);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§3#U§.isPaused)
         {
            this.§!!p§.update(param1);
         }
         if(this.§!!p§.§9#-§())
         {
            if(this.§!!p§.§=!X§ == §6"v§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§##d§)
               {
                  this.§##d§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §1"h§(this.getVictoryStateName());
               }
            }
            else if(this.§!!p§.§=!X§ == §6"v§.§%#?§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §1"h§(this.getLoserStateName());
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
         if(§3#U§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §3#U§.§#$4§.§;!2§();
                  break;
               case 66:
                  §3#U§.§#$4§.§ "A§();
            }
         }
         §3#U§.§8I§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §3#U§.§8I§.keyUp(param1);
      }
      
      public function §]#L§() : void
      {
         var _loc1_:Number = §3#U§.§#$4§.camera.§#r§ - §3#U§.§#$4§.camera.§?!t§;
         var _loc2_:Number = (§3#U§.§#$4§.camera.§=n§ - §3#U§.§#$4§.camera.§?!t§) / 2;
         if(_loc1_ > _loc2_)
         {
            §7Z§.§42§("Cursor_Zoom_Out");
         }
         else
         {
            §7Z§.§42§("Cursor_Zoom_In");
         }
      }
   }
}
