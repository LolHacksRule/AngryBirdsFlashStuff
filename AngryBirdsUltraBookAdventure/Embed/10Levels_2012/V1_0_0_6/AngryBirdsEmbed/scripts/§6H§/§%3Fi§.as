package §6H§
{
   import §+!@§.§!T§;
   import §5m§.§2!&§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §?i§ extends §>3§
   {
      
      public static const §-!A§:String = "load";
      
      public static var §3g§:uint = 4000;
       
      
      private var §]]§:Boolean = false;
      
      private var §]!"§:uint;
      
      private var §=!6§:Boolean = false;
      
      public var §?h§:XML;
      
      public var §^;§:XML;
      
      public var §8a§:DisplayObjectContainer;
      
      private var §0u§:String;
      
      private var §]X§:String;
      
      public function §?i§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§0u§ = param4;
         this.§]X§ = param5;
         super(param1,param2);
         §`D§ = true;
         §3g§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §2!&§.init(§&A§("connectionProfileId"));
         if(!§!T§.§@j§.§=P§())
         {
            §!T§.§@j§.init(§2!&§.§5O§(),this.§0u§,this.§]X§,null);
         }
         §9"§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§8a§ = param1;
      }
      
      public function §`8§(param1:XML) : void
      {
         this.§?h§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §62§.addChild(this.§8a§);
         this.setLoadingPercentage(0);
         this.§]!"§ = getTimer();
      }
      
      private function §9i§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§!T§.§@j§.§8!%§())
         {
            for each(_loc1_ in this.§?h§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §!T§.§@j§.§0+§(_loc1_);
               }
            }
            for each(_loc2_ in this.§?h§.packages.pack)
            {
               §!T§.§@j§.§0+§(_loc2_);
            }
            §!T§.§@j§.§>c§(this.§%!,§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§=!6§ && this.§9i§())
         {
            this.§=!6§ = true;
         }
         var _loc3_:Number = Math.min(1,§!T§.§@j§.§6k§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§]!"§) / §3g§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§!T§.§@j§.§6k§() >= 1)
         {
            §!T§.§@j§.§,w§();
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §62§.removeChild(this.§8a§);
         this.§8a§ = null;
         super.cleanup();
      }
      
      private function §%!,§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§8a§)
         {
            this.§8a§.x = param1 - this.§8a§.width >> 1;
            this.§8a§.y = param2 - this.§8a§.height >> 1;
         }
      }
   }
}
