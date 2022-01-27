package §7"l§
{
   import §!"N§.§`!q§;
   import §'+§.§="B§;
   import §,!_§.§2"V§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §[!0§ extends §,!Y§
   {
      
      public static const §'#2§:String = "load";
      
      public static var §+"<§:uint = 4000;
       
      
      private var §#"&§:Boolean = false;
      
      private var §do §:uint;
      
      private var §2!X§:Boolean = false;
      
      public var §0!S§:XML;
      
      public var §3";§:XML;
      
      public var §6",§:DisplayObjectContainer;
      
      protected var §6"o§:String;
      
      protected var § "i§:String;
      
      private var §;"%§:Boolean = false;
      
      public function §[!0§(param1:§="B§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§6"o§ = param5;
         this.§ "i§ = param6;
         super(param2,param3,param1);
         §6!t§ = true;
         §+"<§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §2"V§.init(§!!c§("connectionProfileId"));
         if(!§`!q§.§-G§.§]e§())
         {
            this.§?!m§();
         }
         §?"w§(true);
      }
      
      protected function §?!m§() : void
      {
         §`!q§.§-G§.init(§2"V§.§=!U§(),this.§6"o§,this.§ "i§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§6",§ = param1;
      }
      
      public function §,"1§(param1:XML) : void
      {
         this.§0!S§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § "6§.addChild(this.§6",§);
         this.setLoadingPercentage(0);
         this.§do § = getTimer();
      }
      
      private function §%T§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§`!q§.§-G§.§@"[§())
         {
            for each(_loc1_ in this.§0!S§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §`!q§.§-G§.§!#"§(_loc1_);
               }
            }
            for each(_loc1_ in this.§0!S§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §`!q§.§-G§.§!#"§(_loc1_);
               }
            }
            for each(_loc2_ in this.§0!S§.config.xml)
            {
               §`!q§.§-G§.§!#"§(_loc2_);
            }
            for each(_loc3_ in this.§0!S§.packages.pack)
            {
               §`!q§.§-G§.§!#"§(_loc3_);
            }
            §`!q§.§-G§.§@X§(this.§#"N§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§2!X§ && this.§%T§())
         {
            this.§2!X§ = true;
         }
         var _loc2_:Number = Math.min(1,§`!q§.§-G§.§3"V§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§do §) / §+"<§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§;"%§ && §`!q§.§-G§.§3"V§() >= 1 && _loc3_ >= 1)
         {
            §`!q§.§-G§.§3%§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§;"%§ = true;
         §0"B§(§73§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§;"%§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         § "6§.removeChild(this.§6",§);
         this.§6",§ = null;
         super.cleanup();
      }
      
      private function §#"N§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§6",§)
         {
            this.§6",§.x = param1 - this.§6",§.width >> 1;
            this.§6",§.y = param2 - this.§6",§.height >> 1;
         }
      }
   }
}
