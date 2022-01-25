package §!!L§
{
   import §+!Z§.§=!2§;
   import §7'§.§"E§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §9F§ extends §&!R§
   {
      
      public static const §'2§:String = "load";
      
      public static var §'3§:uint = 4000;
       
      
      private var §,Y§:Boolean = false;
      
      private var §'s§:uint;
      
      private var §'![§:Boolean = false;
      
      public var §1!P§:XML;
      
      public var §0!Y§:XML;
      
      public var §!!M§:DisplayObjectContainer;
      
      private var §%f§:String;
      
      private var §<_§:String;
      
      public function §9F§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§%f§ = param4;
         this.§<_§ = param5;
         super(param1,param2);
         §2!D§ = true;
         §'3§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §=!2§.init(getApplicationParameter("connectionProfileId"));
         if(!§"E§.§`G§.§0!1§())
         {
            §"E§.§`G§.init(§=!2§.§2i§(),this.§%f§,this.§<_§,null);
         }
         §3!4§(true);
      }
      
      public function §-!B§(param1:DisplayObjectContainer) : void
      {
         this.§!!M§ = param1;
      }
      
      public function §9+§(param1:XML) : void
      {
         this.§1!P§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8q§.addChild(this.§!!M§);
         this.setLoadingPercentage(0);
         this.§'s§ = getTimer();
      }
      
      private function §#!T§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§"E§.§`G§.§"!K§())
         {
            for each(_loc1_ in this.§1!P§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §"E§.§`G§.§>Q§(_loc1_);
               }
            }
            for each(_loc2_ in this.§1!P§.packages.pack)
            {
               §"E§.§`G§.§>Q§(_loc2_);
            }
            §"E§.§`G§.§!`§(this.§'a§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§'![§ && this.§#!T§())
         {
            this.§'![§ = true;
         }
         var _loc3_:Number = Math.min(1,§"E§.§`G§.§,!D§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§'s§) / §'3§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§"E§.§`G§.§,!D§() >= 1)
         {
            §"E§.§`G§.§>5§();
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §8q§.removeChild(this.§!!M§);
         this.§!!M§ = null;
         super.cleanup();
      }
      
      private function §'a§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§!!M§)
         {
            this.§!!M§.x = param1 - this.§!!M§.width >> 1;
            this.§!!M§.y = param2 - this.§!!M§.height >> 1;
         }
      }
   }
}
