package §'!P§
{
   import §%!G§.§`?§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §9"Q§
   {
       
      
      protected var §!!-§:String;
      
      protected var §!"c§:Vector.<URLLoader>;
      
      protected var §"!h§:Dictionary;
      
      protected var §-e§:Dictionary;
      
      public function §9"Q§(param1:String)
      {
         super();
         this.§!!-§ = param1;
         this.§!"c§ = new Vector.<URLLoader>();
         this.§"!h§ = new Dictionary();
         this.§-e§ = new Dictionary();
      }
      
      protected function §["x§(param1:String, param2:Function, param3:§29§ = null, param4:Function = null, param5:URLRequest = null) : §<#-§
      {
         var _loc6_:URLRequest = param5 || new URLRequest(this.§!!-§ + param1);
         var _loc7_:§`?§ = new §`?§();
         var _loc8_:Function = new §8!M§(param2,this.onComplete,param3).delegate;
         var _loc9_:Function = param4 || this.§[!r§;
         var _loc10_:Function = param4 || this.§;!§;
         _loc7_.addEventListener(Event.COMPLETE,_loc8_);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,_loc9_);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,_loc10_);
         this.§!"c§.push(_loc7_);
         this.§-e§[_loc7_] = [_loc8_,_loc9_,_loc10_];
         var _loc11_:§<#-§ = new §<#-§(param1);
         this.§"!h§[_loc11_] = _loc7_;
         _loc7_.load(_loc6_);
         return _loc11_;
      }
      
      protected function onComplete(param1:URLLoader) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         for(_loc2_ in this.§"!h§)
         {
            if(this.§"!h§[_loc2_] == param1)
            {
               delete this.§"!h§[_loc2_];
               break;
            }
         }
         _loc3_ = this.§!"c§.indexOf(param1);
         if(_loc3_ != -1)
         {
            this.§!"c§.splice(_loc3_,1);
         }
         var _loc4_:Array;
         if((_loc4_ = this.§-e§[param1]) && _loc4_.length == 3)
         {
            param1.removeEventListener(Event.COMPLETE,_loc4_[0]);
            param1.removeEventListener(IOErrorEvent.IO_ERROR,_loc4_[1]);
            param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,_loc4_[2]);
            delete this.§-e§[param1];
         }
      }
      
      protected function §;!§(param1:SecurityErrorEvent) : void
      {
         throw param1;
      }
      
      protected function §[!r§(param1:IOErrorEvent) : void
      {
         throw param1;
      }
      
      public function §4K§(param1:§<#-§) : Boolean
      {
         var _loc2_:URLLoader = this.§"!h§[param1];
         if(_loc2_)
         {
            this.§=!k§(_loc2_);
            return true;
         }
         return false;
      }
      
      protected function §=!k§(param1:URLLoader) : void
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
         for each(_loc1_ in this.§!"c§)
         {
            this.§=!k§(_loc1_);
         }
         this.§!"c§.length = 0;
         this.§"!h§ = new Dictionary();
      }
   }
}
