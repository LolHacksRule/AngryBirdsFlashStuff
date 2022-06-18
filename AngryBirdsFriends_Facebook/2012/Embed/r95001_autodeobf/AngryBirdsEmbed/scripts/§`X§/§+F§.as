package §`X§
{
   import flash.net.URLVariables;
   
   public class §+F§
   {
       
      
      public function §+F§()
      {
         super();
      }
      
      private static function §9g§(param1:*) : *
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
         if(§^a§(param1 as String))
         {
            _loc2_ = param1.toString().substr(1,param1.toString().length - 2);
            _loc2_ = _loc2_.substr(1,_loc2_.length - 2);
            _loc3_ = new Array();
            if(§^a§(_loc2_))
            {
               _loc3_.push(§9g§(_loc2_));
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
                  _loc3_.push(§9g§(_loc2_));
               }
            }
            if(!§^a§(_loc2_))
            {
               _loc6_ = _loc2_.split("},{");
               for each(_loc7_ in _loc6_)
               {
                  _loc3_.push(§9g§(_loc7_));
               }
            }
            return _loc3_;
         }
         return param1.toString();
      }
      
      private static function §^a§(param1:String) : Boolean
      {
         if(param1.toString().substr(0,1) == "[" && param1.toString().substr(-1,1) == "]")
         {
            return true;
         }
         return false;
      }
      
      public static function §@!=§(param1:Object) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:Object = new Object();
         if(param1 is URLVariables)
         {
            for(_loc4_ in param1)
            {
               _loc3_ = param1[_loc4_];
               _loc2_[_loc4_] = §9g§(_loc3_);
            }
         }
         else if(param1 is String)
         {
            _loc5_ = (param1 as String).split("&");
            for each(_loc6_ in _loc5_)
            {
               _loc7_ = unescape(_loc6_.substring(0,_loc6_.indexOf("=")));
               _loc8_ = unescape(_loc6_.substring(_loc6_.indexOf("=") + 1));
               _loc2_[_loc7_] = _loc8_;
            }
         }
         return _loc2_;
      }
   }
}
