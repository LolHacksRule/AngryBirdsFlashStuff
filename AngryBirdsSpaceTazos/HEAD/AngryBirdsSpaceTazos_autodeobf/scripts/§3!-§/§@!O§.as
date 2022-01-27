package §3!-§
{
   public class §@!O§
   {
       
      
      private var §^"4§:Boolean;
      
      private var §0=§:Object;
      
      private var jsonString:String;
      
      private var §%j§:int;
      
      private var §0!k§:String;
      
      private var §^W§:RegExp;
      
      public function §@!O§(param1:String, param2:Boolean)
      {
         this.§^W§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§^"4§ = param2;
         this.§%j§ = 0;
         this.§4I§();
      }
      
      public function §[!C§() : §<!+§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§<!+§ = new §<!+§();
         this.§ ! §();
         switch(this.§0!k§)
         {
            case "{":
               _loc1_.type = §+!U§.§false§;
               _loc1_.value = "{";
               this.§4I§();
               break;
            case "}":
               _loc1_.type = §+!U§.§@J§;
               _loc1_.value = "}";
               this.§4I§();
               break;
            case "[":
               _loc1_.type = §+!U§.§<"2§;
               _loc1_.value = "[";
               this.§4I§();
               break;
            case "]":
               _loc1_.type = §+!U§.§6!j§;
               _loc1_.value = "]";
               this.§4I§();
               break;
            case ",":
               _loc1_.type = §+!U§.§?"C§;
               _loc1_.value = ",";
               this.§4I§();
               break;
            case ":":
               _loc1_.type = §+!U§.§7"1§;
               _loc1_.value = ":";
               this.§4I§();
               break;
            case "t":
               _loc2_ = "t" + this.§4I§() + this.§4I§() + this.§4I§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §+!U§.TRUE;
                  _loc1_.value = true;
                  this.§4I§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§4I§() + this.§4I§() + this.§4I§() + this.§4I§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §+!U§.FALSE;
                  _loc1_.value = false;
                  this.§4I§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§4I§() + this.§4I§() + this.§4I§()) == "null")
               {
                  _loc1_.type = §+!U§.NULL;
                  _loc1_.value = null;
                  this.§4I§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§4I§() + this.§4I§()) == "NaN")
               {
                  _loc1_.type = §+!U§.§!!k§;
                  _loc1_.value = NaN;
                  this.§4I§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§ use§();
               break;
            default:
               if(this.§?!8§(this.§0!k§) || this.§0!k§ == "-")
               {
                  _loc1_ = this.§?§();
                  break;
               }
               if(this.§0!k§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§0!k§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function § use§() : §<!+§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§%j§;
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
         var _loc2_:§<!+§ = new §<!+§();
         _loc2_.type = §+!U§.§1"!§;
         _loc2_.value = this.§-"!§(this.jsonString.substr(this.§%j§,_loc1_ - this.§%j§));
         this.§%j§ = _loc1_ + 1;
         this.§4I§();
         return _loc2_;
      }
      
      public function §-"!§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§^"4§ && this.§^W§.test(param1))
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
                     if(!this.§>"B§(_loc10_))
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
      
      private function §?§() : §<!+§
      {
         var _loc3_:§<!+§ = null;
         var _loc1_:* = "";
         if(this.§0!k§ == "-")
         {
            _loc1_ += "-";
            this.§4I§();
         }
         if(!this.§?!8§(this.§0!k§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§0!k§ == "0")
         {
            _loc1_ += this.§0!k§;
            this.§4I§();
            if(this.§?!8§(this.§0!k§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§^"4§ && this.§0!k§ == "x")
            {
               _loc1_ += this.§0!k§;
               this.§4I§();
               if(this.§>"B§(this.§0!k§))
               {
                  _loc1_ += this.§0!k§;
                  this.§4I§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§>"B§(this.§0!k§))
               {
                  _loc1_ += this.§0!k§;
                  this.§4I§();
               }
            }
         }
         else
         {
            while(this.§?!8§(this.§0!k§))
            {
               _loc1_ += this.§0!k§;
               this.§4I§();
            }
         }
         if(this.§0!k§ == ".")
         {
            _loc1_ += ".";
            this.§4I§();
            if(!this.§?!8§(this.§0!k§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§?!8§(this.§0!k§))
            {
               _loc1_ += this.§0!k§;
               this.§4I§();
            }
         }
         if(this.§0!k§ == "e" || this.§0!k§ == "E")
         {
            _loc1_ += "e";
            this.§4I§();
            if(this.§0!k§ == "+" || this.§0!k§ == "-")
            {
               _loc1_ += this.§0!k§;
               this.§4I§();
            }
            if(!this.§?!8§(this.§0!k§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§?!8§(this.§0!k§))
            {
               _loc1_ += this.§0!k§;
               this.§4I§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §<!+§();
            _loc3_.type = §+!U§.§7R§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §4I§() : String
      {
         return this.§0!k§ = this.jsonString.charAt(this.§%j§++);
      }
      
      private function § ! §() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§%j§;
            this.§=&§();
            this.§[!O§();
         }
         while(_loc1_ != this.§%j§);
         
      }
      
      private function §[!O§() : void
      {
         if(this.§0!k§ == "/")
         {
            this.§4I§();
            switch(this.§0!k§)
            {
               case "/":
                  do
                  {
                     this.§4I§();
                  }
                  while(this.§0!k§ != "\n" && this.§0!k§ != "");
                  
                  this.§4I§();
                  break;
               case "*":
                  this.§4I§();
                  while(true)
                  {
                     if(this.§0!k§ == "*")
                     {
                        this.§4I§();
                        if(this.§0!k§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§4I§();
                     }
                     if(this.§0!k§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§4I§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§0!k§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §=&§() : void
      {
         while(this.§7e§(this.§0!k§))
         {
            this.§4I§();
         }
      }
      
      private function §7e§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§^"4§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §?!8§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §>"B§(param1:String) : Boolean
      {
         return this.§?!8§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§%j§,this.jsonString);
      }
   }
}
