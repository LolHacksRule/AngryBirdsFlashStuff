package §<!b§
{
   public class §;O§
   {
       
      
      private var §3!$§:Boolean;
      
      private var obj:Object;
      
      private var §5C§:String;
      
      private var §"!]§:int;
      
      private var §%4§:String;
      
      private var §1!e§:RegExp;
      
      public function §;O§(param1:String, param2:Boolean)
      {
         this.§1!e§ = /[\x00-\x1F]/;
         super();
         this.§5C§ = param1;
         this.§3!$§ = param2;
         this.§"!]§ = 0;
         this.§1!%§();
      }
      
      public function §,!@§() : §,!`§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§,!`§ = new §,!`§();
         this.§3!I§();
         switch(this.§%4§)
         {
            case "{":
               _loc1_.type = §4d§.§-h§;
               _loc1_.value = "{";
               this.§1!%§();
               break;
            case "}":
               _loc1_.type = §4d§.§&J§;
               _loc1_.value = "}";
               this.§1!%§();
               break;
            case "[":
               _loc1_.type = §4d§.§<5§;
               _loc1_.value = "[";
               this.§1!%§();
               break;
            case "]":
               _loc1_.type = §4d§.§ !j§;
               _loc1_.value = "]";
               this.§1!%§();
               break;
            case ",":
               _loc1_.type = §4d§.§!!6§;
               _loc1_.value = ",";
               this.§1!%§();
               break;
            case ":":
               _loc1_.type = §4d§.§0G§;
               _loc1_.value = ":";
               this.§1!%§();
               break;
            case "t":
               _loc2_ = "t" + this.§1!%§() + this.§1!%§() + this.§1!%§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §4d§.TRUE;
                  _loc1_.value = true;
                  this.§1!%§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§1!%§() + this.§1!%§() + this.§1!%§() + this.§1!%§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §4d§.FALSE;
                  _loc1_.value = false;
                  this.§1!%§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§1!%§() + this.§1!%§() + this.§1!%§()) == "null")
               {
                  _loc1_.type = §4d§.NULL;
                  _loc1_.value = null;
                  this.§1!%§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§1!%§() + this.§1!%§()) == "NaN")
               {
                  _loc1_.type = §4d§.§%'§;
                  _loc1_.value = NaN;
                  this.§1!%§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§@`§();
               break;
            default:
               if(this.§'k§(this.§%4§) || this.§%4§ == "-")
               {
                  _loc1_ = this.§&!;§();
                  break;
               }
               if(this.§%4§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§%4§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §@`§() : §,!`§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§"!]§;
         while(true)
         {
            _loc1_ = this.§5C§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§5C§.charAt(_loc4_) == "\\")
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
         var _loc2_:§,!`§ = new §,!`§();
         _loc2_.type = §4d§.§`!H§;
         _loc2_.value = this.§<!2§(this.§5C§.substr(this.§"!]§,_loc1_ - this.§"!]§));
         this.§"!]§ = _loc1_ + 1;
         this.§1!%§();
         return _loc2_;
      }
      
      public function §<!2§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§3!$§ && this.§1!e§.test(param1))
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
                     if(!this.§1w§(_loc10_))
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
      
      private function §&!;§() : §,!`§
      {
         var _loc3_:§,!`§ = null;
         var _loc1_:* = "";
         if(this.§%4§ == "-")
         {
            _loc1_ += "-";
            this.§1!%§();
         }
         if(!this.§'k§(this.§%4§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§%4§ == "0")
         {
            _loc1_ += this.§%4§;
            this.§1!%§();
            if(this.§'k§(this.§%4§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§3!$§ && this.§%4§ == "x")
            {
               _loc1_ += this.§%4§;
               this.§1!%§();
               if(this.§1w§(this.§%4§))
               {
                  _loc1_ += this.§%4§;
                  this.§1!%§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§1w§(this.§%4§))
               {
                  _loc1_ += this.§%4§;
                  this.§1!%§();
               }
            }
         }
         else
         {
            while(this.§'k§(this.§%4§))
            {
               _loc1_ += this.§%4§;
               this.§1!%§();
            }
         }
         if(this.§%4§ == ".")
         {
            _loc1_ += ".";
            this.§1!%§();
            if(!this.§'k§(this.§%4§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§'k§(this.§%4§))
            {
               _loc1_ += this.§%4§;
               this.§1!%§();
            }
         }
         if(this.§%4§ == "e" || this.§%4§ == "E")
         {
            _loc1_ += "e";
            this.§1!%§();
            if(this.§%4§ == "+" || this.§%4§ == "-")
            {
               _loc1_ += this.§%4§;
               this.§1!%§();
            }
            if(!this.§'k§(this.§%4§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§'k§(this.§%4§))
            {
               _loc1_ += this.§%4§;
               this.§1!%§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §,!`§();
            _loc3_.type = §4d§.§8z§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §1!%§() : String
      {
         return this.§%4§ = this.§5C§.charAt(this.§"!]§++);
      }
      
      private function §3!I§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§"!]§;
            this.§`i§();
            this.§`g§();
         }
         while(_loc1_ != this.§"!]§);
         
      }
      
      private function §`g§() : void
      {
         if(this.§%4§ == "/")
         {
            this.§1!%§();
            switch(this.§%4§)
            {
               case "/":
                  do
                  {
                     this.§1!%§();
                  }
                  while(this.§%4§ != "\n" && this.§%4§ != "");
                  
                  this.§1!%§();
                  break;
               case "*":
                  this.§1!%§();
                  while(true)
                  {
                     if(this.§%4§ == "*")
                     {
                        this.§1!%§();
                        if(this.§%4§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§1!%§();
                     }
                     if(this.§%4§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§1!%§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§%4§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §`i§() : void
      {
         while(this.§!!g§(this.§%4§))
         {
            this.§1!%§();
         }
      }
      
      private function §!!g§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§3!$§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §'k§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §1w§(param1:String) : Boolean
      {
         return this.§'k§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§"!]§,this.§5C§);
      }
   }
}
