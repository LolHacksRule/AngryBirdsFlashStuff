package §88§
{
   import § `§.§"N§;
   import § if§.§2q§;
   import §#]§.§'5§;
   import §;'§.§?!D§;
   import §<!M§.§[i§;
   import §?!8§.§7X§;
   import flash.events.KeyboardEvent;
   
   public class §3n§ extends §2q§
   {
       
      
      protected var §>G§:§"N§;
      
      protected var §-+§:Boolean = false;
      
      protected var §?!;§:Boolean = false;
      
      private var §-o§:Boolean = false;
      
      public function §3n§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§>G§.init();
         this.§-o§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[i§.§"E§ = false;
         §'5§.§^;§.§]g§(true);
         §'5§.§^;§.§1z§(true);
         §'5§.resume();
         if(this.§>G§ == null)
         {
            this.§>G§ = this.getGameLogicController(§'5§.§^;§);
         }
         §'5§.§0o§(this.§>G§);
         if(§'5§.§^;§.§5R§ == 0)
         {
            this.levelStarted();
         }
         §'5§.§^;§.background.§@4§();
      }
      
      protected function getGameLogicController(param1:§?!D§) : §"N§
      {
         return new §"N§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§-+§)
         {
            this.§-+§ = false;
            mNextState = §7!A§.§&! §;
         }
         else
         {
            if(!§'5§.isPaused)
            {
               this.§>G§.update(param1);
            }
            if(this.§>G§.§4X§() || this.§?!;§)
            {
               this.§?!;§ = false;
               if(this.§>G§.§0W§ == §"N§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§-o§)
                  {
                     this.§-o§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §[i§.§"E§ = true;
               }
               else if(this.§>G§.§0W§ == §"N§.§3!7§)
               {
                  this.§2H§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §2H§() : void
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
         if(§'5§.§7!!§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §'5§.§^;§.§ 8§();
                  break;
               case 66:
                  §'5§.§^;§.§4!B§();
            }
         }
         §'5§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §'5§.controller.keyUp(param1);
      }
      
      public function §!3§() : void
      {
         var _loc1_:Number = §'5§.§^;§.camera.§]!G§ - §'5§.§^;§.camera.§'v§;
         var _loc2_:Number = (§'5§.§^;§.camera.§[!M§ - §'5§.§^;§.camera.§'v§) / 2;
         if(_loc1_ > _loc2_)
         {
            §7X§.§!!E§("Cursor_Zoom_Out");
         }
         else
         {
            §7X§.§!!E§("Cursor_Zoom_In");
         }
      }
   }
}
