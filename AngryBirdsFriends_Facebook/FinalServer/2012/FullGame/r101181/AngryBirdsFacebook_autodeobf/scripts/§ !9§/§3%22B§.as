package § !9§
{
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §3"B§
   {
       
      
      private var §2w§:String;
      
      public function §3"B§(param1:*)
      {
         super();
         this.§2w§ = this.§;g§(param1);
      }
      
      public function getString() : String
      {
         return this.§2w§;
      }
      
      private function §;g§(param1:*) : String
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector") == 0)
         {
            _loc2_ = new Array();
            for each(_loc3_ in param1)
            {
               _loc2_.push(_loc3_);
            }
            param1 = _loc2_;
         }
         if(param1 is String)
         {
            return this.§#!q§(param1 as String);
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
            return this.§=h§(param1 as Array);
         }
         if(param1 is Object && param1 != null)
         {
            return this.§3f§(param1);
         }
         return "null";
      }
      
      private function §#!q§(param1:String) : String
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
      
      private function §=h§(param1:Array) : String
      {
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += ",";
            }
            _loc2_ += this.§;g§(param1[_loc3_]);
            _loc3_++;
         }
         return "[" + _loc2_ + "]";
      }
      
      private function §3f§(param1:Object) : String
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
                  s += this.§#!q§(key) + ":" + this.§;g§(value);
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
                  s += this.§#!q§(v.@name.toString()) + ":" + this.§;g§(o[v.@name]);
               }
            }
         }
         return "{" + s + "}";
      }
   }
}
