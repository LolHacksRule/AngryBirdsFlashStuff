package §;K§
{
   public class §^b§
   {
       
      
      private var §#o§:Boolean;
      
      private var §>!o§:Object;
      
      private var jsonString:String;
      
      private var §>" §:int;
      
      private var §8!$§:String;
      
      private var §3S§:RegExp;
      
      public function §^b§(param1:String, param2:Boolean)
      {
         this.§3S§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§#o§ = param2;
         this.§>" § = 0;
         this.§>!G§();
      }
      
      public function §3!d§() : §9!L§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§9!L§ = new §9!L§();
         this.§="%§();
         switch(this.§8!$§)
         {
            case "{":
               _loc1_.type = §1"#§.§>!F§;
               _loc1_.value = "{";
               this.§>!G§();
               break;
            case "}":
               _loc1_.type = §1"#§.§#r§;
               _loc1_.value = "}";
               this.§>!G§();
               break;
            case "[":
               _loc1_.type = §1"#§.§2i§;
               _loc1_.value = "[";
               this.§>!G§();
               break;
            case "]":
               _loc1_.type = §1"#§.§"!I§;
               _loc1_.value = "]";
               this.§>!G§();
               break;
            case ",":
               _loc1_.type = §1"#§.§=Q§;
               _loc1_.value = ",";
               this.§>!G§();
               break;
            case ":":
               _loc1_.type = §1"#§.§9!I§;
               _loc1_.value = ":";
               this.§>!G§();
               break;
            case "t":
               _loc2_ = "t" + this.§>!G§() + this.§>!G§() + this.§>!G§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §1"#§.TRUE;
                  _loc1_.value = true;
                  this.§>!G§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§>!G§() + this.§>!G§() + this.§>!G§() + this.§>!G§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §1"#§.FALSE;
                  _loc1_.value = false;
                  this.§>!G§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§>!G§() + this.§>!G§() + this.§>!G§()) == "null")
               {
                  _loc1_.type = §1"#§.NULL;
                  _loc1_.value = null;
                  this.§>!G§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§>!G§() + this.§>!G§()) == "NaN")
               {
                  _loc1_.type = §1"#§.§8!r§;
                  _loc1_.value = NaN;
                  this.§>!G§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§4! §();
               break;
            default:
               if(this.§8!h§(this.§8!$§) || this.§8!$§ == "-")
               {
                  _loc1_ = this.§%"0§();
               }
               else
               {
                  if(this.§8!$§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§8!$§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §4! §() : §9!L§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§>" §;
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
         var _loc2_:§9!L§ = new §9!L§();
         _loc2_.type = §1"#§.§!!m§;
         _loc2_.value = this.§<!<§(this.jsonString.substr(this.§>" §,_loc1_ - this.§>" §));
         this.§>" § = _loc1_ + 1;
         this.§>!G§();
         return _loc2_;
      }
      
      public function §<!<§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§#o§ && this.§3S§.test(param1))
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
                     if(!this.§&O§(_loc10_))
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
      
      private function §%"0§() : §9!L§
      {
         var _loc3_:§9!L§ = null;
         var _loc1_:* = "";
         if(this.§8!$§ == "-")
         {
            _loc1_ += "-";
            this.§>!G§();
         }
         if(!this.§8!h§(this.§8!$§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§8!$§ == "0")
         {
            _loc1_ += this.§8!$§;
            this.§>!G§();
            if(this.§8!h§(this.§8!$§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§#o§ && this.§8!$§ == "x")
            {
               _loc1_ += this.§8!$§;
               this.§>!G§();
               if(this.§&O§(this.§8!$§))
               {
                  _loc1_ += this.§8!$§;
                  this.§>!G§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§&O§(this.§8!$§))
               {
                  _loc1_ += this.§8!$§;
                  this.§>!G§();
               }
            }
         }
         else
         {
            while(this.§8!h§(this.§8!$§))
            {
               _loc1_ += this.§8!$§;
               this.§>!G§();
            }
         }
         if(this.§8!$§ == ".")
         {
            _loc1_ += ".";
            this.§>!G§();
            if(!this.§8!h§(this.§8!$§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§8!h§(this.§8!$§))
            {
               _loc1_ += this.§8!$§;
               this.§>!G§();
            }
         }
         if(this.§8!$§ == "e" || this.§8!$§ == "E")
         {
            _loc1_ += "e";
            this.§>!G§();
            if(this.§8!$§ == "+" || this.§8!$§ == "-")
            {
               _loc1_ += this.§8!$§;
               this.§>!G§();
            }
            if(!this.§8!h§(this.§8!$§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§8!h§(this.§8!$§))
            {
               _loc1_ += this.§8!$§;
               this.§>!G§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §9!L§();
            _loc3_.type = §1"#§.§@!z§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §>!G§() : String
      {
         return this.§8!$§ = this.jsonString.charAt(this.§>" §++);
      }
      
      private function §="%§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§>" §;
            this.§3>§();
            this.§#!P§();
         }
         while(_loc1_ != this.§>" §);
         
      }
      
      private function §#!P§() : void
      {
         if(this.§8!$§ == "/")
         {
            this.§>!G§();
            switch(this.§8!$§)
            {
               case "/":
                  do
                  {
                     this.§>!G§();
                  }
                  while(this.§8!$§ != "\n" && this.§8!$§ != "");
                  
                  this.§>!G§();
                  break;
               case "*":
                  this.§>!G§();
                  while(true)
                  {
                     if(this.§8!$§ == "*")
                     {
                        this.§>!G§();
                        if(this.§8!$§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§>!G§();
                     }
                     if(this.§8!$§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§>!G§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§8!$§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §3>§() : void
      {
         while(this.§;!>§(this.§8!$§))
         {
            this.§>!G§();
         }
      }
      
      private function §;!>§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§#o§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §8!h§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §&O§(param1:String) : Boolean
      {
         return this.§8!h§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§>" §,this.jsonString);
      }
   }
}
