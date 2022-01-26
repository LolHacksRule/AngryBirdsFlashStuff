package §_-JB§
{
   import §_-7§.§_-ph§;
   import §_-JR§.§_-yh§;
   import §_-PS§.§_-Xz§;
   import §_-bs§.§_-3j§;
   import §_-bs§.§_-J5§;
   import §_-cu§.§_-UO§;
   
   public class StateCutScene extends §_-UO§
   {
      
      public static const §_-1h§:String = "StateCutScene";
       
      
      private var §_-k6§:§_-J5§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.start();
         }
         §_-2U§.§_-x4§();
         var _loc1_:String = this.§_-7r§();
         this.§_-k6§ = §_-3j§.§_-k7§(_loc1_);
         if(this.§_-k6§)
         {
            §_-ph§.§_-Tw§.§_-G9§(true);
            §_-ph§.§_-Tw§.§_-Hb§(false);
            this.§_-k6§.update(0);
            if(§_-ph§.§_-Tw§.§_-f§)
            {
               §_-ph§.§_-Tw§.§_-f§.addChild(this.§_-k6§.sprite);
            }
         }
         else
         {
            mNextState = §_-gc§.§_-1h§;
         }
      }
      
      private function §_-7r§() : String
      {
         var _loc1_:String = §_-Xz§.§_-Px§;
         var _loc2_:String = §_-Xz§.§_-Vt§().§_-W5§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-Xz§.§_-Og§)
         {
            _loc1_ = §_-Xz§.§_-AP§;
            _loc2_ = §_-Xz§.§_-Vt§().§_-W5§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-k6§)
         {
            if(§_-ph§.§_-Tw§.§_-f§)
            {
               §_-ph§.§_-Tw§.§_-f§.removeChild(this.§_-k6§.sprite);
            }
            this.§_-k6§.dispose();
            this.§_-k6§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-k6§.update(param1))
         {
            mNextState = §_-gc§.§_-1h§;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
   }
}
