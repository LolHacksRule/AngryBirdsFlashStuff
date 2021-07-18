package §_-hq§
{
   public class §_-w1§
   {
       
      
      private var §_-Kg§:Boolean;
      
      private var obj:Object;
      
      private var §_-r9§:String;
      
      private var §_-v5§:int;
      
      private var §_-lz§:String;
      
      private var §_-xc§:RegExp;
      
      public function §_-w1§(param1:String, param2:Boolean)
      {
         this.§_-xc§ = /[\x00-\x1F]/;
         super();
         this.§_-r9§ = param1;
         this.§_-Kg§ = param2;
         this.§_-v5§ = 0;
         this.§_-xB§();
      }
      
      public function §_-sx§() : §_-XG§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-XG§ = new §_-XG§();
         this.§_-dS§();
         switch(this.§_-lz§)
         {
            case "{":
               _loc1_.type = §_-KI§.§_-WA§;
               _loc1_.value = "{";
               this.§_-xB§();
               break;
            case "}":
               _loc1_.type = §_-KI§.§_-yh§;
               _loc1_.value = "}";
               this.§_-xB§();
               break;
            case "[":
               _loc1_.type = §_-KI§.§_-zY§;
               _loc1_.value = "[";
               this.§_-xB§();
               break;
            case "]":
               _loc1_.type = §_-KI§.§_-a0§;
               _loc1_.value = "]";
               this.§_-xB§();
               break;
            case ",":
               _loc1_.type = §_-KI§.§_-nG§;
               _loc1_.value = ",";
               this.§_-xB§();
               break;
            case ":":
               _loc1_.type = §_-KI§.§_-cs§;
               _loc1_.value = ":";
               this.§_-xB§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-xB§() + this.§_-xB§() + this.§_-xB§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-KI§.TRUE;
                  _loc1_.value = true;
                  this.§_-xB§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§_-xB§() + this.§_-xB§() + this.§_-xB§() + this.§_-xB§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-KI§.FALSE;
                  _loc1_.value = false;
                  this.§_-xB§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-xB§() + this.§_-xB§() + this.§_-xB§()) == "null")
               {
                  _loc1_.type = §_-KI§.§_-to§;
                  _loc1_.value = null;
                  this.§_-xB§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-xB§() + this.§_-xB§()) == "NaN")
               {
                  _loc1_.type = §_-KI§.§_-8n§;
                  _loc1_.value = NaN;
                  this.§_-xB§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§_-k5§();
               break;
            default:
               if(this.§_-HH§(this.§_-lz§) || this.§_-lz§ == "-")
               {
                  _loc1_ = this.§_-Sx§();
               }
               else
               {
                  if(this.§_-lz§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§_-lz§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §_-k5§() : §_-XG§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-v5§;
         while(true)
         {
            _loc1_ = this.§_-r9§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-r9§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-XG§ = new §_-XG§();
         _loc2_.type = §_-KI§.§_-J5§;
         _loc2_.value = this.§_-qA§(this.§_-r9§.substr(this.§_-v5§,_loc1_ - this.§_-v5§));
         this.§_-v5§ = _loc1_ + 1;
         this.§_-xB§();
         return _loc2_;
      }
      
      public function §_-qA§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-Kg§ && this.§_-xc§.test(param1))
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
                     if(!this.§_-On§(_loc10_))
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
      
      private function §_-Sx§() : §_-XG§
      {
         var _loc3_:§_-XG§ = null;
         var _loc1_:* = "";
         if(this.§_-lz§ == "-")
         {
            _loc1_ += "-";
            this.§_-xB§();
         }
         if(!this.§_-HH§(this.§_-lz§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-lz§ == "0")
         {
            _loc1_ += this.§_-lz§;
            this.§_-xB§();
            if(this.§_-HH§(this.§_-lz§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-Kg§ && this.§_-lz§ == "x")
            {
               _loc1_ += this.§_-lz§;
               this.§_-xB§();
               if(this.§_-On§(this.§_-lz§))
               {
                  _loc1_ += this.§_-lz§;
                  this.§_-xB§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-On§(this.§_-lz§))
               {
                  _loc1_ += this.§_-lz§;
                  this.§_-xB§();
               }
            }
         }
         else
         {
            while(this.§_-HH§(this.§_-lz§))
            {
               _loc1_ += this.§_-lz§;
               this.§_-xB§();
            }
         }
         if(this.§_-lz§ == ".")
         {
            _loc1_ += ".";
            this.§_-xB§();
            if(!this.§_-HH§(this.§_-lz§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-HH§(this.§_-lz§))
            {
               _loc1_ += this.§_-lz§;
               this.§_-xB§();
            }
         }
         if(this.§_-lz§ == "e" || this.§_-lz§ == "E")
         {
            _loc1_ += "e";
            this.§_-xB§();
            if(this.§_-lz§ == "+" || this.§_-lz§ == "-")
            {
               _loc1_ += this.§_-lz§;
               this.§_-xB§();
            }
            if(!this.§_-HH§(this.§_-lz§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-HH§(this.§_-lz§))
            {
               _loc1_ += this.§_-lz§;
               this.§_-xB§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-XG§();
            _loc3_.type = §_-KI§.§_-pd§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-xB§() : String
      {
         return this.§_-lz§ = this.§_-r9§.charAt(this.§_-v5§++);
      }
      
      private function §_-dS§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-v5§;
            this.§_-MO§();
            this.§_-lL§();
         }
         while(_loc1_ != this.§_-v5§);
         
      }
      
      private function §_-lL§() : void
      {
         if(this.§_-lz§ == "/")
         {
            this.§_-xB§();
            switch(this.§_-lz§)
            {
               case "/":
                  do
                  {
                     this.§_-xB§();
                  }
                  while(this.§_-lz§ != "\n" && this.§_-lz§ != "");
                  
                  this.§_-xB§();
                  break;
               case "*":
                  this.§_-xB§();
                  while(true)
                  {
                     if(this.§_-lz§ == "*")
                     {
                        this.§_-xB§();
                        if(this.§_-lz§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-xB§();
                     }
                     if(this.§_-lz§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-xB§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-lz§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-MO§() : void
      {
         while(this.§_-Um§(this.§_-lz§))
         {
            this.§_-xB§();
         }
      }
      
      private function §_-Um§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-Kg§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-HH§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-On§(param1:String) : Boolean
      {
         return this.§_-HH§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-v5§,this.§_-r9§);
      }
   }
}
