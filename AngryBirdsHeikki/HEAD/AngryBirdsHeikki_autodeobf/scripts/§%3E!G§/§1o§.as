package §>!G§
{
   import §1!F§.§;!`§;
   import §;$§.§0M§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §1o§ extends §6!9§
   {
      
      public static const §[!%§:String = "load";
      
      public static var §`t§:uint = 4000;
       
      
      private var §7B§:Boolean = false;
      
      private var §3i§:uint;
      
      private var §!!`§:Boolean = false;
      
      public var §`K§:XML;
      
      public var §>!;§:XML;
      
      public var §&W§:DisplayObjectContainer;
      
      private var §-!0§:String;
      
      private var §1!;§:String;
      
      public function §1o§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§-!0§ = param4;
         this.§1!;§ = param5;
         super(param1,param2);
         §'?§ = true;
         §`t§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §0M§.init(§&Q§("connectionProfileId"));
         if(!§;!`§.§?! §.§!!W§())
         {
            §;!`§.§?! §.init(§0M§.§;"§(),this.§-!0§,this.§1!;§,null);
         }
         §[%§(true);
      }
      
      public function §#!5§(param1:DisplayObjectContainer) : void
      {
         this.§&W§ = param1;
      }
      
      public function §;l§(param1:XML) : void
      {
         this.§`K§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §4!B§.addChild(this.§&W§);
         this.setLoadingPercentage(0);
         this.§3i§ = getTimer();
      }
      
      private function §<!K§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§;!`§.§?! §.§?c§())
         {
            for each(_loc1_ in this.§`K§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!`§.§?! §.§8J§(_loc1_);
               }
            }
            for each(_loc1_ in this.§`K§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;!`§.§?! §.§8J§(_loc1_);
               }
            }
            for each(_loc2_ in this.§`K§.packages.pack)
            {
               §;!`§.§?! §.§8J§(_loc2_);
            }
            §;!`§.§?! §.§3K§(this.§,W§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§!!`§ && this.§<!K§())
         {
            this.§!!`§ = true;
         }
         var _loc3_:Number = Math.min(1,§;!`§.§?! §.§;>§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§3i§) / §`t§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§;!`§.§?! §.§;>§() >= 1)
         {
            §;!`§.§?! §.§"$§();
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         return §6!9§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §4!B§.removeChild(this.§&W§);
         this.§&W§ = null;
         super.cleanup();
      }
      
      private function §,W§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§&W§)
         {
            this.§&W§.x = param1 - this.§&W§.width >> 1;
            this.§&W§.y = param2 - this.§&W§.height >> 1;
         }
      }
   }
}
