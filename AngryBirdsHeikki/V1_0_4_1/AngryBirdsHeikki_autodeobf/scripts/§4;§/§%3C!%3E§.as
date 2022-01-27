package §4;§
{
   import §"!_§.§?!0§;
   import §^!#§.§9!!§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §<!>§ extends §,h§
   {
      
      public static const §6! §:String = "load";
      
      public static var §%i§:uint = 4000;
       
      
      private var §%!1§:Boolean = false;
      
      private var §^y§:uint;
      
      private var §1!Y§:Boolean = false;
      
      public var §#!5§:XML;
      
      public var §]A§:XML;
      
      public var §]C§:DisplayObjectContainer;
      
      private var §-!Z§:String;
      
      private var § 3§:String;
      
      public function §<!>§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§-!Z§ = param4;
         this.§ 3§ = param5;
         super(param1,param2);
         §%A§ = true;
         §%i§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §9!!§.init(§'S§("connectionProfileId"));
         if(!§?!0§.§'![§.§+F§())
         {
            §?!0§.§'![§.init(§9!!§.§54§(),this.§-!Z§,this.§ 3§,null);
         }
         § p§(true);
      }
      
      public function §[T§(param1:DisplayObjectContainer) : void
      {
         this.§]C§ = param1;
      }
      
      public function §9c§(param1:XML) : void
      {
         this.§#!5§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §0b§.addChild(this.§]C§);
         this.setLoadingPercentage(0);
         this.§^y§ = getTimer();
      }
      
      private function §,!O§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§?!0§.§'![§.§7k§())
         {
            for each(_loc1_ in this.§#!5§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §?!0§.§'![§.§%!X§(_loc1_);
               }
            }
            for each(_loc2_ in this.§#!5§.packages.pack)
            {
               §?!0§.§'![§.§%!X§(_loc2_);
            }
            §?!0§.§'![§.§-!7§(this.§!!=§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§1!Y§ && this.§,!O§())
         {
            this.§1!Y§ = true;
         }
         var _loc3_:Number = Math.min(1,§?!0§.§'![§.§#7§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§^y§) / §%i§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§?!0§.§'![§.§#7§() >= 1)
         {
            §?!0§.§'![§.§]!$§();
            return §,h§.STATE_STATUS_COMPLETED;
         }
         return §,h§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §0b§.removeChild(this.§]C§);
         this.§]C§ = null;
         super.cleanup();
      }
      
      private function §!!=§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§]C§)
         {
            this.§]C§.x = param1 - this.§]C§.width >> 1;
            this.§]C§.y = param2 - this.§]C§.height >> 1;
         }
      }
   }
}
