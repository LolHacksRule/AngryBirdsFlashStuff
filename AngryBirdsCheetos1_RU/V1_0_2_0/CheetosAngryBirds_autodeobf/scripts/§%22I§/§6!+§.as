package §"I§
{
   import §+!^§.§[!Z§;
   import §@!Y§.§<U§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §6!+§ extends §-x§
   {
      
      public static const §,!+§:String = "load";
      
      public static var §[d§:uint = 4000;
       
      
      private var §'!0§:Boolean = false;
      
      private var §6!F§:uint;
      
      private var §7!-§:Boolean = false;
      
      public var §4! §:XML;
      
      public var §]I§:XML;
      
      public var §4O§:DisplayObjectContainer;
      
      private var §?!R§:String;
      
      private var §&!?§:String;
      
      public function §6!+§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§?!R§ = param4;
         this.§&!?§ = param5;
         super(param1,param2);
         §`!8§ = true;
         §[d§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §<U§.init(§[!2§("connectionProfileId"));
         if(!§[!Z§.§0!S§.§7K§())
         {
            §[!Z§.§0!S§.init(§<U§.§+Z§(),this.§?!R§,this.§&!?§,null);
         }
         §<^§(true);
      }
      
      public function §>!Z§(param1:DisplayObjectContainer) : void
      {
         this.§4O§ = param1;
      }
      
      public function §^R§(param1:XML) : void
      {
         this.§4! § = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=#§.addChild(this.§4O§);
         this.setLoadingPercentage(0);
         this.§6!F§ = getTimer();
      }
      
      private function §<!F§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§[!Z§.§0!S§.§ !V§())
         {
            for each(_loc1_ in this.§4! §.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §[!Z§.§0!S§.§2]§(_loc1_);
               }
            }
            for each(_loc2_ in this.§4! §.packages.pack)
            {
               §[!Z§.§0!S§.§2]§(_loc2_);
            }
            §[!Z§.§0!S§.§2w§(this.§[1§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§7!-§ && this.§<!F§())
         {
            this.§7!-§ = true;
         }
         var _loc3_:Number = Math.min(1,§[!Z§.§0!S§.§?S§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§6!F§) / §[d§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§[!Z§.§0!S§.§?S§() >= 1)
         {
            §[!Z§.§0!S§.§6!M§();
            return §-x§.STATE_STATUS_COMPLETED;
         }
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §=#§.removeChild(this.§4O§);
         this.§4O§ = null;
         super.cleanup();
      }
      
      private function §[1§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§4O§)
         {
            this.§4O§.x = param1 - this.§4O§.width >> 1;
            this.§4O§.y = param2 - this.§4O§.height >> 1;
         }
      }
   }
}
