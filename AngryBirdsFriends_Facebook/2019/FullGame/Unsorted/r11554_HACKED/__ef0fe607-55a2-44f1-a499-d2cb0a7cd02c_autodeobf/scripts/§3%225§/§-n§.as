package §3"5§
{
   public class §-n§
   {
       
      
      private var §]!$§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §5#&§:int;
      
      private var ch:String;
      
      private var §5#j§:RegExp;
      
      public function §-n§(param1:String, param2:Boolean)
      {
         this.§5#j§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§]!$§ = param2;
         this.§5#&§ = 0;
         this.§]G§();
      }
      
      public function §@!k§() : §;"4§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§;"4§ = new §;"4§();
         this.§3o§();
         switch(this.ch)
         {
            case "{":
               _loc1_.type = §^!d§.§%"P§;
               _loc1_.value = "{";
               this.§]G§();
               break;
            case "}":
               _loc1_.type = §^!d§.§%V§;
               _loc1_.value = "}";
               this.§]G§();
               break;
            case "[":
               _loc1_.type = §^!d§.§^!2§;
               _loc1_.value = "[";
               this.§]G§();
               break;
            case "]":
               _loc1_.type = §^!d§.§""v§;
               _loc1_.value = "]";
               this.§]G§();
               break;
            case ",":
               _loc1_.type = §^!d§.§49§;
               _loc1_.value = ",";
               this.§]G§();
               break;
            case ":":
               _loc1_.type = §^!d§.§&$@§;
               _loc1_.value = ":";
               this.§]G§();
               break;
            case "t":
               _loc2_ = "t" + this.§]G§() + this.§]G§() + this.§]G§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §^!d§.TRUE;
                  _loc1_.value = true;
                  this.§]G§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§]G§() + this.§]G§() + this.§]G§() + this.§]G§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §^!d§.FALSE;
                  _loc1_.value = false;
                  this.§]G§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§]G§() + this.§]G§() + this.§]G§()) == "null")
               {
                  _loc1_.type = §^!d§.NULL;
                  _loc1_.value = null;
                  this.§]G§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§]G§() + this.§]G§()) == "NaN")
               {
                  _loc1_.type = §^!d§.§]"l§;
                  _loc1_.value = NaN;
                  this.§]G§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§[!;§();
               break;
            default:
               if(this.§!s§(this.ch) || this.ch == "-")
               {
                  _loc1_ = this.§?f§();
                  break;
               }
               if(this.ch == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.ch + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §[!;§() : §;"4§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§5#&§;
         while(true)
         {
            _loc1_ = this.jsonString.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.jsonString.charAt(_loc4_) == "\\")
               {
                  _loc3_++;
                  _loc4_--;
               }
               if(_loc3_ % 2 == 0)
               {
                  break;
               }
               _loc1_++;
            }
            else
            {
               this.parseError("Unterminated string literal");
            }
         }
         var _loc2_:§;"4§ = new §;"4§();
         _loc2_.type = §^!d§.§=$!§;
         _loc2_.value = this.§&z§(this.jsonString.substr(this.§5#&§,_loc1_ - this.§5#&§));
         this.§5#&§ = _loc1_ + 1;
         this.§]G§();
         return _loc2_;
      }
      
      public function §&z§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§]!$§ && this.§5#j§.test(param1))
         {
            this.parseError("String contains unescaped control character (0x00-0x1F)");
         }
         var _loc2_:* = "";
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = param1.length;
         do
         {
            _loc3_ = param1.indexOf("\\",_loc4_);
            if(_loc3_ < 0)
            {
               _loc2_ += param1.substr(_loc4_);
               break;
            }
            _loc2_ += param1.substr(_loc4_,_loc3_ - _loc4_);
            _loc4_ = _loc3_ + 2;
            _loc6_ = _loc3_ + 1;
            _loc7_ = param1.charAt(_loc6_);
            switch(_loc7_)
            {
               case "\"":
                  _loc2_ += "\"";
                  break;
               case "\\":
                  _loc2_ += "\\";
                  break;
               case "n":
                  _loc2_ += "\n";
                  break;
               case "r":
                  _loc2_ += "\r";
                  break;
               case "t":
                  _loc2_ += "\t";
                  break;
               case "u":
                  _loc8_ = "";
                  if(_loc4_ + 4 > _loc5_)
                  {
                     this.parseError("Unexpected end of input.  Expecting 4 hex digits after \\u.");
                  }
                  _loc9_ = _loc4_;
                  while(_loc9_ < _loc4_ + 4)
                  {
                     _loc10_ = param1.charAt(_loc9_);
                     if(!this.§`q§(_loc10_))
                     {
                        this.parseError("Excepted a hex digit, but found: " + _loc10_);
                     }
                     _loc8_ += _loc10_;
                     _loc9_++;
                  }
                  _loc2_ += String.fromCharCode(parseInt(_loc8_,16));
                  _loc4_ += 4;
                  break;
               case "f":
                  _loc2_ += "\f";
                  break;
               case "/":
                  _loc2_ += "/";
                  break;
               case "b":
                  _loc2_ += "\b";
                  break;
               default:
                  _loc2_ += "\\" + _loc7_;
                  break;
            }
         }
         while(_loc4_ < _loc5_);
         
         return _loc2_;
      }
      
      private function §?f§() : §;"4§
      {
         var _loc3_:§;"4§ = null;
         var _loc1_:* = "";
         if(this.ch == "-")
         {
            _loc1_ += "-";
            this.§]G§();
         }
         if(!this.§!s§(this.ch))
         {
            this.parseError("Expecting a digit");
         }
         if(this.ch == "0")
         {
            _loc1_ += this.ch;
            this.§]G§();
            if(this.§!s§(this.ch))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§]!$§ && this.ch == "x")
            {
               _loc1_ += this.ch;
               this.§]G§();
               if(this.§`q§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§]G§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§`q§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§]G§();
               }
            }
         }
         else
         {
            while(this.§!s§(this.ch))
            {
               _loc1_ += this.ch;
               this.§]G§();
            }
         }
         if(this.ch == ".")
         {
            _loc1_ += ".";
            this.§]G§();
            if(!this.§!s§(this.ch))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§!s§(this.ch))
            {
               _loc1_ += this.ch;
               this.§]G§();
            }
         }
         if(this.ch == "e" || this.ch == "E")
         {
            _loc1_ += "e";
            this.§]G§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc1_ += this.ch;
               this.§]G§();
            }
            if(!this.§!s§(this.ch))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§!s§(this.ch))
            {
               _loc1_ += this.ch;
               this.§]G§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §;"4§();
            _loc3_.type = §^!d§.§ "l§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §]G§() : String
      {
         return this.ch = this.jsonString.charAt(this.§5#&§++);
      }
      
      private function §3o§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§5#&§;
            this.§7#s§();
            this.§,"s§();
         }
         while(_loc1_ != this.§5#&§);
         
      }
      
      private function §,"s§() : void
      {
         if(this.ch == "/")
         {
            this.§]G§();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.§]G§();
                  }
                  while(this.ch != "\n" && this.ch != "");
                  
                  this.§]G§();
                  break;
               case "*":
                  this.§]G§();
                  while(true)
                  {
                     if(this.ch == "*")
                     {
                        this.§]G§();
                        if(this.ch == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§]G§();
                     }
                     if(this.ch == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§]G§();
                  break;
               default:
                  this.parseError("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §7#s§() : void
      {
         while(this.§%!V§(this.ch))
         {
            this.§]G§();
         }
      }
      
      private function §%!V§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§]!$§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §!s§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §`q§(param1:String) : Boolean
      {
         return this.§!s§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§5#&§,this.jsonString);
      }
   }
}
