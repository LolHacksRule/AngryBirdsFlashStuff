package §#!]§
{
   import § 2§.§=+§;
   import §3!0§.§`i§;
   import §7"6§.§^!_§;
   import §8!$§.§ !D§;
   import §>T§.§@!Y§;
   import flash.events.KeyboardEvent;
   
   public class §"i§ extends §3_§
   {
       
      
      protected var §+"%§:§@!Y§;
      
      protected var §2"§:Boolean = false;
      
      private var §`!;§:Boolean = false;
      
      public function §"i§(param1:§-g§, param2:§^!_§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§+"%§.init();
         this.§`!;§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`i§.§&!L§.§2!J§(true);
         §`i§.§&!L§.§@=§(true);
         this.§-K§();
         if(this.§+"%§ == null)
         {
            this.§+"%§ = this.getGameLogicController(§`i§.§&!L§);
         }
         §`i§.setController(this.§+"%§);
         if(§`i§.§&!L§.§3#§ == 0)
         {
            this.levelStarted();
         }
         §`i§.§&!L§.background.§<!J§();
      }
      
      protected function §-K§() : void
      {
         §`i§.resume();
      }
      
      protected function getGameLogicController(param1:§=+§) : §@!Y§
      {
         return new §@!Y§(param1,§#n§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§`i§.isPaused)
         {
            this.§+"%§.update(param1);
         }
         if(this.§+"%§.§[!M§() || this.§2"§)
         {
            this.§2"§ = false;
            if(this.§+"%§.§1$§ == §@!Y§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§`!;§)
               {
                  this.§`!;§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §]a§(this.getVictoryStateName());
               }
            }
            else if(this.§+"%§.§1$§ == §@!Y§.§3"4§)
            {
               if(this.§%!m§())
               {
                  §]a§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §%!m§() : Boolean
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
         if(§`i§.§#!a§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §`i§.§&!L§.§!"$§();
                  break;
               case 66:
                  §`i§.§&!L§.§]!r§();
            }
         }
         §`i§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §`i§.controller.keyUp(param1);
      }
      
      public function §-f§() : void
      {
         var _loc1_:Number = §`i§.§&!L§.camera.§3!9§ - §`i§.§&!L§.camera.§"R§;
         var _loc2_:Number = (§`i§.§&!L§.camera.§+c§ - §`i§.§&!L§.camera.§"R§) / 2;
         if(_loc1_ > _loc2_)
         {
            § !D§.§8!P§("Cursor_Zoom_Out");
         }
         else
         {
            § !D§.§8!P§("Cursor_Zoom_In");
         }
      }
   }
}
