package §_-s-§
{
   public class §_-d§
   {
       
      
      private var §_-8F§:Boolean;
      
      private var obj:Object;
      
      private var §_-P-§:String;
      
      private var §_-6I§:int;
      
      private var §_-2Y§:String;
      
      private var §_-yN§:RegExp;
      
      public function §_-d§(param1:String, param2:Boolean)
      {
         this.§_-yN§ = /[\x00-\x1F]/;
         super();
         this.§_-P-§ = param1;
         this.§_-8F§ = param2;
         this.§_-6I§ = 0;
         this.§_-mA§();
      }
      
      public function §_-qp§() : §_-LF§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-LF§ = new §_-LF§();
         this.§_-tF§();
         switch(this.§_-2Y§)
         {
            case "{":
               _loc1_.type = §_-t9§.§_-GG§;
               _loc1_.value = "{";
               this.§_-mA§();
               break;
            case "}":
               _loc1_.type = §_-t9§.§_-sk§;
               _loc1_.value = "}";
               this.§_-mA§();
               break;
            case "[":
               _loc1_.type = §_-t9§.§_-sl§;
               _loc1_.value = "[";
               this.§_-mA§();
               break;
            case "]":
               _loc1_.type = §_-t9§.§_-hN§;
               _loc1_.value = "]";
               this.§_-mA§();
               break;
            case ",":
               _loc1_.type = §_-t9§.§false§;
               _loc1_.value = ",";
               this.§_-mA§();
               break;
            case ":":
               _loc1_.type = §_-t9§.§_-x4§;
               _loc1_.value = ":";
               this.§_-mA§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-mA§() + this.§_-mA§() + this.§_-mA§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-t9§.TRUE;
                  _loc1_.value = true;
                  this.§_-mA§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-mA§() + this.§_-mA§() + this.§_-mA§() + this.§_-mA§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-t9§.FALSE;
                  _loc1_.value = false;
                  this.§_-mA§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-mA§() + this.§_-mA§() + this.§_-mA§()) == "null")
               {
                  _loc1_.type = §_-t9§.§_-As§;
                  _loc1_.value = null;
                  this.§_-mA§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-mA§() + this.§_-mA§()) == "NaN")
               {
                  _loc1_.type = §_-t9§.§_-dd§;
                  _loc1_.value = NaN;
                  this.§_-mA§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-Qu§();
               break;
            default:
               if(this.§_-dr§(this.§_-2Y§) || this.§_-2Y§ == "-")
               {
                  _loc1_ = this.§_-Ov§();
                  break;
               }
               if(this.§_-2Y§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-2Y§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-Qu§() : §_-LF§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-6I§;
         while(true)
         {
            _loc1_ = this.§_-P-§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-P-§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-LF§ = new §_-LF§();
         _loc2_.type = §_-t9§.§_-OD§;
         _loc2_.value = this.§_-0R§(this.§_-P-§.substr(this.§_-6I§,_loc1_ - this.§_-6I§));
         this.§_-6I§ = _loc1_ + 1;
         this.§_-mA§();
         return _loc2_;
      }
      
      public function §_-0R§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-8F§ && this.§_-yN§.test(param1))
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
                     if(!this.§_-ws§(_loc10_))
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
      
      private function §_-Ov§() : §_-LF§
      {
         var _loc3_:§_-LF§ = null;
         var _loc1_:* = "";
         if(this.§_-2Y§ == "-")
         {
            _loc1_ += "-";
            this.§_-mA§();
         }
         if(!this.§_-dr§(this.§_-2Y§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-2Y§ == "0")
         {
            _loc1_ += this.§_-2Y§;
            this.§_-mA§();
            if(this.§_-dr§(this.§_-2Y§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-8F§ && this.§_-2Y§ == "x")
            {
               _loc1_ += this.§_-2Y§;
               this.§_-mA§();
               if(this.§_-ws§(this.§_-2Y§))
               {
                  _loc1_ += this.§_-2Y§;
                  this.§_-mA§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-ws§(this.§_-2Y§))
               {
                  _loc1_ += this.§_-2Y§;
                  this.§_-mA§();
               }
            }
         }
         else
         {
            while(this.§_-dr§(this.§_-2Y§))
            {
               _loc1_ += this.§_-2Y§;
               this.§_-mA§();
            }
         }
         if(this.§_-2Y§ == ".")
         {
            _loc1_ += ".";
            this.§_-mA§();
            if(!this.§_-dr§(this.§_-2Y§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-dr§(this.§_-2Y§))
            {
               _loc1_ += this.§_-2Y§;
               this.§_-mA§();
            }
         }
         if(this.§_-2Y§ == "e" || this.§_-2Y§ == "E")
         {
            _loc1_ += "e";
            this.§_-mA§();
            if(this.§_-2Y§ == "+" || this.§_-2Y§ == "-")
            {
               _loc1_ += this.§_-2Y§;
               this.§_-mA§();
            }
            if(!this.§_-dr§(this.§_-2Y§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-dr§(this.§_-2Y§))
            {
               _loc1_ += this.§_-2Y§;
               this.§_-mA§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-LF§();
            _loc3_.type = §_-t9§.§_-yi§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-mA§() : String
      {
         return this.§_-2Y§ = this.§_-P-§.charAt(this.§_-6I§++);
      }
      
      private function §_-tF§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-6I§;
            this.§_-Um§();
            this.§_-hf§();
         }
         while(_loc1_ != this.§_-6I§);
         
      }
      
      private function §_-hf§() : void
      {
         if(this.§_-2Y§ == "/")
         {
            this.§_-mA§();
            switch(this.§_-2Y§)
            {
               case "/":
                  do
                  {
                     this.§_-mA§();
                  }
                  while(this.§_-2Y§ != "\n" && this.§_-2Y§ != "");
                  
                  this.§_-mA§();
                  break;
               case "*":
                  this.§_-mA§();
                  while(true)
                  {
                     if(this.§_-2Y§ == "*")
                     {
                        this.§_-mA§();
                        if(this.§_-2Y§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-mA§();
                     }
                     if(this.§_-2Y§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-mA§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-2Y§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-Um§() : void
      {
         while(this.§_-Ux§(this.§_-2Y§))
         {
            this.§_-mA§();
         }
      }
      
      private function §_-Ux§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-8F§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-dr§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-ws§(param1:String) : Boolean
      {
         return this.§_-dr§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-6I§,this.§_-P-§);
      }
   }
}
