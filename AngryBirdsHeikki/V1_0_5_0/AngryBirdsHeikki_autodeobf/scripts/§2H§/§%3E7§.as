package §2H§
{
   import §7!5§.§=!2§;
   import §;c§.§[!T§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>7§ extends §>!^§
   {
      
      public static const §4l§:String = "load";
      
      public static var §&v§:uint = 4000;
       
      
      private var §<?§:Boolean = false;
      
      private var §6X§:uint;
      
      private var §"T§:Boolean = false;
      
      public var §4!7§:XML;
      
      public var §8D§:XML;
      
      public var §@!4§:DisplayObjectContainer;
      
      private var §7!<§:String;
      
      private var §8!E§:String;
      
      public function §>7§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§7!<§ = param4;
         this.§8!E§ = param5;
         super(param1,param2);
         §^!'§ = true;
         §&v§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §[!T§.init(§,G§("connectionProfileId"));
         if(!§=!2§.§;!F§.§%!=§())
         {
            §=!2§.§;!F§.init(§[!T§.§!_§(),this.§7!<§,this.§8!E§,null);
         }
         §&!W§(true);
      }
      
      public function §`!1§(param1:DisplayObjectContainer) : void
      {
         this.§@!4§ = param1;
      }
      
      public function §!!8§(param1:XML) : void
      {
         this.§4!7§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §%@§.addChild(this.§@!4§);
         this.setLoadingPercentage(0);
         this.§6X§ = getTimer();
      }
      
      private function §^N§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§=!2§.§;!F§.§5W§())
         {
            for each(_loc1_ in this.§4!7§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=!2§.§;!F§.§9§(_loc1_);
               }
            }
            for each(_loc2_ in this.§4!7§.packages.pack)
            {
               §=!2§.§;!F§.§9§(_loc2_);
            }
            §=!2§.§;!F§.§9!`§(this.§!A§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§"T§ && this.§^N§())
         {
            this.§"T§ = true;
         }
         var _loc3_:Number = Math.min(1,§=!2§.§;!F§.§!K§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§6X§) / §&v§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§=!2§.§;!F§.§!K§() >= 1)
         {
            §=!2§.§;!F§.§4Q§();
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         return §>!^§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §%@§.removeChild(this.§@!4§);
         this.§@!4§ = null;
         super.cleanup();
      }
      
      private function §!A§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§@!4§)
         {
            this.§@!4§.x = param1 - this.§@!4§.width >> 1;
            this.§@!4§.y = param2 - this.§@!4§.height >> 1;
         }
      }
   }
}
