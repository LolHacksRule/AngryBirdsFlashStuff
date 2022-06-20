package §>"W§
{
   import § !j§.§4#c§;
   import §-u§.§&#+§;
   import §1L§.§;u§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §%#+§ extends §7Y§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §@"M§:uint = 4000;
       
      
      private var §]#S§:Boolean = false;
      
      private var §?#t§:uint;
      
      private var §6#,§:Boolean = false;
      
      public var §2$"§:XML;
      
      public var §`V§:XML;
      
      public var §8"&§:DisplayObjectContainer;
      
      protected var §2"c§:String;
      
      protected var §1#F§:String;
      
      private var §^!O§:Boolean = false;
      
      public function §%#+§(param1:§4#c§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§2"c§ = param5;
         this.§1#F§ = param6;
         super(param2,param3,param1);
         §9!1§ = true;
         §@"M§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §;u§.init(§;"-§("connectionProfileId"));
         if(!§&#+§.§`"H§.§0#^§())
         {
            this.initLoadManager();
         }
         §3!L§(true);
      }
      
      protected function initLoadManager() : void
      {
         §&#+§.§`"H§.init(§;u§.§2!,§(),this.§2"c§,this.§1#F§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§8"&§ = param1;
      }
      
      public function §4"a§(param1:XML) : void
      {
         this.§2$"§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §'#f§.addChild(this.§8"&§);
         this.setLoadingPercentage(0);
         this.§?#t§ = getTimer();
      }
      
      protected function §,"?§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§&#+§.§`"H§.§[$6§())
         {
            for each(_loc1_ in this.§2$"§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §&#+§.§`"H§.§?"'§(_loc1_);
               }
            }
            for each(_loc1_ in this.§2$"§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §&#+§.§`"H§.§?"'§(_loc1_);
               }
            }
            for each(_loc2_ in this.§2$"§.config.xml)
            {
               §&#+§.§`"H§.§?"'§(_loc2_);
            }
            for each(_loc3_ in this.§2$"§.packages.pack)
            {
               §&#+§.§`"H§.§?"'§(_loc3_);
            }
            §&#+§.§`"H§.§ #!§(this.§+;§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§6#,§ && this.§,"?§())
         {
            this.§6#,§ = true;
         }
         var _loc2_:Number = Math.min(1,§&#+§.§`"H§.§]"c§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§?#t§) / §@"M§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§^!O§ && §&#+§.§`"H§.§]"c§() >= 1 && _loc3_ >= 1)
         {
            §&#+§.§`"H§.§5!y§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§^!O§ = true;
         §1!L§(§8!u§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§^!O§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §'#f§.removeChild(this.§8"&§);
         this.§8"&§ = null;
         super.cleanup();
      }
      
      private function §+;§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§8"&§)
         {
            this.§8"&§.x = param1 - this.§8"&§.width >> 1;
            this.§8"&§.y = param2 - this.§8"&§.height >> 1;
         }
      }
   }
}
