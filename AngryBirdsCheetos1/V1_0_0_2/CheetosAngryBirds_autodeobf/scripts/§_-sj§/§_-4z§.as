package §_-sj§
{
   import §_-Bi§.§_-p0§;
   import §_-Vr§.§_-HN§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-4z§ extends §_-qs§
   {
      
      public static const §_-jn§:String = "load";
      
      public static var §_-oO§:uint = 4000;
       
      
      private var §_-3G§:Boolean = false;
      
      private var §_-aY§:uint;
      
      private var §_-BL§:Boolean = false;
      
      public var §_-RB§:XML;
      
      public var §_-bs§:XML;
      
      public var §_-vj§:DisplayObjectContainer;
      
      private var §_-51§:String;
      
      private var §_-RV§:String;
      
      public function §_-4z§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§_-51§ = param4;
         this.§_-RV§ = param5;
         super(param1,param2);
         §_-aE§ = true;
         §_-oO§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §_-p0§.init(§_-6p§("connectionProfileId"));
         if(!§_-HN§.§_-0H§.§_-hr§())
         {
            §_-HN§.§_-0H§.init(§_-p0§.§_-zI§(),this.§_-51§,this.§_-RV§,null);
         }
         §_-qb§(true);
      }
      
      public function §_-82§(param1:DisplayObjectContainer) : void
      {
         this.§_-vj§ = param1;
      }
      
      public function §_-VA§(param1:XML) : void
      {
         this.§_-RB§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-xQ§.addChild(this.§_-vj§);
         this.§_-N3§(0);
         this.§_-aY§ = getTimer();
      }
      
      private function §_-vG§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§_-HN§.§_-0H§.§_-Dp§())
         {
            for each(_loc1_ in this.§_-RB§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §_-HN§.§_-0H§.§_-00-§(_loc1_);
               }
            }
            for each(_loc2_ in this.§_-RB§.packages.pack)
            {
               §_-HN§.§_-0H§.§_-00-§(_loc2_);
            }
            §_-HN§.§_-0H§.§_-cr§(this.§_-zh§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§_-BL§ && this.§_-vG§())
         {
            this.§_-BL§ = true;
         }
         var _loc3_:Number = Math.min(1,§_-HN§.§_-0H§.§_-17§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-aY§) / §_-oO§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.§_-N3§(_loc5_);
         if(§_-HN§.§_-0H§.§_-17§() >= 1)
         {
            §_-HN§.§_-0H§.§_-78§();
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §_-xQ§.removeChild(this.§_-vj§);
         this.§_-vj§ = null;
         super.cleanup();
      }
      
      private function §_-zh§() : void
      {
      }
      
      public function §_-N3§(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§_-vj§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§_-vj§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
