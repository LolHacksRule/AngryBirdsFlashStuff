package §_-Eq§
{
   public class §_-3n§
   {
       
      
      private var §_-Eg§:Boolean;
      
      private var obj:Object;
      
      private var §_-oO§:String;
      
      private var §_-j9§:int;
      
      private var §_-HP§:String;
      
      private var §_-YE§:RegExp;
      
      public function §_-3n§(param1:String, param2:Boolean)
      {
         this.§_-YE§ = /[\x00-\x1F]/;
         super();
         this.§_-oO§ = param1;
         this.§_-Eg§ = param2;
         this.§_-j9§ = 0;
         this.§_-34§();
      }
      
      public function §_-ws§() : §_-Cb§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-Cb§ = new §_-Cb§();
         this.§_-ib§();
         switch(this.§_-HP§)
         {
            case "{":
               _loc1_.type = §_-cN§.§_-gW§;
               _loc1_.value = "{";
               this.§_-34§();
               break;
            case "}":
               _loc1_.type = §_-cN§.§_-mS§;
               _loc1_.value = "}";
               this.§_-34§();
               break;
            case "[":
               _loc1_.type = §_-cN§.§_-sm§;
               _loc1_.value = "[";
               this.§_-34§();
               break;
            case "]":
               _loc1_.type = §_-cN§.§_-6d§;
               _loc1_.value = "]";
               this.§_-34§();
               break;
            case ",":
               _loc1_.type = §_-cN§.§_-k-§;
               _loc1_.value = ",";
               this.§_-34§();
               break;
            case ":":
               _loc1_.type = §_-cN§.§_-w5§;
               _loc1_.value = ":";
               this.§_-34§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-34§() + this.§_-34§() + this.§_-34§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-cN§.TRUE;
                  _loc1_.value = true;
                  this.§_-34§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-34§() + this.§_-34§() + this.§_-34§() + this.§_-34§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-cN§.FALSE;
                  _loc1_.value = false;
                  this.§_-34§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-34§() + this.§_-34§() + this.§_-34§()) == "null")
               {
                  _loc1_.type = §_-cN§.§_-BU§;
                  _loc1_.value = null;
                  this.§_-34§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-34§() + this.§_-34§()) == "NaN")
               {
                  _loc1_.type = §_-cN§.§_-mJ§;
                  _loc1_.value = NaN;
                  this.§_-34§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-Tr§();
               break;
            default:
               if(this.§_-Ca§(this.§_-HP§) || this.§_-HP§ == "-")
               {
                  _loc1_ = this.§_-oH§();
                  break;
               }
               if(this.§_-HP§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-HP§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-Tr§() : §_-Cb§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-j9§;
         while(true)
         {
            _loc1_ = this.§_-oO§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-oO§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-Cb§ = new §_-Cb§();
         _loc2_.type = §_-cN§.§_-ca§;
         _loc2_.value = this.§_-wK§(this.§_-oO§.substr(this.§_-j9§,_loc1_ - this.§_-j9§));
         this.§_-j9§ = _loc1_ + 1;
         this.§_-34§();
         return _loc2_;
      }
      
      public function §_-wK§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-Eg§ && this.§_-YE§.test(param1))
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
                     if(!this.§_-yn§(_loc10_))
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
      
      private function §_-oH§() : §_-Cb§
      {
         var _loc3_:§_-Cb§ = null;
         var _loc1_:* = "";
         if(this.§_-HP§ == "-")
         {
            _loc1_ += "-";
            this.§_-34§();
         }
         if(!this.§_-Ca§(this.§_-HP§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-HP§ == "0")
         {
            _loc1_ += this.§_-HP§;
            this.§_-34§();
            if(this.§_-Ca§(this.§_-HP§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-Eg§ && this.§_-HP§ == "x")
            {
               _loc1_ += this.§_-HP§;
               this.§_-34§();
               if(this.§_-yn§(this.§_-HP§))
               {
                  _loc1_ += this.§_-HP§;
                  this.§_-34§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-yn§(this.§_-HP§))
               {
                  _loc1_ += this.§_-HP§;
                  this.§_-34§();
               }
            }
         }
         else
         {
            while(this.§_-Ca§(this.§_-HP§))
            {
               _loc1_ += this.§_-HP§;
               this.§_-34§();
            }
         }
         if(this.§_-HP§ == ".")
         {
            _loc1_ += ".";
            this.§_-34§();
            if(!this.§_-Ca§(this.§_-HP§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-Ca§(this.§_-HP§))
            {
               _loc1_ += this.§_-HP§;
               this.§_-34§();
            }
         }
         if(this.§_-HP§ == "e" || this.§_-HP§ == "E")
         {
            _loc1_ += "e";
            this.§_-34§();
            if(this.§_-HP§ == "+" || this.§_-HP§ == "-")
            {
               _loc1_ += this.§_-HP§;
               this.§_-34§();
            }
            if(!this.§_-Ca§(this.§_-HP§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-Ca§(this.§_-HP§))
            {
               _loc1_ += this.§_-HP§;
               this.§_-34§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-Cb§();
            _loc3_.type = §_-cN§.§_-bN§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-34§() : String
      {
         return this.§_-HP§ = this.§_-oO§.charAt(this.§_-j9§++);
      }
      
      private function §_-ib§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-j9§;
            this.§_-D§();
            this.§_-Oc§();
         }
         while(_loc1_ != this.§_-j9§);
         
      }
      
      private function §_-Oc§() : void
      {
         if(this.§_-HP§ == "/")
         {
            this.§_-34§();
            switch(this.§_-HP§)
            {
               case "/":
                  do
                  {
                     this.§_-34§();
                  }
                  while(this.§_-HP§ != "\n" && this.§_-HP§ != "");
                  
                  this.§_-34§();
                  break;
               case "*":
                  this.§_-34§();
                  while(true)
                  {
                     if(this.§_-HP§ == "*")
                     {
                        this.§_-34§();
                        if(this.§_-HP§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-34§();
                     }
                     if(this.§_-HP§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-34§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-HP§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-D§() : void
      {
         while(this.§_-H§(this.§_-HP§))
         {
            this.§_-34§();
         }
      }
      
      private function §_-H§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-Eg§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-Ca§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-yn§(param1:String) : Boolean
      {
         return this.§_-Ca§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-j9§,this.§_-oO§);
      }
   }
}
