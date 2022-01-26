package §_-Je§
{
   import §_-Y§.§_-39§;
   import §_-ot§.§_-o6§;
   import §_-rh§.§_-EN§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-uE§ extends §_-RH§
   {
      
      public static const §_-7J§:String = "load";
      
      public static var §_-5w§:uint = 4000;
       
      
      private var §_-ul§:Boolean = false;
      
      private var §_-Tj§:uint;
      
      private var §_-dT§:Boolean = false;
      
      public var §_-7c§:XML;
      
      public var §_-4t§:XML;
      
      public var §_-Wd§:Array;
      
      public var §_-wK§:int;
      
      public var §_-AV§:DisplayObjectContainer;
      
      private var §_-A6§:String;
      
      private var §_-sp§:String;
      
      public function §_-uE§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-A6§ = param4;
         this.§_-sp§ = param5;
         super(param1,param2);
         §_-U6§ = true;
         §_-5w§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-EN§.init(§_-hv§("connectionProfileId"));
         if(!§_-39§.§_-F8§())
         {
            §_-39§.init(§_-EN§.§_-Sl§(),this.§_-A6§,this.§_-sp§);
         }
         this.§_-Wd§ = new Array();
         this.§_-wK§ = 0;
         this.§_-te§(this.§_-nW§);
         §_-BO§(true);
      }
      
      public function §_-v3§(param1:DisplayObjectContainer) : void
      {
         this.§_-AV§ = param1;
      }
      
      public function §_-pD§(param1:XML) : void
      {
         this.§_-7c§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-Pj§.addChild(this.§_-AV§);
         this.§_-Vu§(0);
         this.§_-Tj§ = getTimer();
      }
      
      private function §_-Js§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-39§.§_-Jk§())
         {
            for each(_loc1_ in this.§_-7c§.Library)
            {
               if(_loc1_.@startupLoad.toString() == "true")
               {
                  §_-39§.§_-u-§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-7c§.packages.pack)
            {
               §_-39§.§_-u-§(_loc2_);
            }
            §_-39§.§_-EZ§(this.§_-rr§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-dT§ && this.§_-Js§())
         {
            this.§_-dT§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-39§.§ set§()) * 4.5;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-Tj§) / §_-5w§);
         var _loc5_:Number = Math.min(1,this.§_-wK§ / this.§_-Wd§.length) * 4.5;
         var _loc6_:Number = (_loc3_ + _loc4_ + _loc5_) / 10;
         this.§_-ps§();
         this.§_-Vu§(_loc6_);
         if(_loc6_ >= 1)
         {
            §_-39§.§_-3R§();
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-Pj§.removeChild(this.§_-AV§);
         this.§_-AV§ = null;
         this.§_-Wd§ = null;
         super.cleanup();
      }
      
      private function §_-rr§() : void
      {
      }
      
      private function §_-nW§() : void
      {
      }
      
      public function §_-te§(param1:Function) : void
      {
         if(§_-NX§ && !§_-TY§)
         {
            this.§_-Wd§[this.§_-Wd§.length] = param1;
         }
         else
         {
            §_-o6§.log("WARNING: LoadState -> addCallBackFunction is called when the LoadState can not accept new callbacks");
         }
      }
      
      public function §_-ps§() : void
      {
         var _loc1_:Function = null;
         if(this.§_-wK§ < this.§_-Wd§.length)
         {
            _loc1_ = this.§_-Wd§[this.§_-wK§];
            _loc1_.call();
            ++this.§_-wK§;
         }
      }
      
      public function §_-Vu§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-AV§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-AV§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
