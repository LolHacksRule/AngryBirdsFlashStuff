package §?7§
{
   import §"V§.§true§;
   import §'8§.§^§;
   import §+!%§.§'!"§;
   import §-l§.§?'§;
   import §2x§.§9!@§;
   import §<!@§.§!P§;
   import flash.events.KeyboardEvent;
   
   public class §'[§ extends §true§
   {
       
      
      protected var §#!1§:§^§;
      
      protected var §9Z§:Boolean = false;
      
      protected var §9G§:Boolean = false;
      
      private var §1f§:Boolean = false;
      
      public function §'[§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§#!1§.init();
         this.§1f§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §!P§.§%!A§ = false;
         §?'§.§5!§.§`!?§(true);
         §?'§.§5!§.§>G§(true);
         §?'§.resume();
         if(this.§#!1§ == null)
         {
            this.§#!1§ = this.getGameLogicController(§?'§.§5!§);
         }
         if(§?'§.§5!§.§65§ == 0)
         {
            this.levelStarted();
         }
         §?'§.§]`§(this.§#!1§);
         §?'§.§5!§.background.§1>§();
      }
      
      protected function getGameLogicController(param1:§'!"§) : §^§
      {
         return new §^§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§9Z§)
         {
            this.§9Z§ = false;
            mNextState = §,]§.§4!&§;
         }
         else
         {
            if(!§?'§.§;P§)
            {
               this.§#!1§.update(param1);
            }
            if(this.§#!1§.§?!#§() || this.§9G§)
            {
               this.§9G§ = false;
               if(this.§#!1§.§ !4§ == §^§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§1f§)
                  {
                     this.§1f§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §!P§.§%!A§ = true;
               }
               else if(this.§#!1§.§ !4§ == §^§.§8@§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return _loc2_;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryState() : String
      {
         return null;
      }
      
      public function getLoserState() : String
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
         if(§?'§.§!k§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §?'§.§5!§.§'!§();
                  break;
               case 66:
                  §?'§.§5!§.§&^§();
            }
         }
         §?'§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §?'§.controller.keyUp(param1);
      }
      
      public function §3'§() : void
      {
         var _loc1_:Number = §?'§.§5!§.camera.§;u§ - §?'§.§5!§.camera.§6L§;
         var _loc2_:Number = (§?'§.§5!§.camera.§8y§ - §?'§.§5!§.camera.§6L§) / 2;
         if(_loc1_ > _loc2_)
         {
            §9!@§.§7[§("Cursor_Zoom_Out");
         }
         else
         {
            §9!@§.§7[§("Cursor_Zoom_In");
         }
      }
   }
}
