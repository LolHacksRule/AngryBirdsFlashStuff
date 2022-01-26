package §_-Hq§
{
   import §_-Ah§.§_-b§;
   import §_-Sc§.§_-eF§;
   import §_-Sc§.§_-iB§;
   import §_-TE§.§_-PN§;
   import §_-Y-§.§_-A5§;
   import §_-d5§.§_-6Y§;
   
   public class StateCutScene extends §_-PN§
   {
      
      public static const §_-dh§:String = "StateCutScene";
       
      
      private var §_-RV§:§_-eF§;
      
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
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.start();
         }
         §_-I8§.§_-vW§();
         var _loc1_:String = this.§_-5a§();
         this.§_-RV§ = §_-iB§.§_-bp§(_loc1_);
         if(this.§_-RV§)
         {
            §_-b§.§_-cK§.§_-uw§(true);
            §_-b§.§_-cK§.§_-j3§(false);
            this.§_-RV§.update(0);
            if(§_-b§.§_-cK§.§_-Dv§)
            {
               §_-b§.§_-cK§.§_-Dv§.addChild(this.§_-RV§.sprite);
            }
         }
         else
         {
            mNextState = §_-mF§.§_-dh§;
         }
      }
      
      private function §_-5a§() : String
      {
         var _loc1_:String = §_-A5§.§ try§;
         var _loc2_:String = §_-A5§.§_-bX§().§_-EI§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-A5§.§_-9-§)
         {
            _loc1_ = §_-A5§.§_-KH§;
            _loc2_ = §_-A5§.§_-bX§().§_-EI§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-RV§)
         {
            if(§_-b§.§_-cK§.§_-Dv§)
            {
               §_-b§.§_-cK§.§_-Dv§.removeChild(this.§_-RV§.sprite);
            }
            this.§_-RV§.dispose();
            this.§_-RV§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-RV§.update(param1))
         {
            mNextState = §_-mF§.§_-dh§;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
   }
}
