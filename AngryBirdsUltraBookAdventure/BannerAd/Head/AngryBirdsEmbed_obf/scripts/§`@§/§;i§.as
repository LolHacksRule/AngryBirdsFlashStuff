package §`@§
{
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §0!§.§0!5§;
   import §2§.§=h§;
   import §>!C§.§6M§;
   import §@P§.§'!7§;
   import flash.events.KeyboardEvent;
   
   public class §;i§ extends §0!5§
   {
       
      
      protected var § !>§:§'!7§;
      
      protected var §3K§:Boolean = false;
      
      protected var §%!=§:Boolean = false;
      
      private var §'"§:Boolean = false;
      
      public function §;i§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§ !>§.init();
         this.§'"§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §6M§.§6!E§ = false;
         §,!!§.§;4§.§69§(true);
         §,!!§.§;4§.§#O§(true);
         §,!!§.resume();
         if(this.§ !>§ == null)
         {
            this.§ !>§ = this.getGameLogicController(§,!!§.§;4§);
         }
         if(§,!!§.§;4§.§3!F§ == 0)
         {
            this.levelStarted();
         }
         §,!!§.§ ]§(this.§ !>§);
         §,!!§.§;4§.background.§break§();
      }
      
      protected function getGameLogicController(param1:§#;§) : §'!7§
      {
         return new §'!7§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§3K§)
         {
            this.§3K§ = false;
            mNextState = §77§.§0!7§;
         }
         else
         {
            if(!§,!!§.isPaused)
            {
               this.§ !>§.update(param1);
            }
            if(this.§ !>§.§2c§() || this.§%!=§)
            {
               this.§%!=§ = false;
               if(this.§ !>§.§if§ == §'!7§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§'"§)
                  {
                     this.§'"§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §6M§.§6!E§ = true;
               }
               else if(this.§ !>§.§if§ == §'!7§.§'5§)
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
         if(§,!!§.§[!2§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §,!!§.§;4§.§ L§();
                  break;
               case 66:
                  §,!!§.§;4§.§`C§();
            }
         }
         §,!!§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §,!!§.controller.keyUp(param1);
      }
      
      public function §"P§() : void
      {
         var _loc1_:Number = §,!!§.§;4§.camera.§6!9§ - §,!!§.§;4§.camera.§3Z§;
         var _loc2_:Number = (§,!!§.§;4§.camera.§>!<§ - §,!!§.§;4§.camera.§3Z§) / 2;
         if(_loc1_ > _loc2_)
         {
            §=h§.§1T§("Cursor_Zoom_Out");
         }
         else
         {
            §=h§.§1T§("Cursor_Zoom_In");
         }
      }
   }
}
