package §_-EH§
{
   import §_-23§.§_-oZ§;
   import §_-IO§.§_-zS§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-cU§ extends §_-uz§
   {
      
      public static const §_-3o§:String = "load";
      
      public static var §_-qS§:uint = 4000;
       
      
      private var §_-4z§:Boolean = false;
      
      private var §_-pH§:uint;
      
      private var §_-8o§:Boolean = false;
      
      public var §_-38§:XML;
      
      public var §_-nJ§:XML;
      
      public var §_-v6§:DisplayObjectContainer;
      
      private var §_-Ih§:String;
      
      private var §_-rN§:String;
      
      public function §_-cU§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-Ih§ = param4;
         this.§_-rN§ = param5;
         super(param1,param2);
         §_-TF§ = true;
         §_-qS§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-zS§.init(§_-U0§("connectionProfileId"));
         if(!§_-oZ§.§_-yU§.§_-BG§())
         {
            §_-oZ§.§_-yU§.init(§_-zS§.§_-Jv§(),this.§_-Ih§,this.§_-rN§,null);
         }
         §_-ur§(true);
      }
      
      public function §_-EP§(param1:DisplayObjectContainer) : void
      {
         this.§_-v6§ = param1;
      }
      
      public function §_-GS§(param1:XML) : void
      {
         this.§_-38§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-kv§.addChild(this.§_-v6§);
         this.§_-aB§(0);
         this.§_-pH§ = getTimer();
      }
      
      private function §_-kJ§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-oZ§.§_-yU§.§_-v2§())
         {
            for each(_loc1_ in this.§_-38§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §_-oZ§.§_-yU§.§use§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-38§.packages.pack)
            {
               §_-oZ§.§_-yU§.§use§(_loc2_);
            }
            §_-oZ§.§_-yU§.§_-RS§(this.§_-D0§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-8o§ && this.§_-kJ§())
         {
            this.§_-8o§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-oZ§.§_-yU§.§_-PK§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-pH§) / §_-qS§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§_-aB§(_loc5_);
         if(§_-oZ§.§_-yU§.§_-PK§() >= 1)
         {
            §_-oZ§.§_-yU§.§_-Q3§();
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-kv§.removeChild(this.§_-v6§);
         this.§_-v6§ = null;
         super.cleanup();
      }
      
      private function §_-D0§() : void
      {
      }
      
      public function §_-aB§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-v6§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-v6§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
