package §8!$§
{
   import §'!u§.§&S§;
   import §2,§.§"G§;
   import §=M§.§&!1§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §`0§ extends §@![§
   {
      
      public static const §+a§:String = "load";
      
      public static var §4B§:uint = 4000;
       
      
      private var §+%§:Boolean = false;
      
      private var §3!1§:uint;
      
      private var §!-§:Boolean = false;
      
      public var §>!x§:XML;
      
      public var §!x§:XML;
      
      public var §!!§:DisplayObjectContainer;
      
      protected var §1?§:String;
      
      protected var §!!H§:String;
      
      private var §'!P§:Boolean = false;
      
      public function §`0§(param1:§&S§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§1?§ = param5;
         this.§!!H§ = param6;
         super(param2,param3,param1);
         §2! § = true;
         §4B§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §"G§.init(§+!Y§("connectionProfileId"));
         if(!§&!1§.§>!P§.§1G§())
         {
            §&!1§.§>!P§.init(§"G§.§5!>§(),this.§1?§,this.§!!H§,null);
         }
         §`q§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§!!§ = param1;
      }
      
      public function §=w§(param1:XML) : void
      {
         this.§>!x§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%!D§.addChild(this.§!!§);
         this.setLoadingPercentage(0);
         this.§3!1§ = getTimer();
      }
      
      private function §7"+§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§&!1§.§>!P§.§=a§())
         {
            for each(_loc1_ in this.§>!x§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §&!1§.§>!P§.§<!'§(_loc1_);
               }
            }
            for each(_loc1_ in this.§>!x§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §&!1§.§>!P§.§<!'§(_loc1_);
               }
            }
            for each(_loc2_ in this.§>!x§.packages.pack)
            {
               §&!1§.§>!P§.§<!'§(_loc2_);
            }
            §&!1§.§>!P§.§ !4§(this.§%!&§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§!-§ && this.§7"+§())
         {
            this.§!-§ = true;
         }
         var _loc2_:Number = Math.min(1,§&!1§.§>!P§.§5!7§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§3!1§) / §4B§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§'!P§ && §&!1§.§>!P§.§5!7§() >= 1)
         {
            §&!1§.§>!P§.§<!h§();
            this.§[!7§();
         }
      }
      
      protected function §[!7§() : void
      {
         this.§'!P§ = true;
         §8!`§(§ !_§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§'!P§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §%!D§.removeChild(this.§!!§);
         this.§!!§ = null;
         super.cleanup();
      }
      
      private function §%!&§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§!!§)
         {
            this.§!!§.x = param1 - this.§!!§.width >> 1;
            this.§!!§.y = param2 - this.§!!§.height >> 1;
         }
      }
   }
}
