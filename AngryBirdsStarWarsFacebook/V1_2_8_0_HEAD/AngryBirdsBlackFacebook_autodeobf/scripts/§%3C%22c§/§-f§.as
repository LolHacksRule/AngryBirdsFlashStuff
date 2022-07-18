package §<"c§
{
   import §"a§.§6#!§;
   import §5t§.§`"+§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   import flash.events.KeyboardEvent;
   
   public class §-f§ extends §]"_§
   {
       
      
      protected var § F§:§6#!§;
      
      protected var §5!Q§:Boolean = false;
      
      private var §7#=§:Boolean = false;
      
      public function §-f§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§ F§.init();
         this.§7#=§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!q§.§9!,§.§]"J§(true);
         §,!q§.§9!,§.§--§(true);
         this.resumeEngine();
         if(this.§ F§ == null)
         {
            this.§ F§ = this.getGameLogicController(§,!q§.§9!,§);
         }
         §,!q§.§3!Q§(this.§ F§);
         if(§,!q§.§9!,§.§9""§ == 0)
         {
            this.levelStarted();
         }
         §,!q§.§9!,§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §,!q§.resume();
      }
      
      protected function getGameLogicController(param1:§#_§) : §6#!§
      {
         return new §6#!§(param1,§+!b§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§,!q§.isPaused)
         {
            this.§ F§.update(param1);
         }
         if(this.§ F§.§2#Q§() || this.§5!Q§)
         {
            this.§5!Q§ = false;
            if(this.§ F§.§2#F§ == §6#!§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§7#=§)
               {
                  this.§7#=§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  § g§(this.getVictoryStateName());
               }
            }
            else if(this.§ F§.§2#F§ == §6#!§.§7!T§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  § g§(this.getLoserStateName());
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
         if(§,!q§.§<N§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §,!q§.§9!,§.§5h§();
                  break;
               case 66:
                  §,!q§.§9!,§.§4"m§();
            }
         }
         §,!q§.§>k§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §,!q§.§>k§.keyUp(param1);
      }
      
      public function §##§() : void
      {
         var _loc1_:Number = §,!q§.§9!,§.camera.§'"2§ - §,!q§.§9!,§.camera.§^r§;
         var _loc2_:Number = (§,!q§.§9!,§.camera.§7i§ - §,!q§.§9!,§.camera.§^r§) / 2;
         if(_loc1_ > _loc2_)
         {
            §`"+§.§-G§("Cursor_Zoom_Out");
         }
         else
         {
            §`"+§.§-G§("Cursor_Zoom_In");
         }
      }
   }
}
