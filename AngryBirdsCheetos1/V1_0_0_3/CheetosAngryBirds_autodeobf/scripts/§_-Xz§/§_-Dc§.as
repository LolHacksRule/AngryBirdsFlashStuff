package §_-Xz§
{
   import §_-5b§.§_-Mm§;
   import §_-EH§.§_-uz§;
   import §_-KM§.§_-0A§;
   import §_-TX§.§_-0X§;
   import §_-be§.§_-ss§;
   import flash.events.KeyboardEvent;
   
   public class §_-Dc§ extends §_-SW§
   {
       
      
      protected var §_-g1§:§_-ss§;
      
      protected var §_-4v§:Boolean = false;
      
      protected var §_-0d§:Boolean = false;
      
      public function §_-Dc§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-g1§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-Mm§.§_-6e§ = false;
         §_-0X§.§_-O2§.§_-JY§(true);
         §_-0X§.§_-O2§.§_-Bk§(true);
         if(this.§_-g1§ == null)
         {
            this.§_-g1§ = new §_-ss§(§_-0X§.§_-O2§);
         }
         if(§_-0X§.§_-O2§.§_-mL§ == 0)
         {
            this.levelStarted();
         }
         §_-0X§.§_-6P§(this.§_-g1§);
         §_-0X§.§_-O2§.background.§_-7z§();
         §_-0A§.§with§.§_-QF§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-4v§)
         {
            this.§_-4v§ = false;
            mNextState = §_-Jx§.§_-3o§;
         }
         else
         {
            this.§_-g1§.update(param1);
            if(this.§_-g1§.§_-6h§() || this.§_-0d§)
            {
               this.§_-0d§ = false;
               if(this.§_-g1§.§_-WW§ == §_-ss§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-Mm§.§_-6e§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-g1§.§_-WW§ == §_-ss§.§_-8A§)
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
         §_-0X§.§_-O2§.background.§_-9e§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-0X§.§ try§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-0X§.§ try§.keyUp(param1);
      }
   }
}
