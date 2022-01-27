package §&!6§
{
   import §3!N§.§9!X§;
   import §9!D§.§&!d§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §%8§ extends §5r§
   {
      
      public static const §94§:String = "load";
      
      public static var §[!c§:uint = 4000;
       
      
      private var §>]§:Boolean = false;
      
      private var §#!B§:uint;
      
      private var §,a§:Boolean = false;
      
      public var §+!d§:XML;
      
      public var §+!1§:XML;
      
      public var § v§:DisplayObjectContainer;
      
      private var §!C§:String;
      
      private var §42§:String;
      
      public function §%8§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§!C§ = param4;
         this.§42§ = param5;
         super(param1,param2);
         §9c§ = true;
         §[!c§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §&!d§.init(§3!!§("connectionProfileId"));
         if(!§9!X§.§,!U§.§-!O§())
         {
            §9!X§.§,!U§.init(§&!d§.§3!8§(),this.§!C§,this.§42§,null);
         }
         §^f§(true);
      }
      
      public function §!!3§(param1:DisplayObjectContainer) : void
      {
         this.§ v§ = param1;
      }
      
      public function §1!U§(param1:XML) : void
      {
         this.§+!d§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §3![§.addChild(this.§ v§);
         this.setLoadingPercentage(0);
         this.§#!B§ = getTimer();
      }
      
      private function §1f§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§9!X§.§,!U§.§%o§())
         {
            for each(_loc1_ in this.§+!d§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §9!X§.§,!U§.§;a§(_loc1_);
               }
            }
            for each(_loc1_ in this.§+!d§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §9!X§.§,!U§.§;a§(_loc1_);
               }
            }
            for each(_loc2_ in this.§+!d§.packages.pack)
            {
               §9!X§.§,!U§.§;a§(_loc2_);
            }
            §9!X§.§,!U§.§0!L§(this.§;!K§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§,a§ && this.§1f§())
         {
            this.§,a§ = true;
         }
         var _loc3_:Number = Math.min(1,§9!X§.§,!U§.§ !6§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§#!B§) / §[!c§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§9!X§.§,!U§.§ !6§() >= 1)
         {
            §9!X§.§,!U§.§#P§();
            return §5r§.STATE_STATUS_COMPLETED;
         }
         return §5r§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §3![§.removeChild(this.§ v§);
         this.§ v§ = null;
         super.cleanup();
      }
      
      private function §;!K§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§ v§)
         {
            this.§ v§.x = param1 - this.§ v§.width >> 1;
            this.§ v§.y = param2 - this.§ v§.height >> 1;
         }
      }
   }
}
