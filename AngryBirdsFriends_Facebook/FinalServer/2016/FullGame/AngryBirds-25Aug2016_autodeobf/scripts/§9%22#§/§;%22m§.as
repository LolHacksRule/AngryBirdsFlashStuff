package §9"#§
{
   import §'U§.§]#[§;
   import §-#z§.§0"R§;
   import §]$9§.§-!5§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §;"m§ extends §4$5§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §63§:uint = 4000;
       
      
      private var §@"U§:Boolean = false;
      
      private var §[#8§:uint;
      
      private var §>"g§:Boolean = false;
      
      public var §4!F§:XML;
      
      public var §=!6§:XML;
      
      public var §["E§:DisplayObjectContainer;
      
      protected var §7q§:String;
      
      protected var §%"&§:String;
      
      private var §7!d§:Boolean = false;
      
      public function §;"m§(param1:§]#[§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§7q§ = param5;
         this.§%"&§ = param6;
         super(param2,param3,param1);
         §<!M§ = true;
         §63§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §-!5§.init(§3!§("connectionProfileId"));
         if(!§0"R§.§3!]§.§ $;§())
         {
            this.initLoadManager();
         }
         §4g§(true);
      }
      
      protected function initLoadManager() : void
      {
         §0"R§.§3!]§.init(§-!5§.§1# §(),this.§7q§,this.§%"&§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§["E§ = param1;
      }
      
      public function §"#X§(param1:XML) : void
      {
         this.§4!F§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]Y§.addChild(this.§["E§);
         this.setLoadingPercentage(0);
         this.§[#8§ = getTimer();
      }
      
      private function §?%§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§0"R§.§3!]§.§]"R§())
         {
            for each(_loc1_ in this.§4!F§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §0"R§.§3!]§.§@!6§(_loc1_);
               }
            }
            for each(_loc1_ in this.§4!F§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §0"R§.§3!]§.§@!6§(_loc1_);
               }
            }
            for each(_loc2_ in this.§4!F§.config.xml)
            {
               §0"R§.§3!]§.§@!6§(_loc2_);
            }
            for each(_loc3_ in this.§4!F§.packages.pack)
            {
               §0"R§.§3!]§.§@!6§(_loc3_);
            }
            §0"R§.§3!]§.§,"o§(this.§-j§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§>"g§ && this.§?%§())
         {
            this.§>"g§ = true;
         }
         var _loc2_:Number = Math.min(1,§0"R§.§3!]§.§%!A§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§[#8§) / §63§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§7!d§ && §0"R§.§3!]§.§%!A§() >= 1 && _loc3_ >= 1)
         {
            §0"R§.§3!]§.§!#t§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§7!d§ = true;
         §7P§(§9!w§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§7!d§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §]Y§.removeChild(this.§["E§);
         this.§["E§ = null;
         super.cleanup();
      }
      
      private function §-j§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§["E§)
         {
            this.§["E§.x = param1 - this.§["E§.width >> 1;
            this.§["E§.y = param2 - this.§["E§.height >> 1;
         }
      }
   }
}
