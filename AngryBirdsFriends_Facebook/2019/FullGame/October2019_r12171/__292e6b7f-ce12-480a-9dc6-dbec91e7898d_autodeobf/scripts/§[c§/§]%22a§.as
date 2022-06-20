package §[c§
{
   import §&?§.§5"f§;
   import §+`§.§%"q§;
   import §4S§.§<#j§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §]"a§ extends § #a§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §?!L§:uint = 4000;
       
      
      private var §]%§:Boolean = false;
      
      private var §6$>§:uint;
      
      private var §1",§:Boolean = false;
      
      public var §8#$§:XML;
      
      public var § "2§:XML;
      
      public var §'a§:DisplayObjectContainer;
      
      protected var §[L§:String;
      
      protected var §@"_§:String;
      
      private var §2D§:Boolean = false;
      
      public function §]"a§(param1:§%"q§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§[L§ = param5;
         this.§@"_§ = param6;
         super(param2,param3,param1);
         §[v§ = true;
         §?!L§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §<#j§.init(§'"y§("connectionProfileId"));
         if(!§5"f§.§+!,§.§"!7§())
         {
            this.initLoadManager();
         }
         §8#o§(true);
      }
      
      protected function initLoadManager() : void
      {
         §5"f§.§+!,§.init(§<#j§.§<!b§(),this.§[L§,this.§@"_§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§'a§ = param1;
      }
      
      public function §%!F§(param1:XML) : void
      {
         this.§8#$§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&"h§.addChild(this.§'a§);
         this.setLoadingPercentage(0);
         this.§6$>§ = getTimer();
      }
      
      protected function §<"?§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§5"f§.§+!,§.§?p§())
         {
            for each(_loc1_ in this.§8#$§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §5"f§.§+!,§.§,b§(_loc1_);
               }
            }
            for each(_loc1_ in this.§8#$§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §5"f§.§+!,§.§,b§(_loc1_);
               }
            }
            for each(_loc2_ in this.§8#$§.config.xml)
            {
               §5"f§.§+!,§.§,b§(_loc2_);
            }
            for each(_loc3_ in this.§8#$§.packages.pack)
            {
               §5"f§.§+!,§.§,b§(_loc3_);
            }
            §5"f§.§+!,§.§4H§(this.§!#Q§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§1",§ && this.§<"?§())
         {
            this.§1",§ = true;
         }
         var _loc2_:Number = Math.min(1,§5"f§.§+!,§.§5W§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§6$>§) / §?!L§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§2D§ && §5"f§.§+!,§.§5W§() >= 1 && _loc3_ >= 1)
         {
            §5"f§.§+!,§.§=#F§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§2D§ = true;
         §3#§(§?!T§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§2D§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §&"h§.removeChild(this.§'a§);
         this.§'a§ = null;
         super.cleanup();
      }
      
      private function §!#Q§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§'a§)
         {
            this.§'a§.x = param1 - this.§'a§.width >> 1;
            this.§'a§.y = param2 - this.§'a§.height >> 1;
         }
      }
   }
}
