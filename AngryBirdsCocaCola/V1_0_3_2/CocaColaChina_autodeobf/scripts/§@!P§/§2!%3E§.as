package §@!P§
{
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §6!Q§.§;!I§;
   import §8S§.§,!;§;
   import §=F§.§"n§;
   import flash.events.KeyboardEvent;
   
   public class §2!>§ extends §3!%§
   {
       
      
      protected var §0!]§:§,!;§;
      
      protected var §,!V§:Boolean = false;
      
      public function §2!>§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§0!]§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §9G§.§3v§ = false;
         if(this.§0!]§ == null)
         {
            this.§0!]§ = new §,!;§(§"n§.§[b§);
         }
         if(§"n§.§[b§.§!j§ == 0)
         {
            this.levelStarted();
         }
         §"n§.§51§(this.§0!]§);
         §"n§.§[b§.background.§5,§();
         §"n§.§[b§.§+!U§(true);
         §"n§.§[b§.§9'§(true);
         §"n§.§<l§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§0!]§.update(param1);
         if(this.§0!]§.§6h§() || this.§,!V§)
         {
            this.§,!V§ = false;
            if(this.§0!]§.§6=§ == §,!;§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §9G§.§3v§ = true;
               this.levelCompleted();
            }
            else if(this.§0!]§.§6=§ == §,!;§.§>!X§)
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
         §"n§.§[b§.background.§^!2§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §"n§.§5]§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §"n§.§5]§.keyUp(param1);
      }
      
      public function §?6§() : void
      {
         var _loc1_:Number = §"n§.§[b§.camera.manualScale - §"n§.§[b§.camera.§+`§;
         var _loc2_:Number = (§"n§.§[b§.camera.§;L§ - §"n§.§[b§.camera.§+`§) / 2;
         if(_loc1_ > _loc2_)
         {
            §;!I§.§1!@§("Cursor_Zoom_Out");
         }
         else
         {
            §;!I§.§1!@§("Cursor_Zoom_In");
         }
      }
   }
}
