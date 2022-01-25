package §#!8§
{
   public class §&c§
   {
       
      
      private var §%!9§:Boolean;
      
      private var obj:Object;
      
      private var §"!G§:String;
      
      private var § 7§:int;
      
      private var §3F§:String;
      
      private var §=!3§:RegExp;
      
      public function §&c§(param1:String, param2:Boolean)
      {
         this.§=!3§ = /[\x00-\x1F]/;
         super();
         this.§"!G§ = param1;
         this.§%!9§ = param2;
         this.§ 7§ = 0;
         this.§8!7§();
      }
      
      public function §`!H§() : §!O§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§!O§ = new §!O§();
         this.§&!Q§();
         switch(this.§3F§)
         {
            case "{":
               _loc1_.type = §4!<§.§,K§;
               _loc1_.value = "{";
               this.§8!7§();
               break;
            case "}":
               _loc1_.type = §4!<§.§9!0§;
               _loc1_.value = "}";
               this.§8!7§();
               break;
            case "[":
               _loc1_.type = §4!<§.§ !T§;
               _loc1_.value = "[";
               this.§8!7§();
               break;
            case "]":
               _loc1_.type = §4!<§.§=b§;
               _loc1_.value = "]";
               this.§8!7§();
               break;
            case ",":
               _loc1_.type = §4!<§.§]C§;
               _loc1_.value = ",";
               this.§8!7§();
               break;
            case ":":
               _loc1_.type = §4!<§.§@Q§;
               _loc1_.value = ":";
               this.§8!7§();
               break;
            case "t":
               _loc2_ = "t" + this.§8!7§() + this.§8!7§() + this.§8!7§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §4!<§.TRUE;
                  _loc1_.value = true;
                  this.§8!7§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§8!7§() + this.§8!7§() + this.§8!7§() + this.§8!7§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §4!<§.FALSE;
                  _loc1_.value = false;
                  this.§8!7§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§8!7§() + this.§8!7§() + this.§8!7§()) == "null")
               {
                  _loc1_.type = §4!<§.NULL;
                  _loc1_.value = null;
                  this.§8!7§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§8!7§() + this.§8!7§()) == "NaN")
               {
                  _loc1_.type = §4!<§.§%!`§;
                  _loc1_.value = NaN;
                  this.§8!7§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§%`§();
               break;
            default:
               if(this.§5!l§(this.§3F§) || this.§3F§ == "-")
               {
                  _loc1_ = this.§9!h§();
                  break;
               }
               if(this.§3F§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§3F§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §%`§() : §!O§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§ 7§;
         while(true)
         {
            _loc1_ = this.§"!G§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§"!G§.charAt(_loc4_) == "\\")
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
         var _loc2_:§!O§ = new §!O§();
         _loc2_.type = §4!<§.§-F§;
         _loc2_.value = this.§,>§(this.§"!G§.substr(this.§ 7§,_loc1_ - this.§ 7§));
         this.§ 7§ = _loc1_ + 1;
         this.§8!7§();
         return _loc2_;
      }
      
      public function §,>§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§%!9§ && this.§=!3§.test(param1))
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
                     if(!this.§3!G§(_loc10_))
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
      
      private function §9!h§() : §!O§
      {
         var _loc3_:§!O§ = null;
         var _loc1_:* = "";
         if(this.§3F§ == "-")
         {
            _loc1_ += "-";
            this.§8!7§();
         }
         if(!this.§5!l§(this.§3F§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§3F§ == "0")
         {
            _loc1_ += this.§3F§;
            this.§8!7§();
            if(this.§5!l§(this.§3F§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§%!9§ && this.§3F§ == "x")
            {
               _loc1_ += this.§3F§;
               this.§8!7§();
               if(this.§3!G§(this.§3F§))
               {
                  _loc1_ += this.§3F§;
                  this.§8!7§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§3!G§(this.§3F§))
               {
                  _loc1_ += this.§3F§;
                  this.§8!7§();
               }
            }
         }
         else
         {
            while(this.§5!l§(this.§3F§))
            {
               _loc1_ += this.§3F§;
               this.§8!7§();
            }
         }
         if(this.§3F§ == ".")
         {
            _loc1_ += ".";
            this.§8!7§();
            if(!this.§5!l§(this.§3F§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§5!l§(this.§3F§))
            {
               _loc1_ += this.§3F§;
               this.§8!7§();
            }
         }
         if(this.§3F§ == "e" || this.§3F§ == "E")
         {
            _loc1_ += "e";
            this.§8!7§();
            if(this.§3F§ == "+" || this.§3F§ == "-")
            {
               _loc1_ += this.§3F§;
               this.§8!7§();
            }
            if(!this.§5!l§(this.§3F§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§5!l§(this.§3F§))
            {
               _loc1_ += this.§3F§;
               this.§8!7§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §!O§();
            _loc3_.type = §4!<§.§@!"§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §8!7§() : String
      {
         return this.§3F§ = this.§"!G§.charAt(this.§ 7§++);
      }
      
      private function §&!Q§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§ 7§;
            this.§=!T§();
            this.§1_§();
         }
         while(_loc1_ != this.§ 7§);
         
      }
      
      private function §1_§() : void
      {
         if(this.§3F§ == "/")
         {
            this.§8!7§();
            switch(this.§3F§)
            {
               case "/":
                  do
                  {
                     this.§8!7§();
                  }
                  while(this.§3F§ != "\n" && this.§3F§ != "");
                  
                  this.§8!7§();
                  break;
               case "*":
                  this.§8!7§();
                  while(true)
                  {
                     if(this.§3F§ == "*")
                     {
                        this.§8!7§();
                        if(this.§3F§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§8!7§();
                     }
                     if(this.§3F§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§8!7§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§3F§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §=!T§() : void
      {
         while(this.§?9§(this.§3F§))
         {
            this.§8!7§();
         }
      }
      
      private function §?9§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§%!9§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §5!l§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §3!G§(param1:String) : Boolean
      {
         return this.§5!l§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§ 7§,this.§"!G§);
      }
   }
}
