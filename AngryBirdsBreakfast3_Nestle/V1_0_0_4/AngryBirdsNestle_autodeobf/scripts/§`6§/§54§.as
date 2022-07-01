package §`6§
{
   public class §54§
   {
       
      
      public function §54§()
      {
         super();
      }
      
      public static function §8!d§(param1:String, param2:Boolean = false, param3:Boolean = false) : Object
      {
         var jsonString:String = null;
         var returnObject:Object = null;
         var luaString:String = param1;
         var emptyObjectAsArray:Boolean = param2;
         var addJSONDebugString:Boolean = param3;
         jsonString = §`!+§(luaString,emptyObjectAsArray);
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
      
      public static function §+r§(param1:String, param2:Boolean = false) : Object
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
      
      public static function §`!+§(param1:String, param2:Boolean = false) : String
      {
         param1 = param1.replace(/\-\-\[\[[\s\S]*?\]\]/mg,"");
         param1 = param1.replace(/\-\-.*/g,"");
         param1 = param1.replace(/\[\"(.*)\"\]/g,"$1");
         param1 = param1.replace(/\}\s*$/mg,"},");
         param1 = param1.replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,");
         param1 = param1.replace(/([^{,\=\s]*)\s*?\=/mg,"\"$1\":");
         param1 = "{" + param1 + "}";
         param1 = param1.replace(/,(\s*[\]\}$])/mg,"$1");
         return §]!B§(param1,param2);
      }
      
      private static function §]!B§(param1:String, param2:Boolean) : String
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
   }
}
