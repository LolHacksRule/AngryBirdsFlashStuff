package §6!J§
{
   public class §7o§
   {
       
      
      private var §0!x§:Boolean;
      
      private var §5t§:Object;
      
      private var jsonString:String;
      
      private var §5&§:int;
      
      private var §!Q§:String;
      
      private var §>" §:RegExp;
      
      public function §7o§(param1:String, param2:Boolean)
      {
         this.§>" § = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§0!x§ = param2;
         this.§5&§ = 0;
         this.§!!W§();
      }
      
      public function §`"+§() : §]!'§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§]!'§ = new §]!'§();
         this.§%q§();
         switch(this.§!Q§)
         {
            case "{":
               _loc1_.type = §@!X§.§3"&§;
               _loc1_.value = "{";
               this.§!!W§();
               break;
            case "}":
               _loc1_.type = §@!X§.§!"+§;
               _loc1_.value = "}";
               this.§!!W§();
               break;
            case "[":
               _loc1_.type = §@!X§.§3x§;
               _loc1_.value = "[";
               this.§!!W§();
               break;
            case "]":
               _loc1_.type = §@!X§.§7!p§;
               _loc1_.value = "]";
               this.§!!W§();
               break;
            case ",":
               _loc1_.type = §@!X§.§'!b§;
               _loc1_.value = ",";
               this.§!!W§();
               break;
            case ":":
               _loc1_.type = §@!X§.§?!$§;
               _loc1_.value = ":";
               this.§!!W§();
               break;
            case "t":
               _loc2_ = "t" + this.§!!W§() + this.§!!W§() + this.§!!W§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §@!X§.TRUE;
                  _loc1_.value = true;
                  this.§!!W§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§!!W§() + this.§!!W§() + this.§!!W§() + this.§!!W§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §@!X§.FALSE;
                  _loc1_.value = false;
                  this.§!!W§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§!!W§() + this.§!!W§() + this.§!!W§()) == "null")
               {
                  _loc1_.type = §@!X§.NULL;
                  _loc1_.value = null;
                  this.§!!W§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§!!W§() + this.§!!W§()) == "NaN")
               {
                  _loc1_.type = §@!X§.§"!Z§;
                  _loc1_.value = NaN;
                  this.§!!W§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§4!,§();
               break;
            default:
               if(this.§2"§(this.§!Q§) || this.§!Q§ == "-")
               {
                  _loc1_ = this.§!"=§();
                  break;
               }
               if(this.§!Q§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§!Q§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §4!,§() : §]!'§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§5&§;
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
         var _loc2_:§]!'§ = new §]!'§();
         _loc2_.type = §@!X§.§9"2§;
         _loc2_.value = this.§%!r§(this.jsonString.substr(this.§5&§,_loc1_ - this.§5&§));
         this.§5&§ = _loc1_ + 1;
         this.§!!W§();
         return _loc2_;
      }
      
      public function §%!r§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§0!x§ && this.§>" §.test(param1))
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
                     if(!this.§ !A§(_loc10_))
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
      
      private function §!"=§() : §]!'§
      {
         var _loc3_:§]!'§ = null;
         var _loc1_:* = "";
         if(this.§!Q§ == "-")
         {
            _loc1_ += "-";
            this.§!!W§();
         }
         if(!this.§2"§(this.§!Q§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§!Q§ == "0")
         {
            _loc1_ += this.§!Q§;
            this.§!!W§();
            if(this.§2"§(this.§!Q§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§0!x§ && this.§!Q§ == "x")
            {
               _loc1_ += this.§!Q§;
               this.§!!W§();
               if(this.§ !A§(this.§!Q§))
               {
                  _loc1_ += this.§!Q§;
                  this.§!!W§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§ !A§(this.§!Q§))
               {
                  _loc1_ += this.§!Q§;
                  this.§!!W§();
               }
            }
         }
         else
         {
            while(this.§2"§(this.§!Q§))
            {
               _loc1_ += this.§!Q§;
               this.§!!W§();
            }
         }
         if(this.§!Q§ == ".")
         {
            _loc1_ += ".";
            this.§!!W§();
            if(!this.§2"§(this.§!Q§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§2"§(this.§!Q§))
            {
               _loc1_ += this.§!Q§;
               this.§!!W§();
            }
         }
         if(this.§!Q§ == "e" || this.§!Q§ == "E")
         {
            _loc1_ += "e";
            this.§!!W§();
            if(this.§!Q§ == "+" || this.§!Q§ == "-")
            {
               _loc1_ += this.§!Q§;
               this.§!!W§();
            }
            if(!this.§2"§(this.§!Q§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§2"§(this.§!Q§))
            {
               _loc1_ += this.§!Q§;
               this.§!!W§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §]!'§();
            _loc3_.type = §@!X§.§ !@§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §!!W§() : String
      {
         return this.§!Q§ = this.jsonString.charAt(this.§5&§++);
      }
      
      private function §%q§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§5&§;
            this.§@!A§();
            this.§8!U§();
         }
         while(_loc1_ != this.§5&§);
         
      }
      
      private function §8!U§() : void
      {
         if(this.§!Q§ == "/")
         {
            this.§!!W§();
            switch(this.§!Q§)
            {
               case "/":
                  do
                  {
                     this.§!!W§();
                  }
                  while(this.§!Q§ != "\n" && this.§!Q§ != "");
                  
                  this.§!!W§();
                  break;
               case "*":
                  this.§!!W§();
                  while(true)
                  {
                     if(this.§!Q§ == "*")
                     {
                        this.§!!W§();
                        if(this.§!Q§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§!!W§();
                     }
                     if(this.§!Q§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§!!W§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§!Q§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §@!A§() : void
      {
         while(this.§=]§(this.§!Q§))
         {
            this.§!!W§();
         }
      }
      
      private function §=]§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§0!x§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §2"§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function § !A§(param1:String) : Boolean
      {
         return this.§2"§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§5&§,this.jsonString);
      }
   }
}
