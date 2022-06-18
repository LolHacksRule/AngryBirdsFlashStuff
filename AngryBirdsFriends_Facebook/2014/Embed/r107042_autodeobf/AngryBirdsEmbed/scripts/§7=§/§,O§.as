package §7=§
{
   import §-!3§.§!S§;
   import §=Y§.§-=§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §,O§ extends §9Y§
   {
      
      public static const §]! §:String = "load";
      
      public static var §0!A§:uint = 4000;
       
      
      private var §[!+§:Boolean = false;
      
      private var §;!D§:uint;
      
      private var §%8§:Boolean = false;
      
      public var §%<§:XML;
      
      public var §'x§:XML;
      
      public var §+u§:DisplayObjectContainer;
      
      protected var § O§:String;
      
      protected var §`z§:String;
      
      public function §,O§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§ O§ = param4;
         this.§`z§ = param5;
         super(param1,param2);
         §-`§ = true;
         §0!A§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §-=§.init(§&N§("connectionProfileId"));
         if(!§!S§.§5+§.§8!C§())
         {
            this.initLoadManager();
         }
         §8@§(true);
      }
      
      protected function initLoadManager() : void
      {
         §!S§.§5+§.init(§-=§.§-!J§(),this.§ O§,this.§`z§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§+u§ = param1;
      }
      
      public function §?F§(param1:XML) : void
      {
         this.§%<§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §;e§.addChild(this.§+u§);
         this.setLoadingPercentage(0);
         this.§;!D§ = getTimer();
      }
      
      private function §'h§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§!S§.§5+§.§1!N§())
         {
            for each(_loc1_ in this.§%<§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §!S§.§5+§.§5!1§(_loc1_);
               }
            }
            for each(_loc1_ in this.§%<§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §!S§.§5+§.§5!1§(_loc1_);
               }
            }
            for each(_loc2_ in this.§%<§.config.xml)
            {
               §!S§.§5+§.§5!1§(_loc2_);
            }
            for each(_loc3_ in this.§%<§.packages.pack)
            {
               §!S§.§5+§.§5!1§(_loc3_);
            }
            §!S§.§5+§.§'+§(this.§ 6§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§%8§ && this.§'h§())
         {
            this.§%8§ = true;
         }
         var _loc3_:Number = Math.min(1,§!S§.§5+§.§#K§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§;!D§) / §0!A§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§!S§.§5+§.§#K§() >= 1)
         {
            §!S§.§5+§.§?#§();
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §;e§.removeChild(this.§+u§);
         this.§+u§ = null;
         super.cleanup();
      }
      
      private function § 6§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§+u§)
         {
            this.§+u§.x = param1 - this.§+u§.width >> 1;
            this.§+u§.y = param2 - this.§+u§.height >> 1;
         }
      }
   }
}
