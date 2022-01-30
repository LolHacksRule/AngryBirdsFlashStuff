package §]!V§
{
   import § !Q§.§9%§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §]A§.§[d§;
   import §^x§.§8v§;
   import com.angrybirds.§#Z§;
   import flash.events.KeyboardEvent;
   
   public class §`"%§ extends §>!9§
   {
       
      
      protected var §=e§:§8v§;
      
      protected var §=1§:Boolean = false;
      
      private var §@"5§:Boolean = false;
      
      public function §`"%§(param1:§5!1§, param2:§&S§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§=e§.init();
         this.§@"5§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#Z§.§'0§.§#o§(true);
         §#Z§.§'0§.§7"'§(true);
         this.§6!R§();
         if(this.§=e§ == null)
         {
            this.§=e§ = this.getGameLogicController(§#Z§.§'0§);
         }
         §#Z§.setController(this.§=e§);
         if(§#Z§.§'0§.§7!Z§ == 0)
         {
            this.levelStarted();
         }
         §#Z§.§'0§.background.§"!R§();
      }
      
      protected function §6!R§() : void
      {
         §#Z§.resume();
      }
      
      protected function getGameLogicController(param1:§[d§) : §8v§
      {
         return new §8v§(param1,§97§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§#Z§.isPaused)
         {
            this.§=e§.update(param1);
         }
         if(this.§=e§.§9!t§() || this.§=1§)
         {
            this.§=1§ = false;
            if(this.§=e§.§2!n§ == §8v§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§@"5§)
               {
                  this.§@"5§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §8!`§(this.getVictoryStateName());
               }
            }
            else if(this.§=e§.§2!n§ == §8v§.§#!5§)
            {
               if(this.§#!M§())
               {
                  §8!`§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §#!M§() : Boolean
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
         if(§#Z§.§?!,§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §#Z§.§'0§.§#A§();
                  break;
               case 66:
                  §#Z§.§'0§.§-!;§();
            }
         }
         §#Z§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §#Z§.controller.keyUp(param1);
      }
      
      public function §&!p§() : void
      {
         var _loc1_:Number = §#Z§.§'0§.camera.§!a§ - §#Z§.§'0§.camera.§'!$§;
         var _loc2_:Number = (§#Z§.§'0§.camera.§!i§ - §#Z§.§'0§.camera.§'!$§) / 2;
         if(_loc1_ > _loc2_)
         {
            §9%§.§,!p§("Cursor_Zoom_Out");
         }
         else
         {
            §9%§.§,!p§("Cursor_Zoom_In");
         }
      }
   }
}
