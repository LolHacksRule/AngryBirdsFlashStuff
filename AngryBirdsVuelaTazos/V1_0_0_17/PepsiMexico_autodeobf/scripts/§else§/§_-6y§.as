package §else§
{
   import §_-OJ§.§_-LW§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-W3§.§_-zI§;
   import §_-e3§.§_-9Y§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   import flash.events.KeyboardEvent;
   
   public class §_-6y§ extends §_-iL§
   {
       
      
      protected var §_-uZ§:§_-zI§;
      
      protected var §_-oT§:Boolean = false;
      
      protected var §_-VX§:Boolean = false;
      
      public function §_-6y§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-uZ§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-Sf§.§_-LD§ = false;
         §_-MB§.§_-A7§.§_-Gf§(true);
         §_-MB§.§_-A7§.§_-m3§(true);
         if(this.§_-uZ§ == null)
         {
            this.§_-uZ§ = new §_-zI§(§_-MB§.§_-A7§);
         }
         if(§_-MB§.§_-A7§.§_-9c§ == 0)
         {
            this.levelStarted();
         }
         §_-1S§.changeState(HighscoreSidebar.§_-Jf§);
         §_-1S§.showHighscores(§_-Sf§.§_-vj§);
         §_-MB§.§_-U0§(this.§_-uZ§);
         §_-MB§.§_-A7§.background.§_-o2§();
         §_-Vu§.§_-jT§.§_-ra§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-oT§)
         {
            this.§_-oT§ = false;
            mNextState = §_-xb§.§_-Az§;
         }
         else
         {
            this.§_-uZ§.update(param1);
            if(this.§_-uZ§.§_-1w§() || this.§_-VX§)
            {
               this.§_-VX§ = false;
               if(this.§_-uZ§.§_-L-§ == §_-zI§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-Sf§.§_-LD§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-uZ§.§_-L-§ == §_-zI§.§_-zt§)
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
         §_-MB§.§_-A7§.background.§_-yE§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-MB§.§_-Gk§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-MB§.§_-Gk§.keyUp(param1);
      }
      
      public function §_-Om§() : void
      {
         var _loc1_:Number = §_-MB§.§_-A7§.camera.mManualScale - §_-LW§.§_-tc§;
         var _loc2_:Number = (§_-LW§.§_-E3§ - §_-LW§.§_-tc§) / 2;
         if(_loc1_ > _loc2_)
         {
            §_-9Y§.§_-k6§("Cursor_Zoom_Out");
         }
         else
         {
            §_-9Y§.§_-k6§("Cursor_Zoom_In");
         }
      }
   }
}
