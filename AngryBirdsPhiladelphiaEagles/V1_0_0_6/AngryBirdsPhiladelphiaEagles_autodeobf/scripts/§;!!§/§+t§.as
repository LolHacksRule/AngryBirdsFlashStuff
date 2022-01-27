package §;!!§
{
   import §3>§.§8!J§;
   import §<@§.§^m§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §+t§ extends §0H§
   {
      
      public static const §2`§:String = "load";
      
      public static var §0Y§:uint = 4000;
       
      
      private var §=1§:Boolean = false;
      
      private var §@5§:uint;
      
      private var §?b§:Boolean = false;
      
      public var §7y§:XML;
      
      public var §#C§:XML;
      
      public var §^e§:DisplayObjectContainer;
      
      private var §"!,§:String;
      
      private var §6D§:String;
      
      public function §+t§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§"!,§ = param4;
         this.§6D§ = param5;
         super(param1,param2);
         §0j§ = true;
         §0Y§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §^m§.init(§5!!§("connectionProfileId"));
         if(!§8!J§.§<"§.§,!D§())
         {
            §8!J§.§<"§.init(§^m§.§`!$§(),this.§"!,§,this.§6D§,null);
         }
         §"!H§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§^e§ = param1;
      }
      
      public function §9c§(param1:XML) : void
      {
         this.§7y§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §+!N§.addChild(this.§^e§);
         this.setLoadingPercentage(0);
         this.§@5§ = getTimer();
      }
      
      private function §@a§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§8!J§.§<"§.§4!5§())
         {
            for each(_loc1_ in this.§7y§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §8!J§.§<"§.§80§(_loc1_);
               }
            }
            for each(_loc2_ in this.§7y§.packages.pack)
            {
               §8!J§.§<"§.§80§(_loc2_);
            }
            §8!J§.§<"§.§@@§(this.§!t§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§?b§ && this.§@a§())
         {
            this.§?b§ = true;
         }
         var _loc3_:Number = Math.min(1,§8!J§.§<"§.§#!8§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§@5§) / §0Y§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§8!J§.§<"§.§#!8§() >= 1)
         {
            §8!J§.§<"§.§,!3§();
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §+!N§.removeChild(this.§^e§);
         this.§^e§ = null;
         super.cleanup();
      }
      
      private function §!t§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§^e§)
         {
            this.§^e§.x = param1 - this.§^e§.width >> 1;
            this.§^e§.y = param2 - this.§^e§.height >> 1;
         }
      }
   }
}
