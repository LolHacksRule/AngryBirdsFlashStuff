package §##§
{
   import §"!J§.§5!'§;
   import §,!<§.§6!M§;
   import §-!5§.§1`§;
   import §5=§.§^n§;
   import §>2§.§4h§;
   import §@w§.§2G§;
   import flash.events.KeyboardEvent;
   
   public class §<D§ extends §6!M§
   {
       
      
      protected var §^!?§:§5!'§;
      
      protected var §5x§:Boolean = false;
      
      protected var §<i§:Boolean = false;
      
      private var §[C§:Boolean = false;
      
      public function §<D§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§^!?§.init();
         this.§[C§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §^n§.§2?§ = false;
         §2G§.§7!,§.§`!>§(true);
         §2G§.§7!,§.§18§(true);
         §2G§.resume();
         if(this.§^!?§ == null)
         {
            this.§^!?§ = this.getGameLogicController(§2G§.§7!,§);
         }
         if(§2G§.§7!,§.§`!K§ == 0)
         {
            this.levelStarted();
         }
         §2G§.§4!<§(this.§^!?§);
         §2G§.§7!,§.background.§`%§();
      }
      
      protected function getGameLogicController(param1:§4h§) : §5!'§
      {
         return new §5!'§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§5x§)
         {
            this.§5x§ = false;
            mNextState = §[R§.§=,§;
         }
         else
         {
            if(!§2G§.isPaused)
            {
               this.§^!?§.update(param1);
            }
            if(this.§^!?§.§0!A§() || this.§<i§)
            {
               this.§<i§ = false;
               if(this.§^!?§.§^6§ == §5!'§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§[C§)
                  {
                     this.§[C§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §^n§.§2?§ = true;
               }
               else if(this.§^!?§.§^6§ == §5!'§.§1!,§)
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
         if(§2G§.§`T§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §2G§.§7!,§.§^U§();
                  break;
               case 66:
                  §2G§.§7!,§.§[E§();
            }
         }
         §2G§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §2G§.controller.keyUp(param1);
      }
      
      public function §,L§() : void
      {
         var _loc1_:Number = §2G§.§7!,§.camera.§#!0§ - §2G§.§7!,§.camera.§1!-§;
         var _loc2_:Number = (§2G§.§7!,§.camera.§4G§ - §2G§.§7!,§.camera.§1!-§) / 2;
         if(_loc1_ > _loc2_)
         {
            §1`§.§=!§("Cursor_Zoom_Out");
         }
         else
         {
            §1`§.§=!§("Cursor_Zoom_In");
         }
      }
   }
}
