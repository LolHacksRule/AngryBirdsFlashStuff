package §^5§
{
   import §]!A§.§1!f§;
   import §]L§.§9%§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §@!8§ extends §]!,§
   {
      
      public static const §<P§:String = "load";
      
      public static var §>!Z§:uint = 4000;
       
      
      private var § !f§:Boolean = false;
      
      private var §4!`§:uint;
      
      private var §]]§:Boolean = false;
      
      public var §2!c§:XML;
      
      public var §[!_§:XML;
      
      public var §6%§:DisplayObjectContainer;
      
      private var §`!P§:String;
      
      private var §%!@§:String;
      
      public function §@!8§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§`!P§ = param4;
         this.§%!@§ = param5;
         super(param1,param2);
         §?!C§ = true;
         §>!Z§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §1!f§.init(§#c§("connectionProfileId"));
         if(!§9%§.§>E§.§<O§())
         {
            §9%§.§>E§.init(§1!f§.§#7§(),this.§`!P§,this.§%!@§,null);
         }
         §`L§(true);
      }
      
      public function §]!U§(param1:DisplayObjectContainer) : void
      {
         this.§6%§ = param1;
      }
      
      public function §@y§(param1:XML) : void
      {
         this.§2!c§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[8§.addChild(this.§6%§);
         this.setLoadingPercentage(0);
         this.§4!`§ = getTimer();
      }
      
      private function §[B§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§9%§.§>E§.§7!O§())
         {
            for each(_loc1_ in this.§2!c§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §9%§.§>E§.§"_§(_loc1_);
               }
            }
            for each(_loc1_ in this.§2!c§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §9%§.§>E§.§"_§(_loc1_);
               }
            }
            for each(_loc2_ in this.§2!c§.packages.pack)
            {
               §9%§.§>E§.§"_§(_loc2_);
            }
            §9%§.§>E§.§9!0§(this.§1!m§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§]]§ && this.§[B§())
         {
            this.§]]§ = true;
         }
         var _loc3_:Number = Math.min(1,§9%§.§>E§.§^m§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§4!`§) / §>!Z§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§9%§.§>E§.§^m§() >= 1)
         {
            §9%§.§>E§.§;]§();
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         return §]!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §[8§.removeChild(this.§6%§);
         this.§6%§ = null;
         super.cleanup();
      }
      
      private function §1!m§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§6%§)
         {
            this.§6%§.x = param1 - this.§6%§.width >> 1;
            this.§6%§.y = param2 - this.§6%§.height >> 1;
         }
      }
   }
}
