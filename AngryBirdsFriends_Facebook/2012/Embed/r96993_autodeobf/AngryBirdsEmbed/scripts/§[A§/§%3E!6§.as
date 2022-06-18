package §[A§
{
   import §#=§.§<!C§;
   import §3!2§.§[;§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>!6§ extends §3!'§
   {
      
      public static const §9"§:String = "load";
      
      public static var §>_§:uint = 4000;
       
      
      private var §!!H§:Boolean = false;
      
      private var §,M§:uint;
      
      private var §?3§:Boolean = false;
      
      public var §>!2§:XML;
      
      public var §]+§:XML;
      
      public var §[!1§:DisplayObjectContainer;
      
      private var §5[§:String;
      
      private var §>q§:String;
      
      public function §>!6§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§5[§ = param4;
         this.§>q§ = param5;
         super(param1,param2);
         §?9§ = true;
         §>_§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §<!C§.init(§[h§("connectionProfileId"));
         if(!§[;§.§9r§.§&S§())
         {
            §[;§.§9r§.init(§<!C§.§8!=§(),this.§5[§,this.§>q§,null);
         }
         §1!1§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§[!1§ = param1;
      }
      
      public function §,q§(param1:XML) : void
      {
         this.§>!2§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §^!>§.addChild(this.§[!1§);
         this.setLoadingPercentage(0);
         this.§,M§ = getTimer();
      }
      
      private function §+Y§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§[;§.§9r§.§=T§())
         {
            for each(_loc1_ in this.§>!2§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §[;§.§9r§.§2a§(_loc1_);
               }
            }
            for each(_loc2_ in this.§>!2§.packages.pack)
            {
               §[;§.§9r§.§2a§(_loc2_);
            }
            §[;§.§9r§.§"!E§(this.§%8§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§?3§ && this.§+Y§())
         {
            this.§?3§ = true;
         }
         var _loc3_:Number = Math.min(1,§[;§.§9r§.§95§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§,M§) / §>_§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§[;§.§9r§.§95§() >= 1)
         {
            §[;§.§9r§.§-]§();
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §^!>§.removeChild(this.§[!1§);
         this.§[!1§ = null;
         super.cleanup();
      }
      
      private function §%8§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§[!1§)
         {
            this.§[!1§.x = param1 - this.§[!1§.width >> 1;
            this.§[!1§.y = param2 - this.§[!1§.height >> 1;
         }
      }
   }
}
