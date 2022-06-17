package §?#h§
{
   import §3"G§.§16§;
   import §9#o§.§,#t§;
   import §>"Q§.§>!d§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §4"7§ extends §3#=§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §0#2§:uint = 4000;
       
      
      private var §#$=§:Boolean = false;
      
      private var §="?§:uint;
      
      private var §^!x§:Boolean = false;
      
      public var §2!l§:XML;
      
      public var §""e§:XML;
      
      public var §5-§:DisplayObjectContainer;
      
      protected var §<!i§:String;
      
      protected var §^;§:String;
      
      private var §4#n§:Boolean = false;
      
      public function §4"7§(param1:§16§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§<!i§ = param5;
         this.§^;§ = param6;
         super(param2,param3,param1);
         §^H§ = true;
         §0#2§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §>!d§.init(§9!]§("connectionProfileId"));
         if(!§,#t§.§?q§.§;!n§())
         {
            this.initLoadManager();
         }
         §6#S§(true);
      }
      
      protected function initLoadManager() : void
      {
         §,#t§.§?q§.init(§>!d§.§5!9§(),this.§<!i§,this.§^;§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§5-§ = param1;
      }
      
      public function §>x§(param1:XML) : void
      {
         this.§2!l§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § U§.addChild(this.§5-§);
         this.setLoadingPercentage(0);
         this.§="?§ = getTimer();
      }
      
      protected function §!"i§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§,#t§.§?q§.§"a§())
         {
            for each(_loc1_ in this.§2!l§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §,#t§.§?q§.§=!D§(_loc1_);
               }
            }
            for each(_loc1_ in this.§2!l§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §,#t§.§?q§.§=!D§(_loc1_);
               }
            }
            for each(_loc2_ in this.§2!l§.config.xml)
            {
               §,#t§.§?q§.§=!D§(_loc2_);
            }
            for each(_loc3_ in this.§2!l§.packages.pack)
            {
               §,#t§.§?q§.§=!D§(_loc3_);
            }
            §,#t§.§?q§.§!#c§(this.§##H§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§^!x§ && this.§!"i§())
         {
            this.§^!x§ = true;
         }
         var _loc2_:Number = Math.min(1,§,#t§.§?q§.§0!O§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§="?§) / §0#2§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§4#n§ && §,#t§.§?q§.§0!O§() >= 1 && _loc3_ >= 1)
         {
            §,#t§.§?q§.§1"b§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§4#n§ = true;
         §%D§(§&#N§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§4#n§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         § U§.removeChild(this.§5-§);
         this.§5-§ = null;
         super.cleanup();
      }
      
      private function §##H§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§5-§)
         {
            this.§5-§.x = param1 - this.§5-§.width >> 1;
            this.§5-§.y = param2 - this.§5-§.height >> 1;
         }
      }
   }
}
