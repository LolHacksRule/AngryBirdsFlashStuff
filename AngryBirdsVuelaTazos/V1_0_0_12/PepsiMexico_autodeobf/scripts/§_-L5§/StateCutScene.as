package §_-L5§
{
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-Su§.§_-8v§;
   import §_-v3§.§_-G3§;
   import §_-wH§.§_-6w§;
   import §_-wH§.§_-Em§;
   
   public class StateCutScene extends §_-Uw§
   {
      
      public static const §_-Mi§:String = "StateCutScene";
       
      
      private var §_-iF§:§_-6w§;
      
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
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.start();
         }
         §_-0Y§.§_-EA§();
         var _loc1_:String = this.§_-d§();
         this.§_-iF§ = §_-Em§.§_-pp§(_loc1_);
         if(this.§_-iF§)
         {
            §_-3C§.§_-bz§.§_-cZ§(true);
            §_-3C§.§_-bz§.§_-ea§(false);
            this.§_-iF§.update(0);
            if(§_-3C§.§_-bz§.§_-xO§)
            {
               §_-3C§.§_-bz§.§_-xO§.addChild(this.§_-iF§.sprite);
            }
         }
         else
         {
            mNextState = §_-0v§.§_-Mi§;
         }
      }
      
      private function §_-d§() : String
      {
         var _loc1_:String = §_-8v§.§_-d3§;
         var _loc2_:String = §_-8v§.§_-dJ§().§_-lG§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-8v§.§_-cy§)
         {
            _loc1_ = §_-8v§.§_-rq§;
            _loc2_ = §_-8v§.§_-dJ§().§_-lG§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-iF§)
         {
            if(§_-3C§.§_-bz§.§_-xO§)
            {
               §_-3C§.§_-bz§.§_-xO§.removeChild(this.§_-iF§.sprite);
            }
            this.§_-iF§.dispose();
            this.§_-iF§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-iF§.update(param1))
         {
            mNextState = §_-0v§.§_-Mi§;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
   }
}
