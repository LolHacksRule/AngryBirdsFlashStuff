package §,#§
{
   import §"!G§.§3!f§;
   import §1Q§.§#o§;
   import §8!e§.§3"&§;
   import §9G§.§2F§;
   import §;4§.§-!+§;
   import com.angrybirds.§4"6§;
   import flash.events.KeyboardEvent;
   
   public class §4H§ extends §@!4§
   {
       
      
      protected var §6!>§:§#o§;
      
      protected var §0!P§:Boolean = false;
      
      private var §+C§:Boolean = false;
      
      public function §4H§(param1:§3"&§, param2:§3!f§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§6!>§.init();
         this.§+C§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"6§.§;!k§.§7!X§(true);
         §4"6§.§;!k§.§?>§(true);
         this.§ w§();
         if(this.§6!>§ == null)
         {
            this.§6!>§ = this.getGameLogicController(§4"6§.§;!k§);
         }
         §4"6§.setController(this.§6!>§);
         if(§4"6§.§;!k§.§-p§ == 0)
         {
            this.levelStarted();
         }
         §4"6§.§;!k§.background.§'G§();
      }
      
      protected function § w§() : void
      {
         §4"6§.resume();
      }
      
      protected function getGameLogicController(param1:§2F§) : §#o§
      {
         return new §#o§(param1,§!3§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§4"6§.isPaused)
         {
            this.§6!>§.update(param1);
         }
         if(this.§6!>§.§>"!§() || this.§0!P§)
         {
            this.§0!P§ = false;
            if(this.§6!>§.§4d§ == §#o§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§+C§)
               {
                  this.§+C§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §'"6§(this.getVictoryStateName());
               }
            }
            else if(this.§6!>§.§4d§ == §#o§.§6"2§)
            {
               if(this.§[>§())
               {
                  §'"6§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §[>§() : Boolean
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
         if(§4"6§.§5Y§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §4"6§.§;!k§.§+!Q§();
                  break;
               case 66:
                  §4"6§.§;!k§.§1!<§();
            }
         }
         §4"6§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §4"6§.controller.keyUp(param1);
      }
      
      public function §;!2§() : void
      {
         var _loc1_:Number = §4"6§.§;!k§.camera.§8!B§ - §4"6§.§;!k§.camera.§6!=§;
         var _loc2_:Number = (§4"6§.§;!k§.camera.§"8§ - §4"6§.§;!k§.camera.§6!=§) / 2;
         if(_loc1_ > _loc2_)
         {
            §-!+§.§+!L§("Cursor_Zoom_Out");
         }
         else
         {
            §-!+§.§+!L§("Cursor_Zoom_In");
         }
      }
   }
}
