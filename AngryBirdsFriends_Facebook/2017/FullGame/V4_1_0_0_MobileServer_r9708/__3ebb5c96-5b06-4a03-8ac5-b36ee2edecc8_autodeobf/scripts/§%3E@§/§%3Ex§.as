package §>@§
{
   import § $%§.§ $7§;
   import §&$!§.§+#!§;
   import §>!I§.§@!q§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>x§ extends §'!L§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §&#5§:uint = 4000;
       
      
      private var §6O§:Boolean = false;
      
      private var §%M§:uint;
      
      private var §6#z§:Boolean = false;
      
      public var §?!r§:XML;
      
      public var §^"p§:XML;
      
      public var §]"[§:DisplayObjectContainer;
      
      protected var §-x§:String;
      
      protected var §6#;§:String;
      
      private var §"v§:Boolean = false;
      
      public function §>x§(param1:§+#!§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§-x§ = param5;
         this.§6#;§ = param6;
         super(param2,param3,param1);
         §8"L§ = true;
         §&#5§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         § $7§.init(§+"9§("connectionProfileId"));
         if(!§@!q§.§ "D§.§ "x§())
         {
            this.initLoadManager();
         }
         §;$>§(true);
      }
      
      protected function initLoadManager() : void
      {
         §@!q§.§ "D§.init(§ $7§.§<J§(),this.§-x§,this.§6#;§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§]"[§ = param1;
      }
      
      public function §@!#§(param1:XML) : void
      {
         this.§?!r§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §'$&§.addChild(this.§]"[§);
         this.setLoadingPercentage(0);
         this.§%M§ = getTimer();
      }
      
      protected function §5"Z§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§@!q§.§ "D§.§8#N§())
         {
            for each(_loc1_ in this.§?!r§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §@!q§.§ "D§.§'"g§(_loc1_);
               }
            }
            for each(_loc1_ in this.§?!r§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §@!q§.§ "D§.§'"g§(_loc1_);
               }
            }
            for each(_loc2_ in this.§?!r§.config.xml)
            {
               §@!q§.§ "D§.§'"g§(_loc2_);
            }
            for each(_loc3_ in this.§?!r§.packages.pack)
            {
               §@!q§.§ "D§.§'"g§(_loc3_);
            }
            §@!q§.§ "D§.§?!+§(this.§?!?§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§6#z§ && this.§5"Z§())
         {
            this.§6#z§ = true;
         }
         var _loc2_:Number = Math.min(1,§@!q§.§ "D§.§,#_§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§%M§) / §&#5§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§"v§ && §@!q§.§ "D§.§,#_§() >= 1 && _loc3_ >= 1)
         {
            §@!q§.§ "D§.§<!z§();
            this.setLoadingReady();
         }
      }
      
      protected function setLoadingReady() : void
      {
         this.§"v§ = true;
         §5"p§(§[#,§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§"v§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §'$&§.removeChild(this.§]"[§);
         this.§]"[§ = null;
         super.cleanup();
      }
      
      private function §?!?§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§]"[§)
         {
            this.§]"[§.x = param1 - this.§]"[§.width >> 1;
            this.§]"[§.y = param2 - this.§]"[§.height >> 1;
         }
      }
   }
}
