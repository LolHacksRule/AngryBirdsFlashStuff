package §,H§
{
   import §3U§.§2!%§;
   import §;A§.§7!K§;
   import §<!!§.§<!B§;
   import §@W§.§2!_§;
   import §^!&§.§=!Z§;
   import flash.events.KeyboardEvent;
   
   public class §"Y§ extends §1!a§
   {
       
      
      protected var §5§:§=!Z§;
      
      protected var §7n§:Boolean = false;
      
      public function §"Y§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§5§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §2!%§.§^5§ = false;
         if(this.§5§ == null)
         {
            this.§5§ = new §=!Z§(§7!K§.§=j§);
         }
         if(§7!K§.§=j§.§#!2§ == 0)
         {
            this.levelStarted();
         }
         §7!K§.§,'§(this.§5§);
         §7!K§.§=j§.background.§7!Y§();
         §7!K§.§=j§.§ i§(true);
         §7!K§.§=j§.§6z§(true);
         §7!K§.§1m§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§5§.update(param1);
         if(this.§5§.§;X§() || this.§7n§)
         {
            this.§7n§ = false;
            if(this.§5§.§?B§ == §=!Z§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §2!%§.§^5§ = true;
               this.levelCompleted();
            }
            else if(this.§5§.§?B§ == §=!Z§.§1!N§)
            {
               mNextState = this.getLoserState();
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
         §7!K§.§=j§.background.§>!>§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §7!K§.§0!9§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §7!K§.§0!9§.keyUp(param1);
      }
      
      public function §8=§() : void
      {
         var _loc1_:Number = §7!K§.§=j§.camera.manualScale - §7!K§.§=j§.camera.§07§;
         var _loc2_:Number = (§7!K§.§=j§.camera.§?!>§ - §7!K§.§=j§.camera.§07§) / 2;
         if(_loc1_ > _loc2_)
         {
            §<!B§.§"G§("Cursor_Zoom_Out");
         }
         else
         {
            §<!B§.§"G§("Cursor_Zoom_In");
         }
      }
   }
}
