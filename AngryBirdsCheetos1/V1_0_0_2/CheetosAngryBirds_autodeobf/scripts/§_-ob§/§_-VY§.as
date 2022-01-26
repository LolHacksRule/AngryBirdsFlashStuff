package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-MP§.§_-N5§;
   import §_-Ye§.§_-cP§;
   import §_-sj§.§_-qs§;
   import §_-ux§.§_-zm§;
   import flash.events.KeyboardEvent;
   
   public class §_-VY§ extends §_-xw§
   {
       
      
      protected var §_-ij§:§_-zm§;
      
      protected var §_-wG§:Boolean = false;
      
      protected var §_-8c§:Boolean = false;
      
      public function §_-VY§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-ij§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-N5§.§_-Kk§ = false;
         §_-si§.§_-HI§.§_-2c§(true);
         §_-si§.§_-HI§.§_-bY§(true);
         if(this.§_-ij§ == null)
         {
            this.§_-ij§ = new §_-zm§(§_-si§.§_-HI§);
         }
         if(§_-si§.§_-HI§.§_-sG§ == 0)
         {
            this.levelStarted();
         }
         §_-si§.§_-Mr§(this.§_-ij§);
         §_-si§.§_-HI§.background.§_-MI§();
         §_-cP§.§_-Nz§.§_-Zn§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-wG§)
         {
            this.§_-wG§ = false;
            mNextState = §_-ZF§.§_-jn§;
         }
         else
         {
            this.§_-ij§.update(param1);
            if(this.§_-ij§.§_-NQ§() || this.§_-8c§)
            {
               this.§_-8c§ = false;
               if(this.§_-ij§.§_-oy§ == §_-zm§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-N5§.§_-Kk§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-ij§.§_-oy§ == §_-zm§.§_-TF§)
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
         §_-si§.§_-HI§.background.§_-GQ§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-si§.§_-0j§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-si§.§_-0j§.keyUp(param1);
      }
   }
}
