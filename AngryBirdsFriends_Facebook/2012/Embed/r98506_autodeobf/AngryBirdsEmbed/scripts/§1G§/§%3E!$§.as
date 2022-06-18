package §1G§
{
   import §,!§.§>N§;
   import §,u§.§8A§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>!$§ extends §`U§
   {
      
      public static const §?1§:String = "load";
      
      public static var §@Q§:uint = 4000;
       
      
      private var §5t§:Boolean = false;
      
      private var §<!C§:uint;
      
      private var §2S§:Boolean = false;
      
      public var §";§:XML;
      
      public var § !I§:XML;
      
      public var §`! §:DisplayObjectContainer;
      
      private var §;W§:String;
      
      private var §&C§:String;
      
      public function §>!$§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§;W§ = param4;
         this.§&C§ = param5;
         super(param1,param2);
         §^"§ = true;
         §@Q§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §8A§.init(§use §("connectionProfileId"));
         if(!§>N§.§72§.§<=§())
         {
            §>N§.§72§.init(§8A§.§-8§(),this.§;W§,this.§&C§,null);
         }
         §,k§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§`! § = param1;
      }
      
      public function §!!;§(param1:XML) : void
      {
         this.§";§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]?§.addChild(this.§`! §);
         this.setLoadingPercentage(0);
         this.§<!C§ = getTimer();
      }
      
      private function §!!G§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§>N§.§72§.§6!#§())
         {
            for each(_loc1_ in this.§";§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §>N§.§72§.§]g§(_loc1_);
               }
            }
            for each(_loc2_ in this.§";§.packages.pack)
            {
               §>N§.§72§.§]g§(_loc2_);
            }
            §>N§.§72§.§@@§(this.§#'§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§2S§ && this.§!!G§())
         {
            this.§2S§ = true;
         }
         var _loc3_:Number = Math.min(1,§>N§.§72§.§@§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§<!C§) / §@Q§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§>N§.§72§.§@§() >= 1)
         {
            §>N§.§72§.§7!?§();
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §]?§.removeChild(this.§`! §);
         this.§`! § = null;
         super.cleanup();
      }
      
      private function §#'§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§`! §)
         {
            this.§`! §.x = param1 - this.§`! §.width >> 1;
            this.§`! §.y = param2 - this.§`! §.height >> 1;
         }
      }
   }
}
