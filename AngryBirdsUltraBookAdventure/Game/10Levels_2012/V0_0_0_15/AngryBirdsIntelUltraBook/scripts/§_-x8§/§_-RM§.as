package §_-x8§
{
   import §_-Hb§.§_-ok§;
   import §_-dX§.§_-03L§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §_-RM§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "load";
      
      public static var §_-0CY§:uint = 4000;
       
      
      private var §_-4h§:Boolean = false;
      
      private var §_-Zz§:uint;
      
      private var §_-V0§:Boolean = false;
      
      public var §_-1C§:XML;
      
      public var §_-yy§:XML;
      
      public var §_-08o§:DisplayObjectContainer;
      
      private var §_-3o§:String;
      
      private var §_-Df§:String;
      
      public function §_-RM§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-3o§ = param4;
         this.§_-Df§ = param5;
         super(param1,param2);
         §_-9o§ = true;
         §_-0CY§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-ok§.init(§_-oh§("connectionProfileId"));
         if(!§_-03L§.§_-3S§.§_-gB§())
         {
            §_-03L§.§_-3S§.init(§_-ok§.§_-Ji§(),this.§_-3o§,this.§_-Df§,null);
         }
         §_-vO§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§_-08o§ = param1;
      }
      
      public function §_-kU§(param1:XML) : void
      {
         this.§_-1C§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-FQ§.addChild(this.§_-08o§);
         this.setLoadingPercentage(0);
         this.§_-Zz§ = getTimer();
      }
      
      private function §_-0Bk§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-03L§.§_-3S§.§_-02K§())
         {
            for each(_loc1_ in this.§_-1C§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §_-03L§.§_-3S§.§_-0Ab§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-1C§.packages.pack)
            {
               §_-03L§.§_-3S§.§_-0Ab§(_loc2_);
            }
            §_-03L§.§_-3S§.§_-Zb§(this.§_-Q2§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-V0§ && this.§_-0Bk§())
         {
            this.§_-V0§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-03L§.§_-3S§.§_-B2§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-Zz§) / §_-0CY§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§_-03L§.§_-3S§.§_-B2§() >= 1)
         {
            §_-03L§.§_-3S§.§_-0Eu§();
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-FQ§.removeChild(this.§_-08o§);
         this.§_-08o§ = null;
         super.cleanup();
      }
      
      private function §_-Q2§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§_-08o§)
         {
            this.§_-08o§.x = param1 - this.§_-08o§.width >> 1;
            this.§_-08o§.y = param2 - this.§_-08o§.height >> 1;
         }
      }
   }
}
