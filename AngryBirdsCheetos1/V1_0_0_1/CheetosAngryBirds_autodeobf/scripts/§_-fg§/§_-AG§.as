package §_-fg§
{
   import §_-5i§.§_-27§;
   import §_-Py§.§_-eK§;
   import §_-T8§.§_-Sa§;
   import §_-gC§.§_-XR§;
   import §_-vB§.§_-Kk§;
   import flash.events.KeyboardEvent;
   
   public class §_-AG§ extends §_-cN§
   {
       
      
      protected var §_-D9§:§_-27§;
      
      protected var §_-6S§:Boolean = false;
      
      protected var §_-dr§:Boolean = false;
      
      public function §_-AG§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-D9§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-Sa§.§_-DG§ = false;
         §_-XR§.§_-Xv§.§_-1m§(true);
         §_-XR§.§_-Xv§.§_-P0§(true);
         if(this.§_-D9§ == null)
         {
            this.§_-D9§ = new §_-27§(§_-XR§.§_-Xv§);
         }
         if(§_-XR§.§_-Xv§.§_-Wy§ == 0)
         {
            this.levelStarted();
         }
         §_-XR§.§_-Sx§(this.§_-D9§);
         §_-XR§.§_-Xv§.background.§_-QR§();
         §_-Kk§.§_-qh§.§_-xg§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-6S§)
         {
            this.§_-6S§ = false;
            mNextState = §_-Xa§.§_-bg§;
         }
         else
         {
            this.§_-D9§.update(param1);
            if(this.§_-D9§.§_-Da§() || this.§_-dr§)
            {
               this.§_-dr§ = false;
               if(this.§_-D9§.§_-Jn§ == §_-27§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-Sa§.§_-DG§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-D9§.§_-Jn§ == §_-27§.§_-1V§)
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
         §_-XR§.§_-Xv§.background.§_-kA§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-XR§.§_-Og§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-XR§.§_-Og§.keyUp(param1);
      }
   }
}
