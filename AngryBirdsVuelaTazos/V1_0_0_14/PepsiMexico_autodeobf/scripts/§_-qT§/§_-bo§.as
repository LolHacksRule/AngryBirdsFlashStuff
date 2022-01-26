package §_-qT§
{
   import §_-ox§.§_-1l§;
   import §_-rD§.§_-0k§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-bo§ extends §_-O5§
   {
      
      public static const §_-7m§:String = "load";
      
      public static var §_-Wx§:uint = 4000;
       
      
      private var §_-68§:Boolean = false;
      
      private var §_-4-§:uint;
      
      private var §_-sT§:Boolean = false;
      
      public var §_-2D§:XML;
      
      public var §_-70§:XML;
      
      public var §_-fZ§:DisplayObjectContainer;
      
      private var §_-G§:String;
      
      private var §_-lq§:String;
      
      public function §_-bo§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-G§ = param4;
         this.§_-lq§ = param5;
         super(param1,param2);
         §_-ZT§ = true;
         §_-Wx§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-1l§.init(§_-9I§("connectionProfileId"));
         if(!§_-0k§.§_-gB§())
         {
            §_-0k§.init(§_-1l§.§_-7g§(),this.§_-G§,this.§_-lq§,null);
         }
         §_-OC§(true);
      }
      
      public function §_-he§(param1:DisplayObjectContainer) : void
      {
         this.§_-fZ§ = param1;
      }
      
      public function §_-HU§(param1:XML) : void
      {
         this.§_-2D§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-MT§.addChild(this.§_-fZ§);
         this.§_-jM§(0);
         this.§_-4-§ = getTimer();
      }
      
      private function §_-VZ§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-0k§.§_-14§())
         {
            for each(_loc1_ in this.§_-2D§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §_-0k§.§_-qn§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-2D§.packages.pack)
            {
               §_-0k§.§_-qn§(_loc2_);
            }
            §_-0k§.§_-s7§(this.§_-5I§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-sT§ && this.§_-VZ§())
         {
            this.§_-sT§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-0k§.§_-db§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-4-§) / §_-Wx§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§_-jM§(_loc5_);
         if(§_-0k§.§_-db§() >= 1)
         {
            §_-0k§.§_-GY§();
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-MT§.removeChild(this.§_-fZ§);
         this.§_-fZ§ = null;
         super.cleanup();
      }
      
      private function §_-5I§() : void
      {
      }
      
      public function §_-jM§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-fZ§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-fZ§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
