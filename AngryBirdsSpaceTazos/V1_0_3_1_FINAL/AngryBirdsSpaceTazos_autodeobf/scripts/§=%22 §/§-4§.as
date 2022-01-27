package §=" §
{
   import §3R§.§1!R§;
   import §4",§.§,!j§;
   import §5s§.§"m§;
   import §6!C§.§8!T§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import flash.events.KeyboardEvent;
   
   public class §-4§ extends §[!B§
   {
       
      
      protected var §%R§:§"m§;
      
      protected var §;"§:Boolean = false;
      
      private var §>]§:Boolean = false;
      
      public function §-4§(param1:§,!j§, param2:§;l§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§%R§.init();
         this.§>]§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8!w§.§5!V§.§3r§(true);
         §8!w§.§5!V§.§+g§(true);
         this.§-"B§();
         if(this.§%R§ == null)
         {
            this.§%R§ = this.getGameLogicController(§8!w§.§5!V§);
         }
         if(§8!w§.§5!V§.§7"1§ == 0)
         {
            this.levelStarted();
         }
         §8!w§.§?<§(this.§%R§);
         §8!w§.§5!V§.background.playAmbientSound();
      }
      
      protected function §-"B§() : void
      {
         §8!w§.resume();
      }
      
      protected function getGameLogicController(param1:§1!R§) : §"m§
      {
         return new §"m§(param1,§]m§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§8!w§.isPaused)
         {
            this.§%R§.update(param1);
         }
         if(this.§%R§.§%g§() || this.§;"§)
         {
            this.§;"§ = false;
            if(this.§%R§.§6!&§ == §"m§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§>]§)
               {
                  this.§>]§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §'Q§(this.getVictoryStateName());
               }
            }
            else if(this.§%R§.§6!&§ == §"m§.§7Q§)
            {
               if(this.§ !Q§())
               {
                  §'Q§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function § !Q§() : Boolean
      {
         return true;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryStateName() : String
      {
         return null;
      }
      
      public function getLoserStateName() : String
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
         if(§8!w§.§;!§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §8!w§.§5!V§.§@z§();
                  break;
               case 66:
                  §8!w§.§5!V§.§1!9§();
            }
         }
         §8!w§.§79§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §8!w§.§79§.keyUp(param1);
      }
      
      public function §&i§() : void
      {
         var _loc1_:Number = §8!w§.§5!V§.camera.§;"7§ - §8!w§.§5!V§.camera.§ B§;
         var _loc2_:Number = (§8!w§.§5!V§.camera.§-q§ - §8!w§.§5!V§.camera.§ B§) / 2;
         if(_loc1_ > _loc2_)
         {
            §8!T§.§else §("Cursor_Zoom_Out");
         }
         else
         {
            §8!T§.§else §("Cursor_Zoom_In");
         }
      }
   }
}
