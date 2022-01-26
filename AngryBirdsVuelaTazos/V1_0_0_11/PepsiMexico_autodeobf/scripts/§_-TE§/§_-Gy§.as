package §_-TE§
{
   import §_-ZG§.§_-Ne§;
   import §_-nd§.§_-wz§;
   import §_-p4§.§_-rN§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-Gy§ extends §_-PN§
   {
      
      public static const §_-dh§:String = "load";
      
      public static var §_-is§:uint = 4000;
       
      
      private var §_-rX§:Boolean = false;
      
      private var §_-V-§:uint;
      
      private var §_-FN§:Boolean = false;
      
      public var §_-wB§:XML;
      
      public var §_-no§:XML;
      
      public var §_-Rs§:Array;
      
      public var §_-Yz§:int;
      
      public var §_-gC§:DisplayObjectContainer;
      
      private var §_-hV§:String;
      
      private var §_-Zm§:String;
      
      public function §_-Gy§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-hV§ = param4;
         this.§_-Zm§ = param5;
         super(param1,param2);
         §_-nF§ = true;
         §_-is§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-wz§.init(§_-Yv§("connectionProfileId"));
         if(!§_-rN§.§_-xX§())
         {
            §_-rN§.init(§_-wz§.§_-XN§(),this.§_-hV§,this.§_-Zm§);
         }
         this.§_-Rs§ = new Array();
         this.§_-Yz§ = 0;
         this.§_-ru§(this.§_-mR§);
         §_-Y7§(true);
      }
      
      public function §_-4B§(param1:DisplayObjectContainer) : void
      {
         this.§_-gC§ = param1;
      }
      
      public function §_-H0§(param1:XML) : void
      {
         this.§_-wB§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-0O§.addChild(this.§_-gC§);
         this.§_-b5§(0);
         this.§_-V-§ = getTimer();
      }
      
      private function §_-AN§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-rN§.§_-Xa§())
         {
            for each(_loc1_ in this.§_-wB§.Library)
            {
               if(_loc1_.@startupLoad.toString() == "true")
               {
                  §_-rN§.§_-hu§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-wB§.packages.pack)
            {
               §_-rN§.§_-hu§(_loc2_);
            }
            §_-rN§.§_-Uu§(this.§_-lY§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-FN§ && this.§_-AN§())
         {
            this.§_-FN§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-rN§.§_-7R§()) * 4.5;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-V-§) / §_-is§);
         var _loc5_:Number = Math.min(1,this.§_-Yz§ / this.§_-Rs§.length) * 4.5;
         var _loc6_:Number = (_loc3_ + _loc4_ + _loc5_) / 10;
         this.§_-mT§();
         this.§_-b5§(_loc6_);
         if(_loc6_ >= 1)
         {
            §_-rN§.§_-GB§();
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-0O§.removeChild(this.§_-gC§);
         this.§_-gC§ = null;
         this.§_-Rs§ = null;
         super.cleanup();
      }
      
      private function §_-lY§() : void
      {
      }
      
      private function §_-mR§() : void
      {
      }
      
      public function §_-ru§(param1:Function) : void
      {
         if(§_-bN§ && !§_-Wx§)
         {
            this.§_-Rs§[this.§_-Rs§.length] = param1;
         }
         else
         {
            §_-Ne§.log("WARNING: LoadState -> addCallBackFunction is called when the LoadState can not accept new callbacks");
         }
      }
      
      public function §_-mT§() : void
      {
         var _loc1_:Function = null;
         if(this.§_-Yz§ < this.§_-Rs§.length)
         {
            _loc1_ = this.§_-Rs§[this.§_-Yz§];
            _loc1_.call();
            ++this.§_-Yz§;
         }
      }
      
      public function §_-b5§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-gC§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-gC§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
