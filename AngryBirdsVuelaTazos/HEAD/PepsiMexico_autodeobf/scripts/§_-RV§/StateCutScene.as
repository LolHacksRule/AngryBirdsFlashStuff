package §_-RV§
{
   import §_-3b§.§_-Og§;
   import §_-7x§.§_-4O§;
   import §_-QG§.§_-t6§;
   import §_-pm§.§_-gb§;
   import §_-wG§.§_-G2§;
   import §_-wG§.§_-et§;
   
   public class StateCutScene extends §_-t6§
   {
      
      public static const §_-8r§:String = "StateCutScene";
       
      
      private var §_-B5§:§_-G2§;
      
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
         §_-q0§.§_-BN§();
         var _loc1_:String = this.§_-KM§();
         this.§_-B5§ = §_-et§.§_-Kv§(_loc1_,§_-Og§.§_-uP§);
         if(this.§_-B5§)
         {
            §_-gb§.§_-ls§.§_-2L§(true);
            §_-gb§.§_-ls§.§_-gS§(false);
            this.§_-B5§.update(0);
            if(§_-gb§.§_-ls§.§_-Lm§)
            {
               §_-gb§.§_-ls§.§_-Lm§.addChild(this.§_-B5§.sprite);
            }
         }
         else
         {
            mNextState = §_-Py§.§_-8r§;
         }
      }
      
      private function §_-KM§() : String
      {
         var _loc1_:String = §_-4O§.§_-ol§;
         var _loc2_:String = §_-4O§.§_-aZ§().§_-3l§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-4O§.§_-XE§)
         {
            _loc1_ = §_-4O§.§_-FH§;
            _loc2_ = §_-4O§.§_-aZ§().§_-3l§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-B5§)
         {
            if(§_-gb§.§_-ls§.§_-Lm§)
            {
               §_-gb§.§_-ls§.§_-Lm§.removeChild(this.§_-B5§.sprite);
            }
            this.§_-B5§.dispose();
            this.§_-B5§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-B5§.update(param1))
         {
            mNextState = §_-Py§.§_-8r§;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
   }
}
