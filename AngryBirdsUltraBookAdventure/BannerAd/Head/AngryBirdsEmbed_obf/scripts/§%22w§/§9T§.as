package §"w§
{
   public class §9T§
   {
       
      
      private var §!!%§:Boolean;
      
      private var obj:Object;
      
      private var §'!9§:String;
      
      private var §+I§:int;
      
      private var §?§:String;
      
      private var §;u§:RegExp;
      
      public function §9T§(param1:String, param2:Boolean)
      {
         this.§;u§ = /[\x00-\x1F]/;
         super();
         this.§'!9§ = param1;
         this.§!!%§ = param2;
         this.§+I§ = 0;
         this.§6o§();
      }
      
      public function §8!+§() : §^!A§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§^!A§ = new §^!A§();
         this.§;Z§();
         switch(this.§?§)
         {
            case "{":
               _loc1_.type = §return§.§<s§;
               _loc1_.value = "{";
               this.§6o§();
               break;
            case "}":
               _loc1_.type = §return§.§`$§;
               _loc1_.value = "}";
               this.§6o§();
               break;
            case "[":
               _loc1_.type = §return§.§4z§;
               _loc1_.value = "[";
               this.§6o§();
               break;
            case "]":
               _loc1_.type = §return§.§2<§;
               _loc1_.value = "]";
               this.§6o§();
               break;
            case ",":
               _loc1_.type = §return§.§]!'§;
               _loc1_.value = ",";
               this.§6o§();
               break;
            case ":":
               _loc1_.type = §return§.§?v§;
               _loc1_.value = ":";
               this.§6o§();
               break;
            case "t":
               _loc2_ = "t" + this.§6o§() + this.§6o§() + this.§6o§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §return§.TRUE;
                  _loc1_.value = true;
                  this.§6o§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§6o§() + this.§6o§() + this.§6o§() + this.§6o§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §return§.FALSE;
                  _loc1_.value = false;
                  this.§6o§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§6o§() + this.§6o§() + this.§6o§()) == "null")
               {
                  _loc1_.type = §return§.NULL;
                  _loc1_.value = null;
                  this.§6o§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§6o§() + this.§6o§()) == "NaN")
               {
                  _loc1_.type = §return§.§,! §;
                  _loc1_.value = NaN;
                  this.§6o§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§!!;§();
               break;
            default:
               if(this.§9>§(this.§?§) || this.§?§ == "-")
               {
                  _loc1_ = this.§2O§();
               }
               else
               {
                  if(this.§?§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§?§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §!!;§() : §^!A§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+I§;
         while(true)
         {
            _loc1_ = this.§'!9§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§'!9§.charAt(_loc4_) == "\\")
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
         var _loc2_:§^!A§ = new §^!A§();
         _loc2_.type = §return§.§^!!§;
         _loc2_.value = this.§#i§(this.§'!9§.substr(this.§+I§,_loc1_ - this.§+I§));
         this.§+I§ = _loc1_ + 1;
         this.§6o§();
         return _loc2_;
      }
      
      public function §#i§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§!!%§ && this.§;u§.test(param1))
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
                     if(!this.§ i§(_loc10_))
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
      
      private function §2O§() : §^!A§
      {
         var _loc3_:§^!A§ = null;
         var _loc1_:* = "";
         if(this.§?§ == "-")
         {
            _loc1_ += "-";
            this.§6o§();
         }
         if(!this.§9>§(this.§?§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§?§ == "0")
         {
            _loc1_ += this.§?§;
            this.§6o§();
            if(this.§9>§(this.§?§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§!!%§ && this.§?§ == "x")
            {
               _loc1_ += this.§?§;
               this.§6o§();
               if(this.§ i§(this.§?§))
               {
                  _loc1_ += this.§?§;
                  this.§6o§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§ i§(this.§?§))
               {
                  _loc1_ += this.§?§;
                  this.§6o§();
               }
            }
         }
         else
         {
            while(this.§9>§(this.§?§))
            {
               _loc1_ += this.§?§;
               this.§6o§();
            }
         }
         if(this.§?§ == ".")
         {
            _loc1_ += ".";
            this.§6o§();
            if(!this.§9>§(this.§?§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§9>§(this.§?§))
            {
               _loc1_ += this.§?§;
               this.§6o§();
            }
         }
         if(this.§?§ == "e" || this.§?§ == "E")
         {
            _loc1_ += "e";
            this.§6o§();
            if(this.§?§ == "+" || this.§?§ == "-")
            {
               _loc1_ += this.§?§;
               this.§6o§();
            }
            if(!this.§9>§(this.§?§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§9>§(this.§?§))
            {
               _loc1_ += this.§?§;
               this.§6o§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §^!A§();
            _loc3_.type = §return§.§[t§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §6o§() : String
      {
         return this.§?§ = this.§'!9§.charAt(this.§+I§++);
      }
      
      private function §;Z§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+I§;
            this.§0H§();
            this.§&F§();
         }
         while(_loc1_ != this.§+I§);
         
      }
      
      private function §&F§() : void
      {
         if(this.§?§ == "/")
         {
            this.§6o§();
            switch(this.§?§)
            {
               case "/":
                  do
                  {
                     this.§6o§();
                  }
                  while(this.§?§ != "\n" && this.§?§ != "");
                  
                  this.§6o§();
                  break;
               case "*":
                  this.§6o§();
                  while(true)
                  {
                     if(this.§?§ == "*")
                     {
                        this.§6o§();
                        if(this.§?§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§6o§();
                     }
                     if(this.§?§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§6o§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§?§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §0H§() : void
      {
         while(this.§+!2§(this.§?§))
         {
            this.§6o§();
         }
      }
      
      private function §+!2§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§!!%§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §9>§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function § i§(param1:String) : Boolean
      {
         return this.§9>§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+I§,this.§'!9§);
      }
   }
}
