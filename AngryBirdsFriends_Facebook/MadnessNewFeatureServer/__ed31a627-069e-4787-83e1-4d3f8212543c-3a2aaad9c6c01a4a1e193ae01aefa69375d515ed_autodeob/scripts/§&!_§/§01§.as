package §&!_§
{
   import flash.utils.getQualifiedClassName;
   
   public class §01§
   {
       
      
      public function §01§()
      {
         super();
      }
      
      public static function §4$>§(param1:String, param2:Boolean = false, param3:Boolean = false) : Object
      {
         var jsonString:String = null;
         var returnObject:Object = null;
         var luaString:String = param1;
         var emptyObjectAsArray:Boolean = param2;
         var addJSONDebugString:Boolean = param3;
         jsonString = §;q§(luaString,emptyObjectAsArray);
         try
         {
            returnObject = JSON.parse(jsonString);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON string.\n" + jsonString);
         }
         if(addJSONDebugString)
         {
            returnObject.debug = luaString;
         }
         return returnObject;
      }
      
      public static function §=%§(param1:String, param2:Boolean = false) : Object
      {
         var returnObject:Object = null;
         var normalizedLua:String = param1;
         var addJSONDebugString:Boolean = param2;
         try
         {
            returnObject = JSON.parse(normalizedLua);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON string.\n" + normalizedLua);
         }
         if(addJSONDebugString)
         {
            returnObject.debug = normalizedLua;
         }
         return returnObject;
      }
      
      public static function §;q§(param1:String, param2:Boolean = false) : String
      {
         param1 = param1.replace(/\-\-\[\[[\s\S]*?\]\]/mg,"");
         param1 = param1.replace(/\-\-.*/g,"");
         param1 = param1.replace(/NaN/g,"\"nil\"");
         param1 = param1.replace(/\[\"(.*)\"\]/g,"$1");
         param1 = param1.replace(/\}\s*$/mg,"},");
         param1 = param1.replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,");
         param1 = param1.replace(/([^{,\=\s]*)\s*?\=/mg,"\"$1\":");
         param1 = "{" + param1 + "}";
         param1 = param1.replace(/,(\s*[\]\}$])/mg,"$1");
         return §&#k§(param1,param2);
      }
      
      private static function §&#k§(param1:String, param2:Boolean) : String
      {
         var _loc18_:String = null;
         var _loc19_:Boolean = false;
         var _loc20_:Array = null;
         var _loc21_:Boolean = false;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:String = null;
         var _loc27_:String = null;
         var _loc28_:String = null;
         var _loc29_:String = null;
         var _loc30_:String = null;
         var _loc9_:Vector.<int> = new Vector.<int>();
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc11_:Vector.<int> = new Vector.<int>();
         var _loc12_:Vector.<int> = new Vector.<int>();
         var _loc13_:Vector.<int> = new Vector.<int>();
         var _loc14_:int = 0;
         var _loc15_:int;
         var _loc16_:int = _loc15_ = param1.indexOf("{");
         var _loc17_:int = param1.indexOf("}");
         while(_loc15_ >= 0 || _loc17_ >= 0)
         {
            if(_loc15_ >= 0 && _loc15_ < _loc17_)
            {
               _loc9_.push(_loc15_);
               _loc16_ = _loc15_;
            }
            else
            {
               _loc15_ = _loc9_.pop();
               _loc18_ = param1.substring(_loc15_,_loc17_ + 1);
               _loc19_ = false;
               if(_loc18_.indexOf("{",1) < 0)
               {
                  if(_loc18_.indexOf(":",1) < 0)
                  {
                     if(param2 || _loc18_.search(/[a-zA-Z0-9]+/g) >= 0)
                     {
                        _loc19_ = true;
                     }
                  }
                  else
                  {
                     _loc20_ = _loc18_.substr(1,_loc18_.length - 2).split(",");
                     _loc21_ = false;
                     _loc14_ = 0;
                     while(_loc14_ < _loc20_.length)
                     {
                        if(_loc20_[_loc14_].indexOf(":") < 0)
                        {
                           _loc21_ = true;
                           break;
                        }
                        _loc14_++;
                     }
                     if(_loc21_)
                     {
                        _loc19_ = true;
                        _loc14_ = 0;
                        while(_loc14_ < _loc20_.length)
                        {
                           if(_loc20_[_loc14_].indexOf(":") > 0)
                           {
                              _loc23_ = (_loc22_ = _loc15_ + _loc18_.indexOf(_loc20_[_loc14_])) + _loc20_[_loc14_].length;
                              _loc12_.push(_loc22_);
                              _loc13_.push(_loc23_);
                           }
                           _loc14_++;
                        }
                     }
                  }
               }
               else if((_loc24_ = _loc18_.indexOf(":",1)) < 0)
               {
                  _loc19_ = true;
               }
               else if((_loc25_ = _loc18_.indexOf("{",1)) > 0 && _loc24_ > _loc25_)
               {
                  _loc19_ = true;
               }
               if(_loc19_)
               {
                  _loc10_.push(_loc15_);
                  _loc11_.push(_loc17_);
               }
               _loc17_ = param1.indexOf("}",_loc17_ + 1);
            }
            _loc15_ = param1.indexOf("{",_loc16_ + 1);
         }
         _loc14_ = 0;
         while(_loc14_ < _loc10_.length)
         {
            _loc15_ = _loc10_[_loc14_];
            _loc17_ = _loc11_[_loc14_];
            _loc26_ = param1.substring(0,_loc15_);
            _loc27_ = param1.substring(_loc15_ + 1,_loc17_);
            _loc28_ = param1.substring(_loc17_ + 1);
            param1 = _loc26_ + "[" + _loc27_ + "]" + _loc28_;
            _loc14_++;
         }
         _loc14_ = _loc13_.length - 1;
         while(_loc14_ >= 0)
         {
            _loc17_ = _loc13_[_loc14_];
            _loc15_ = _loc12_[_loc14_];
            _loc29_ = param1.substring(0,_loc17_);
            _loc30_ = param1.substring(_loc17_);
            param1 = _loc29_ + "}" + _loc30_;
            _loc29_ = param1.substring(0,_loc15_);
            _loc30_ = param1.substring(_loc15_);
            param1 = _loc29_ + "{" + _loc30_;
            _loc14_--;
         }
         return param1;
      }
      
      public static function §-m§(param1:Object) : String
      {
         return §#"6§(param1,0);
      }
      
      private static function §#"6§(param1:Object, param2:int) : String
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         param2++;
         var _loc3_:* = "";
         for(_loc4_ in param1)
         {
            _loc5_ = 0;
            while(_loc5_ < param2 - 1)
            {
               _loc3_ += "\t";
               _loc5_++;
            }
            _loc3_ += _loc4_ + " = " + §@"x§(param1[_loc4_],param2);
            if(param2 > 1)
            {
               _loc3_ += ",";
            }
            _loc3_ += "\n";
         }
         param2--;
         return _loc3_;
      }
      
      private static function §@"x§(param1:*, param2:int) : String
      {
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:* = "";
         if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector") == 0)
         {
            _loc4_ = [];
            for each(_loc5_ in param1)
            {
               _loc4_.push(_loc5_);
            }
            param1 = _loc4_;
         }
         if(param1 is Boolean)
         {
            _loc3_ = !!param1 ? "true" : "false";
         }
         else if(param1 is Number)
         {
            _loc3_ = param1.toString();
         }
         else
         {
            if(param1 is String)
            {
               return "\"" + param1 + "\"";
            }
            if(param1 is Array)
            {
               _loc3_ = "{\n";
               _loc6_ = 0;
               while(_loc6_ < param1.length)
               {
                  _loc3_ += §@"x§(param1[_loc6_],param2) + (_loc6_ < param1.length - 1 ? "," : "");
                  _loc6_++;
               }
               return _loc3_ + "}";
            }
            if(param1 is Object)
            {
               _loc3_ = "{\n" + §#"6§(param1,param2);
               _loc7_ = 0;
               while(_loc7_ < param2 - 1)
               {
                  _loc3_ += "\t";
                  _loc7_++;
               }
               _loc3_ += "}";
            }
         }
         return _loc3_;
      }
   }
}
