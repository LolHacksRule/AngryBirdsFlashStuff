package §?'§
{
   import §"o§.§ M§;
   import §'m§.§<7§;
   import §7!4§.§!U§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §`<§.§,!6§;
   import flash.events.KeyboardEvent;
   
   public class §&"§ extends §,!6§
   {
       
      
      protected var §"!8§:§!U§;
      
      protected var §`P§:Boolean = false;
      
      protected var §@7§:Boolean = false;
      
      private var §7"§:Boolean = false;
      
      public function §&"§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§"!8§.init();
         this.§7"§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §&#§.§+@§ = false;
         §8[§.§import§.§5q§(true);
         §8[§.§import§.§0<§(true);
         §8[§.resume();
         if(this.§"!8§ == null)
         {
            this.§"!8§ = this.getGameLogicController(§8[§.§import§);
         }
         if(§8[§.§import§.§"!D§ == 0)
         {
            this.levelStarted();
         }
         §8[§.§[r§(this.§"!8§);
         §8[§.§import§.background.§1!#§();
      }
      
      protected function getGameLogicController(param1:§ M§) : §!U§
      {
         return new §!U§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§`P§)
         {
            this.§`P§ = false;
            mNextState = §-Y§.§`%§;
         }
         else
         {
            if(!§8[§.§;!A§)
            {
               this.§"!8§.update(param1);
            }
            if(this.§"!8§.§5!5§() || this.§@7§)
            {
               this.§@7§ = false;
               if(this.§"!8§.§>!D§ == §!U§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§7"§)
                  {
                     this.§7"§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §&#§.§+@§ = true;
               }
               else if(this.§"!8§.§>!D§ == §!U§.§8!?§)
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
         if(§8[§.§<! §)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §8[§.§import§.§null§();
                  break;
               case 66:
                  §8[§.§import§.§?!E§();
            }
         }
         §8[§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §8[§.controller.keyUp(param1);
      }
      
      public function §<!2§() : void
      {
         var _loc1_:Number = §8[§.§import§.camera.§6!<§ - §8[§.§import§.camera.§=!"§;
         var _loc2_:Number = (§8[§.§import§.camera.§2J§ - §8[§.§import§.camera.§=!"§) / 2;
         if(_loc1_ > _loc2_)
         {
            §<7§.§#?§("Cursor_Zoom_Out");
         }
         else
         {
            §<7§.§#?§("Cursor_Zoom_In");
         }
      }
   }
}
