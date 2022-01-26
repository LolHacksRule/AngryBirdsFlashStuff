package §_-5M§
{
   import §_-3P§.§_-dN§;
   import §_-B2§.§_-H4§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-KX§.§_-bf§;
   import §_-KX§.§try §;
   
   public class StateCutScene extends §_-RH§
   {
      
      public static const §_-7J§:String = "StateCutScene";
       
      
      private var §_-Yi§:§_-bf§;
      
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
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.start();
         }
         §_-5e§.§_-O9§();
         var _loc1_:String = this.§_-hC§();
         this.§_-Yi§ = §try §.§_-eQ§(_loc1_);
         if(this.§_-Yi§)
         {
            §_-2N§.§_-iP§.§_-jx§(true);
            §_-2N§.§_-iP§.§_-xN§(false);
            this.§_-Yi§.update(0);
            if(§_-2N§.§_-iP§.§_-sv§)
            {
               §_-2N§.§_-iP§.§_-sv§.addChild(this.§_-Yi§.sprite);
            }
         }
         else
         {
            mNextState = §_-G§.§_-7J§;
         }
      }
      
      private function §_-hC§() : String
      {
         var _loc1_:String = §_-dN§.§_-hW§;
         var _loc2_:String = §_-dN§.§_-3n§().§_-nC§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-dN§.§_-k5§)
         {
            _loc1_ = §_-dN§.§_-fy§;
            _loc2_ = §_-dN§.§_-3n§().§_-nC§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-Yi§)
         {
            if(§_-2N§.§_-iP§.§_-sv§)
            {
               §_-2N§.§_-iP§.§_-sv§.removeChild(this.§_-Yi§.sprite);
            }
            this.§_-Yi§.dispose();
            this.§_-Yi§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-Yi§.update(param1))
         {
            mNextState = §_-G§.§_-7J§;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
   }
}
