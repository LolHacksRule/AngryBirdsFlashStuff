package §_-8§
{
   import §_-M0§.§_-u4§;
   import §_-Wy§.§_-JO§;
   import §_-Wy§.§_-qj§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-HB§;
   
   public class StateCutScene extends §_-O5§
   {
      
      public static const §_-7m§:String = "StateCutScene";
       
      
      private var §_-Wc§:§_-JO§;
      
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
         §_-Tj§.§_-Kv§();
         var _loc1_:String = this.§_-8O§();
         this.§_-Wc§ = §_-qj§.§_-xi§(_loc1_);
         if(this.§_-Wc§)
         {
            §_-u4§.§_-40§.§_-AB§(true);
            §_-u4§.§_-40§.§_-rt§(false);
            this.§_-Wc§.update(0);
            if(§_-u4§.§_-40§.§_-M2§)
            {
               §_-u4§.§_-40§.§_-M2§.addChild(this.§_-Wc§.sprite);
            }
         }
         else
         {
            mNextState = §_-OU§.§_-7m§;
         }
      }
      
      private function §_-8O§() : String
      {
         var _loc1_:String = §_-HB§.§_-5p§;
         var _loc2_:String = §_-HB§.§_-Ub§().§_-un§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-HB§.§_-kO§)
         {
            _loc1_ = §_-HB§.§_-Z-§;
            _loc2_ = §_-HB§.§_-Ub§().§_-un§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-Wc§)
         {
            if(§_-u4§.§_-40§.§_-M2§)
            {
               §_-u4§.§_-40§.§_-M2§.removeChild(this.§_-Wc§.sprite);
            }
            this.§_-Wc§.dispose();
            this.§_-Wc§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-Wc§.update(param1))
         {
            mNextState = §_-OU§.§_-7m§;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
   }
}
