package §6#x§
{
   import § #_§.§?!>§;
   import §%#^§.§;!g§;
   import §7"1§.§[#U§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §4"2§ extends §'!G§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §@#y§:uint = 4000;
       
      
      private var §&!N§:Boolean = false;
      
      private var §6<§:uint;
      
      private var §>!E§:Boolean = false;
      
      public var §1W§:XML;
      
      public var §%"I§:XML;
      
      public var §5X§:DisplayObjectContainer;
      
      protected var §'!Y§:String;
      
      protected var §"!2§:String;
      
      private var §%"g§:Boolean = false;
      
      public function §4"2§(param1:§?!>§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§'!Y§ = param5;
         this.§"!2§ = param6;
         super(param2,param3,param1);
         §["3§ = true;
         §@#y§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §[#U§.init(§="p§("connectionProfileId"));
         if(!§;!g§.§3"1§.§,#Z§())
         {
            this.initLoadManager();
         }
         §#"p§(true);
      }
      
      protected function initLoadManager() : void
      {
         §;!g§.§3"1§.init(§[#U§.§ 5§(),this.§'!Y§,this.§"!2§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§5X§ = param1;
      }
      
      public function §3#z§(param1:XML) : void
      {
         this.§1W§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]#+§.addChild(this.§5X§);
         this.setLoadingPercentage(0);
         this.§6<§ = getTimer();
      }
      
      protected function §,$A§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§;!g§.§3"1§.§'!X§())
         {
            for each(_loc1_ in this.§1W§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!g§.§3"1§.§?#Q§(_loc1_);
               }
            }
            for each(_loc1_ in this.§1W§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!g§.§3"1§.§?#Q§(_loc1_);
               }
            }
            for each(_loc2_ in this.§1W§.config.xml)
            {
               §;!g§.§3"1§.§?#Q§(_loc2_);
            }
            for each(_loc3_ in this.§1W§.packages.pack)
            {
               §;!g§.§3"1§.§?#Q§(_loc3_);
            }
            §;!g§.§3"1§.§`#y§(this.§+0§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§>!E§ && this.§,$A§())
         {
            this.§>!E§ = true;
         }
         var _loc2_:Number = Math.min(1,§;!g§.§3"1§.§3h§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§6<§) / §@#y§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§%"g§ && §;!g§.§3"1§.§3h§() >= 1 && _loc3_ >= 1)
         {
            §;!g§.§3"1§.§4"y§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§%"g§ = true;
         §%!?§(§<"P§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§%"g§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §]#+§.removeChild(this.§5X§);
         this.§5X§ = null;
         super.cleanup();
      }
      
      private function §+0§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§5X§)
         {
            this.§5X§.x = param1 - this.§5X§.width >> 1;
            this.§5X§.y = param2 - this.§5X§.height >> 1;
         }
      }
   }
}
