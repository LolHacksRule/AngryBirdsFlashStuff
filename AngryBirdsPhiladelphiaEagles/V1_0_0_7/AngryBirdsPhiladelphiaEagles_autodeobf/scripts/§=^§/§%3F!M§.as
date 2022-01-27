package §=^§
{
   public class §?!M§
   {
       
      
      private var §^#§:Boolean;
      
      private var obj:Object;
      
      private var §9R§:String;
      
      private var §<?§:int;
      
      private var §%l§:String;
      
      private var §'!+§:RegExp;
      
      public function §?!M§(param1:String, param2:Boolean)
      {
         this.§'!+§ = /[\x00-\x1F]/;
         super();
         this.§9R§ = param1;
         this.§^#§ = param2;
         this.§<?§ = 0;
         this.§>f§();
      }
      
      public function §`^§() : §7>§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§7>§ = new §7>§();
         this.§6!#§();
         switch(this.§%l§)
         {
            case "{":
               _loc1_.type = §,4§.§3!3§;
               _loc1_.value = "{";
               this.§>f§();
               break;
            case "}":
               _loc1_.type = §,4§.§[!5§;
               _loc1_.value = "}";
               this.§>f§();
               break;
            case "[":
               _loc1_.type = §,4§.§3!0§;
               _loc1_.value = "[";
               this.§>f§();
               break;
            case "]":
               _loc1_.type = §,4§.§ use§;
               _loc1_.value = "]";
               this.§>f§();
               break;
            case ",":
               _loc1_.type = §,4§.§ null§;
               _loc1_.value = ",";
               this.§>f§();
               break;
            case ":":
               _loc1_.type = §,4§.§^!9§;
               _loc1_.value = ":";
               this.§>f§();
               break;
            case "t":
               _loc2_ = "t" + this.§>f§() + this.§>f§() + this.§>f§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §,4§.TRUE;
                  _loc1_.value = true;
                  this.§>f§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§>f§() + this.§>f§() + this.§>f§() + this.§>f§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §,4§.FALSE;
                  _loc1_.value = false;
                  this.§>f§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§>f§() + this.§>f§() + this.§>f§()) == "null")
               {
                  _loc1_.type = §,4§.NULL;
                  _loc1_.value = null;
                  this.§>f§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§>f§() + this.§>f§()) == "NaN")
               {
                  _loc1_.type = §,4§.§9!?§;
                  _loc1_.value = NaN;
                  this.§>f§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§=y§();
               break;
            default:
               if(this.§,l§(this.§%l§) || this.§%l§ == "-")
               {
                  _loc1_ = this.§4!4§();
                  break;
               }
               if(this.§%l§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§%l§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §=y§() : §7>§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§<?§;
         while(true)
         {
            _loc1_ = this.§9R§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§9R§.charAt(_loc4_) == "\\")
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
         var _loc2_:§7>§ = new §7>§();
         _loc2_.type = §,4§.§[<§;
         _loc2_.value = this.§9d§(this.§9R§.substr(this.§<?§,_loc1_ - this.§<?§));
         this.§<?§ = _loc1_ + 1;
         this.§>f§();
         return _loc2_;
      }
      
      public function §9d§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§^#§ && this.§'!+§.test(param1))
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
                     if(!this.§<!9§(_loc10_))
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
      
      private function §4!4§() : §7>§
      {
         var _loc3_:§7>§ = null;
         var _loc1_:* = "";
         if(this.§%l§ == "-")
         {
            _loc1_ += "-";
            this.§>f§();
         }
         if(!this.§,l§(this.§%l§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§%l§ == "0")
         {
            _loc1_ += this.§%l§;
            this.§>f§();
            if(this.§,l§(this.§%l§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§^#§ && this.§%l§ == "x")
            {
               _loc1_ += this.§%l§;
               this.§>f§();
               if(this.§<!9§(this.§%l§))
               {
                  _loc1_ += this.§%l§;
                  this.§>f§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§<!9§(this.§%l§))
               {
                  _loc1_ += this.§%l§;
                  this.§>f§();
               }
            }
         }
         else
         {
            while(this.§,l§(this.§%l§))
            {
               _loc1_ += this.§%l§;
               this.§>f§();
            }
         }
         if(this.§%l§ == ".")
         {
            _loc1_ += ".";
            this.§>f§();
            if(!this.§,l§(this.§%l§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§,l§(this.§%l§))
            {
               _loc1_ += this.§%l§;
               this.§>f§();
            }
         }
         if(this.§%l§ == "e" || this.§%l§ == "E")
         {
            _loc1_ += "e";
            this.§>f§();
            if(this.§%l§ == "+" || this.§%l§ == "-")
            {
               _loc1_ += this.§%l§;
               this.§>f§();
            }
            if(!this.§,l§(this.§%l§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§,l§(this.§%l§))
            {
               _loc1_ += this.§%l§;
               this.§>f§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §7>§();
            _loc3_.type = §,4§.§catch§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §>f§() : String
      {
         return this.§%l§ = this.§9R§.charAt(this.§<?§++);
      }
      
      private function §6!#§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§<?§;
            this.§0m§();
            this.§]>§();
         }
         while(_loc1_ != this.§<?§);
         
      }
      
      private function §]>§() : void
      {
         if(this.§%l§ == "/")
         {
            this.§>f§();
            switch(this.§%l§)
            {
               case "/":
                  do
                  {
                     this.§>f§();
                  }
                  while(this.§%l§ != "\n" && this.§%l§ != "");
                  
                  this.§>f§();
                  break;
               case "*":
                  this.§>f§();
                  while(true)
                  {
                     if(this.§%l§ == "*")
                     {
                        this.§>f§();
                        if(this.§%l§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§>f§();
                     }
                     if(this.§%l§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§>f§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§%l§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §0m§() : void
      {
         while(this.§5!L§(this.§%l§))
         {
            this.§>f§();
         }
      }
      
      private function §5!L§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§^#§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §,l§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §<!9§(param1:String) : Boolean
      {
         return this.§,l§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§<?§,this.§9R§);
      }
   }
}
