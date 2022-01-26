package §5l§
{
   public class §!§
   {
       
      
      private var §&!0§:Boolean;
      
      private var obj:Object;
      
      private var §6a§:String;
      
      private var §1!O§:int;
      
      private var §"!a§:String;
      
      private var §]!Z§:RegExp;
      
      public function §!§(param1:String, param2:Boolean)
      {
         this.§]!Z§ = /[\x00-\x1F]/;
         super();
         this.§6a§ = param1;
         this.§&!0§ = param2;
         this.§1!O§ = 0;
         this.§4!L§();
      }
      
      public function §?2§() : §[!W§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§[!W§ = new §[!W§();
         this.§-w§();
         switch(this.§"!a§)
         {
            case "{":
               _loc1_.type = §9Z§.§,=§;
               _loc1_.value = "{";
               this.§4!L§();
               break;
            case "}":
               _loc1_.type = §9Z§.§4!]§;
               _loc1_.value = "}";
               this.§4!L§();
               break;
            case "[":
               _loc1_.type = §9Z§.§8$§;
               _loc1_.value = "[";
               this.§4!L§();
               break;
            case "]":
               _loc1_.type = §9Z§.§6![§;
               _loc1_.value = "]";
               this.§4!L§();
               break;
            case ",":
               _loc1_.type = §9Z§.§[@§;
               _loc1_.value = ",";
               this.§4!L§();
               break;
            case ":":
               _loc1_.type = §9Z§.§6z§;
               _loc1_.value = ":";
               this.§4!L§();
               break;
            case "t":
               _loc2_ = "t" + this.§4!L§() + this.§4!L§() + this.§4!L§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §9Z§.TRUE;
                  _loc1_.value = true;
                  this.§4!L§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§4!L§() + this.§4!L§() + this.§4!L§() + this.§4!L§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §9Z§.FALSE;
                  _loc1_.value = false;
                  this.§4!L§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§4!L§() + this.§4!L§() + this.§4!L§()) == "null")
               {
                  _loc1_.type = §9Z§.§!s§;
                  _loc1_.value = null;
                  this.§4!L§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§4!L§() + this.§4!L§()) == "NaN")
               {
                  _loc1_.type = §9Z§.§8!X§;
                  _loc1_.value = NaN;
                  this.§4!L§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§!g§();
               break;
            default:
               if(this.§[!>§(this.§"!a§) || this.§"!a§ == "-")
               {
                  _loc1_ = this.§7!;§();
                  break;
               }
               if(this.§"!a§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§"!a§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §!g§() : §[!W§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§1!O§;
         while(true)
         {
            _loc1_ = this.§6a§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§6a§.charAt(_loc4_) == "\\")
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
         var _loc2_:§[!W§ = new §[!W§();
         _loc2_.type = §9Z§.§"s§;
         _loc2_.value = this.§"!7§(this.§6a§.substr(this.§1!O§,_loc1_ - this.§1!O§));
         this.§1!O§ = _loc1_ + 1;
         this.§4!L§();
         return _loc2_;
      }
      
      public function §"!7§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§&!0§ && this.§]!Z§.test(param1))
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
                     if(!this.§12§(_loc10_))
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
      
      private function §7!;§() : §[!W§
      {
         var _loc3_:§[!W§ = null;
         var _loc1_:* = "";
         if(this.§"!a§ == "-")
         {
            _loc1_ += "-";
            this.§4!L§();
         }
         if(!this.§[!>§(this.§"!a§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§"!a§ == "0")
         {
            _loc1_ += this.§"!a§;
            this.§4!L§();
            if(this.§[!>§(this.§"!a§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§&!0§ && this.§"!a§ == "x")
            {
               _loc1_ += this.§"!a§;
               this.§4!L§();
               if(this.§12§(this.§"!a§))
               {
                  _loc1_ += this.§"!a§;
                  this.§4!L§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§12§(this.§"!a§))
               {
                  _loc1_ += this.§"!a§;
                  this.§4!L§();
               }
            }
         }
         else
         {
            while(this.§[!>§(this.§"!a§))
            {
               _loc1_ += this.§"!a§;
               this.§4!L§();
            }
         }
         if(this.§"!a§ == ".")
         {
            _loc1_ += ".";
            this.§4!L§();
            if(!this.§[!>§(this.§"!a§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§[!>§(this.§"!a§))
            {
               _loc1_ += this.§"!a§;
               this.§4!L§();
            }
         }
         if(this.§"!a§ == "e" || this.§"!a§ == "E")
         {
            _loc1_ += "e";
            this.§4!L§();
            if(this.§"!a§ == "+" || this.§"!a§ == "-")
            {
               _loc1_ += this.§"!a§;
               this.§4!L§();
            }
            if(!this.§[!>§(this.§"!a§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§[!>§(this.§"!a§))
            {
               _loc1_ += this.§"!a§;
               this.§4!L§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §[!W§();
            _loc3_.type = §9Z§.§?c§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §4!L§() : String
      {
         return this.§"!a§ = this.§6a§.charAt(this.§1!O§++);
      }
      
      private function §-w§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§1!O§;
            this.§ !S§();
            this.§'g§();
         }
         while(_loc1_ != this.§1!O§);
         
      }
      
      private function §'g§() : void
      {
         if(this.§"!a§ == "/")
         {
            this.§4!L§();
            switch(this.§"!a§)
            {
               case "/":
                  do
                  {
                     this.§4!L§();
                  }
                  while(this.§"!a§ != "\n" && this.§"!a§ != "");
                  
                  this.§4!L§();
                  break;
               case "*":
                  this.§4!L§();
                  while(true)
                  {
                     if(this.§"!a§ == "*")
                     {
                        this.§4!L§();
                        if(this.§"!a§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§4!L§();
                     }
                     if(this.§"!a§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§4!L§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§"!a§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function § !S§() : void
      {
         while(this.§8!R§(this.§"!a§))
         {
            this.§4!L§();
         }
      }
      
      private function §8!R§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§&!0§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §[!>§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §12§(param1:String) : Boolean
      {
         return this.§[!>§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§1!O§,this.§6a§);
      }
   }
}
