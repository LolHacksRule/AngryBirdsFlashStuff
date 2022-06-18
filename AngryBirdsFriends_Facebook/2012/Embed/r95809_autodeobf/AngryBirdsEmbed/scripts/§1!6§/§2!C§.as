package §1!6§
{
   public class §2!C§
   {
       
      
      private var §,!?§:Boolean;
      
      private var obj:Object;
      
      private var §%7§:String;
      
      private var §=d§:int;
      
      private var §`!#§:String;
      
      private var §with§:RegExp;
      
      public function §2!C§(param1:String, param2:Boolean)
      {
         this.§with§ = /[\x00-\x1F]/;
         super();
         this.§%7§ = param1;
         this.§,!?§ = param2;
         this.§=d§ = 0;
         this.§%m§();
      }
      
      public function §-d§() : §3q§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§3q§ = new §3q§();
         this.§3!0§();
         switch(this.§`!#§)
         {
            case "{":
               _loc1_.type = §,!2§.§^!-§;
               _loc1_.value = "{";
               this.§%m§();
               break;
            case "}":
               _loc1_.type = §,!2§.§1!G§;
               _loc1_.value = "}";
               this.§%m§();
               break;
            case "[":
               _loc1_.type = §,!2§.§3#§;
               _loc1_.value = "[";
               this.§%m§();
               break;
            case "]":
               _loc1_.type = §,!2§.§9^§;
               _loc1_.value = "]";
               this.§%m§();
               break;
            case ",":
               _loc1_.type = §,!2§.§=!8§;
               _loc1_.value = ",";
               this.§%m§();
               break;
            case ":":
               _loc1_.type = §,!2§.§=p§;
               _loc1_.value = ":";
               this.§%m§();
               break;
            case "t":
               _loc2_ = "t" + this.§%m§() + this.§%m§() + this.§%m§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §,!2§.TRUE;
                  _loc1_.value = true;
                  this.§%m§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§%m§() + this.§%m§() + this.§%m§() + this.§%m§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §,!2§.FALSE;
                  _loc1_.value = false;
                  this.§%m§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§%m§() + this.§%m§() + this.§%m§()) == "null")
               {
                  _loc1_.type = §,!2§.NULL;
                  _loc1_.value = null;
                  this.§%m§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§%m§() + this.§%m§()) == "NaN")
               {
                  _loc1_.type = §,!2§.§2!<§;
                  _loc1_.value = NaN;
                  this.§%m§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§[m§();
               break;
            default:
               if(this.§!U§(this.§`!#§) || this.§`!#§ == "-")
               {
                  _loc1_ = this.§?V§();
                  break;
               }
               if(this.§`!#§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§`!#§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §[m§() : §3q§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§=d§;
         while(true)
         {
            _loc1_ = this.§%7§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§%7§.charAt(_loc4_) == "\\")
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
         var _loc2_:§3q§ = new §3q§();
         _loc2_.type = §,!2§.§^E§;
         _loc2_.value = this.§-h§(this.§%7§.substr(this.§=d§,_loc1_ - this.§=d§));
         this.§=d§ = _loc1_ + 1;
         this.§%m§();
         return _loc2_;
      }
      
      public function §-h§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§,!?§ && this.§with§.test(param1))
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
                     if(!this.§3o§(_loc10_))
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
      
      private function §?V§() : §3q§
      {
         var _loc3_:§3q§ = null;
         var _loc1_:* = "";
         if(this.§`!#§ == "-")
         {
            _loc1_ += "-";
            this.§%m§();
         }
         if(!this.§!U§(this.§`!#§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§`!#§ == "0")
         {
            _loc1_ += this.§`!#§;
            this.§%m§();
            if(this.§!U§(this.§`!#§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§,!?§ && this.§`!#§ == "x")
            {
               _loc1_ += this.§`!#§;
               this.§%m§();
               if(this.§3o§(this.§`!#§))
               {
                  _loc1_ += this.§`!#§;
                  this.§%m§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§3o§(this.§`!#§))
               {
                  _loc1_ += this.§`!#§;
                  this.§%m§();
               }
            }
         }
         else
         {
            while(this.§!U§(this.§`!#§))
            {
               _loc1_ += this.§`!#§;
               this.§%m§();
            }
         }
         if(this.§`!#§ == ".")
         {
            _loc1_ += ".";
            this.§%m§();
            if(!this.§!U§(this.§`!#§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§!U§(this.§`!#§))
            {
               _loc1_ += this.§`!#§;
               this.§%m§();
            }
         }
         if(this.§`!#§ == "e" || this.§`!#§ == "E")
         {
            _loc1_ += "e";
            this.§%m§();
            if(this.§`!#§ == "+" || this.§`!#§ == "-")
            {
               _loc1_ += this.§`!#§;
               this.§%m§();
            }
            if(!this.§!U§(this.§`!#§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§!U§(this.§`!#§))
            {
               _loc1_ += this.§`!#§;
               this.§%m§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §3q§();
            _loc3_.type = §,!2§.native;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §%m§() : String
      {
         return this.§`!#§ = this.§%7§.charAt(this.§=d§++);
      }
      
      private function §3!0§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§=d§;
            this.§ use§();
            this.§,L§();
         }
         while(_loc1_ != this.§=d§);
         
      }
      
      private function §,L§() : void
      {
         if(this.§`!#§ == "/")
         {
            this.§%m§();
            switch(this.§`!#§)
            {
               case "/":
                  do
                  {
                     this.§%m§();
                  }
                  while(this.§`!#§ != "\n" && this.§`!#§ != "");
                  
                  this.§%m§();
                  break;
               case "*":
                  this.§%m§();
                  while(true)
                  {
                     if(this.§`!#§ == "*")
                     {
                        this.§%m§();
                        if(this.§`!#§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§%m§();
                     }
                     if(this.§`!#§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§%m§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§`!#§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function § use§() : void
      {
         while(this.§^A§(this.§`!#§))
         {
            this.§%m§();
         }
      }
      
      private function §^A§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§,!?§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §!U§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §3o§(param1:String) : Boolean
      {
         return this.§!U§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§=d§,this.§%7§);
      }
   }
}
