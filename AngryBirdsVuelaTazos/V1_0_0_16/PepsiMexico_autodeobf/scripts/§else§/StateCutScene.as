package §else§
{
   import §_-Qx§.§_-Sf§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   import §_-ya§.§_-oc§;
   import §_-ya§.§_-u-§;
   
   public class StateCutScene extends §_-VA§
   {
      
      public static const §_-Az§:String = "StateCutScene";
       
      
      private var §_-Vd§:§_-oc§;
      
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
         §_-Qu§.§_-SQ§();
         var _loc1_:String = this.§_-vz§();
         this.§_-Vd§ = §_-u-§.§each §(_loc1_);
         if(this.§_-Vd§)
         {
            §_-MB§.§_-A7§.§_-Gf§(true);
            §_-MB§.§_-A7§.§_-m3§(false);
            this.§_-Vd§.update(0);
            if(§_-MB§.§_-A7§.§_-Zo§)
            {
               §_-MB§.§_-A7§.§_-Zo§.addChild(this.§_-Vd§.sprite);
            }
         }
         else
         {
            mNextState = §_-Jw§.§_-Az§;
         }
      }
      
      private function §_-vz§() : String
      {
         var _loc1_:String = §_-Sf§.§_-6M§;
         var _loc2_:String = §_-Sf§.§_-Xv§().§_-4B§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-Sf§.§_-LD§)
         {
            _loc1_ = §_-Sf§.§_-vj§;
            _loc2_ = §_-Sf§.§_-Xv§().§_-4B§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-Vd§)
         {
            if(§_-MB§.§_-A7§.§_-Zo§)
            {
               §_-MB§.§_-A7§.§_-Zo§.removeChild(this.§_-Vd§.sprite);
            }
            this.§_-Vd§.dispose();
            this.§_-Vd§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-Vd§.update(param1))
         {
            mNextState = §_-Jw§.§_-Az§;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
   }
}
