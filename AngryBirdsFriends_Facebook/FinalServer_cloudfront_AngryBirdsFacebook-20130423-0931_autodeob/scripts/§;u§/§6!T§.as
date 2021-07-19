package §;u§
{
   import §+!c§.§&!0§;
   import §-p§.§4!`§;
   import §4!<§.§'!S§;
   import §8";§.§+d§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import flash.events.KeyboardEvent;
   
   public class §6!T§ extends §+d§
   {
       
      
      protected var §%"9§:§4!`§;
      
      protected var §<!v§:Boolean = false;
      
      protected var §0"E§:Boolean = false;
      
      private var §5"P§:Boolean = false;
      
      public function §6!T§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§%"9§.init();
         this.§5"P§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§50§ = false;
         §?l§.§'h§.§#"[§(true);
         §?l§.§'h§.§%l§(true);
         §?l§.resume();
         if(this.§%"9§ == null)
         {
            this.§%"9§ = this.getGameLogicController(§?l§.§'h§);
         }
         §?l§.setController(this.§%"9§);
         if(§?l§.§'h§.§&";§ == 0)
         {
            this.levelStarted();
         }
         §?l§.§'h§.background.§6"$§();
      }
      
      protected function getGameLogicController(param1:§'!S§) : §4!`§
      {
         return new §4!`§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§<!v§)
         {
            this.§<!v§ = false;
            mNextState = §4!Q§.STATE_NAME;
         }
         else
         {
            if(!§?l§.isPaused)
            {
               this.§%"9§.update(param1);
            }
            if(this.§%"9§.§&!k§() || this.§0"E§)
            {
               this.§0"E§ = false;
               if(this.§%"9§.§1A§ == §4!`§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§5"P§)
                  {
                     this.§5"P§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§50§ = true;
               }
               else if(this.§%"9§.§1A§ == §4!`§.LEVEL_STATE_FAIL)
               {
                  this.§4"+§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §4"+§() : void
      {
         mNextState = this.getLoserState();
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryState() : String
      {
         return null;
      }
      
      public function getLoserState() : String
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
         if(§?l§.§#V§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §?l§.§'h§.§4I§();
                  break;
               case 66:
                  §?l§.§'h§.§>9§();
            }
         }
         §?l§.§5-§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §?l§.§5-§.keyUp(param1);
      }
      
      public function §&"<§() : void
      {
         var _loc1_:Number = §?l§.§'h§.camera.§=!r§ - §?l§.§'h§.camera.§"!?§;
         var _loc2_:Number = (§?l§.§'h§.camera.§["C§ - §?l§.§'h§.camera.§"!?§) / 2;
         if(_loc1_ > _loc2_)
         {
            §&!0§.§6B§("Cursor_Zoom_Out");
         }
         else
         {
            §&!0§.§6B§("Cursor_Zoom_In");
         }
      }
   }
}
