package §;<§
{
   public class §0C§
   {
       
      
      private var §,_§:Boolean;
      
      private var obj:Object;
      
      private var §-!j§:String;
      
      private var §6k§:int;
      
      private var §"!A§:String;
      
      private var §"!_§:RegExp;
      
      public function §0C§(param1:String, param2:Boolean)
      {
         this.§"!_§ = /[\x00-\x1F]/;
         super();
         this.§-!j§ = param1;
         this.§,_§ = param2;
         this.§6k§ = 0;
         this.§2k§();
      }
      
      public function §2L§() : §7!c§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§7!c§ = new §7!c§();
         this.§3!;§();
         switch(this.§"!A§)
         {
            case "{":
               _loc1_.type = §6!h§.§;!Q§;
               _loc1_.value = "{";
               this.§2k§();
               break;
            case "}":
               _loc1_.type = §6!h§.§"!1§;
               _loc1_.value = "}";
               this.§2k§();
               break;
            case "[":
               _loc1_.type = §6!h§.§,J§;
               _loc1_.value = "[";
               this.§2k§();
               break;
            case "]":
               _loc1_.type = §6!h§.§7!1§;
               _loc1_.value = "]";
               this.§2k§();
               break;
            case ",":
               _loc1_.type = §6!h§.§2§;
               _loc1_.value = ",";
               this.§2k§();
               break;
            case ":":
               _loc1_.type = §6!h§.§@!l§;
               _loc1_.value = ":";
               this.§2k§();
               break;
            case "t":
               _loc2_ = "t" + this.§2k§() + this.§2k§() + this.§2k§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §6!h§.TRUE;
                  _loc1_.value = true;
                  this.§2k§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§2k§() + this.§2k§() + this.§2k§() + this.§2k§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §6!h§.FALSE;
                  _loc1_.value = false;
                  this.§2k§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§2k§() + this.§2k§() + this.§2k§()) == "null")
               {
                  _loc1_.type = §6!h§.NULL;
                  _loc1_.value = null;
                  this.§2k§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§2k§() + this.§2k§()) == "NaN")
               {
                  _loc1_.type = §6!h§.§8!#§;
                  _loc1_.value = NaN;
                  this.§2k§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§8!-§();
               break;
            default:
               if(this.§+!_§(this.§"!A§) || this.§"!A§ == "-")
               {
                  _loc1_ = this.§[!U§();
                  break;
               }
               if(this.§"!A§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§"!A§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §8!-§() : §7!c§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§6k§;
         while(true)
         {
            _loc1_ = this.§-!j§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§-!j§.charAt(_loc4_) == "\\")
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
         var _loc2_:§7!c§ = new §7!c§();
         _loc2_.type = §6!h§.§[!8§;
         _loc2_.value = this.§#!W§(this.§-!j§.substr(this.§6k§,_loc1_ - this.§6k§));
         this.§6k§ = _loc1_ + 1;
         this.§2k§();
         return _loc2_;
      }
      
      public function §#!W§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§,_§ && this.§"!_§.test(param1))
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
                     if(!this.§2!`§(_loc10_))
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
      
      private function §[!U§() : §7!c§
      {
         var _loc3_:§7!c§ = null;
         var _loc1_:* = "";
         if(this.§"!A§ == "-")
         {
            _loc1_ += "-";
            this.§2k§();
         }
         if(!this.§+!_§(this.§"!A§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§"!A§ == "0")
         {
            _loc1_ += this.§"!A§;
            this.§2k§();
            if(this.§+!_§(this.§"!A§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§,_§ && this.§"!A§ == "x")
            {
               _loc1_ += this.§"!A§;
               this.§2k§();
               if(this.§2!`§(this.§"!A§))
               {
                  _loc1_ += this.§"!A§;
                  this.§2k§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§2!`§(this.§"!A§))
               {
                  _loc1_ += this.§"!A§;
                  this.§2k§();
               }
            }
         }
         else
         {
            while(this.§+!_§(this.§"!A§))
            {
               _loc1_ += this.§"!A§;
               this.§2k§();
            }
         }
         if(this.§"!A§ == ".")
         {
            _loc1_ += ".";
            this.§2k§();
            if(!this.§+!_§(this.§"!A§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§+!_§(this.§"!A§))
            {
               _loc1_ += this.§"!A§;
               this.§2k§();
            }
         }
         if(this.§"!A§ == "e" || this.§"!A§ == "E")
         {
            _loc1_ += "e";
            this.§2k§();
            if(this.§"!A§ == "+" || this.§"!A§ == "-")
            {
               _loc1_ += this.§"!A§;
               this.§2k§();
            }
            if(!this.§+!_§(this.§"!A§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§+!_§(this.§"!A§))
            {
               _loc1_ += this.§"!A§;
               this.§2k§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §7!c§();
            _loc3_.type = §6!h§.§7!E§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §2k§() : String
      {
         return this.§"!A§ = this.§-!j§.charAt(this.§6k§++);
      }
      
      private function §3!;§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§6k§;
            this.§46§();
            this.§4Q§();
         }
         while(_loc1_ != this.§6k§);
         
      }
      
      private function §4Q§() : void
      {
         if(this.§"!A§ == "/")
         {
            this.§2k§();
            switch(this.§"!A§)
            {
               case "/":
                  do
                  {
                     this.§2k§();
                  }
                  while(this.§"!A§ != "\n" && this.§"!A§ != "");
                  
                  this.§2k§();
                  break;
               case "*":
                  this.§2k§();
                  while(true)
                  {
                     if(this.§"!A§ == "*")
                     {
                        this.§2k§();
                        if(this.§"!A§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§2k§();
                     }
                     if(this.§"!A§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§2k§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§"!A§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §46§() : void
      {
         while(this.§75§(this.§"!A§))
         {
            this.§2k§();
         }
      }
      
      private function §75§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§,_§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §+!_§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §2!`§(param1:String) : Boolean
      {
         return this.§+!_§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§6k§,this.§-!j§);
      }
   }
}
