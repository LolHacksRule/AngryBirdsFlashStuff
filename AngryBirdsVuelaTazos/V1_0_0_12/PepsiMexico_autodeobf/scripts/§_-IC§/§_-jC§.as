package §_-IC§
{
   import §_-LM§.§_-Yf§;
   import §_-ZV§.§_-6k§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-jC§ extends §_-Uw§
   {
      
      public static const §_-Mi§:String = "load";
      
      public static var §_-Zy§:uint = 4000;
       
      
      private var §_-0W§:Boolean = false;
      
      private var §_-f3§:uint;
      
      private var §_-Yi§:Boolean = false;
      
      public var §_-qY§:XML;
      
      public var §_-cQ§:XML;
      
      public var §_-WD§:DisplayObjectContainer;
      
      private var §_-oL§:String;
      
      private var §_-CX§:String;
      
      public function §_-jC§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-oL§ = param4;
         this.§_-CX§ = param5;
         super(param1,param2);
         §_-Yy§ = true;
         §_-Zy§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-6k§.init(§_-gl§("connectionProfileId"));
         if(!§_-Yf§.§_-Pa§())
         {
            §_-Yf§.init(§_-6k§.§_-tx§(),this.§_-oL§,this.§_-CX§,null);
         }
         §_-gr§(true);
      }
      
      public function §_-pr§(param1:DisplayObjectContainer) : void
      {
         this.§_-WD§ = param1;
      }
      
      public function §_-HQ§(param1:XML) : void
      {
         this.§_-qY§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-C8§.addChild(this.§_-WD§);
         this.§_-Rn§(0);
         this.§_-f3§ = getTimer();
      }
      
      private function §_-hw§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-Yf§.§_-x-§())
         {
            for each(_loc1_ in this.§_-qY§.Library)
            {
               if(_loc1_.@startupLoad.toString() == "true")
               {
                  §_-Yf§.§_-Kz§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-qY§.packages.pack)
            {
               §_-Yf§.§_-Kz§(_loc2_);
            }
            §_-Yf§.§_-Rq§(this.§_-cu§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-Yi§ && this.§_-hw§())
         {
            this.§_-Yi§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-Yf§.§_-fh§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-f3§) / §_-Zy§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§_-Rn§(_loc5_);
         if(§_-Yf§.§_-fh§() >= 1)
         {
            §_-Yf§.§_-o9§();
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-C8§.removeChild(this.§_-WD§);
         this.§_-WD§ = null;
         super.cleanup();
      }
      
      private function §_-cu§() : void
      {
      }
      
      public function §_-Rn§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-WD§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-WD§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
