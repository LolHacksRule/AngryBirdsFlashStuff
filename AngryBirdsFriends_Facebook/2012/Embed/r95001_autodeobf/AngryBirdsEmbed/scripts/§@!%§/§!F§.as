package §@!%§
{
   import § "§.§8!3§;
   import §!!G§.§#!"§;
   import §0m§.§1!,§;
   import §10§.§#!4§;
   import §9!?§.§^]§;
   import §9H§.§-!7§;
   import flash.events.KeyboardEvent;
   
   public class §!F§ extends §1!,§
   {
       
      
      protected var §08§:§#!"§;
      
      protected var §%!=§:Boolean = false;
      
      protected var §8T§:Boolean = false;
      
      private var §%!A§:Boolean = false;
      
      public function §!F§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§08§.init();
         this.§%!A§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!3§.§[!-§ = false;
         §#!4§.§^Y§.§<[§(true);
         §#!4§.§^Y§.§ ,§(true);
         §#!4§.resume();
         if(this.§08§ == null)
         {
            this.§08§ = this.getGameLogicController(§#!4§.§^Y§);
         }
         if(§#!4§.§^Y§.§8!A§ == 0)
         {
            this.levelStarted();
         }
         §#!4§.§>=§(this.§08§);
         §#!4§.§^Y§.background.§%!,§();
      }
      
      protected function getGameLogicController(param1:§^]§) : §#!"§
      {
         return new §#!"§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§%!=§)
         {
            this.§%!=§ = false;
            mNextState = §9B§.§5%§;
         }
         else
         {
            if(!§#!4§.§"7§)
            {
               this.§08§.update(param1);
            }
            if(this.§08§.§0!?§() || this.§8T§)
            {
               this.§8T§ = false;
               if(this.§08§.§,%§ == §#!"§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§%!A§)
                  {
                     this.§%!A§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §8!3§.§[!-§ = true;
               }
               else if(this.§08§.§,%§ == §#!"§.§-D§)
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
         if(§#!4§.§,!%§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §#!4§.§^Y§.§0!0§();
                  break;
               case 66:
                  §#!4§.§^Y§.§3Q§();
            }
         }
         §#!4§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §#!4§.controller.keyUp(param1);
      }
      
      public function §"!!§() : void
      {
         var _loc1_:Number = §#!4§.§^Y§.camera.§ i§ - §#!4§.§^Y§.camera.§%j§;
         var _loc2_:Number = (§#!4§.§^Y§.camera.§5+§ - §#!4§.§^Y§.camera.§%j§) / 2;
         if(_loc1_ > _loc2_)
         {
            §-!7§.§#,§("Cursor_Zoom_Out");
         }
         else
         {
            §-!7§.§#,§("Cursor_Zoom_In");
         }
      }
   }
}
