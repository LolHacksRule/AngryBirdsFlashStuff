package §;<§
{
   import §%!K§.§ i§;
   import §^!m§.§6§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §1N§ extends §'B§
   {
      
      public static const §%!Q§:String = "load";
      
      public static var §%H§:uint = 4000;
       
      
      private var §1!r§:Boolean = false;
      
      private var §1"$§:uint;
      
      private var §4T§:Boolean = false;
      
      public var §%"7§:XML;
      
      public var §0r§:XML;
      
      public var §&c§:DisplayObjectContainer;
      
      private var §;N§:String;
      
      private var §5K§:String;
      
      public function §1N§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§;N§ = param4;
         this.§5K§ = param5;
         super(param1,param2);
         §'!d§ = true;
         §%H§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §6§.init(§'M§("connectionProfileId"));
         if(!§ i§.§[E§.§2!;§())
         {
            § i§.§[E§.init(§6§.§25§(),this.§;N§,this.§5K§,null);
         }
         §!4§(true);
      }
      
      public function §]""§(param1:DisplayObjectContainer) : void
      {
         this.§&c§ = param1;
      }
      
      public function §'X§(param1:XML) : void
      {
         this.§%"7§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         § D§.addChild(this.§&c§);
         this.setLoadingPercentage(0);
         this.§1"$§ = getTimer();
      }
      
      private function §6i§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§ i§.§[E§.§+!H§())
         {
            for each(_loc1_ in this.§%"7§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  § i§.§[E§.§98§(_loc1_);
               }
            }
            for each(_loc1_ in this.§%"7§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  § i§.§[E§.§98§(_loc1_);
               }
            }
            for each(_loc2_ in this.§%"7§.packages.pack)
            {
               § i§.§[E§.§98§(_loc2_);
            }
            § i§.§[E§.§&!@§(this.§;O§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§4T§ && this.§6i§())
         {
            this.§4T§ = true;
         }
         var _loc3_:Number = Math.min(1,§ i§.§[E§.§,b§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§1"$§) / §%H§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§ i§.§[E§.§,b§() >= 1)
         {
            § i§.§[E§.§ E§();
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         § D§.removeChild(this.§&c§);
         this.§&c§ = null;
         super.cleanup();
      }
      
      private function §;O§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§&c§)
         {
            this.§&c§.x = param1 - this.§&c§.width >> 1;
            this.§&c§.y = param2 - this.§&c§.height >> 1;
         }
      }
   }
}
