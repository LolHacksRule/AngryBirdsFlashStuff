package §_-y7§
{
   import §_-bz§.§_-uC§;
   import §_-wt§.§_-TQ§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-YQ§ extends §_-VA§
   {
      
      public static const §_-Az§:String = "load";
      
      public static var §_-m4§:uint = 4000;
       
      
      private var §_-Bl§:Boolean = false;
      
      private var §_-zF§:uint;
      
      private var §_-pL§:Boolean = false;
      
      public var §_-z3§:XML;
      
      public var §_-C§:XML;
      
      public var §_-4O§:DisplayObjectContainer;
      
      private var §_-3§:String;
      
      private var §_-lA§:String;
      
      public function §_-YQ§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-3§ = param4;
         this.§_-lA§ = param5;
         super(param1,param2);
         §_-u7§ = true;
         §_-m4§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-uC§.init(§extends§("connectionProfileId"));
         if(!§_-TQ§.§_-pc§())
         {
            §_-TQ§.init(§_-uC§.§_-V9§(),this.§_-3§,this.§_-lA§,null);
         }
         §_-Uu§(true);
      }
      
      public function §_-rT§(param1:DisplayObjectContainer) : void
      {
         this.§_-4O§ = param1;
      }
      
      public function §_-Mc§(param1:XML) : void
      {
         this.§_-z3§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-Cv§.addChild(this.§_-4O§);
         this.§_-e5§(0);
         this.§_-zF§ = getTimer();
      }
      
      private function §_-Q0§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-TQ§.§_-ts§())
         {
            for each(_loc1_ in this.§_-z3§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §_-TQ§.§_-VO§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-z3§.packages.pack)
            {
               §_-TQ§.§_-VO§(_loc2_);
            }
            §_-TQ§.§_-TH§(this.§_-El§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-pL§ && this.§_-Q0§())
         {
            this.§_-pL§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-TQ§.§_-1H§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-zF§) / §_-m4§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§_-e5§(_loc5_);
         if(§_-TQ§.§_-1H§() >= 1)
         {
            §_-TQ§.§_-qj§();
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-Cv§.removeChild(this.§_-4O§);
         this.§_-4O§ = null;
         super.cleanup();
      }
      
      private function §_-El§() : void
      {
      }
      
      public function §_-e5§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-4O§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-4O§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
