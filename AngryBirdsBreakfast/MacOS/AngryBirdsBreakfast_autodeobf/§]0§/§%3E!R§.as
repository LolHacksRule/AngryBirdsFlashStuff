package §]0§
{
   import §"n§.§+!a§;
   import §"n§.§[!-§;
   import §8!K§.§5!Y§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §>!R§ extends EventDispatcher
   {
       
      
      private var §#"#§:Boolean = false;
      
      private var §2;§:Number;
      
      protected var §&" §:§5!Y§;
      
      protected var §5#§:String;
      
      public function §>!R§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§2;§ = new Date().time;
         this.§5#§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§[7§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §&!j§(param1:§5!Y§) : void
      {
         this.§&" § = param1;
      }
      
      protected function reportError(param1:UncaughtErrorEvent) : void
      {
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = "";
         var _loc5_:String = "-";
         var _loc6_:int = Math.round((new Date().time - this.§2;§) / 1000);
         if(param1.error is Error)
         {
            _loc2_ = (_loc10_ = param1.error as Error).errorID;
            _loc5_ = _loc10_.message;
            _loc3_ = _loc10_.getStackTrace();
         }
         else if(param1.error is ErrorEvent)
         {
            _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
         }
         §[!-§.§[A§(_loc2_,_loc6_);
         if(§&!"§.§=!X§ != null)
         {
            _loc4_ = §&!"§.§=!X§.§<!&§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§&" § && this.§&" §.currentLevel != null)
         {
            _loc7_ = this.§&" §.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§1"&§.§1i§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§1"&§.§'!g§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§5#§;
         §[!-§.§@v§(§+!a§.§;G§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §[!-§.§@v§(§+!a§.§%!F§,_loc12_,_loc6_);
         }
         else
         {
            §[!-§.§@v§(§+!a§.§;G§,_loc9_,_loc6_);
         }
      }
      
      private function §[7§(param1:UncaughtErrorEvent) : void
      {
         if(this.§#"#§)
         {
            return;
         }
         this.§#"#§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
