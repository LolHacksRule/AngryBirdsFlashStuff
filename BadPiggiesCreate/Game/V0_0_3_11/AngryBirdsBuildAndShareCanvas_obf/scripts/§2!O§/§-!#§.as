package §2!O§
{
   import §#!+§.§[E§;
   import §45§.§@"'§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §-!#§ extends §,w§
   {
      
      public static const §^z§:String = "load";
      
      public static var §'!;§:uint = 4000;
       
      
      private var §9n§:Boolean = false;
      
      private var §,%§:uint;
      
      private var §,j§:Boolean = false;
      
      public var §+p§:XML;
      
      public var §7!o§:XML;
      
      public var §<!x§:DisplayObjectContainer;
      
      private var §5"6§:String;
      
      private var §"F§:String;
      
      public function §-!#§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§5"6§ = param4;
         this.§"F§ = param5;
         super(param1,param2);
         §-C§ = true;
         §'!;§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §@"'§.init(§?I§("connectionProfileId"));
         if(!§[E§.§if §.§8x§())
         {
            §[E§.§if §.init(§@"'§.§%!I§(),this.§5"6§,this.§"F§,null);
         }
         §'!O§(true);
      }
      
      public function §[!Y§(param1:DisplayObjectContainer) : void
      {
         this.§<!x§ = param1;
      }
      
      public function §?!-§(param1:XML) : void
      {
         this.§+p§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         § "5§.addChild(this.§<!x§);
         this.setLoadingPercentage(0);
         this.§,%§ = getTimer();
      }
      
      private function §%S§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§[E§.§if §.§0!L§())
         {
            for each(_loc1_ in this.§+p§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §[E§.§if §.§%!!§(_loc1_);
               }
            }
            for each(_loc1_ in this.§+p§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §[E§.§if §.§%!!§(_loc1_);
               }
            }
            for each(_loc2_ in this.§+p§.packages.pack)
            {
               §[E§.§if §.§%!!§(_loc2_);
            }
            §[E§.§if §.§<=§(this.§[3§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§,j§ && this.§%S§())
         {
            this.§,j§ = true;
         }
         var _loc3_:Number = Math.min(1,§[E§.§if §.§1D§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§,%§) / §'!;§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§[E§.§if §.§1D§() >= 1)
         {
            §[E§.§if §.§%E§();
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         § "5§.removeChild(this.§<!x§);
         this.§<!x§ = null;
         super.cleanup();
      }
      
      private function §[3§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§<!x§)
         {
            this.§<!x§.x = param1 - this.§<!x§.width >> 1;
            this.§<!x§.y = param2 - this.§<!x§.height >> 1;
         }
      }
   }
}
