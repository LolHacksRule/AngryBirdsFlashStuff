package §+j§
{
   import §6!C§.§;-§;
   import §6%§.§8A§;
   import §]!d§.§-!<§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §%&§ extends §@!_§
   {
      
      public static const §]O§:String = "load";
      
      public static var §;b§:uint = 4000;
       
      
      private var §;A§:Boolean = false;
      
      private var §8!G§:uint;
      
      private var §<v§:Boolean = false;
      
      public var §%p§:XML;
      
      public var §8n§:XML;
      
      public var §>Q§:DisplayObjectContainer;
      
      protected var §?!z§:String;
      
      protected var §2g§:String;
      
      private var §^!a§:Boolean = false;
      
      public function §%&§(param1:§-!<§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§?!z§ = param5;
         this.§2g§ = param6;
         super(param2,param3,param1);
         §!!w§ = true;
         §;b§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §;-§.init(§!!P§("connectionProfileId"));
         if(!§8A§.§=J§.§if§())
         {
            §8A§.§=J§.init(§;-§.§1!O§(),this.§?!z§,this.§2g§,null);
         }
         §%a§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§>Q§ = param1;
      }
      
      public function §50§(param1:XML) : void
      {
         this.§%p§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §<q§.addChild(this.§>Q§);
         this.setLoadingPercentage(0);
         this.§8!G§ = getTimer();
      }
      
      private function §3!f§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§8A§.§=J§.§-!p§())
         {
            for each(_loc1_ in this.§%p§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §8A§.§=J§.§,!K§(_loc1_);
               }
            }
            for each(_loc1_ in this.§%p§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §8A§.§=J§.§,!K§(_loc1_);
               }
            }
            for each(_loc2_ in this.§%p§.packages.pack)
            {
               §8A§.§=J§.§,!K§(_loc2_);
            }
            §8A§.§=J§.§;`§(this.§?F§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§<v§ && this.§3!f§())
         {
            this.§<v§ = true;
         }
         var _loc2_:Number = Math.min(1,§8A§.§=J§.§+E§()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§8!G§) / §;b§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§^!a§ && §8A§.§=J§.§+E§() >= 1)
         {
            §8A§.§=J§.§=S§();
            this.§9R§();
         }
      }
      
      protected function §9R§() : void
      {
         this.§^!a§ = true;
         §8=§(§-q§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§^!a§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §<q§.removeChild(this.§>Q§);
         this.§>Q§ = null;
         super.cleanup();
      }
      
      private function §?F§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§>Q§)
         {
            this.§>Q§.x = param1 - this.§>Q§.width >> 1;
            this.§>Q§.y = param2 - this.§>Q§.height >> 1;
         }
      }
   }
}
