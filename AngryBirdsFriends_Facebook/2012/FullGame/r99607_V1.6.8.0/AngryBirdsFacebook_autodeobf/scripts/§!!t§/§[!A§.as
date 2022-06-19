package §!!t§
{
   import §"!4§.§1!m§;
   import §9"%§.§?V§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §[!A§ extends §,-§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §="3§:uint = 4000;
       
      
      private var §>"+§:Boolean = false;
      
      private var §^Y§:uint;
      
      private var §]!_§:Boolean = false;
      
      public var §"h§:XML;
      
      public var §%"=§:XML;
      
      public var §2!S§:DisplayObjectContainer;
      
      private var §-!'§:String;
      
      private var §6j§:String;
      
      public function §[!A§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§-!'§ = param4;
         this.§6j§ = param5;
         super(param1,param2);
         §8!i§ = true;
         §="3§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §?V§.init(§9"=§("connectionProfileId"));
         if(!§1!m§.§8c§.§7! §())
         {
            §1!m§.§8c§.init(§?V§.§9§(),this.§-!'§,this.§6j§,null);
         }
         §[,§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§2!S§ = param1;
      }
      
      public function §7!J§(param1:XML) : void
      {
         this.§"h§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §3!b§.addChild(this.§2!S§);
         this.setLoadingPercentage(0);
         this.§^Y§ = getTimer();
      }
      
      private function §8x§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§1!m§.§8c§.§9Z§())
         {
            for each(_loc1_ in this.§"h§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §1!m§.§8c§.§0!b§(_loc1_);
               }
            }
            for each(_loc1_ in this.§"h§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §1!m§.§8c§.§0!b§(_loc1_);
               }
            }
            for each(_loc2_ in this.§"h§.packages.pack)
            {
               §1!m§.§8c§.§0!b§(_loc2_);
            }
            §1!m§.§8c§.§7?§(this.§?K§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§]!_§ && this.§8x§())
         {
            this.§]!_§ = true;
         }
         var _loc3_:Number = Math.min(1,§1!m§.§8c§.§!7§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§^Y§) / §="3§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§1!m§.§8c§.§!7§() >= 1)
         {
            §1!m§.§8c§.§5a§();
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §3!b§.removeChild(this.§2!S§);
         this.§2!S§ = null;
         super.cleanup();
      }
      
      private function §?K§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§2!S§)
         {
            this.§2!S§.x = param1 - this.§2!S§.width >> 1;
            this.§2!S§.y = param2 - this.§2!S§.height >> 1;
         }
      }
   }
}
