package com.rovio.server
{
   public class MessageFactory
   {
       
      
      public function MessageFactory()
      {
         super();
      }
      
      private static function parseHTTPValue(param1:*) : *
      {
         var _loc2_:* = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         if(isNaN(param1) == false)
         {
            return Number(param1);
         }
         if(param1.toString() == "true" || param1.toString() == "false")
         {
            return true;
         }
         if(isArray(param1 as String))
         {
            _loc2_ = param1.toString().substr(1,param1.toString().length - 2);
            _loc2_ = _loc2_.substr(1,_loc2_.length - 2);
            _loc3_ = new Array();
            if(isArray(_loc2_))
            {
               _loc3_.push(parseHTTPValue(_loc2_));
            }
            else if(_loc2_.indexOf("]},{[") > -1)
            {
               _loc4_ = _loc2_.split("]},{[");
               for each(_loc5_ in _loc4_)
               {
                  if(_loc5_.substr(0,1) == "{" && _loc5_.substr(_loc5_.length - 1,1) == "}")
                  {
                     _loc2_ = "[" + _loc5_ + "]";
                  }
                  else if(_loc5_.substr(0,1) == "{")
                  {
                     _loc2_ = "[" + _loc5_ + "}]";
                  }
                  else
                  {
                     _loc2_ = "[{" + _loc5_ + "]";
                  }
                  _loc3_.push(parseHTTPValue(_loc2_));
               }
            }
            if(!isArray(_loc2_))
            {
               _loc6_ = _loc2_.split("},{");
               for each(_loc7_ in _loc6_)
               {
                  _loc3_.push(parseHTTPValue(_loc7_));
               }
            }
            return _loc3_;
         }
         return param1.toString();
      }
      
      private static function isArray(param1:String) : Boolean
      {
         if(param1.toString().substr(0,1) == "[" && param1.toString().substr(-1,1) == "]")
         {
            return true;
         }
         return false;
      }
      
      public static function fromHTTPResponse(param1:Object) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc2_:Object = new Object();
         for(_loc4_ in param1)
         {
            _loc3_ = param1[_loc4_];
            _loc2_[_loc4_] = parseHTTPValue(_loc3_);
         }
         return _loc2_;
      }
   }
}
