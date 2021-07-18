package §8!_§
{
   import § M§.§]o§;
   import §%!r§.§3!'§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §0N§.§5!^§;
   import §`!j§.§9"!§;
   import flash.events.KeyboardEvent;
   
   public class §="%§ extends §5!&§
   {
       
      
      protected var §!K§:§]o§;
      
      protected var §2K§:Boolean = false;
      
      private var §8f§:Boolean = false;
      
      public function §="%§(param1:§9"!§, param2:§3!'§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§!K§.init();
         this.§8f§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §9q§.§>!L§.§0!M§(true);
         §9q§.§>!L§.§1!L§(true);
         this.§?!f§();
         if(this.§!K§ == null)
         {
            this.§!K§ = this.getGameLogicController(§9q§.§>!L§);
         }
         if(§9q§.§>!L§.§0!4§ == 0)
         {
            this.levelStarted();
         }
         §9q§.§15§(this.§!K§);
         §9q§.§>!L§.background.playAmbientSound();
      }
      
      protected function §?!f§() : void
      {
         §9q§.resume();
      }
      
      protected function getGameLogicController(param1:§^g§) : §]o§
      {
         return new §]o§(param1,§6u§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§9q§.isPaused)
         {
            this.§!K§.update(param1);
         }
         if(this.§!K§.§5r§() || this.§2K§)
         {
            this.§2K§ = false;
            if(this.§!K§.§]e§ == §]o§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§8f§)
               {
                  this.§8f§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §8!^§(this.getVictoryStateName());
               }
            }
            else if(this.§!K§.§]e§ == §]o§.§0!+§)
            {
               if(this.§&h§())
               {
                  §8!^§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §&h§() : Boolean
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
         if(§9q§.§-"<§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §9q§.§>!L§.§[Q§();
                  break;
               case 66:
                  §9q§.§>!L§.§<!!§();
            }
         }
         §9q§.§&!$§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §9q§.§&!$§.keyUp(param1);
      }
      
      public function §>"D§() : void
      {
         var _loc1_:Number = §9q§.§>!L§.camera.§'!$§ - §9q§.§>!L§.camera.§[!u§;
         var _loc2_:Number = (§9q§.§>!L§.camera.§?!t§ - §9q§.§>!L§.camera.§[!u§) / 2;
         if(_loc1_ > _loc2_)
         {
            §5!^§.§<!w§("Cursor_Zoom_Out");
         }
         else
         {
            §5!^§.§<!w§("Cursor_Zoom_In");
         }
      }
   }
}
