package §@##§
{
   import §,!_§.§2!%§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §9!9§
   {
       
      
      protected var §?"]§:String;
      
      protected var §#!^§:Vector.<URLLoader>;
      
      protected var §-!H§:Dictionary;
      
      protected var §"# §:Dictionary;
      
      public function §9!9§(param1:String)
      {
         super();
         this.§?"]§ = param1;
         this.§#!^§ = new Vector.<URLLoader>();
         this.§-!H§ = new Dictionary();
         this.§"# § = new Dictionary();
      }
      
      protected function §7"L§(param1:String, param2:Function, param3:§#^§ = null, param4:Function = null, param5:URLRequest = null) : §]"C§
      {
         var _loc6_:URLRequest = param5 || new URLRequest(this.§?"]§ + param1);
         var _loc7_:§2!%§ = new §2!%§();
         var _loc8_:Function = new §^!%§(param2,this.onComplete,param3).delegate;
         var _loc9_:Function = param4 || this.§<#1§;
         var _loc10_:Function = param4 || this.§#Z§;
         _loc7_.addEventListener(Event.COMPLETE,_loc8_);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,_loc9_);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,_loc10_);
         this.§#!^§.push(_loc7_);
         this.§"# §[_loc7_] = [_loc8_,_loc9_,_loc10_];
         var _loc11_:§]"C§ = new §]"C§(param1);
         this.§-!H§[_loc11_] = _loc7_;
         _loc7_.load(_loc6_);
         return _loc11_;
      }
      
      protected function onComplete(param1:URLLoader) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         for(_loc2_ in this.§-!H§)
         {
            if(this.§-!H§[_loc2_] == param1)
            {
               delete this.§-!H§[_loc2_];
               break;
            }
         }
         _loc3_ = this.§#!^§.indexOf(param1);
         if(_loc3_ != -1)
         {
            this.§#!^§.splice(_loc3_,1);
         }
         var _loc4_:Array;
         if((_loc4_ = this.§"# §[param1]) && _loc4_.length == 3)
         {
            param1.removeEventListener(Event.COMPLETE,_loc4_[0]);
            param1.removeEventListener(IOErrorEvent.IO_ERROR,_loc4_[1]);
            param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,_loc4_[2]);
            delete this.§"# §[param1];
         }
      }
      
      protected function §#Z§(param1:SecurityErrorEvent) : void
      {
         throw param1;
      }
      
      protected function §<#1§(param1:IOErrorEvent) : void
      {
         throw param1;
      }
      
      public function §%"+§(param1:§]"C§) : Boolean
      {
         var _loc2_:URLLoader = this.§-!H§[param1];
         if(_loc2_)
         {
            this.§1v§(_loc2_);
            return true;
         }
         return false;
      }
      
      protected function §1v§(param1:URLLoader) : void
      {
         var loader:URLLoader = param1;
         try
         {
            loader.close();
         }
         catch(e:Error)
         {
         }
         this.onComplete(loader);
      }
      
      public function dispose() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§#!^§)
         {
            this.§1v§(_loc1_);
         }
         this.§#!^§.length = 0;
         this.§-!H§ = new Dictionary();
      }
   }
}
