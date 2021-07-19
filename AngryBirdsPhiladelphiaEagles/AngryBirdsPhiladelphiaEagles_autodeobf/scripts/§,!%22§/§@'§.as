package §,!"§
{
   import §'!O§.§'!#§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §?#§.§+7§;
   import §^]§.§`!K§;
   import §`K§.§4N§;
   import flash.events.KeyboardEvent;
   
   public class §@'§ extends §'!#§
   {
       
      
      protected var §0!=§:§+7§;
      
      protected var §6!3§:Boolean = false;
      
      protected var §`z§:Boolean = false;
      
      private var §8!>§:Boolean = false;
      
      public function §@'§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§0!=§.init();
         this.§8!>§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`!K§.§#B§ = false;
         §#! §.§`'§.§^!6§(true);
         §#! §.§`'§.§%_§(true);
         §#! §.resume();
         if(this.§0!=§ == null)
         {
            this.§0!=§ = this.getGameLogicController(§#! §.§`'§);
         }
         if(§#! §.§`'§.§>,§ == 0)
         {
            this.levelStarted();
         }
         §#! §.§;]§(this.§0!=§);
         §#! §.§`'§.background.§<l§();
      }
      
      protected function getGameLogicController(param1:§1r§) : §+7§
      {
         return new §+7§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§6!3§)
         {
            this.§6!3§ = false;
            mNextState = §="§.§-A§;
         }
         else
         {
            if(!§#! §.isPaused)
            {
               this.§0!=§.update(param1);
            }
            if(this.§0!=§.§"`§() || this.§`z§)
            {
               this.§`z§ = false;
               if(this.§0!=§.§;q§ == §+7§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§8!>§)
                  {
                     this.§8!>§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §`!K§.§#B§ = true;
               }
               else if(this.§0!=§.§;q§ == §+7§.§2F§)
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
         if(§#! §.§^!E§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §#! §.§`'§.§`!'§();
                  break;
               case 66:
                  §#! §.§`'§.§1!3§();
            }
         }
         §#! §.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §#! §.controller.keyUp(param1);
      }
      
      public function §,C§() : void
      {
         var _loc1_:Number = §#! §.§`'§.camera.§%L§ - §#! §.§`'§.camera.§9!L§;
         var _loc2_:Number = (§#! §.§`'§.camera.§#K§ - §#! §.§`'§.camera.§9!L§) / 2;
         if(_loc1_ > _loc2_)
         {
            §4N§.§!_§("Cursor_Zoom_Out");
         }
         else
         {
            §4N§.§!_§("Cursor_Zoom_In");
         }
      }
   }
}
