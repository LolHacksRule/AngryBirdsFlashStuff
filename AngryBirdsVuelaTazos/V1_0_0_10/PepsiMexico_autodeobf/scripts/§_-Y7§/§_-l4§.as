package §_-Y7§
{
   import flash.utils.describeType;
   
   public class §_-l4§
   {
       
      
      private var §_-Sr§:String;
      
      public function §_-l4§(param1:*)
      {
         super();
         this.§_-Sr§ = this.§_-GV§(param1);
      }
      
      public function getString() : String
      {
         return this.§_-Sr§;
      }
      
      private function §_-GV§(param1:*) : String
      {
         if(param1 is String)
         {
            return this.§_-nS§(param1 as String);
         }
         if(param1 is Number)
         {
            return !!isFinite(param1 as Number) ? param1.toString() : "null";
         }
         if(param1 is Boolean)
         {
            return !!param1 ? "true" : "false";
         }
         if(param1 is Array)
         {
            return this.§_-Ak§(param1 as Array);
         }
         if(param1 is Object && param1 != null)
         {
            return this.§_-g8§(param1);
         }
         return "null";
      }
      
      private function §_-nS§(param1:String) : String
      {
         var _loc3_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1.charAt(_loc5_);
            switch(_loc3_)
            {
               case "\"":
                  _loc2_ += "\\\"";
                  break;
               case "\\":
                  _loc2_ += "\\\\";
                  break;
               case "\b":
                  _loc2_ += "\\b";
                  break;
               case "\f":
                  _loc2_ += "\\f";
                  break;
               case "\n":
                  _loc2_ += "\\n";
                  break;
               case "\r":
                  _loc2_ += "\\r";
                  break;
               case "\t":
                  _loc2_ += "\\t";
                  break;
               default:
                  if(_loc3_ < " ")
                  {
                     _loc7_ = (_loc6_ = _loc3_.charCodeAt(0).toString(16)).length == 2 ? "00" : "000";
                     _loc2_ += "\\u" + _loc7_ + _loc6_;
                  }
                  else
                  {
                     _loc2_ += _loc3_;
                  }
                  break;
            }
            _loc5_++;
         }
         return "\"" + _loc2_ + "\"";
      }
      
      private function §_-Ak§(param1:Array) : String
      {
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += ",";
            }
            _loc2_ += this.§_-GV§(param1[_loc3_]);
            _loc3_++;
         }
         return "[" + _loc2_ + "]";
      }
      
      private function §_-g8§(param1:Object) : String
      {
         var value:Object = null;
         var key:String = null;
         var v:XML = null;
         var o:Object = param1;
         var s:String = "";
         var classInfo:XML = describeType(o);
         if(classInfo.@name.toString() == "Object")
         {
            for(key in o)
            {
               value = o[key];
               if(!(value is Function))
               {
                  if(s.length > 0)
                  {
                     s += ",";
                  }
                  s += this.§_-nS§(key) + ":" + this.§_-GV§(value);
               }
            }
         }
         else
         {
            for each(v in classInfo..§*§.(name() == "variable" || name() == "accessor" && attribute("access").charAt(0) == "r"))
            {
               if(!(v.metadata && v.metadata.(@name == "Transient").length() > 0))
               {
                  if(s.length > 0)
                  {
                     s += ",";
                  }
                  s += this.§_-nS§(v.@name.toString()) + ":" + this.§_-GV§(o[v.@name]);
               }
            }
         }
         return "{" + s + "}";
      }
   }
}
