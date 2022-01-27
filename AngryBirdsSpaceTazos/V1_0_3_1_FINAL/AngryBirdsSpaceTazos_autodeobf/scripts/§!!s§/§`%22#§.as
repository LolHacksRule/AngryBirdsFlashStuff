package §!!s§
{
   public class §`"#§
   {
       
      
      private var §>!Z§:Boolean;
      
      private var §2!B§:Object;
      
      private var jsonString:String;
      
      private var §#C§:int;
      
      private var §'u§:String;
      
      private var §4E§:RegExp;
      
      public function §`"#§(param1:String, param2:Boolean)
      {
         this.§4E§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§>!Z§ = param2;
         this.§#C§ = 0;
         this.§-"§();
      }
      
      public function §=!M§() : § !d§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§ !d§ = new § !d§();
         this.§ "%§();
         switch(this.§'u§)
         {
            case "{":
               _loc1_.type = §;!7§.§%@§;
               _loc1_.value = "{";
               this.§-"§();
               break;
            case "}":
               _loc1_.type = §;!7§.§`"1§;
               _loc1_.value = "}";
               this.§-"§();
               break;
            case "[":
               _loc1_.type = §;!7§.§?s§;
               _loc1_.value = "[";
               this.§-"§();
               break;
            case "]":
               _loc1_.type = §;!7§.§?§;
               _loc1_.value = "]";
               this.§-"§();
               break;
            case ",":
               _loc1_.type = §;!7§.§8!D§;
               _loc1_.value = ",";
               this.§-"§();
               break;
            case ":":
               _loc1_.type = §;!7§.§2P§;
               _loc1_.value = ":";
               this.§-"§();
               break;
            case "t":
               _loc2_ = "t" + this.§-"§() + this.§-"§() + this.§-"§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §;!7§.TRUE;
                  _loc1_.value = true;
                  this.§-"§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§-"§() + this.§-"§() + this.§-"§() + this.§-"§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §;!7§.FALSE;
                  _loc1_.value = false;
                  this.§-"§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§-"§() + this.§-"§() + this.§-"§()) == "null")
               {
                  _loc1_.type = §;!7§.NULL;
                  _loc1_.value = null;
                  this.§-"§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§-"§() + this.§-"§()) == "NaN")
               {
                  _loc1_.type = §;!7§.§6!+§;
                  _loc1_.value = NaN;
                  this.§-"§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§%!d§();
               break;
            default:
               if(this.§?V§(this.§'u§) || this.§'u§ == "-")
               {
                  _loc1_ = this.§@!S§();
                  break;
               }
               if(this.§'u§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§'u§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §%!d§() : § !d§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§#C§;
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
         var _loc2_:§ !d§ = new § !d§();
         _loc2_.type = §;!7§.§[!m§;
         _loc2_.value = this.§-3§(this.jsonString.substr(this.§#C§,_loc1_ - this.§#C§));
         this.§#C§ = _loc1_ + 1;
         this.§-"§();
         return _loc2_;
      }
      
      public function §-3§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§>!Z§ && this.§4E§.test(param1))
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
                     if(!this.§9"2§(_loc10_))
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
      
      private function §@!S§() : § !d§
      {
         var _loc3_:§ !d§ = null;
         var _loc1_:* = "";
         if(this.§'u§ == "-")
         {
            _loc1_ += "-";
            this.§-"§();
         }
         if(!this.§?V§(this.§'u§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§'u§ == "0")
         {
            _loc1_ += this.§'u§;
            this.§-"§();
            if(this.§?V§(this.§'u§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§>!Z§ && this.§'u§ == "x")
            {
               _loc1_ += this.§'u§;
               this.§-"§();
               if(this.§9"2§(this.§'u§))
               {
                  _loc1_ += this.§'u§;
                  this.§-"§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§9"2§(this.§'u§))
               {
                  _loc1_ += this.§'u§;
                  this.§-"§();
               }
            }
         }
         else
         {
            while(this.§?V§(this.§'u§))
            {
               _loc1_ += this.§'u§;
               this.§-"§();
            }
         }
         if(this.§'u§ == ".")
         {
            _loc1_ += ".";
            this.§-"§();
            if(!this.§?V§(this.§'u§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§?V§(this.§'u§))
            {
               _loc1_ += this.§'u§;
               this.§-"§();
            }
         }
         if(this.§'u§ == "e" || this.§'u§ == "E")
         {
            _loc1_ += "e";
            this.§-"§();
            if(this.§'u§ == "+" || this.§'u§ == "-")
            {
               _loc1_ += this.§'u§;
               this.§-"§();
            }
            if(!this.§?V§(this.§'u§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§?V§(this.§'u§))
            {
               _loc1_ += this.§'u§;
               this.§-"§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new § !d§();
            _loc3_.type = §;!7§.§"Y§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §-"§() : String
      {
         return this.§'u§ = this.jsonString.charAt(this.§#C§++);
      }
      
      private function § "%§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§#C§;
            this.§0!S§();
            this.§1n§();
         }
         while(_loc1_ != this.§#C§);
         
      }
      
      private function §1n§() : void
      {
         if(this.§'u§ == "/")
         {
            this.§-"§();
            switch(this.§'u§)
            {
               case "/":
                  do
                  {
                     this.§-"§();
                  }
                  while(this.§'u§ != "\n" && this.§'u§ != "");
                  
                  this.§-"§();
                  break;
               case "*":
                  this.§-"§();
                  while(true)
                  {
                     if(this.§'u§ == "*")
                     {
                        this.§-"§();
                        if(this.§'u§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§-"§();
                     }
                     if(this.§'u§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§-"§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§'u§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §0!S§() : void
      {
         while(this.§`"-§(this.§'u§))
         {
            this.§-"§();
         }
      }
      
      private function §`"-§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§>!Z§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §?V§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §9"2§(param1:String) : Boolean
      {
         return this.§?V§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§#C§,this.jsonString);
      }
   }
}
