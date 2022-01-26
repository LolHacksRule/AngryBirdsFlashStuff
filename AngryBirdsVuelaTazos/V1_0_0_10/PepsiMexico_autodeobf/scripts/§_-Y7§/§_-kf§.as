package §_-Y7§
{
   public class §_-kf§
   {
       
      
      private var §_-mS§:Boolean;
      
      private var obj:Object;
      
      private var §_-Sr§:String;
      
      private var §_-HG§:int;
      
      private var §_-qb§:String;
      
      private var §_-LX§:RegExp;
      
      public function §_-kf§(param1:String, param2:Boolean)
      {
         this.§_-LX§ = /[\x00-\x1F]/;
         super();
         this.§_-Sr§ = param1;
         this.§_-mS§ = param2;
         this.§_-HG§ = 0;
         this.§_-kG§();
      }
      
      public function §_-qj§() : §_-xW§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-xW§ = new §_-xW§();
         this.§_-OW§();
         switch(this.§_-qb§)
         {
            case "{":
               _loc1_.type = §_-61§.§_-fq§;
               _loc1_.value = "{";
               this.§_-kG§();
               break;
            case "}":
               _loc1_.type = §_-61§.§_-Sz§;
               _loc1_.value = "}";
               this.§_-kG§();
               break;
            case "[":
               _loc1_.type = §_-61§.§_-XV§;
               _loc1_.value = "[";
               this.§_-kG§();
               break;
            case "]":
               _loc1_.type = §_-61§.§_-Bx§;
               _loc1_.value = "]";
               this.§_-kG§();
               break;
            case ",":
               _loc1_.type = §_-61§.§_-6A§;
               _loc1_.value = ",";
               this.§_-kG§();
               break;
            case ":":
               _loc1_.type = §_-61§.§_-Eq§;
               _loc1_.value = ":";
               this.§_-kG§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-kG§() + this.§_-kG§() + this.§_-kG§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-61§.TRUE;
                  _loc1_.value = true;
                  this.§_-kG§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-kG§() + this.§_-kG§() + this.§_-kG§() + this.§_-kG§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-61§.FALSE;
                  _loc1_.value = false;
                  this.§_-kG§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-kG§() + this.§_-kG§() + this.§_-kG§()) == "null")
               {
                  _loc1_.type = §_-61§.§_-Kb§;
                  _loc1_.value = null;
                  this.§_-kG§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-kG§() + this.§_-kG§()) == "NaN")
               {
                  _loc1_.type = §_-61§.§set §;
                  _loc1_.value = NaN;
                  this.§_-kG§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-0x§();
               break;
            default:
               if(this.§_-cf§(this.§_-qb§) || this.§_-qb§ == "-")
               {
                  _loc1_ = this.§_-5-§();
                  break;
               }
               if(this.§_-qb§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-qb§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-0x§() : §_-xW§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-HG§;
         while(true)
         {
            _loc1_ = this.§_-Sr§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-Sr§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-xW§ = new §_-xW§();
         _loc2_.type = §_-61§.§_-26§;
         _loc2_.value = this.§_-vY§(this.§_-Sr§.substr(this.§_-HG§,_loc1_ - this.§_-HG§));
         this.§_-HG§ = _loc1_ + 1;
         this.§_-kG§();
         return _loc2_;
      }
      
      public function §_-vY§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-mS§ && this.§_-LX§.test(param1))
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
                     if(!this.§_-mo§(_loc10_))
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
      
      private function §_-5-§() : §_-xW§
      {
         var _loc3_:§_-xW§ = null;
         var _loc1_:* = "";
         if(this.§_-qb§ == "-")
         {
            _loc1_ += "-";
            this.§_-kG§();
         }
         if(!this.§_-cf§(this.§_-qb§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-qb§ == "0")
         {
            _loc1_ += this.§_-qb§;
            this.§_-kG§();
            if(this.§_-cf§(this.§_-qb§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-mS§ && this.§_-qb§ == "x")
            {
               _loc1_ += this.§_-qb§;
               this.§_-kG§();
               if(this.§_-mo§(this.§_-qb§))
               {
                  _loc1_ += this.§_-qb§;
                  this.§_-kG§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-mo§(this.§_-qb§))
               {
                  _loc1_ += this.§_-qb§;
                  this.§_-kG§();
               }
            }
         }
         else
         {
            while(this.§_-cf§(this.§_-qb§))
            {
               _loc1_ += this.§_-qb§;
               this.§_-kG§();
            }
         }
         if(this.§_-qb§ == ".")
         {
            _loc1_ += ".";
            this.§_-kG§();
            if(!this.§_-cf§(this.§_-qb§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-cf§(this.§_-qb§))
            {
               _loc1_ += this.§_-qb§;
               this.§_-kG§();
            }
         }
         if(this.§_-qb§ == "e" || this.§_-qb§ == "E")
         {
            _loc1_ += "e";
            this.§_-kG§();
            if(this.§_-qb§ == "+" || this.§_-qb§ == "-")
            {
               _loc1_ += this.§_-qb§;
               this.§_-kG§();
            }
            if(!this.§_-cf§(this.§_-qb§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-cf§(this.§_-qb§))
            {
               _loc1_ += this.§_-qb§;
               this.§_-kG§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-xW§();
            _loc3_.type = §_-61§.§_-rG§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-kG§() : String
      {
         return this.§_-qb§ = this.§_-Sr§.charAt(this.§_-HG§++);
      }
      
      private function §_-OW§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-HG§;
            this.§_-WO§();
            this.§_-HP§();
         }
         while(_loc1_ != this.§_-HG§);
         
      }
      
      private function §_-HP§() : void
      {
         if(this.§_-qb§ == "/")
         {
            this.§_-kG§();
            switch(this.§_-qb§)
            {
               case "/":
                  do
                  {
                     this.§_-kG§();
                  }
                  while(this.§_-qb§ != "\n" && this.§_-qb§ != "");
                  
                  this.§_-kG§();
                  break;
               case "*":
                  this.§_-kG§();
                  while(true)
                  {
                     if(this.§_-qb§ == "*")
                     {
                        this.§_-kG§();
                        if(this.§_-qb§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-kG§();
                     }
                     if(this.§_-qb§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-kG§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-qb§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-WO§() : void
      {
         while(this.§_-Zr§(this.§_-qb§))
         {
            this.§_-kG§();
         }
      }
      
      private function §_-Zr§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-mS§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-cf§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-mo§(param1:String) : Boolean
      {
         return this.§_-cf§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-HG§,this.§_-Sr§);
      }
   }
}
