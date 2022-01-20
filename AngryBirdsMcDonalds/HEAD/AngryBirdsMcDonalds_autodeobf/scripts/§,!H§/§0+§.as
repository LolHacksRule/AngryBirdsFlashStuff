package §,!H§
{
   import §5!&§.§=!,§;
   import §=u§.§-!F§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §0+§ extends § for§
   {
      
      public static const §>d§:String = "load";
      
      public static var §9+§:uint = 4000;
       
      
      private var §<!a§:Boolean = false;
      
      private var §>!M§:uint;
      
      private var §!!W§:Boolean = false;
      
      public var §;!q§:XML;
      
      public var §-l§:XML;
      
      public var §7!9§:DisplayObjectContainer;
      
      private var §]!2§:String;
      
      private var §3y§:String;
      
      public function §0+§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§]!2§ = param4;
         this.§3y§ = param5;
         super(param1,param2);
         §%!a§ = true;
         §9+§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §-!F§.init(§]!F§("connectionProfileId"));
         if(!§=!,§.§5!!§.§=!e§())
         {
            §=!,§.§5!!§.init(§-!F§.§?!]§(),this.§]!2§,this.§3y§,null);
         }
         §4&§(true);
      }
      
      public function §8D§(param1:DisplayObjectContainer) : void
      {
         this.§7!9§ = param1;
      }
      
      public function §=!T§(param1:XML) : void
      {
         this.§;!q§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]!M§.addChild(this.§7!9§);
         this.setLoadingPercentage(0);
         this.§>!M§ = getTimer();
      }
      
      private function §>!g§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§=!,§.§5!!§.§8!N§())
         {
            for each(_loc1_ in this.§;!q§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=!,§.§5!!§.§@W§(_loc1_);
               }
            }
            for each(_loc1_ in this.§;!q§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=!,§.§5!!§.§@W§(_loc1_);
               }
            }
            for each(_loc2_ in this.§;!q§.packages.pack)
            {
               §=!,§.§5!!§.§@W§(_loc2_);
            }
            §=!,§.§5!!§.§';§(this.§+>§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§!!W§ && this.§>!g§())
         {
            this.§!!W§ = true;
         }
         var _loc3_:Number = Math.min(1,§=!,§.§5!!§.§]f§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§>!M§) / §9+§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§=!,§.§5!!§.§]f§() >= 1)
         {
            §=!,§.§5!!§.§;B§();
            return § for§.STATE_STATUS_COMPLETED;
         }
         return § for§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §]!M§.removeChild(this.§7!9§);
         this.§7!9§ = null;
         super.cleanup();
      }
      
      private function §+>§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§7!9§)
         {
            this.§7!9§.x = param1 - this.§7!9§.width >> 1;
            this.§7!9§.y = param2 - this.§7!9§.height >> 1;
         }
      }
   }
}
