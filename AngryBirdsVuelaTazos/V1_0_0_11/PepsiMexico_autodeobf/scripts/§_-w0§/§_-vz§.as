package §_-w0§
{
   public class §_-vz§
   {
       
      
      private var §_-Q5§:Boolean;
      
      private var obj:Object;
      
      private var §_-lL§:String;
      
      private var §_-nx§:int;
      
      private var §_-lz§:String;
      
      private var §_-jY§:RegExp;
      
      public function §_-vz§(param1:String, param2:Boolean)
      {
         this.§_-jY§ = /[\x00-\x1F]/;
         super();
         this.§_-lL§ = param1;
         this.§_-Q5§ = param2;
         this.§_-nx§ = 0;
         this.§_-9l§();
      }
      
      public function §_-4y§() : §_-eO§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-eO§ = new §_-eO§();
         this.§_-Pe§();
         switch(this.§_-lz§)
         {
            case "{":
               _loc1_.type = §_-76§.§_-B2§;
               _loc1_.value = "{";
               this.§_-9l§();
               break;
            case "}":
               _loc1_.type = §_-76§.§_-C1§;
               _loc1_.value = "}";
               this.§_-9l§();
               break;
            case "[":
               _loc1_.type = §_-76§.§_-PD§;
               _loc1_.value = "[";
               this.§_-9l§();
               break;
            case "]":
               _loc1_.type = §_-76§.§_-nL§;
               _loc1_.value = "]";
               this.§_-9l§();
               break;
            case ",":
               _loc1_.type = §_-76§.§_-eU§;
               _loc1_.value = ",";
               this.§_-9l§();
               break;
            case ":":
               _loc1_.type = §_-76§.§_-Y1§;
               _loc1_.value = ":";
               this.§_-9l§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-9l§() + this.§_-9l§() + this.§_-9l§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-76§.TRUE;
                  _loc1_.value = true;
                  this.§_-9l§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-9l§() + this.§_-9l§() + this.§_-9l§() + this.§_-9l§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-76§.FALSE;
                  _loc1_.value = false;
                  this.§_-9l§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-9l§() + this.§_-9l§() + this.§_-9l§()) == "null")
               {
                  _loc1_.type = §_-76§.§_-VK§;
                  _loc1_.value = null;
                  this.§_-9l§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-9l§() + this.§_-9l§()) == "NaN")
               {
                  _loc1_.type = §_-76§.§_-rF§;
                  _loc1_.value = NaN;
                  this.§_-9l§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-Mf§();
               break;
            default:
               if(this.§_-sV§(this.§_-lz§) || this.§_-lz§ == "-")
               {
                  _loc1_ = this.§_-b8§();
                  break;
               }
               if(this.§_-lz§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-lz§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-Mf§() : §_-eO§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-nx§;
         while(true)
         {
            _loc1_ = this.§_-lL§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-lL§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-eO§ = new §_-eO§();
         _loc2_.type = §_-76§.§_-sY§;
         _loc2_.value = this.§_-lo§(this.§_-lL§.substr(this.§_-nx§,_loc1_ - this.§_-nx§));
         this.§_-nx§ = _loc1_ + 1;
         this.§_-9l§();
         return _loc2_;
      }
      
      public function §_-lo§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-Q5§ && this.§_-jY§.test(param1))
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
                     if(!this.§_-H8§(_loc10_))
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
      
      private function §_-b8§() : §_-eO§
      {
         var _loc3_:§_-eO§ = null;
         var _loc1_:* = "";
         if(this.§_-lz§ == "-")
         {
            _loc1_ += "-";
            this.§_-9l§();
         }
         if(!this.§_-sV§(this.§_-lz§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-lz§ == "0")
         {
            _loc1_ += this.§_-lz§;
            this.§_-9l§();
            if(this.§_-sV§(this.§_-lz§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-Q5§ && this.§_-lz§ == "x")
            {
               _loc1_ += this.§_-lz§;
               this.§_-9l§();
               if(this.§_-H8§(this.§_-lz§))
               {
                  _loc1_ += this.§_-lz§;
                  this.§_-9l§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-H8§(this.§_-lz§))
               {
                  _loc1_ += this.§_-lz§;
                  this.§_-9l§();
               }
            }
         }
         else
         {
            while(this.§_-sV§(this.§_-lz§))
            {
               _loc1_ += this.§_-lz§;
               this.§_-9l§();
            }
         }
         if(this.§_-lz§ == ".")
         {
            _loc1_ += ".";
            this.§_-9l§();
            if(!this.§_-sV§(this.§_-lz§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-sV§(this.§_-lz§))
            {
               _loc1_ += this.§_-lz§;
               this.§_-9l§();
            }
         }
         if(this.§_-lz§ == "e" || this.§_-lz§ == "E")
         {
            _loc1_ += "e";
            this.§_-9l§();
            if(this.§_-lz§ == "+" || this.§_-lz§ == "-")
            {
               _loc1_ += this.§_-lz§;
               this.§_-9l§();
            }
            if(!this.§_-sV§(this.§_-lz§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-sV§(this.§_-lz§))
            {
               _loc1_ += this.§_-lz§;
               this.§_-9l§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-eO§();
            _loc3_.type = §_-76§.§_-B9§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-9l§() : String
      {
         return this.§_-lz§ = this.§_-lL§.charAt(this.§_-nx§++);
      }
      
      private function §_-Pe§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-nx§;
            this.§_-Hi§();
            this.§_-Jx§();
         }
         while(_loc1_ != this.§_-nx§);
         
      }
      
      private function §_-Jx§() : void
      {
         if(this.§_-lz§ == "/")
         {
            this.§_-9l§();
            switch(this.§_-lz§)
            {
               case "/":
                  do
                  {
                     this.§_-9l§();
                  }
                  while(this.§_-lz§ != "\n" && this.§_-lz§ != "");
                  
                  this.§_-9l§();
                  break;
               case "*":
                  this.§_-9l§();
                  while(true)
                  {
                     if(this.§_-lz§ == "*")
                     {
                        this.§_-9l§();
                        if(this.§_-lz§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-9l§();
                     }
                     if(this.§_-lz§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-9l§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-lz§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-Hi§() : void
      {
         while(this.§_-dJ§(this.§_-lz§))
         {
            this.§_-9l§();
         }
      }
      
      private function §_-dJ§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-Q5§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-sV§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-H8§(param1:String) : Boolean
      {
         return this.§_-sV§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-nx§,this.§_-lL§);
      }
   }
}
