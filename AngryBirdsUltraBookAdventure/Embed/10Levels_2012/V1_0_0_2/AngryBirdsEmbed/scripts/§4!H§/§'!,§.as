package §4!H§
{
   public class §'!,§
   {
       
      
      public function §'!,§()
      {
         super();
      }
      
      public static function §[L§(param1:String, param2:Boolean = false) : Object
      {
         param1 = param1.replace(/\-\-\[\[[\s\S]*\]\]/mg,"");
         param1 = param1.replace(/\-\-.*/g,"");
         param1 = param1.replace(/\[\"(.*)\"\]/g,"$1");
         param1 = param1.replace(/^\s*\}\s*$/mg,"},");
         param1 = param1.replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,");
         param1 = param1.replace(/([ \t\{]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":");
         param1 = "{" + param1 + "}";
         param1 = param1.replace(/,(\s*[\]\}$])/mg,"$1");
         param1 = §1!6§(param1,param2);
         return JSON.parse(param1);
      }
      
      private static function §1!6§(param1:String, param2:Boolean) : String
      {
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc8_:Vector.<int> = new Vector.<int>();
         var _loc9_:Vector.<int> = new Vector.<int>();
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc11_:int;
         var _loc12_:int = _loc11_ = param1.indexOf("{");
         var _loc13_:int = param1.indexOf("}");
         while(_loc11_ >= 0 || _loc13_ >= 0)
         {
            if(_loc11_ >= 0 && _loc11_ < _loc13_)
            {
               _loc8_.push(_loc11_);
               _loc12_ = _loc11_;
            }
            else
            {
               _loc11_ = _loc8_.pop();
               _loc15_ = param1.substring(_loc11_,_loc13_ + 1);
               _loc16_ = false;
               if(_loc15_.indexOf("{",1) < 0)
               {
                  if(_loc15_.indexOf(":",1) < 0)
                  {
                     if(param2 || _loc15_.search(/[a..z,A..Z,0..9]+/g) >= 0)
                     {
                        _loc16_ = true;
                     }
                  }
               }
               else if(_loc15_.indexOf(":",1) < 0 || _loc15_.indexOf(":",1) > _loc15_.indexOf("{",1) && _loc15_.indexOf("{",1) > 0)
               {
                  _loc16_ = true;
               }
               if(_loc16_)
               {
                  _loc9_.push(_loc11_);
                  _loc10_.push(_loc13_);
               }
               _loc13_ = param1.indexOf("}",_loc13_ + 1);
            }
            _loc11_ = param1.indexOf("{",_loc12_ + 1);
         }
         var _loc14_:int = 0;
         while(_loc14_ < _loc9_.length)
         {
            _loc11_ = _loc9_[_loc14_];
            _loc13_ = _loc10_[_loc14_];
            _loc17_ = param1.substring(0,_loc11_);
            _loc18_ = param1.substring(_loc11_ + 1,_loc13_);
            _loc19_ = param1.substring(_loc13_ + 1);
            param1 = _loc17_ + "[" + _loc18_ + "]" + _loc19_;
            _loc14_++;
         }
         return param1;
      }
   }
}
