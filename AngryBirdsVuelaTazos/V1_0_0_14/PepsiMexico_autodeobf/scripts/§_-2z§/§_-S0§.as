package §_-2z§
{
   public class §_-S0§
   {
       
      
      private var §_-vK§:Boolean;
      
      private var obj:Object;
      
      private var §_-Oo§:String;
      
      private var §var§:int;
      
      private var §_-8L§:String;
      
      private var §_-3F§:RegExp;
      
      public function §_-S0§(param1:String, param2:Boolean)
      {
         this.§_-3F§ = /[\x00-\x1F]/;
         super();
         this.§_-Oo§ = param1;
         this.§_-vK§ = param2;
         this.§var§ = 0;
         this.§_-uJ§();
      }
      
      public function §_-Z1§() : §_-IH§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-IH§ = new §_-IH§();
         this.§_-f0§();
         switch(this.§_-8L§)
         {
            case "{":
               _loc1_.type = §_-eG§.§_-G4§;
               _loc1_.value = "{";
               this.§_-uJ§();
               break;
            case "}":
               _loc1_.type = §_-eG§.§_-AC§;
               _loc1_.value = "}";
               this.§_-uJ§();
               break;
            case "[":
               _loc1_.type = §_-eG§.§_-8o§;
               _loc1_.value = "[";
               this.§_-uJ§();
               break;
            case "]":
               _loc1_.type = §_-eG§.§_-fS§;
               _loc1_.value = "]";
               this.§_-uJ§();
               break;
            case ",":
               _loc1_.type = §_-eG§.§_-s0§;
               _loc1_.value = ",";
               this.§_-uJ§();
               break;
            case ":":
               _loc1_.type = §_-eG§.§_-Qk§;
               _loc1_.value = ":";
               this.§_-uJ§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-uJ§() + this.§_-uJ§() + this.§_-uJ§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-eG§.TRUE;
                  _loc1_.value = true;
                  this.§_-uJ§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-uJ§() + this.§_-uJ§() + this.§_-uJ§() + this.§_-uJ§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-eG§.FALSE;
                  _loc1_.value = false;
                  this.§_-uJ§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-uJ§() + this.§_-uJ§() + this.§_-uJ§()) == "null")
               {
                  _loc1_.type = §_-eG§.§_-Qp§;
                  _loc1_.value = null;
                  this.§_-uJ§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-uJ§() + this.§_-uJ§()) == "NaN")
               {
                  _loc1_.type = §_-eG§.§_-Sw§;
                  _loc1_.value = NaN;
                  this.§_-uJ§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-50§();
               break;
            default:
               if(this.§_-bM§(this.§_-8L§) || this.§_-8L§ == "-")
               {
                  _loc1_ = this.§_-jJ§();
                  break;
               }
               if(this.§_-8L§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-8L§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-50§() : §_-IH§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§var§;
         while(true)
         {
            _loc1_ = this.§_-Oo§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-Oo§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-IH§ = new §_-IH§();
         _loc2_.type = §_-eG§.§_-k4§;
         _loc2_.value = this.§_-my§(this.§_-Oo§.substr(this.§var§,_loc1_ - this.§var§));
         this.§var§ = _loc1_ + 1;
         this.§_-uJ§();
         return _loc2_;
      }
      
      public function §_-my§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-vK§ && this.§_-3F§.test(param1))
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
                     if(!this.§_-aG§(_loc10_))
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
      
      private function §_-jJ§() : §_-IH§
      {
         var _loc3_:§_-IH§ = null;
         var _loc1_:* = "";
         if(this.§_-8L§ == "-")
         {
            _loc1_ += "-";
            this.§_-uJ§();
         }
         if(!this.§_-bM§(this.§_-8L§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-8L§ == "0")
         {
            _loc1_ += this.§_-8L§;
            this.§_-uJ§();
            if(this.§_-bM§(this.§_-8L§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-vK§ && this.§_-8L§ == "x")
            {
               _loc1_ += this.§_-8L§;
               this.§_-uJ§();
               if(this.§_-aG§(this.§_-8L§))
               {
                  _loc1_ += this.§_-8L§;
                  this.§_-uJ§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-aG§(this.§_-8L§))
               {
                  _loc1_ += this.§_-8L§;
                  this.§_-uJ§();
               }
            }
         }
         else
         {
            while(this.§_-bM§(this.§_-8L§))
            {
               _loc1_ += this.§_-8L§;
               this.§_-uJ§();
            }
         }
         if(this.§_-8L§ == ".")
         {
            _loc1_ += ".";
            this.§_-uJ§();
            if(!this.§_-bM§(this.§_-8L§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-bM§(this.§_-8L§))
            {
               _loc1_ += this.§_-8L§;
               this.§_-uJ§();
            }
         }
         if(this.§_-8L§ == "e" || this.§_-8L§ == "E")
         {
            _loc1_ += "e";
            this.§_-uJ§();
            if(this.§_-8L§ == "+" || this.§_-8L§ == "-")
            {
               _loc1_ += this.§_-8L§;
               this.§_-uJ§();
            }
            if(!this.§_-bM§(this.§_-8L§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-bM§(this.§_-8L§))
            {
               _loc1_ += this.§_-8L§;
               this.§_-uJ§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-IH§();
            _loc3_.type = §_-eG§.§_-Jm§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-uJ§() : String
      {
         return this.§_-8L§ = this.§_-Oo§.charAt(this.§var§++);
      }
      
      private function §_-f0§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§var§;
            this.§_-kt§();
            this.§_-2R§();
         }
         while(_loc1_ != this.§var§);
         
      }
      
      private function §_-2R§() : void
      {
         if(this.§_-8L§ == "/")
         {
            this.§_-uJ§();
            switch(this.§_-8L§)
            {
               case "/":
                  do
                  {
                     this.§_-uJ§();
                  }
                  while(this.§_-8L§ != "\n" && this.§_-8L§ != "");
                  
                  this.§_-uJ§();
                  break;
               case "*":
                  this.§_-uJ§();
                  while(true)
                  {
                     if(this.§_-8L§ == "*")
                     {
                        this.§_-uJ§();
                        if(this.§_-8L§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-uJ§();
                     }
                     if(this.§_-8L§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-uJ§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-8L§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-kt§() : void
      {
         while(this.§_-Vj§(this.§_-8L§))
         {
            this.§_-uJ§();
         }
      }
      
      private function §_-Vj§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-vK§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-bM§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-aG§(param1:String) : Boolean
      {
         return this.§_-bM§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§var§,this.§_-Oo§);
      }
   }
}
