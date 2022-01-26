package §_-cu§
{
   import §_-gl§.§_-Fu§;
   import §_-pn§.§_-Kb§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-P-§ extends §_-UO§
   {
      
      public static const §_-1h§:String = "load";
      
      public static var §_-sZ§:uint = 4000;
       
      
      private var §_-5Q§:Boolean = false;
      
      private var §_-8Y§:uint;
      
      private var §_-Jq§:Boolean = false;
      
      public var §_-C6§:XML;
      
      public var §_-iJ§:XML;
      
      public var §_-9k§:DisplayObjectContainer;
      
      private var §_-vt§:String;
      
      private var §_-Bh§:String;
      
      public function §_-P-§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-vt§ = param4;
         this.§_-Bh§ = param5;
         super(param1,param2);
         §_-D9§ = true;
         §_-sZ§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-Kb§.init(§_-jB§("connectionProfileId"));
         if(!§_-Fu§.§_-JU§())
         {
            §_-Fu§.init(§_-Kb§.§_-CG§(),this.§_-vt§,this.§_-Bh§,null);
         }
         §_-pm§(true);
      }
      
      public function §_-u7§(param1:DisplayObjectContainer) : void
      {
         this.§_-9k§ = param1;
      }
      
      public function §_-qH§(param1:XML) : void
      {
         this.§_-C6§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-bB§.addChild(this.§_-9k§);
         this.§_-Yl§(0);
         this.§_-8Y§ = getTimer();
      }
      
      private function §_-Sl§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-Fu§.§_-MD§())
         {
            for each(_loc1_ in this.§_-C6§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §_-Fu§.§_-xZ§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-C6§.packages.pack)
            {
               §_-Fu§.§_-xZ§(_loc2_);
            }
            §_-Fu§.§_-nQ§(this.§_-c§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-Jq§ && this.§_-Sl§())
         {
            this.§_-Jq§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-Fu§.§_-iq§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-8Y§) / §_-sZ§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§_-Yl§(_loc5_);
         if(§_-Fu§.§_-iq§() >= 1)
         {
            §_-Fu§.§_-M6§();
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-bB§.removeChild(this.§_-9k§);
         this.§_-9k§ = null;
         super.cleanup();
      }
      
      private function §_-c§() : void
      {
      }
      
      public function §_-Yl§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-9k§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-9k§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
