package
{
   public class §`!N§
   {
       
      
      private var §#l§:Boolean;
      
      private var obj:Object;
      
      private var § !N§:String;
      
      private var §4m§:int;
      
      private var §8!3§:String;
      
      private var §,!>§:RegExp;
      
      public function §`!N§(param1:String, param2:Boolean)
      {
         this.§,!>§ = /[\x00-\x1F]/;
         super();
         this.§ !N§ = param1;
         this.§#l§ = param2;
         this.§4m§ = 0;
         this.§9r§();
      }
      
      public function §+!=§() : §%J§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§%J§ = new §%J§();
         this.§?,§();
         switch(this.§8!3§)
         {
            case "{":
               _loc1_.type = §1L§.§0!P§;
               _loc1_.value = "{";
               this.§9r§();
               break;
            case "}":
               _loc1_.type = §1L§.§7!-§;
               _loc1_.value = "}";
               this.§9r§();
               break;
            case "[":
               _loc1_.type = §1L§.§5!>§;
               _loc1_.value = "[";
               this.§9r§();
               break;
            case "]":
               _loc1_.type = §1L§.§;q§;
               _loc1_.value = "]";
               this.§9r§();
               break;
            case ",":
               _loc1_.type = §1L§.§"Z§;
               _loc1_.value = ",";
               this.§9r§();
               break;
            case ":":
               _loc1_.type = §1L§.§^!O§;
               _loc1_.value = ":";
               this.§9r§();
               break;
            case "t":
               _loc2_ = "t" + this.§9r§() + this.§9r§() + this.§9r§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §1L§.TRUE;
                  _loc1_.value = true;
                  this.§9r§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§9r§() + this.§9r§() + this.§9r§() + this.§9r§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §1L§.FALSE;
                  _loc1_.value = false;
                  this.§9r§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§9r§() + this.§9r§() + this.§9r§()) == "null")
               {
                  _loc1_.type = §1L§.NULL;
                  _loc1_.value = null;
                  this.§9r§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§9r§() + this.§9r§()) == "NaN")
               {
                  _loc1_.type = §1L§.§<F§;
                  _loc1_.value = NaN;
                  this.§9r§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§!E§();
               break;
            default:
               if(this.§=!"§(this.§8!3§) || this.§8!3§ == "-")
               {
                  _loc1_ = this.§;!J§();
                  break;
               }
               if(this.§8!3§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§8!3§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §!E§() : §%J§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§4m§;
         while(true)
         {
            _loc1_ = this.§ !N§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§ !N§.charAt(_loc4_) == "\\")
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
         var _loc2_:§%J§ = new §%J§();
         _loc2_.type = §1L§.§<!A§;
         _loc2_.value = this.§[_§(this.§ !N§.substr(this.§4m§,_loc1_ - this.§4m§));
         this.§4m§ = _loc1_ + 1;
         this.§9r§();
         return _loc2_;
      }
      
      public function §[_§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§#l§ && this.§,!>§.test(param1))
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
                     if(!this.§3!;§(_loc10_))
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
      
      private function §;!J§() : §%J§
      {
         var _loc3_:§%J§ = null;
         var _loc1_:* = "";
         if(this.§8!3§ == "-")
         {
            _loc1_ += "-";
            this.§9r§();
         }
         if(!this.§=!"§(this.§8!3§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§8!3§ == "0")
         {
            _loc1_ += this.§8!3§;
            this.§9r§();
            if(this.§=!"§(this.§8!3§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§#l§ && this.§8!3§ == "x")
            {
               _loc1_ += this.§8!3§;
               this.§9r§();
               if(this.§3!;§(this.§8!3§))
               {
                  _loc1_ += this.§8!3§;
                  this.§9r§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§3!;§(this.§8!3§))
               {
                  _loc1_ += this.§8!3§;
                  this.§9r§();
               }
            }
         }
         else
         {
            while(this.§=!"§(this.§8!3§))
            {
               _loc1_ += this.§8!3§;
               this.§9r§();
            }
         }
         if(this.§8!3§ == ".")
         {
            _loc1_ += ".";
            this.§9r§();
            if(!this.§=!"§(this.§8!3§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§=!"§(this.§8!3§))
            {
               _loc1_ += this.§8!3§;
               this.§9r§();
            }
         }
         if(this.§8!3§ == "e" || this.§8!3§ == "E")
         {
            _loc1_ += "e";
            this.§9r§();
            if(this.§8!3§ == "+" || this.§8!3§ == "-")
            {
               _loc1_ += this.§8!3§;
               this.§9r§();
            }
            if(!this.§=!"§(this.§8!3§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§=!"§(this.§8!3§))
            {
               _loc1_ += this.§8!3§;
               this.§9r§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §%J§();
            _loc3_.type = §1L§.§#$§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §9r§() : String
      {
         return this.§8!3§ = this.§ !N§.charAt(this.§4m§++);
      }
      
      private function §?,§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§4m§;
            this.§!!=§();
            this.§>!&§();
         }
         while(_loc1_ != this.§4m§);
         
      }
      
      private function §>!&§() : void
      {
         if(this.§8!3§ == "/")
         {
            this.§9r§();
            switch(this.§8!3§)
            {
               case "/":
                  do
                  {
                     this.§9r§();
                  }
                  while(this.§8!3§ != "\n" && this.§8!3§ != "");
                  
                  this.§9r§();
                  break;
               case "*":
                  this.§9r§();
                  while(true)
                  {
                     if(this.§8!3§ == "*")
                     {
                        this.§9r§();
                        if(this.§8!3§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§9r§();
                     }
                     if(this.§8!3§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§9r§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§8!3§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §!!=§() : void
      {
         while(this.§%c§(this.§8!3§))
         {
            this.§9r§();
         }
      }
      
      private function §%c§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§#l§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §=!"§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §3!;§(param1:String) : Boolean
      {
         return this.§=!"§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§4m§,this.§ !N§);
      }
   }
}
