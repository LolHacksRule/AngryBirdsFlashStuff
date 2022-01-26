package com.angrybirds.utils
{
   import §!!!§.§6!l§;
   import §%!B§.§0![§;
   import §0!m§.§@!S§;
   import §4!i§.§0!<§;
   import §4!i§.§^"#§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §`"§ extends EventDispatcher
   {
       
      
      private var §,@§:Boolean = false;
      
      private var §'!E§:Number;
      
      protected var §4a§:§0![§;
      
      protected var §;Q§:String;
      
      public function §`"§(param1:UncaughtErrorEvents, param2:String)
      {
         super();
         this.§'!E§ = new Date().time;
         this.§;Q§ = param2;
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§1",§);
      }
      
      protected function onError(param1:UncaughtErrorEvent) : void
      {
      }
      
      public function §<!&§(param1:§0![§) : void
      {
         this.§4a§ = param1;
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
         var _loc6_:int = Math.round((new Date().time - this.§'!E§) / 1000);
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
         §0!<§.§<[§(_loc2_,_loc6_);
         if(§@!S§.§[!%§ != null)
         {
            _loc4_ = §@!S§.§[!%§.§!!w§();
         }
         if(_loc4_ == null || _loc4_.length == 0)
         {
            _loc4_ = "NoState";
         }
         var _loc7_:String = "";
         if(this.§4a§ && this.§4a§.currentLevel != null)
         {
            _loc7_ = this.§4a§.currentLevel;
         }
         var _loc8_:String = "GPU";
         if(§6!l§.§+J§ == null)
         {
            _loc8_ = "NULL";
         }
         else if(§6!l§.§`k§)
         {
            _loc8_ = "CPU";
         }
         var _loc9_:String = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + this.§;Q§;
         §0!<§.§1x§(§^"#§.§3",§,_loc9_,_loc6_);
         if(_loc3_)
         {
            _loc12_ = _loc9_ + "::" + _loc3_;
            §0!<§.§1x§(§^"#§.§9"&§,_loc12_,_loc6_);
         }
         else
         {
            §0!<§.§1x§(§^"#§.§3",§,_loc9_,_loc6_);
         }
      }
      
      private function §1",§(param1:UncaughtErrorEvent) : void
      {
         if(this.§,@§)
         {
            return;
         }
         this.§,@§ = true;
         this.reportError(param1);
         this.onError(param1);
      }
   }
}
