package §;H§
{
   import §"x§.§?8§;
   import §+0§.§,!E§;
   import §-%§.§+V§;
   import §2_§.§'u§;
   import §3!G§.LevelManager;
   import §>! §.§^!c§;
   import flash.events.KeyboardEvent;
   
   public class §2!R§ extends §,!E§
   {
       
      
      protected var §[!D§:§+V§;
      
      protected var §3!e§:Boolean = false;
      
      protected var §"Z§:Boolean = false;
      
      private var §4d§:Boolean = false;
      
      public function §2!R§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§[!D§.init();
         this.§4d§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§4$§ = false;
         §^!c§.§5!Y§.§@!v§(true);
         §^!c§.§5!Y§.§"!B§(true);
         §^!c§.resume();
         if(this.§[!D§ == null)
         {
            this.§[!D§ = this.getGameLogicController(§^!c§.§5!Y§);
         }
         if(§^!c§.§5!Y§.§[!t§ == 0)
         {
            this.levelStarted();
         }
         §^!c§.setController(this.§[!D§);
         §^!c§.§5!Y§.background.§0!j§();
      }
      
      protected function getGameLogicController(param1:§'u§) : §+V§
      {
         return new §+V§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§3!e§)
         {
            this.§3!e§ = false;
            mNextState = §-!X§.§"!s§;
         }
         else
         {
            if(!§^!c§.isPaused)
            {
               this.§[!D§.update(param1);
            }
            if(this.§[!D§.§?J§() || this.§"Z§)
            {
               this.§"Z§ = false;
               if(this.§[!D§.§][§ == §+V§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§4d§)
                  {
                     this.§4d§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§4$§ = true;
               }
               else if(this.§[!D§.§][§ == §+V§.§!`§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return _loc2_;
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
         if(§^!c§.§@a§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §^!c§.§5!Y§.§4!l§();
                  break;
               case 66:
                  §^!c§.§5!Y§.§;T§();
            }
         }
         §^!c§.§-U§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §^!c§.§-U§.keyUp(param1);
      }
      
      public function §^1§() : void
      {
         var _loc1_:Number = §^!c§.§5!Y§.camera.§05§ - §^!c§.§5!Y§.camera.§0!P§;
         var _loc2_:Number = (§^!c§.§5!Y§.camera.§8!Y§ - §^!c§.§5!Y§.camera.§0!P§) / 2;
         if(_loc1_ > _loc2_)
         {
            §?8§.§8,§("Cursor_Zoom_Out");
         }
         else
         {
            §?8§.§8,§("Cursor_Zoom_In");
         }
      }
   }
}
