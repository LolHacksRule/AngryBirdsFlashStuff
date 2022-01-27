package §9§#1
{
   import §%!G§.§8##§;
   import §&!j§.§5#+§;
   import §@[§.§0"C§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §3!?§ extends §1" §
   {
      
      public static const §-!U§:String = "load";
      
      public static var §,!0§:uint = 4000;
       
      
      private var §>J§:Boolean = false;
      
      private var §-M§:uint;
      
      private var §#!U§:Boolean = false;
      
      public var §[!g§:XML;
      
      public var §]"y§:XML;
      
      public var §[!$§:DisplayObjectContainer;
      
      protected var §6"!§:String;
      
      protected var §^g§:String;
      
      private var § %§:Boolean = false;
      
      public function §3!?§(param1:§5#+§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§6"!§ = param5;
         this.§^g§ = param6;
         super(param2,param3,param1);
         §"!?§ = true;
         §,!0§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §8##§.init(§3<§("connectionProfileId"));
         if(!§0"C§.§!6§.§0z§())
         {
            this.§6!=§();
         }
         §&!?§(true);
      }
      
      protected function §6!=§() : void
      {
         §0"C§.§!6§.init(§8##§.§7m§(),this.§6"!§,this.§^g§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§[!$§ = param1;
      }
      
      public function §6"§(param1:XML) : void
      {
         this.§[!g§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §0v§.addChild(this.§[!$§);
         this.setLoadingPercentage(0);
         this.§-M§ = getTimer();
      }
      
      private function §+8§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§0"C§.§!6§.§^"@§())
         {
            for each(_loc1_ in this.§[!g§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §0"C§.§!6§.§1!'§(_loc1_);
               }
            }
            for each(_loc1_ in this.§[!g§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §0"C§.§!6§.§1!'§(_loc1_);
               }
            }
            for each(_loc2_ in this.§[!g§.config.xml)
            {
               §0"C§.§!6§.§1!'§(_loc2_);
            }
            for each(_loc3_ in this.§[!g§.packages.pack)
            {
               §0"C§.§!6§.§1!'§(_loc3_);
            }
            §0"C§.§!6§.§1S§(this.§]!5§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§#!U§ && this.§+8§())
         {
            this.§#!U§ = true;
         }
         var _loc2_:Number = Math.min(1,§0"C§.§!6§.§<!q§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§-M§) / §,!0§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§ %§ && §0"C§.§!6§.§<!q§() >= 1 && _loc3_ >= 1)
         {
            §0"C§.§!6§.§>"h§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§ %§ = true;
         §`0§(§;"U§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§ %§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §0v§.removeChild(this.§[!$§);
         this.§[!$§ = null;
         super.cleanup();
      }
      
      private function §]!5§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§[!$§)
         {
            this.§[!$§.x = param1 - this.§[!$§.width >> 1;
            this.§[!$§.y = param2 - this.§[!$§.height >> 1;
         }
      }
   }
}
