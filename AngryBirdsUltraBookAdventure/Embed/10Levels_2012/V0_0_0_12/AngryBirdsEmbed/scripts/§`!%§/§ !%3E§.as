package §`!%§
{
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §'X§.§9[§;
   import §0!<§.§%r§;
   import §>!C§.§6M§;
   import §?!D§.§if§;
   import flash.events.KeyboardEvent;
   
   public class § !>§ extends §9[§
   {
       
      
      protected var §3K§:§if§;
      
      protected var §%!=§:Boolean = false;
      
      protected var §'"§:Boolean = false;
      
      private var §"P§:Boolean = false;
      
      public function § !>§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§3K§.init();
         this.§"P§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §6M§.§6!E§ = false;
         §,!!§.§;4§.§69§(true);
         §,!!§.§;4§.§#O§(true);
         §,!!§.resume();
         if(this.§3K§ == null)
         {
            this.§3K§ = this.getGameLogicController(§,!!§.§;4§);
         }
         if(§,!!§.§;4§.§3!F§ == 0)
         {
            this.levelStarted();
         }
         §,!!§.§ ]§(this.§3K§);
         §,!!§.§;4§.background.§break§();
      }
      
      protected function getGameLogicController(param1:§#;§) : §if§
      {
         return new §if§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§%!=§)
         {
            this.§%!=§ = false;
            mNextState = §77§.§0!7§;
         }
         else
         {
            if(!§,!!§.isPaused)
            {
               this.§3K§.update(param1);
            }
            if(this.§3K§.§4x§() || this.§'"§)
            {
               this.§'"§ = false;
               if(this.§3K§.§^I§ == §if§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§"P§)
                  {
                     this.§"P§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §6M§.§6!E§ = true;
               }
               else if(this.§3K§.§^I§ == §if§.§ get§)
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
      
      public function §4!G§() : void
      {
         var _loc1_:Number = §,!!§.§;4§.camera.§=G§ - §,!!§.§;4§.camera.§4#§;
         var _loc2_:Number = (§,!!§.§;4§.camera.§3Z§ - §,!!§.§;4§.camera.§4#§) / 2;
         if(_loc1_ > _loc2_)
         {
            §%r§.§2!2§("Cursor_Zoom_Out");
         }
         else
         {
            §%r§.§2!2§("Cursor_Zoom_In");
         }
      }
   }
}
