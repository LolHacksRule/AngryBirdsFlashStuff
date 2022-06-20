package §8";§
{
   import §#"A§.§'"U§;
   import §2<§.§8M§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §?4§ extends §+d§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §6!C§:uint = 4000;
       
      
      private var §8r§:Boolean = false;
      
      private var §^!=§:uint;
      
      private var § g§:Boolean = false;
      
      public var §'!i§:XML;
      
      public var §-"Z§:XML;
      
      public var §+"K§:DisplayObjectContainer;
      
      protected var §?!<§:String;
      
      protected var §>"Y§:String;
      
      public function §?4§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§?!<§ = param4;
         this.§>"Y§ = param5;
         super(param1,param2);
         §]!§ = true;
         §6!C§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §8M§.init(§+!a§("connectionProfileId"));
         if(!§'"U§.§&"5§.§+@§())
         {
            this.initLoadManager();
         }
         §get §(true);
      }
      
      protected function initLoadManager() : void
      {
         §'"U§.§&"5§.init(§8M§.§+!y§(),this.§?!<§,this.§>"Y§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§+"K§ = param1;
      }
      
      public function §,"0§(param1:XML) : void
      {
         this.§'!i§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?!T§.addChild(this.§+"K§);
         this.setLoadingPercentage(0);
         this.§^!=§ = getTimer();
      }
      
      private function §&!p§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§'"U§.§&"5§.§3!,§())
         {
            for each(_loc1_ in this.§'!i§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'"U§.§&"5§.§!x§(_loc1_);
               }
            }
            for each(_loc1_ in this.§'!i§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'"U§.§&"5§.§!x§(_loc1_);
               }
            }
            for each(_loc2_ in this.§'!i§.config.xml)
            {
               §'"U§.§&"5§.§!x§(_loc2_);
            }
            for each(_loc3_ in this.§'!i§.packages.pack)
            {
               §'"U§.§&"5§.§!x§(_loc3_);
            }
            §'"U§.§&"5§.§+g§(this.§3e§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§ g§ && this.§&!p§())
         {
            this.§ g§ = true;
         }
         var _loc3_:Number = Math.min(1,§'"U§.§&"5§.§-Z§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§^!=§) / §6!C§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§'"U§.§&"5§.§-Z§() >= 1)
         {
            §'"U§.§&"5§.§8!`§();
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §?!T§.removeChild(this.§+"K§);
         this.§+"K§ = null;
         super.cleanup();
      }
      
      private function §3e§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§+"K§)
         {
            this.§+"K§.x = param1 - this.§+"K§.width >> 1;
            this.§+"K§.y = param2 - this.§+"K§.height >> 1;
         }
      }
   }
}
