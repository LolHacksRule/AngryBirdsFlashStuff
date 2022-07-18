package §;#Q§
{
   import §`!o§.§+"k§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §[#2§
   {
       
      
      protected var §@#L§:String;
      
      protected var §>!x§:Vector.<URLLoader>;
      
      protected var § "n§:Dictionary;
      
      protected var §`o§:Dictionary;
      
      public function §[#2§(param1:String)
      {
         super();
         this.§@#L§ = param1;
         this.§>!x§ = new Vector.<URLLoader>();
         this.§ "n§ = new Dictionary();
         this.§`o§ = new Dictionary();
      }
      
      protected function §5#'§(param1:String, param2:Function, param3:§>#I§ = null, param4:Function = null, param5:URLRequest = null) : §6!Y§
      {
         var _loc6_:URLRequest = param5 || new URLRequest(this.§@#L§ + param1);
         var _loc7_:§+"k§ = new §+"k§();
         var _loc8_:Function = new §!f§(param2,this.onComplete,param3).delegate;
         var _loc9_:Function = param4 || this.§=!'§;
         var _loc10_:Function = param4 || this.§9!k§;
         _loc7_.addEventListener(Event.COMPLETE,_loc8_);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,_loc9_);
         _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,_loc10_);
         this.§>!x§.push(_loc7_);
         this.§`o§[_loc7_] = [_loc8_,_loc9_,_loc10_];
         var _loc11_:§6!Y§ = new §6!Y§(param1);
         this.§ "n§[_loc11_] = _loc7_;
         _loc7_.load(_loc6_);
         return _loc11_;
      }
      
      protected function onComplete(param1:URLLoader) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         for(_loc2_ in this.§ "n§)
         {
            if(this.§ "n§[_loc2_] == param1)
            {
               delete this.§ "n§[_loc2_];
               break;
            }
         }
         _loc3_ = this.§>!x§.indexOf(param1);
         if(_loc3_ != -1)
         {
            this.§>!x§.splice(_loc3_,1);
         }
         var _loc4_:Array;
         if((_loc4_ = this.§`o§[param1]) && _loc4_.length == 3)
         {
            param1.removeEventListener(Event.COMPLETE,_loc4_[0]);
            param1.removeEventListener(IOErrorEvent.IO_ERROR,_loc4_[1]);
            param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,_loc4_[2]);
            delete this.§`o§[param1];
         }
      }
      
      protected function §9!k§(param1:SecurityErrorEvent) : void
      {
         throw param1;
      }
      
      protected function §=!'§(param1:IOErrorEvent) : void
      {
         throw param1;
      }
      
      public function §1!e§(param1:§6!Y§) : Boolean
      {
         var _loc2_:URLLoader = this.§ "n§[param1];
         if(_loc2_)
         {
            this.§ #O§(_loc2_);
            return true;
         }
         return false;
      }
      
      protected function § #O§(param1:URLLoader) : void
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
         for each(_loc1_ in this.§>!x§)
         {
            this.§ #O§(_loc1_);
         }
         this.§>!x§.length = 0;
         this.§ "n§ = new Dictionary();
      }
   }
}
