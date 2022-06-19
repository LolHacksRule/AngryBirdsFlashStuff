package §[!K§
{
   import §!!t§.§,-§;
   import §+I§.§9!%§;
   import §-I§.§package§;
   import §0!?§.§<K§;
   import §3,§.§[!;§;
   import §[!z§.LevelManager;
   import flash.events.KeyboardEvent;
   
   public class §%E§ extends §,-§
   {
       
      
      protected var §2!J§:§package§;
      
      protected var §5!@§:Boolean = false;
      
      protected var §-C§:Boolean = false;
      
      private var §17§:Boolean = false;
      
      public function §%E§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§2!J§.init();
         this.§17§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§5!5§ = false;
         §9!%§.§!!M§.§5"!§(true);
         §9!%§.§!!M§.§ if§(true);
         §9!%§.resume();
         if(this.§2!J§ == null)
         {
            this.§2!J§ = this.getGameLogicController(§9!%§.§!!M§);
         }
         if(§9!%§.§!!M§.§-!3§ == 0)
         {
            this.levelStarted();
         }
         §9!%§.setController(this.§2!J§);
         §9!%§.§!!M§.background.§&"B§();
      }
      
      protected function getGameLogicController(param1:§[!;§) : §package§
      {
         return new §package§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§5!@§)
         {
            this.§5!@§ = false;
            mNextState = §-!M§.STATE_NAME;
         }
         else
         {
            if(!§9!%§.isPaused)
            {
               this.§2!J§.update(param1);
            }
            if(this.§2!J§.§%!A§() || this.§-C§)
            {
               this.§-C§ = false;
               if(this.§2!J§.§9"§ == §package§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§17§)
                  {
                     this.§17§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§5!5§ = true;
               }
               else if(this.§2!J§.§9"§ == §package§.§="1§)
               {
                  this.§?"0§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §?"0§() : void
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
         if(§9!%§.§+1§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §9!%§.§!!M§.§=c§();
                  break;
               case 66:
                  §9!%§.§!!M§.§7Q§();
            }
         }
         §9!%§.§&N§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §9!%§.§&N§.keyUp(param1);
      }
      
      public function §[x§() : void
      {
         var _loc1_:Number = §9!%§.§!!M§.camera.§<f§ - §9!%§.§!!M§.camera.§-^§;
         var _loc2_:Number = (§9!%§.§!!M§.camera.§0>§ - §9!%§.§!!M§.camera.§-^§) / 2;
         if(_loc1_ > _loc2_)
         {
            §<K§.§5!7§("Cursor_Zoom_Out");
         }
         else
         {
            §<K§.§5!7§("Cursor_Zoom_In");
         }
      }
   }
}
