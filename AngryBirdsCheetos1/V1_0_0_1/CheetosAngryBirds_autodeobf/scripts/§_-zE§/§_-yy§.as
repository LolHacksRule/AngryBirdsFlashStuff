package §_-zE§
{
   public class §_-yy§
   {
       
      
      private var §_-Qf§:Boolean;
      
      private var obj:Object;
      
      private var §_-fG§:String;
      
      private var §_-QO§:int;
      
      private var §_-HK§:String;
      
      private var §_-pf§:RegExp;
      
      public function §_-yy§(param1:String, param2:Boolean)
      {
         this.§_-pf§ = /[\x00-\x1F]/;
         super();
         this.§_-fG§ = param1;
         this.§_-Qf§ = param2;
         this.§_-QO§ = 0;
         this.§_-JI§();
      }
      
      public function §_-O7§() : §_-Kw§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-Kw§ = new §_-Kw§();
         this.§_-Uv§();
         switch(this.§_-HK§)
         {
            case "{":
               _loc1_.type = §_-B§.§_-Wd§;
               _loc1_.value = "{";
               this.§_-JI§();
               break;
            case "}":
               _loc1_.type = §_-B§.§_-kd§;
               _loc1_.value = "}";
               this.§_-JI§();
               break;
            case "[":
               _loc1_.type = §_-B§.§_-nl§;
               _loc1_.value = "[";
               this.§_-JI§();
               break;
            case "]":
               _loc1_.type = §_-B§.§_-Pd§;
               _loc1_.value = "]";
               this.§_-JI§();
               break;
            case ",":
               _loc1_.type = §_-B§.§_-I7§;
               _loc1_.value = ",";
               this.§_-JI§();
               break;
            case ":":
               _loc1_.type = §_-B§.§_-uH§;
               _loc1_.value = ":";
               this.§_-JI§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-JI§() + this.§_-JI§() + this.§_-JI§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-B§.TRUE;
                  _loc1_.value = true;
                  this.§_-JI§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-JI§() + this.§_-JI§() + this.§_-JI§() + this.§_-JI§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-B§.FALSE;
                  _loc1_.value = false;
                  this.§_-JI§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-JI§() + this.§_-JI§() + this.§_-JI§()) == "null")
               {
                  _loc1_.type = §_-B§.§_-dz§;
                  _loc1_.value = null;
                  this.§_-JI§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-JI§() + this.§_-JI§()) == "NaN")
               {
                  _loc1_.type = §_-B§.§implements§;
                  _loc1_.value = NaN;
                  this.§_-JI§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-3W§();
               break;
            default:
               if(this.§_-v7§(this.§_-HK§) || this.§_-HK§ == "-")
               {
                  _loc1_ = this.§_-9H§();
                  break;
               }
               if(this.§_-HK§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-HK§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-3W§() : §_-Kw§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-QO§;
         while(true)
         {
            _loc1_ = this.§_-fG§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-fG§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-Kw§ = new §_-Kw§();
         _loc2_.type = §_-B§.§_-Wl§;
         _loc2_.value = this.§_-pv§(this.§_-fG§.substr(this.§_-QO§,_loc1_ - this.§_-QO§));
         this.§_-QO§ = _loc1_ + 1;
         this.§_-JI§();
         return _loc2_;
      }
      
      public function §_-pv§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-Qf§ && this.§_-pf§.test(param1))
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
                     if(!this.§_-av§(_loc10_))
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
      
      private function §_-9H§() : §_-Kw§
      {
         var _loc3_:§_-Kw§ = null;
         var _loc1_:* = "";
         if(this.§_-HK§ == "-")
         {
            _loc1_ += "-";
            this.§_-JI§();
         }
         if(!this.§_-v7§(this.§_-HK§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-HK§ == "0")
         {
            _loc1_ += this.§_-HK§;
            this.§_-JI§();
            if(this.§_-v7§(this.§_-HK§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-Qf§ && this.§_-HK§ == "x")
            {
               _loc1_ += this.§_-HK§;
               this.§_-JI§();
               if(this.§_-av§(this.§_-HK§))
               {
                  _loc1_ += this.§_-HK§;
                  this.§_-JI§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-av§(this.§_-HK§))
               {
                  _loc1_ += this.§_-HK§;
                  this.§_-JI§();
               }
            }
         }
         else
         {
            while(this.§_-v7§(this.§_-HK§))
            {
               _loc1_ += this.§_-HK§;
               this.§_-JI§();
            }
         }
         if(this.§_-HK§ == ".")
         {
            _loc1_ += ".";
            this.§_-JI§();
            if(!this.§_-v7§(this.§_-HK§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-v7§(this.§_-HK§))
            {
               _loc1_ += this.§_-HK§;
               this.§_-JI§();
            }
         }
         if(this.§_-HK§ == "e" || this.§_-HK§ == "E")
         {
            _loc1_ += "e";
            this.§_-JI§();
            if(this.§_-HK§ == "+" || this.§_-HK§ == "-")
            {
               _loc1_ += this.§_-HK§;
               this.§_-JI§();
            }
            if(!this.§_-v7§(this.§_-HK§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-v7§(this.§_-HK§))
            {
               _loc1_ += this.§_-HK§;
               this.§_-JI§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-Kw§();
            _loc3_.type = §_-B§.§_-SR§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-JI§() : String
      {
         return this.§_-HK§ = this.§_-fG§.charAt(this.§_-QO§++);
      }
      
      private function §_-Uv§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-QO§;
            this.§_-tx§();
            this.§_-c8§();
         }
         while(_loc1_ != this.§_-QO§);
         
      }
      
      private function §_-c8§() : void
      {
         if(this.§_-HK§ == "/")
         {
            this.§_-JI§();
            switch(this.§_-HK§)
            {
               case "/":
                  do
                  {
                     this.§_-JI§();
                  }
                  while(this.§_-HK§ != "\n" && this.§_-HK§ != "");
                  
                  this.§_-JI§();
                  break;
               case "*":
                  this.§_-JI§();
                  while(true)
                  {
                     if(this.§_-HK§ == "*")
                     {
                        this.§_-JI§();
                        if(this.§_-HK§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-JI§();
                     }
                     if(this.§_-HK§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-JI§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-HK§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-tx§() : void
      {
         while(this.§_-et§(this.§_-HK§))
         {
            this.§_-JI§();
         }
      }
      
      private function §_-et§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-Qf§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-v7§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-av§(param1:String) : Boolean
      {
         return this.§_-v7§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-QO§,this.§_-fG§);
      }
   }
}
