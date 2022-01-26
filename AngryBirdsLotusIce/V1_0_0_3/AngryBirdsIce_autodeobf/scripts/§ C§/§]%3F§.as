package § C§
{
   import §!F§.§#T§;
   import §!Y§.§[o§;
   import §3"§.§0$§;
   import §;8§.§!$§;
   import §[x§.§2^§;
   import §]4§.§-§;
   import flash.events.KeyboardEvent;
   
   public class §]?§ extends §-§
   {
       
      
      protected var §&!G§:§#T§;
      
      protected var §1p§:Boolean = false;
      
      protected var §4!§:Boolean = false;
      
      private var §@! §:Boolean = false;
      
      public function §]?§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§&!G§.init();
         this.§@! § = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §0$§.§+!1§ = false;
         §[o§.§='§.§"3§(true);
         §[o§.§='§.§[!C§(true);
         §[o§.resume();
         if(this.§&!G§ == null)
         {
            this.§&!G§ = this.getGameLogicController(§[o§.§='§);
         }
         if(§[o§.§='§.§6&§ == 0)
         {
            this.levelStarted();
         }
         §[o§.§%!<§(this.§&!G§);
         §[o§.§='§.background.§0#§();
      }
      
      protected function getGameLogicController(param1:§2^§) : §#T§
      {
         return new §#T§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§1p§)
         {
            this.§1p§ = false;
            mNextState = §,§.§?B§;
         }
         else
         {
            if(!§[o§.§'Z§)
            {
               this.§&!G§.update(param1);
            }
            if(this.§&!G§.§;Q§() || this.§4!§)
            {
               this.§4!§ = false;
               if(this.§&!G§.§5_§ == §#T§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§@! §)
                  {
                     this.§@! § = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §0$§.§+!1§ = true;
               }
               else if(this.§&!G§.§5_§ == §#T§.§9!F§)
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
         if(§[o§.§'Q§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §[o§.§='§.§=!G§();
                  break;
               case 66:
                  §[o§.§='§.§'=§();
            }
         }
         §[o§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §[o§.controller.keyUp(param1);
      }
      
      public function §^!,§() : void
      {
         var _loc1_:Number = §[o§.§='§.camera.§=[§ - §[o§.§='§.camera.§^Y§;
         var _loc2_:Number = (§[o§.§='§.camera.§9D§ - §[o§.§='§.camera.§^Y§) / 2;
         if(_loc1_ > _loc2_)
         {
            §!$§.§`T§("Cursor_Zoom_Out");
         }
         else
         {
            §!$§.§`T§("Cursor_Zoom_In");
         }
      }
   }
}
