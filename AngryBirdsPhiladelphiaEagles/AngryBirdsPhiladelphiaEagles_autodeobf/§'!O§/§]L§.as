package §'!O§
{
   import §2!<§.§;!M§;
   import §;f§.§7P§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §]L§ extends §'!#§
   {
      
      public static const §-A§:String = "load";
      
      public static var §8w§:uint = 4000;
       
      
      private var §`W§:Boolean = false;
      
      private var §0!$§:uint;
      
      private var §%F§:Boolean = false;
      
      public var §[!I§:XML;
      
      public var §^!"§:XML;
      
      public var §#s§:DisplayObjectContainer;
      
      private var §`]§:String;
      
      private var §+X§:String;
      
      public function §]L§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§`]§ = param4;
         this.§+X§ = param5;
         super(param1,param2);
         §?q§ = true;
         §8w§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §7P§.init(§5F§("connectionProfileId"));
         if(!§;!M§.§>o§.§;Y§())
         {
            §;!M§.§>o§.init(§7P§.§'g§(),this.§`]§,this.§+X§,null);
         }
         §<O§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§#s§ = param1;
      }
      
      public function §#W§(param1:XML) : void
      {
         this.§[!I§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8A§.addChild(this.§#s§);
         this.setLoadingPercentage(0);
         this.§0!$§ = getTimer();
      }
      
      private function §4W§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§;!M§.§>o§.§0!C§())
         {
            for each(_loc1_ in this.§[!I§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!M§.§>o§.§?t§(_loc1_);
               }
            }
            for each(_loc2_ in this.§[!I§.packages.pack)
            {
               §;!M§.§>o§.§?t§(_loc2_);
            }
            §;!M§.§>o§.§&p§(this.§%^§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§%F§ && this.§4W§())
         {
            this.§%F§ = true;
         }
         var _loc3_:Number = Math.min(1,§;!M§.§>o§.§#Q§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§0!$§) / §8w§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§;!M§.§>o§.§#Q§() >= 1)
         {
            §;!M§.§>o§.§`b§();
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §8A§.removeChild(this.§#s§);
         this.§#s§ = null;
         super.cleanup();
      }
      
      private function §%^§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§#s§)
         {
            this.§#s§.x = param1 - this.§#s§.width >> 1;
            this.§#s§.y = param2 - this.§#s§.height >> 1;
         }
      }
   }
}
