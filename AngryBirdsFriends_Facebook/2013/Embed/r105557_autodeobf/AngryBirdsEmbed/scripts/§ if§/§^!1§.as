package § if§
{
   import §&@§.§;d§;
   import §=2§.§6z§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §^!1§ extends §2q§
   {
      
      public static const §&! §:String = "load";
      
      public static var §[!"§:uint = 4000;
       
      
      private var §@s§:Boolean = false;
      
      private var §6i§:uint;
      
      private var §[!5§:Boolean = false;
      
      public var §-!;§:XML;
      
      public var §6!D§:XML;
      
      public var §-N§:DisplayObjectContainer;
      
      protected var §&!'§:String;
      
      protected var §'!K§:String;
      
      public function §^!1§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§&!'§ = param4;
         this.§'!K§ = param5;
         super(param1,param2);
         §93§ = true;
         §[!"§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §6z§.init(§6$§("connectionProfileId"));
         if(!§;d§.§&e§.§#!7§())
         {
            this.§try §();
         }
         §,Q§(true);
      }
      
      protected function §try §() : void
      {
         §;d§.§&e§.init(§6z§.§<F§(),this.§&!'§,this.§'!K§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§-N§ = param1;
      }
      
      public function §4t§(param1:XML) : void
      {
         this.§-!;§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §>@§.addChild(this.§-N§);
         this.setLoadingPercentage(0);
         this.§6i§ = getTimer();
      }
      
      private function §3!1§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§;d§.§&e§.§ 5§())
         {
            for each(_loc1_ in this.§-!;§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;d§.§&e§.§"!M§(_loc1_);
               }
            }
            for each(_loc1_ in this.§-!;§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;d§.§&e§.§"!M§(_loc1_);
               }
            }
            for each(_loc2_ in this.§-!;§.config.xml)
            {
               §;d§.§&e§.§"!M§(_loc2_);
            }
            for each(_loc3_ in this.§-!;§.packages.pack)
            {
               §;d§.§&e§.§"!M§(_loc3_);
            }
            §;d§.§&e§.§;!"§(this.§<!1§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§[!5§ && this.§3!1§())
         {
            this.§[!5§ = true;
         }
         var _loc3_:Number = Math.min(1,§;d§.§&e§.§'e§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§6i§) / §[!"§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§;d§.§&e§.§'e§() >= 1)
         {
            §;d§.§&e§.§=O§();
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §>@§.removeChild(this.§-N§);
         this.§-N§ = null;
         super.cleanup();
      }
      
      private function §<!1§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§-N§)
         {
            this.§-N§.x = param1 - this.§-N§.width >> 1;
            this.§-N§.y = param2 - this.§-N§.height >> 1;
         }
      }
   }
}
