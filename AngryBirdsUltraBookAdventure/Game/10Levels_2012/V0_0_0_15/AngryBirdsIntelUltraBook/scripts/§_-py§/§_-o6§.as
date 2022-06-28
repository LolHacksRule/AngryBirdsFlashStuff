package §_-py§
{
   public class §_-o6§
   {
       
      
      private var §_-Wc§:Boolean;
      
      private var obj:Object;
      
      private var §_-J7§:String;
      
      private var §_-Ox§:int;
      
      private var §_-03F§:String;
      
      private var §_-Fg§:RegExp;
      
      public function §_-o6§(param1:String, param2:Boolean)
      {
         this.§_-Fg§ = /[\x00-\x1F]/;
         super();
         this.§_-J7§ = param1;
         this.§_-Wc§ = param2;
         this.§_-Ox§ = 0;
         this.§_-Tw§();
      }
      
      public function §_-ev§() : §_-y6§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-y6§ = new §_-y6§();
         this.§_-69§();
         switch(this.§_-03F§)
         {
            case "{":
               _loc1_.type = §_-mi§.§_-Qb§;
               _loc1_.value = "{";
               this.§_-Tw§();
               break;
            case "}":
               _loc1_.type = §_-mi§.§_-XT§;
               _loc1_.value = "}";
               this.§_-Tw§();
               break;
            case "[":
               _loc1_.type = §_-mi§.§_-01g§;
               _loc1_.value = "[";
               this.§_-Tw§();
               break;
            case "]":
               _loc1_.type = §_-mi§.§_-VJ§;
               _loc1_.value = "]";
               this.§_-Tw§();
               break;
            case ",":
               _loc1_.type = §_-mi§.§_-f3§;
               _loc1_.value = ",";
               this.§_-Tw§();
               break;
            case ":":
               _loc1_.type = §_-mi§.§_-04x§;
               _loc1_.value = ":";
               this.§_-Tw§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-Tw§() + this.§_-Tw§() + this.§_-Tw§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-mi§.TRUE;
                  _loc1_.value = true;
                  this.§_-Tw§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§_-Tw§() + this.§_-Tw§() + this.§_-Tw§() + this.§_-Tw§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-mi§.FALSE;
                  _loc1_.value = false;
                  this.§_-Tw§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-Tw§() + this.§_-Tw§() + this.§_-Tw§()) == "null")
               {
                  _loc1_.type = §_-mi§.NULL;
                  _loc1_.value = null;
                  this.§_-Tw§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-Tw§() + this.§_-Tw§()) == "NaN")
               {
                  _loc1_.type = §_-mi§.§_-TZ§;
                  _loc1_.value = NaN;
                  this.§_-Tw§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-gw§();
               break;
            default:
               if(this.§_-05B§(this.§_-03F§) || this.§_-03F§ == "-")
               {
                  _loc1_ = this.§_-04R§();
                  break;
               }
               if(this.§_-03F§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-03F§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-gw§() : §_-y6§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-Ox§;
         while(true)
         {
            _loc1_ = this.§_-J7§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-J7§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-y6§ = new §_-y6§();
         _loc2_.type = §_-mi§.§_-0DV§;
         _loc2_.value = this.§_-I-§(this.§_-J7§.substr(this.§_-Ox§,_loc1_ - this.§_-Ox§));
         this.§_-Ox§ = _loc1_ + 1;
         this.§_-Tw§();
         return _loc2_;
      }
      
      public function §_-I-§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-Wc§ && this.§_-Fg§.test(param1))
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
                     if(!this.§_-t4§(_loc10_))
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
      
      private function §_-04R§() : §_-y6§
      {
         var _loc3_:§_-y6§ = null;
         var _loc1_:* = "";
         if(this.§_-03F§ == "-")
         {
            _loc1_ += "-";
            this.§_-Tw§();
         }
         if(!this.§_-05B§(this.§_-03F§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-03F§ == "0")
         {
            _loc1_ += this.§_-03F§;
            this.§_-Tw§();
            if(this.§_-05B§(this.§_-03F§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-Wc§ && this.§_-03F§ == "x")
            {
               _loc1_ += this.§_-03F§;
               this.§_-Tw§();
               if(this.§_-t4§(this.§_-03F§))
               {
                  _loc1_ += this.§_-03F§;
                  this.§_-Tw§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-t4§(this.§_-03F§))
               {
                  _loc1_ += this.§_-03F§;
                  this.§_-Tw§();
               }
            }
         }
         else
         {
            while(this.§_-05B§(this.§_-03F§))
            {
               _loc1_ += this.§_-03F§;
               this.§_-Tw§();
            }
         }
         if(this.§_-03F§ == ".")
         {
            _loc1_ += ".";
            this.§_-Tw§();
            if(!this.§_-05B§(this.§_-03F§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-05B§(this.§_-03F§))
            {
               _loc1_ += this.§_-03F§;
               this.§_-Tw§();
            }
         }
         if(this.§_-03F§ == "e" || this.§_-03F§ == "E")
         {
            _loc1_ += "e";
            this.§_-Tw§();
            if(this.§_-03F§ == "+" || this.§_-03F§ == "-")
            {
               _loc1_ += this.§_-03F§;
               this.§_-Tw§();
            }
            if(!this.§_-05B§(this.§_-03F§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-05B§(this.§_-03F§))
            {
               _loc1_ += this.§_-03F§;
               this.§_-Tw§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-y6§();
            _loc3_.type = §_-mi§.§_-5t§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-Tw§() : String
      {
         return this.§_-03F§ = this.§_-J7§.charAt(this.§_-Ox§++);
      }
      
      private function §_-69§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-Ox§;
            this.§_-zo§();
            this.§_-05l§();
         }
         while(_loc1_ != this.§_-Ox§);
         
      }
      
      private function §_-05l§() : void
      {
         if(this.§_-03F§ == "/")
         {
            this.§_-Tw§();
            switch(this.§_-03F§)
            {
               case "/":
                  do
                  {
                     this.§_-Tw§();
                  }
                  while(this.§_-03F§ != "\n" && this.§_-03F§ != "");
                  
                  this.§_-Tw§();
                  break;
               case "*":
                  this.§_-Tw§();
                  while(true)
                  {
                     if(this.§_-03F§ == "*")
                     {
                        this.§_-Tw§();
                        if(this.§_-03F§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-Tw§();
                     }
                     if(this.§_-03F§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-Tw§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-03F§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-zo§() : void
      {
         while(this.§_-wJ§(this.§_-03F§))
         {
            this.§_-Tw§();
         }
      }
      
      private function §_-wJ§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-Wc§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-05B§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-t4§(param1:String) : Boolean
      {
         return this.§_-05B§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-Ox§,this.§_-J7§);
      }
   }
}
