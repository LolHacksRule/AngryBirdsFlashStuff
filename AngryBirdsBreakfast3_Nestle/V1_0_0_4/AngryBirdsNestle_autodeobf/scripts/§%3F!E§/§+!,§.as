package §?!E§
{
   import §"I§.§?"4§;
   import §'<§.§=!o§;
   import §0I§.§!!p§;
   import §9!o§.§9U§;
   import §;!b§.§%>§;
   import com.angrybirds.§6U§;
   import flash.events.KeyboardEvent;
   
   public class §+!,§ extends §5"#§
   {
       
      
      protected var §+!o§:§9U§;
      
      protected var §0!e§:Boolean = false;
      
      private var §&f§:Boolean = false;
      
      public function §+!,§(param1:§=!o§, param2:§%>§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§+!o§.init();
         this.§&f§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6U§.§+_§.§ W§(true);
         §6U§.§+_§.§>b§(true);
         this.§]!-§();
         if(this.§+!o§ == null)
         {
            this.§+!o§ = this.getGameLogicController(§6U§.§+_§);
         }
         §6U§.setController(this.§+!o§);
         if(§6U§.§+_§.§31§ == 0)
         {
            this.levelStarted();
         }
         §6U§.§+_§.background.§[!5§();
      }
      
      protected function §]!-§() : void
      {
         §6U§.resume();
      }
      
      protected function getGameLogicController(param1:§!!p§) : §9U§
      {
         return new §9U§(param1,§+o§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§6U§.isPaused)
         {
            this.§+!o§.update(param1);
         }
         if(this.§+!o§.§0!,§() || this.§0!e§)
         {
            this.§0!e§ = false;
            if(this.§+!o§.§ q§ == §9U§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§&f§)
               {
                  this.§&f§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §0!w§(this.getVictoryStateName());
               }
            }
            else if(this.§+!o§.§ q§ == §9U§.§?^§)
            {
               if(this.§<!S§())
               {
                  §0!w§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §<!S§() : Boolean
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
         if(§6U§.§`"$§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §6U§.§+_§.§;!8§();
                  break;
               case 66:
                  §6U§.§+_§.§4Q§();
            }
         }
         §6U§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §6U§.controller.keyUp(param1);
      }
      
      public function §%!^§() : void
      {
         var _loc1_:Number = §6U§.§+_§.camera.§9!X§ - §6U§.§+_§.camera.§0E§;
         var _loc2_:Number = (§6U§.§+_§.camera.§-V§ - §6U§.§+_§.camera.§0E§) / 2;
         if(_loc1_ > _loc2_)
         {
            §?"4§.§6!R§("Cursor_Zoom_Out");
         }
         else
         {
            §?"4§.§6!R§("Cursor_Zoom_In");
         }
      }
   }
}
