package §%"Q§
{
   import §"§.§;!E§;
   import §&!j§.§5#+§;
   import §9"`§.§]s§;
   import §?"6§.§`!^§;
   import com.angrybirds.§<!J§;
   import flash.events.KeyboardEvent;
   import §null §.§5#§;
   
   public class §+"J§ extends §`!6§
   {
       
      
      protected var §3!d§:§`!^§;
      
      protected var §;#!§:Boolean = false;
      
      private var §?!l§:Boolean = false;
      
      public function §+"J§(param1:§5#§, param2:§5#+§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§3!d§.init();
         this.§?!l§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §<!J§.§=!%§.§`"V§(true);
         §<!J§.§=!%§.§#"6§(true);
         this.resumeEngine();
         if(this.§3!d§ == null)
         {
            this.§3!d§ = this.getGameLogicController(§<!J§.§=!%§);
         }
         §<!J§.§-k§(this.§3!d§);
         if(§<!J§.§=!%§.§-"o§ == 0)
         {
            this.levelStarted();
         }
         §<!J§.§=!%§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §<!J§.resume();
      }
      
      protected function getGameLogicController(param1:§;!E§) : §`!^§
      {
         return new §`!^§(param1,§'""§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§<!J§.isPaused)
         {
            this.§3!d§.update(param1);
         }
         if(this.§3!d§.§[g§() || this.§;#!§)
         {
            this.§;#!§ = false;
            if(this.§3!d§.§7"D§ == §`!^§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§?!l§)
               {
                  this.§?!l§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §`0§(this.getVictoryStateName());
               }
            }
            else if(this.§3!d§.§7"D§ == §`!^§.§+"j§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §`0§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function isAllowedToChangeFailState() : Boolean
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
         if(§<!J§.§<C§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §<!J§.§=!%§.§%!L§();
                  break;
               case 66:
                  §<!J§.§=!%§.§3",§();
            }
         }
         §<!J§.§]!D§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §<!J§.§]!D§.keyUp(param1);
      }
      
      public function §?o§() : void
      {
         var _loc1_:Number = §<!J§.§=!%§.camera.§0"d§ - §<!J§.§=!%§.camera.§^""§;
         var _loc2_:Number = (§<!J§.§=!%§.camera.§-"J§ - §<!J§.§=!%§.camera.§^""§) / 2;
         if(_loc1_ > _loc2_)
         {
            §]s§.§"!V§("Cursor_Zoom_Out");
         }
         else
         {
            §]s§.§"!V§("Cursor_Zoom_In");
         }
      }
   }
}
