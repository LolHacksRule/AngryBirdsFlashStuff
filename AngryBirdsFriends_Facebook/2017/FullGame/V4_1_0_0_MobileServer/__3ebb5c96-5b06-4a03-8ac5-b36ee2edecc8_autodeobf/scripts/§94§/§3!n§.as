package §94§
{
   import §&$!§.§+#!§;
   import §+!C§.§!!S§;
   import §6"r§.§!#A§;
   import §<"p§.§9#D§;
   import §@#§.§^#Q§;
   import §["-§.§;#>§;
   import flash.events.KeyboardEvent;
   
   public class §3!n§ extends §`"z§
   {
       
      
      protected var §?5§:§;#>§;
      
      private var §4#^§:Boolean = false;
      
      public function §3!n§(param1:§^#Q§, param2:§+#!§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§?5§.init();
         this.§4#^§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §!#A§.§#F§.§8"d§(true);
         §!#A§.§#F§.§1!t§(true);
         this.resumeEngine();
         if(this.§?5§ == null)
         {
            this.§?5§ = this.getGameLogicController(§!#A§.§#F§);
         }
         §!#A§.setController(this.§?5§);
         if(§!#A§.§#F§.§^'§ == 0)
         {
            this.levelStarted();
         }
         §!#A§.§#F§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §!#A§.resume();
      }
      
      protected function getGameLogicController(param1:§!!S§) : §;#>§
      {
         return new §;#>§(param1,mLevelManager);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§!#A§.isPaused)
         {
            this.§?5§.update(param1);
         }
         if(this.§?5§.§###§())
         {
            if(this.§?5§.§^h§ == §;#>§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§4#^§)
               {
                  this.§4#^§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §5"p§(this.getVictoryStateName());
               }
            }
            else if(this.§?5§.§^h§ == §;#>§.§class§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §5"p§(this.getLoserStateName());
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
         if(§!#A§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §!#A§.§#F§.§=D§();
                  break;
               case 66:
                  §!#A§.§#F§.§;#w§();
            }
         }
         §!#A§.§=![§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §!#A§.§=![§.keyUp(param1);
      }
      
      public function §<h§() : void
      {
         var _loc1_:Number = §!#A§.§#F§.camera.§?!,§ - §!#A§.§#F§.camera.§7#T§;
         var _loc2_:Number = (§!#A§.§#F§.camera.§7#3§ - §!#A§.§#F§.camera.§7#T§) / 2;
         if(_loc1_ > _loc2_)
         {
            §9#D§.§^!l§("Cursor_Zoom_Out");
         }
         else
         {
            §9#D§.§^!l§("Cursor_Zoom_In");
         }
      }
   }
}
