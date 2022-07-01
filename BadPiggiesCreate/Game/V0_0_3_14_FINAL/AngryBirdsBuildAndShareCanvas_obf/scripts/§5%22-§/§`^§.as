package §5"-§
{
   import §4!D§.§3!7§;
   import §@!v§.§6!Q§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §`^§ extends §5y§
   {
      
      public static const §'=§:String = "load";
      
      public static var §<n§:uint = 4000;
       
      
      private var §3M§:Boolean = false;
      
      private var §&7§:uint;
      
      private var §2!n§:Boolean = false;
      
      public var §"G§:XML;
      
      public var §=X§:XML;
      
      public var §+!U§:DisplayObjectContainer;
      
      private var §!!+§:String;
      
      private var §,j§:String;
      
      public function §`^§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§!!+§ = param4;
         this.§,j§ = param5;
         super(param1,param2);
         §&!z§ = true;
         §<n§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §6!Q§.init(§"!>§("connectionProfileId"));
         if(!§3!7§.§2=§.§%",§())
         {
            §3!7§.§2=§.init(§6!Q§.§]!q§(),this.§!!+§,this.§,j§,null);
         }
         §9!j§(true);
      }
      
      public function §&!6§(param1:DisplayObjectContainer) : void
      {
         this.§+!U§ = param1;
      }
      
      public function §#'§(param1:XML) : void
      {
         this.§"G§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §!&§.addChild(this.§+!U§);
         this.setLoadingPercentage(0);
         this.§&7§ = getTimer();
      }
      
      private function §4"8§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§3!7§.§2=§.§6"5§())
         {
            for each(_loc1_ in this.§"G§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §3!7§.§2=§.§^A§(_loc1_);
               }
            }
            for each(_loc1_ in this.§"G§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §3!7§.§2=§.§^A§(_loc1_);
               }
            }
            for each(_loc2_ in this.§"G§.packages.pack)
            {
               §3!7§.§2=§.§^A§(_loc2_);
            }
            §3!7§.§2=§.§,!'§(this.§]!E§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§2!n§ && this.§4"8§())
         {
            this.§2!n§ = true;
         }
         var _loc3_:Number = Math.min(1,§3!7§.§2=§.§-!E§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§&7§) / §<n§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§3!7§.§2=§.§-!E§() >= 1)
         {
            §3!7§.§2=§.§'e§();
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §!&§.removeChild(this.§+!U§);
         this.§+!U§ = null;
         super.cleanup();
      }
      
      private function §]!E§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§+!U§)
         {
            this.§+!U§.x = param1 - this.§+!U§.width >> 1;
            this.§+!U§.y = param2 - this.§+!U§.height >> 1;
         }
      }
   }
}
