package §7"§
{
   import §5P§.§""C§;
   import §>#G§.§-!,§;
   import §@V§.§0X§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §^#H§ extends §`#@§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §<#4§:uint = 4000;
       
      
      private var §&!'§:Boolean = false;
      
      private var §]$7§:uint;
      
      private var §2![§:Boolean = false;
      
      public var §6"l§:XML;
      
      public var §8#b§:XML;
      
      public var §`#Q§:DisplayObjectContainer;
      
      protected var §#!T§:String;
      
      protected var §2k§:String;
      
      private var §"#-§:Boolean = false;
      
      public function §^#H§(param1:§""C§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§#!T§ = param5;
         this.§2k§ = param6;
         super(param2,param3,param1);
         §1!7§ = true;
         §<#4§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §0X§.init(§3"q§("connectionProfileId"));
         if(!§-!,§.§6!§.§,y§())
         {
            this.initLoadManager();
         }
         §"z§(true);
      }
      
      protected function initLoadManager() : void
      {
         §-!,§.§6!§.init(§0X§.§+!D§(),this.§#!T§,this.§2k§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§`#Q§ = param1;
      }
      
      public function §[#'§(param1:XML) : void
      {
         this.§6"l§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"D§.addChild(this.§`#Q§);
         this.setLoadingPercentage(0);
         this.§]$7§ = getTimer();
      }
      
      protected function §"P§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§-!,§.§6!§.§7"0§())
         {
            for each(_loc1_ in this.§6"l§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §-!,§.§6!§.§?2§(_loc1_);
               }
            }
            for each(_loc1_ in this.§6"l§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §-!,§.§6!§.§?2§(_loc1_);
               }
            }
            for each(_loc2_ in this.§6"l§.config.xml)
            {
               §-!,§.§6!§.§?2§(_loc2_);
            }
            for each(_loc3_ in this.§6"l§.packages.pack)
            {
               §-!,§.§6!§.§?2§(_loc3_);
            }
            §-!,§.§6!§.§&",§(this.§8" §);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§2![§ && this.§"P§())
         {
            this.§2![§ = true;
         }
         var _loc2_:Number = Math.min(1,§-!,§.§6!§.§9$ §()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§]$7§) / §<#4§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§"#-§ && §-!,§.§6!§.§9$ §() >= 1 && _loc3_ >= 1)
         {
            §-!,§.§6!§.§^#2§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§"#-§ = true;
         §1"h§(§&f§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§"#-§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §4"D§.removeChild(this.§`#Q§);
         this.§`#Q§ = null;
         super.cleanup();
      }
      
      private function §8" §() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§`#Q§)
         {
            this.§`#Q§.x = param1 - this.§`#Q§.width >> 1;
            this.§`#Q§.y = param2 - this.§`#Q§.height >> 1;
         }
      }
   }
}
