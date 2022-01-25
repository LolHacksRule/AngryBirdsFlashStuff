package §?9§
{
   import §7"6§.§^!_§;
   import §<v§.§=v§;
   import §=j§.§^!J§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §@P§ extends § x§
   {
      
      public static const §]!y§:String = "load";
      
      public static var §<"+§:uint = 4000;
       
      
      private var §2"%§:Boolean = false;
      
      private var §'C§:uint;
      
      private var §^"$§:Boolean = false;
      
      public var § for§:XML;
      
      public var §3!m§:XML;
      
      public var §>i§:DisplayObjectContainer;
      
      protected var §3" §:String;
      
      protected var §#8§:String;
      
      private var §0A§:Boolean = false;
      
      public function §@P§(param1:§^!_§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         this.§3" § = param5;
         this.§#8§ = param6;
         super(param2,param3,param1);
         §7U§ = true;
         §<"+§ = param4;
      }
      
      override protected function init() : void
      {
         super.init();
         §^!J§.init(§1!Z§("connectionProfileId"));
         if(!§=v§.§&!;§.§-!5§())
         {
            this.§ !<§();
         }
         §,'§(true);
      }
      
      protected function § !<§() : void
      {
         §=v§.§&!;§.init(§^!J§.§14§(),this.§3" §,this.§#8§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§>i§ = param1;
      }
      
      public function §1!o§(param1:XML) : void
      {
         this.§ for§ = param1;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § C§.addChild(this.§>i§);
         this.setLoadingPercentage(0);
         this.§'C§ = getTimer();
      }
      
      private function §6t§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§=v§.§&!;§.§break§())
         {
            for each(_loc1_ in this.§ for§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=v§.§&!;§.§4"-§(_loc1_);
               }
            }
            for each(_loc1_ in this.§ for§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=v§.§&!;§.§4"-§(_loc1_);
               }
            }
            for each(_loc2_ in this.§ for§.packages.pack)
            {
               §=v§.§&!;§.§4"-§(_loc2_);
            }
            §=v§.§&!;§.§,"2§(this.§<!E§);
            return true;
         }
         return false;
      }
      
      override protected function update(param1:Number) : void
      {
         if(!this.§^"$§ && this.§6t§())
         {
            this.§^"$§ = true;
         }
         var _loc2_:Number = Math.min(1,§=v§.§&!;§.§`" §()) * 9;
         var _loc3_:Number = Math.min(1,(getTimer() - this.§'C§) / §<"+§);
         var _loc4_:Number = (_loc2_ + _loc3_) / 10;
         this.setLoadingPercentage(_loc4_);
         if(!this.§0A§ && §=v§.§&!;§.§`" §() >= 1)
         {
            §=v§.§&!;§.§1!Q§();
            this.§3Y§();
         }
      }
      
      protected function §3Y§() : void
      {
         this.§0A§ = true;
         §]a§(§1!Y§);
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§0A§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         § C§.removeChild(this.§>i§);
         this.§>i§ = null;
         super.cleanup();
      }
      
      private function §<!E§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§>i§)
         {
            this.§>i§.x = param1 - this.§>i§.width >> 1;
            this.§>i§.y = param2 - this.§>i§.height >> 1;
         }
      }
   }
}
