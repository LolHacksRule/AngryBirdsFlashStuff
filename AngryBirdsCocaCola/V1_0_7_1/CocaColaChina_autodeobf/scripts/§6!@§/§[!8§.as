package §6!@§
{
   import §&L§.§5!&§;
   import §,!0§.§-4§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §[!8§ extends § !!§
   {
      
      public static const §^6§:String = "load";
      
      public static var §,!?§:uint = 4000;
       
      
      private var §@H§:Boolean = false;
      
      private var §=!^§:uint;
      
      private var §!z§:Boolean = false;
      
      public var §]!R§:XML;
      
      public var §,Q§:XML;
      
      public var §8S§:DisplayObjectContainer;
      
      private var §0!F§:String;
      
      private var §^q§:String;
      
      public function §[!8§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§0!F§ = param4;
         this.§^q§ = param5;
         super(param1,param2);
         §`7§ = true;
         §,!?§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §-4§.init(getApplicationParameter("connectionProfileId"));
         if(!§5!&§.§'!C§.§;#§())
         {
            §5!&§.§'!C§.init(§-4§.§=!§(),this.§0!F§,this.§^q§,null);
         }
         §3!7§(true);
      }
      
      public function §"!F§(param1:DisplayObjectContainer) : void
      {
         this.§8S§ = param1;
      }
      
      public function §1!K§(param1:XML) : void
      {
         this.§]!R§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]!+§.addChild(this.§8S§);
         this.setLoadingPercentage(0);
         this.§=!^§ = getTimer();
      }
      
      private function §<f§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§5!&§.§'!C§.§&!H§())
         {
            for each(_loc1_ in this.§]!R§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §5!&§.§'!C§.§6j§(_loc1_);
               }
            }
            for each(_loc2_ in this.§]!R§.packages.pack)
            {
               §5!&§.§'!C§.§6j§(_loc2_);
            }
            §5!&§.§'!C§.§<!J§(this.§?!I§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§!z§ && this.§<f§())
         {
            this.§!z§ = true;
         }
         var _loc3_:Number = Math.min(1,§5!&§.§'!C§.§<y§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§=!^§) / §,!?§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§5!&§.§'!C§.§<y§() >= 1)
         {
            §5!&§.§'!C§.§>z§();
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §]!+§.removeChild(this.§8S§);
         this.§8S§ = null;
         super.cleanup();
      }
      
      private function §?!I§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§8S§)
         {
            this.§8S§.x = param1 - this.§8S§.width >> 1;
            this.§8S§.y = param2 - this.§8S§.height >> 1;
         }
      }
   }
}
