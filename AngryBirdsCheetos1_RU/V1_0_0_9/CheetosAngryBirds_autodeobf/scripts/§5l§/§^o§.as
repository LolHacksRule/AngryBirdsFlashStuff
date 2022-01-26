package §5l§
{
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §^o§
   {
       
      
      private var §6a§:String;
      
      public function §^o§(param1:*)
      {
         super();
         this.§6a§ = this.§'5§(param1);
      }
      
      public function getString() : String
      {
         return this.§6a§;
      }
      
      private function §'5§(param1:*) : String
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
            return this.§^!&§(param1 as String);
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
            return this.§42§(param1 as Array);
         }
         if(param1 is Object && param1 != null)
         {
            return this.§ 7§(param1);
         }
         return "null";
      }
      
      private function §^!&§(param1:String) : String
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
      
      private function §42§(param1:Array) : String
      {
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += ",";
            }
            _loc2_ += this.§'5§(param1[_loc3_]);
            _loc3_++;
         }
         return "[" + _loc2_ + "]";
      }
      
      private function § 7§(param1:Object) : String
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
                  s += this.§^!&§(key) + ":" + this.§'5§(value);
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
                  s += this.§^!&§(v.@name.toString()) + ":" + this.§'5§(o[v.@name]);
               }
            }
         }
         return "{" + s + "}";
      }
   }
}
