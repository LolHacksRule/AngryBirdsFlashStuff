package §<!A§
{
   import §'9§.§3!§;
   import §3!$§.§^[§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §8?§ extends §,!?§
   {
      
      public static const §`W§:String = "load";
      
      public static var §"4§:uint = 4000;
       
      
      private var §-E§:Boolean = false;
      
      private var §26§:uint;
      
      private var §6j§:Boolean = false;
      
      public var §6D§:XML;
      
      public var §<g§:XML;
      
      public var §%z§:DisplayObjectContainer;
      
      protected var §&!4§:String;
      
      protected var §8-§:String;
      
      public function §8?§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§&!4§ = param4;
         this.§8-§ = param5;
         super(param1,param2);
         §]!G§ = true;
         §"4§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §^[§.init(§3v§("connectionProfileId"));
         if(!§3!§.§;R§.final())
         {
            this.initLoadManager();
         }
         §!f§(true);
      }
      
      protected function initLoadManager() : void
      {
         §3!§.§;R§.init(§^[§.§0§(),this.§&!4§,this.§8-§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§%z§ = param1;
      }
      
      public function §;p§(param1:XML) : void
      {
         this.§6D§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`8§.addChild(this.§%z§);
         this.setLoadingPercentage(0);
         this.§26§ = getTimer();
      }
      
      private function §4^§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§3!§.§;R§.§%T§())
         {
            for each(_loc1_ in this.§6D§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §3!§.§;R§.§1b§(_loc1_);
               }
            }
            for each(_loc1_ in this.§6D§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §3!§.§;R§.§1b§(_loc1_);
               }
            }
            for each(_loc2_ in this.§6D§.config.xml)
            {
               §3!§.§;R§.§1b§(_loc2_);
            }
            for each(_loc3_ in this.§6D§.packages.pack)
            {
               §3!§.§;R§.§1b§(_loc3_);
            }
            §3!§.§;R§.§^!K§(this.§;!$§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§6j§ && this.§4^§())
         {
            this.§6j§ = true;
         }
         var _loc3_:Number = Math.min(1,§3!§.§;R§.§8w§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§26§) / §"4§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§3!§.§;R§.§8w§() >= 1)
         {
            §3!§.§;R§.§,E§();
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §`8§.removeChild(this.§%z§);
         this.§%z§ = null;
         super.cleanup();
      }
      
      private function §;!$§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§%z§)
         {
            this.§%z§.x = param1 - this.§%z§.width >> 1;
            this.§%z§.y = param2 - this.§%z§.height >> 1;
         }
      }
   }
}
