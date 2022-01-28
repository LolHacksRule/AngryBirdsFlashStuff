package §_-QG§
{
   import §_-sB§.§_-BZ§;
   import §_-wM§.§_-9a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-n4§ extends §_-t6§
   {
      
      public static const §_-8r§:String = "load";
      
      public static var §_-0l§:uint = 4000;
       
      
      private var §_-cz§:Boolean = false;
      
      private var §_-7U§:uint;
      
      private var §_-C-§:Boolean = false;
      
      public var §_-VZ§:XML;
      
      public var §_-my§:XML;
      
      public var §_-n6§:DisplayObjectContainer;
      
      private var §_-oP§:String;
      
      private var §_-L1§:String;
      
      public function §_-n4§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-oP§ = param4;
         this.§_-L1§ = param5;
         super(param1,param2);
         §_-cw§ = true;
         §_-0l§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-9a§.init(§_-Z5§("connectionProfileId"));
         if(!§_-BZ§.§_-8O§())
         {
            §_-BZ§.init(§_-9a§.§_-sJ§(),this.§_-oP§,this.§_-L1§,null);
         }
         §_-4F§(true);
      }
      
      public function §_-ot§(param1:DisplayObjectContainer) : void
      {
         this.§_-n6§ = param1;
      }
      
      public function §_-MJ§(param1:XML) : void
      {
         this.§_-VZ§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-j§.addChild(this.§_-n6§);
         this.§_-DN§(0);
         this.§_-7U§ = getTimer();
      }
      
      private function §_-aP§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-BZ§.§_-yc§())
         {
            for each(_loc1_ in this.§_-VZ§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §_-BZ§.§_-fU§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-VZ§.packages.pack)
            {
               §_-BZ§.§_-fU§(_loc2_);
            }
            §_-BZ§.§_-kp§(this.§_-D-§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-C-§ && this.§_-aP§())
         {
            this.§_-C-§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-BZ§.§_-B1§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-7U§) / §_-0l§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§_-DN§(_loc5_);
         if(§_-BZ§.§_-B1§() >= 1)
         {
            §_-BZ§.§_-aO§();
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-j§.removeChild(this.§_-n6§);
         this.§_-n6§ = null;
         super.cleanup();
      }
      
      private function §_-D-§() : void
      {
      }
      
      public function §_-DN§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-n6§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-n6§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
