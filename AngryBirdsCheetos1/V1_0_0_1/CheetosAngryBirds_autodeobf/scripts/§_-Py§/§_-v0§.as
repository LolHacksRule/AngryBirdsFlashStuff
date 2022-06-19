package §_-Py§
{
   import §_-3f§.§_-mc§;
   import §_-LQ§.§_-Vj§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-v0§ extends §_-eK§
   {
      
      public static const §_-bg§:String = "load";
      
      public static var §_-Mv§:uint = 4000;
       
      
      private var §_-lp§:Boolean = false;
      
      private var §_-Yx§:uint;
      
      private var §_-QV§:Boolean = false;
      
      public var §var§:XML;
      
      public var §_-D6§:XML;
      
      public var §_-vs§:DisplayObjectContainer;
      
      private var §_-pu§:String;
      
      private var §_-Yv§:String;
      
      public function §_-v0§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-pu§ = param4;
         this.§_-Yv§ = param5;
         super(param1,param2);
         §_-M4§ = true;
         §_-Mv§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-mc§.init(§_-os§("connectionProfileId"));
         if(!§_-Vj§.§var §.§_-bd§())
         {
            §_-Vj§.§var §.init(§_-mc§.§_-ZI§(),this.§_-pu§,this.§_-Yv§,null);
         }
         §_-uS§(true);
      }
      
      public function §_-Ct§(param1:DisplayObjectContainer) : void
      {
         this.§_-vs§ = param1;
      }
      
      public function §_-aD§(param1:XML) : void
      {
         this.§var§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-S0§.addChild(this.§_-vs§);
         this.§_-d7§(0);
         this.§_-Yx§ = getTimer();
      }
      
      private function §_-dM§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-Vj§.§var §.§_-nR§())
         {
            for each(_loc1_ in this.§var§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §_-Vj§.§var §.§_-sm§(_loc1_);
               }
            }
            for each(_loc2_ in this.§var§.packages.pack)
            {
               §_-Vj§.§var §.§_-sm§(_loc2_);
            }
            §_-Vj§.§var §.§_-CP§(this.§_-sz§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-QV§ && this.§_-dM§())
         {
            this.§_-QV§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-Vj§.§var §.§_-eH§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-Yx§) / §_-Mv§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§_-d7§(_loc5_);
         if(§_-Vj§.§var §.§_-eH§() >= 1)
         {
            §_-Vj§.§var §.§_-Z5§();
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-S0§.removeChild(this.§_-vs§);
         this.§_-vs§ = null;
         super.cleanup();
      }
      
      private function §_-sz§() : void
      {
      }
      
      public function §_-d7§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-vs§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-vs§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
