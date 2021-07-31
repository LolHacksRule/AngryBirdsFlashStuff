package §"!&§
{
   import §+?§.§03§;
   import §9>§.§"!C§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §=F§ extends §#!,§
   {
      
      public static const §?x§:String = "load";
      
      public static var §?+§:uint = 4000;
       
      
      private var §;!7§:Boolean = false;
      
      private var §,!?§:uint;
      
      private var § =§:Boolean = false;
      
      public var §=!>§:XML;
      
      public var §@]§:XML;
      
      public var §&G§:DisplayObjectContainer;
      
      private var §!!4§:String;
      
      private var §4! §:String;
      
      public function §=F§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§!!4§ = param4;
         this.§4! § = param5;
         super(param1,param2);
         §[z§ = true;
         §?+§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §03§.init(§,!<§("connectionProfileId"));
         if(!§"!C§.§^n§.§-6§())
         {
            §"!C§.§^n§.init(§03§.§3!-§(),this.§!!4§,this.§4! §,null);
         }
         §7!2§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§&G§ = param1;
      }
      
      public function §&!C§(param1:XML) : void
      {
         this.§=!>§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[0§.addChild(this.§&G§);
         this.setLoadingPercentage(0);
         this.§,!?§ = getTimer();
      }
      
      private function §#!C§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§"!C§.§^n§.§^E§())
         {
            for each(_loc1_ in this.§=!>§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §"!C§.§^n§.§>!3§(_loc1_);
               }
            }
            for each(_loc2_ in this.§=!>§.packages.pack)
            {
               §"!C§.§^n§.§>!3§(_loc2_);
            }
            §"!C§.§^n§.§7p§(this.§?!G§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§ =§ && this.§#!C§())
         {
            this.§ =§ = true;
         }
         var _loc3_:Number = Math.min(1,§"!C§.§^n§.§4"§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§,!?§) / §?+§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§"!C§.§^n§.§4"§() >= 1)
         {
            §"!C§.§^n§.§`5§();
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §[0§.removeChild(this.§&G§);
         this.§&G§ = null;
         super.cleanup();
      }
      
      private function §?!G§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§&G§)
         {
            this.§&G§.x = param1 - this.§&G§.width >> 1;
            this.§&G§.y = param2 - this.§&G§.height >> 1;
         }
      }
   }
}
