package §?!=§
{
   import §9[§.§7$§;
   import §]8§.§6v§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §5!9§ extends §<!>§
   {
      
      public static const §4!C§:String = "load";
      
      public static var §%!G§:uint = 4000;
       
      
      private var §-!7§:Boolean = false;
      
      private var §[!!§:uint;
      
      private var §>6§:Boolean = false;
      
      public var §!!$§:XML;
      
      public var §;!4§:XML;
      
      public var §,!8§:DisplayObjectContainer;
      
      private var §6&§:String;
      
      private var §>!§:String;
      
      public function §5!9§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§6&§ = param4;
         this.§>!§ = param5;
         super(param1,param2);
         §=!O§ = true;
         §%!G§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §6v§.init(§#!2§("connectionProfileId"));
         if(!§7$§.§ set§.§8!L§())
         {
            §7$§.§ set§.init(§6v§.§`!-§(),this.§6&§,this.§>!§,null);
         }
         §<!'§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§,!8§ = param1;
      }
      
      public function §7!B§(param1:XML) : void
      {
         this.§!!$§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §!!+§.addChild(this.§,!8§);
         this.setLoadingPercentage(0);
         this.§[!!§ = getTimer();
      }
      
      private function §'!=§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§7$§.§ set§.§;!0§())
         {
            for each(_loc1_ in this.§!!$§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §7$§.§ set§.§<!N§(_loc1_);
               }
            }
            for each(_loc2_ in this.§!!$§.packages.pack)
            {
               §7$§.§ set§.§<!N§(_loc2_);
            }
            §7$§.§ set§.§^W§(this.§6p§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§>6§ && this.§'!=§())
         {
            this.§>6§ = true;
         }
         var _loc3_:Number = Math.min(1,§7$§.§ set§.§4d§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§[!!§) / §%!G§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§7$§.§ set§.§4d§() >= 1)
         {
            §7$§.§ set§.§%5§();
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §!!+§.removeChild(this.§,!8§);
         this.§,!8§ = null;
         super.cleanup();
      }
      
      private function §6p§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§,!8§)
         {
            this.§,!8§.x = param1 - this.§,!8§.width >> 1;
            this.§,!8§.y = param2 - this.§,!8§.height >> 1;
         }
      }
   }
}
