package §`!6§
{
   import §;f§.§'!3§;
   import §=!7§.§9c§;
   import §>!a§.§5l§;
   import §@"1§.§"h§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import flash.events.KeyboardEvent;
   
   public class §`c§ extends §-!c§
   {
       
      
      protected var §^]§:§'!3§;
      
      protected var §01§:Boolean = false;
      
      private var §,e§:Boolean = false;
      
      public function §`c§(param1:§5l§, param2:§-!<§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§^]§.init();
         this.§,e§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4!l§.§,!8§.§&!L§(true);
         §4!l§.§,!8§.§-!Y§(true);
         this.§^!?§();
         if(this.§^]§ == null)
         {
            this.§^]§ = this.getGameLogicController(§4!l§.§,!8§);
         }
         §4!l§.setController(this.§^]§);
         if(§4!l§.§,!8§.§]7§ == 0)
         {
            this.levelStarted();
         }
         §4!l§.§,!8§.background.§0T§();
      }
      
      protected function §^!?§() : void
      {
         §4!l§.resume();
      }
      
      protected function getGameLogicController(param1:§"h§) : §'!3§
      {
         return new §'!3§(param1,§^!§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§4!l§.isPaused)
         {
            this.§^]§.update(param1);
         }
         if(this.§^]§.§3!B§() || this.§01§)
         {
            this.§01§ = false;
            if(this.§^]§.§1!n§ == §'!3§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§,e§)
               {
                  this.§,e§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §8=§(this.getVictoryStateName());
               }
            }
            else if(this.§^]§.§1!n§ == §'!3§.§<!6§)
            {
               if(this.§+U§())
               {
                  §8=§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §+U§() : Boolean
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
         if(§4!l§.§[z§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §4!l§.§,!8§.§<"§();
                  break;
               case 66:
                  §4!l§.§,!8§.§]j§();
            }
         }
         §4!l§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §4!l§.controller.keyUp(param1);
      }
      
      public function §!!§() : void
      {
         var _loc1_:Number = §4!l§.§,!8§.camera.§+Y§ - §4!l§.§,!8§.camera.§`"&§;
         var _loc2_:Number = (§4!l§.§,!8§.camera.§^!@§ - §4!l§.§,!8§.camera.§`"&§) / 2;
         if(_loc1_ > _loc2_)
         {
            §9c§.§]!j§("Cursor_Zoom_Out");
         }
         else
         {
            §9c§.§]!j§("Cursor_Zoom_In");
         }
      }
   }
}
