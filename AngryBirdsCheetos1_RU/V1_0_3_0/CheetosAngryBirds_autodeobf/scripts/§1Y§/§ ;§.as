package §1Y§
{
   import §;!;§.§4>§;
   import §>T§.§`z§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class § ;§ extends §+$§
   {
      
      public static const §,F§:String = "load";
      
      public static var §0!Y§:uint = 4000;
       
      
      private var §=_§:Boolean = false;
      
      private var §?V§:uint;
      
      private var §?!^§:Boolean = false;
      
      public var §,I§:XML;
      
      public var §33§:XML;
      
      public var §]J§:DisplayObjectContainer;
      
      private var §"!-§:String;
      
      private var §#K§:String;
      
      public function § ;§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§"!-§ = param4;
         this.§#K§ = param5;
         super(param1,param2);
         §06§ = true;
         §0!Y§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §4>§.init(§-!W§("connectionProfileId"));
         if(!§`z§.§<?§.§0!N§())
         {
            §`z§.§<?§.init(§4>§.§+k§(),this.§"!-§,this.§#K§,null);
         }
         §+Z§(true);
      }
      
      public function §,0§(param1:DisplayObjectContainer) : void
      {
         this.§]J§ = param1;
      }
      
      public function §&!K§(param1:XML) : void
      {
         this.§,I§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §"$§.addChild(this.§]J§);
         this.setLoadingPercentage(0);
         this.§?V§ = getTimer();
      }
      
      private function §>h§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§`z§.§<?§.§;_§())
         {
            for each(_loc1_ in this.§,I§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §`z§.§<?§.§9;§(_loc1_);
               }
            }
            for each(_loc2_ in this.§,I§.packages.pack)
            {
               §`z§.§<?§.§9;§(_loc2_);
            }
            §`z§.§<?§.§5'§(this.§`!-§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§?!^§ && this.§>h§())
         {
            this.§?!^§ = true;
         }
         var _loc3_:Number = Math.min(1,§`z§.§<?§.§8g§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§?V§) / §0!Y§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§`z§.§<?§.§8g§() >= 1)
         {
            §`z§.§<?§.§7o§();
            return §+$§.STATE_STATUS_COMPLETED;
         }
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §"$§.removeChild(this.§]J§);
         this.§]J§ = null;
         super.cleanup();
      }
      
      private function §`!-§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§]J§)
         {
            this.§]J§.x = param1 - this.§]J§.width >> 1;
            this.§]J§.y = param2 - this.§]J§.height >> 1;
         }
      }
   }
}
