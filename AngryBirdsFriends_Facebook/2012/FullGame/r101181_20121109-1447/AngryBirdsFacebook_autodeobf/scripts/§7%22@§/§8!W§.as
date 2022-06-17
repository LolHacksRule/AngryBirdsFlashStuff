package §7"@§
{
   import §#!e§.LevelManager;
   import §0!G§.§1-§;
   import §3![§.§^"1§;
   import §6o§.§="7§;
   import §9"!§.§9"3§;
   import §]!A§.;
   import flash.events.KeyboardEvent;
   
   public class §8!W§ extends §1-§
   {
       
      
      protected var §,3§:§^"1§;
      
      protected var §,!r§:Boolean = false;
      
      protected var §^!F§:Boolean = false;
      
      private var §8!o§:Boolean = false;
      
      public function §8!W§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§,3§.init();
         this.§8!o§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§<!S§ = false;
         §#6§.§6!z§.§3H§(true);
         §#6§.§6!z§.§8Y§(true);
         §#6§.resume();
         if(this.§,3§ == null)
         {
            this.§,3§ = this.getGameLogicController(§#6§.§6!z§);
         }
         if(§#6§.§6!z§.§,"<§ == 0)
         {
            this.levelStarted();
         }
         §#6§.setController(this.§,3§);
         §#6§.§6!z§.background.§7!a§();
      }
      
      protected function getGameLogicController(param1:§9"3§) : §^"1§
      {
         return new §^"1§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§,!r§)
         {
            this.§,!r§ = false;
            mNextState = §7l§.STATE_NAME;
         }
         else
         {
            if(!§#6§.isPaused)
            {
               this.§,3§.update(param1);
            }
            if(this.§,3§.§=! §() || this.§^!F§)
            {
               this.§^!F§ = false;
               if(this.§,3§.§@h§ == §^"1§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§8!o§)
                  {
                     this.§8!o§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§<!S§ = true;
               }
               else if(this.§,3§.§@h§ == §^"1§.LEVEL_STATE_FAIL)
               {
                  this.§+B§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §+B§() : void
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
         if(§#6§.§4x§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §#6§.§6!z§.§<<§();
                  break;
               case 66:
                  §#6§.§6!z§.§7!]§();
            }
         }
         §#6§.§'" §.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §#6§.§'" §.keyUp(param1);
      }
      
      public function § "<§() : void
      {
         var _loc1_:Number = §#6§.§6!z§.camera.§+!Z§ - §#6§.§6!z§.camera.§07§;
         var _loc2_:Number = (§#6§.§6!z§.camera.§>E§ - §#6§.§6!z§.camera.§07§) / 2;
         if(_loc1_ > _loc2_)
         {
            §="7§.§2!'§("Cursor_Zoom_Out");
         }
         else
         {
            §="7§.§2!'§("Cursor_Zoom_In");
         }
      }
   }
}
