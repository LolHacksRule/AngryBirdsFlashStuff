package §1%§
{
   import §%!r§.§3!'§;
   import §+!h§.§#V§;
   import §7!%§.§[K§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §@!t§ extends §0!3§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §!"A§:uint = 4000;
       
      
      private var §<"9§:Boolean = false;
      
      private var §]!Z§:uint;
      
      private var §4r§:Boolean = false;
      
      public var §4!a§:XML;
      
      public var §;!e§:XML;
      
      public var §8!r§:DisplayObjectContainer;
      
      private var §8!6§:String;
      
      private var §6"7§:String;
      
      private var §;Q§:Boolean = false;
      
      public function §@!t§(param1:§3!'§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§8!6§ = param5;
         this.§6"7§ = param6;
         super(param2,param3,param1);
         §=@§ = true;
         §!"A§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §#V§.init(§>"B§("connectionProfileId"));
         if(!§[K§.§[!1§.§;c§())
         {
            §[K§.§[!1§.init(§#V§.§4!+§(),this.§8!6§,this.§6"7§,null);
         }
         §`j§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§8!r§ = param1;
      }
      
      public function §%!,§(param1:XML) : void
      {
         this.§4!a§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]!$§.addChild(this.§8!r§);
         this.setLoadingPercentage(0);
         this.§]!Z§ = getTimer();
      }
      
      private function §<u§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§[K§.§[!1§.§>!#§())
         {
            for each(_loc1_ in this.§4!a§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §[K§.§[!1§.§4!=§(_loc1_);
               }
            }
            for each(_loc1_ in this.§4!a§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §[K§.§[!1§.§4!=§(_loc1_);
               }
            }
            for each(_loc2_ in this.§4!a§.packages.pack)
            {
               §[K§.§[!1§.§4!=§(_loc2_);
            }
            §[K§.§[!1§.§#y§(this.§'Y§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§4r§ && this.§<u§())
         {
            this.§4r§ = true;
         }
         var _loc2_:Number = Math.min(1,§[K§.§[!1§.§'"A§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§]!Z§) / §!"A§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§;Q§ && §[K§.§[!1§.§'"A§() >= 1)
         {
            §[K§.§[!1§.§`t§();
            this.§]z§();
         }
      }
      
      protected function §]z§() : void
      {
         this.§;Q§ = true;
         §8!^§(§^![§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§;Q§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §]!$§.removeChild(this.§8!r§);
         this.§8!r§ = null;
         super.cleanup();
      }
      
      private function §'Y§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§8!r§)
         {
            this.§8!r§.x = param1 - this.§8!r§.width >> 1;
            this.§8!r§.y = param2 - this.§8!r§.height >> 1;
         }
      }
   }
}
