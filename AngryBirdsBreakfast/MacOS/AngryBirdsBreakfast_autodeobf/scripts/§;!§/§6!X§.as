package §;!§
{
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §@L§.§?!'§;
   import §^!3§.§,"'§;
   import com.angrybirds.§&!"§;
   import each.§5<§;
   import flash.events.KeyboardEvent;
   
   public class §6!X§ extends §;" §
   {
       
      
      protected var §>A§:§,"'§;
      
      protected var §19§:Boolean = false;
      
      private var §1!d§:Boolean = false;
      
      public function §6!X§(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§>A§.init();
         this.§1!d§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!"§.§1!D§.§"!Q§(true);
         §&!"§.§1!D§.§2f§(true);
         this.§4%§();
         if(this.§>A§ == null)
         {
            this.§>A§ = this.getGameLogicController(§&!"§.§1!D§);
         }
         §&!"§.setController(this.§>A§);
         if(§&!"§.§1!D§.§4@§ == 0)
         {
            this.levelStarted();
         }
         §&!"§.§1!D§.background.§`!e§();
      }
      
      protected function §4%§() : void
      {
         §&!"§.resume();
      }
      
      protected function getGameLogicController(param1:§?!'§) : §,"'§
      {
         return new §,"'§(param1,§&" §);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§&!"§.isPaused)
         {
            this.§>A§.update(param1);
         }
         if(this.§>A§.§@l§() || this.§19§)
         {
            this.§19§ = false;
            if(this.§>A§.§0%§ == §,"'§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§1!d§)
               {
                  this.§1!d§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §<f§(this.getVictoryStateName());
               }
            }
            else if(this.§>A§.§0%§ == §,"'§.§["$§)
            {
               if(this.§[-§())
               {
                  §<f§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §[-§() : Boolean
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
         if(§&!"§.§7!2§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §&!"§.§1!D§.§2I§();
                  break;
               case 66:
                  §&!"§.§1!D§.§=X§();
            }
         }
         §&!"§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §&!"§.controller.keyUp(param1);
      }
      
      public function §2!E§() : void
      {
         var _loc1_:Number = §&!"§.§1!D§.camera.§7!g§ - §&!"§.§1!D§.camera.§80§;
         var _loc2_:Number = (§&!"§.§1!D§.camera.§0[§ - §&!"§.§1!D§.camera.§80§) / 2;
         if(_loc1_ > _loc2_)
         {
            §5<§.§`J§("Cursor_Zoom_Out");
         }
         else
         {
            §5<§.§`J§("Cursor_Zoom_In");
         }
      }
   }
}
