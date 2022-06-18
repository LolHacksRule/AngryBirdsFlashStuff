package §=0§
{
   import §#;§.§4!8§;
   import §-p§.§5<§;
   import §1G§.§`U§;
   import §8!G§.§-Z§;
   import §>z§.§<W§;
   import §`t§.§^?§;
   import flash.events.KeyboardEvent;
   
   public class §"!9§ extends §`U§
   {
       
      
      protected var §,Z§:§<W§;
      
      protected var §%X§:Boolean = false;
      
      protected var §5!3§:Boolean = false;
      
      private var §5!8§:Boolean = false;
      
      public function §"!9§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§,Z§.init();
         this.§5!8§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §-Z§.§4#§ = false;
         §^?§.§]!%§.§ U§(true);
         §^?§.§]!%§.§%0§(true);
         §^?§.resume();
         if(this.§,Z§ == null)
         {
            this.§,Z§ = this.getGameLogicController(§^?§.§]!%§);
         }
         if(§^?§.§]!%§.§0n§ == 0)
         {
            this.levelStarted();
         }
         §^?§.§5S§(this.§,Z§);
         §^?§.§]!%§.background.§,;§();
      }
      
      protected function getGameLogicController(param1:§4!8§) : §<W§
      {
         return new §<W§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§%X§)
         {
            this.§%X§ = false;
            mNextState = §-v§.§?1§;
         }
         else
         {
            if(!§^?§.isPaused)
            {
               this.§,Z§.update(param1);
            }
            if(this.§,Z§.§'!=§() || this.§5!3§)
            {
               this.§5!3§ = false;
               if(this.§,Z§.§&3§ == §<W§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§5!8§)
                  {
                     this.§5!8§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §-Z§.§4#§ = true;
               }
               else if(this.§,Z§.§&3§ == §<W§.§^A§)
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
         if(§^?§.§8!=§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §^?§.§]!%§.§^!?§();
                  break;
               case 66:
                  §^?§.§]!%§.§>`§();
            }
         }
         §^?§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §^?§.controller.keyUp(param1);
      }
      
      public function §;j§() : void
      {
         var _loc1_:Number = §^?§.§]!%§.camera.§7!F§ - §^?§.§]!%§.camera.§,!!§;
         var _loc2_:Number = (§^?§.§]!%§.camera.§%!6§ - §^?§.§]!%§.camera.§,!!§) / 2;
         if(_loc1_ > _loc2_)
         {
            §5<§.§"=§("Cursor_Zoom_Out");
         }
         else
         {
            §5<§.§"=§("Cursor_Zoom_In");
         }
      }
   }
}
