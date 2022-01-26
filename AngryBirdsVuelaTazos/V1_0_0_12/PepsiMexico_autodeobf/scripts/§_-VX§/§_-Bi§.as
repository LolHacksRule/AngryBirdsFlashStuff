package §_-VX§
{
   public class §_-Bi§
   {
       
      
      private var §_-OR§:Boolean;
      
      private var obj:Object;
      
      private var §_-Hi§:String;
      
      private var §_-Xg§:int;
      
      private var §_-Xv§:String;
      
      private var §_-sf§:RegExp;
      
      public function §_-Bi§(param1:String, param2:Boolean)
      {
         this.§_-sf§ = /[\x00-\x1F]/;
         super();
         this.§_-Hi§ = param1;
         this.§_-OR§ = param2;
         this.§_-Xg§ = 0;
         this.§_-ZG§();
      }
      
      public function §_-Us§() : §_-mC§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-mC§ = new §_-mC§();
         this.§_-Yr§();
         switch(this.§_-Xv§)
         {
            case "{":
               _loc1_.type = §_-SZ§.§_-ol§;
               _loc1_.value = "{";
               this.§_-ZG§();
               break;
            case "}":
               _loc1_.type = §_-SZ§.§_-sm§;
               _loc1_.value = "}";
               this.§_-ZG§();
               break;
            case "[":
               _loc1_.type = §_-SZ§.§_-eW§;
               _loc1_.value = "[";
               this.§_-ZG§();
               break;
            case "]":
               _loc1_.type = §_-SZ§.§_-fa§;
               _loc1_.value = "]";
               this.§_-ZG§();
               break;
            case ",":
               _loc1_.type = §_-SZ§.§_-2Y§;
               _loc1_.value = ",";
               this.§_-ZG§();
               break;
            case ":":
               _loc1_.type = §_-SZ§.§_-jG§;
               _loc1_.value = ":";
               this.§_-ZG§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-ZG§() + this.§_-ZG§() + this.§_-ZG§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-SZ§.TRUE;
                  _loc1_.value = true;
                  this.§_-ZG§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-ZG§() + this.§_-ZG§() + this.§_-ZG§() + this.§_-ZG§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-SZ§.FALSE;
                  _loc1_.value = false;
                  this.§_-ZG§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-ZG§() + this.§_-ZG§() + this.§_-ZG§()) == "null")
               {
                  _loc1_.type = §_-SZ§.§_-iz§;
                  _loc1_.value = null;
                  this.§_-ZG§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-ZG§() + this.§_-ZG§()) == "NaN")
               {
                  _loc1_.type = §_-SZ§.§_-eg§;
                  _loc1_.value = NaN;
                  this.§_-ZG§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-B4§();
               break;
            default:
               if(this.§_-0K§(this.§_-Xv§) || this.§_-Xv§ == "-")
               {
                  _loc1_ = this.§_-xI§();
                  break;
               }
               if(this.§_-Xv§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-Xv§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-B4§() : §_-mC§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-Xg§;
         while(true)
         {
            _loc1_ = this.§_-Hi§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-Hi§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-mC§ = new §_-mC§();
         _loc2_.type = §_-SZ§.§_-7N§;
         _loc2_.value = this.§do §(this.§_-Hi§.substr(this.§_-Xg§,_loc1_ - this.§_-Xg§));
         this.§_-Xg§ = _loc1_ + 1;
         this.§_-ZG§();
         return _loc2_;
      }
      
      public function §do §(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-OR§ && this.§_-sf§.test(param1))
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
                     if(!this.§_-pI§(_loc10_))
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
      
      private function §_-xI§() : §_-mC§
      {
         var _loc3_:§_-mC§ = null;
         var _loc1_:* = "";
         if(this.§_-Xv§ == "-")
         {
            _loc1_ += "-";
            this.§_-ZG§();
         }
         if(!this.§_-0K§(this.§_-Xv§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-Xv§ == "0")
         {
            _loc1_ += this.§_-Xv§;
            this.§_-ZG§();
            if(this.§_-0K§(this.§_-Xv§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-OR§ && this.§_-Xv§ == "x")
            {
               _loc1_ += this.§_-Xv§;
               this.§_-ZG§();
               if(this.§_-pI§(this.§_-Xv§))
               {
                  _loc1_ += this.§_-Xv§;
                  this.§_-ZG§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-pI§(this.§_-Xv§))
               {
                  _loc1_ += this.§_-Xv§;
                  this.§_-ZG§();
               }
            }
         }
         else
         {
            while(this.§_-0K§(this.§_-Xv§))
            {
               _loc1_ += this.§_-Xv§;
               this.§_-ZG§();
            }
         }
         if(this.§_-Xv§ == ".")
         {
            _loc1_ += ".";
            this.§_-ZG§();
            if(!this.§_-0K§(this.§_-Xv§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-0K§(this.§_-Xv§))
            {
               _loc1_ += this.§_-Xv§;
               this.§_-ZG§();
            }
         }
         if(this.§_-Xv§ == "e" || this.§_-Xv§ == "E")
         {
            _loc1_ += "e";
            this.§_-ZG§();
            if(this.§_-Xv§ == "+" || this.§_-Xv§ == "-")
            {
               _loc1_ += this.§_-Xv§;
               this.§_-ZG§();
            }
            if(!this.§_-0K§(this.§_-Xv§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-0K§(this.§_-Xv§))
            {
               _loc1_ += this.§_-Xv§;
               this.§_-ZG§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-mC§();
            _loc3_.type = §_-SZ§.§_-Rw§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-ZG§() : String
      {
         return this.§_-Xv§ = this.§_-Hi§.charAt(this.§_-Xg§++);
      }
      
      private function §_-Yr§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-Xg§;
            this.§_-bx§();
            this.§_-G7§();
         }
         while(_loc1_ != this.§_-Xg§);
         
      }
      
      private function §_-G7§() : void
      {
         if(this.§_-Xv§ == "/")
         {
            this.§_-ZG§();
            switch(this.§_-Xv§)
            {
               case "/":
                  do
                  {
                     this.§_-ZG§();
                  }
                  while(this.§_-Xv§ != "\n" && this.§_-Xv§ != "");
                  
                  this.§_-ZG§();
                  break;
               case "*":
                  this.§_-ZG§();
                  while(true)
                  {
                     if(this.§_-Xv§ == "*")
                     {
                        this.§_-ZG§();
                        if(this.§_-Xv§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-ZG§();
                     }
                     if(this.§_-Xv§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-ZG§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-Xv§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-bx§() : void
      {
         while(this.§_-Zl§(this.§_-Xv§))
         {
            this.§_-ZG§();
         }
      }
      
      private function §_-Zl§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-OR§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-0K§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-pI§(param1:String) : Boolean
      {
         return this.§_-0K§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-Xg§,this.§_-Hi§);
      }
   }
}
