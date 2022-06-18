package §5#§
{
   public class §9!$§
   {
       
      
      private var §%!P§:Boolean;
      
      private var obj:Object;
      
      private var §+`§:String;
      
      private var §^!I§:int;
      
      private var §%!Q§:String;
      
      private var §,f§:RegExp;
      
      public function §9!$§(param1:String, param2:Boolean)
      {
         this.§,f§ = /[\x00-\x1F]/;
         super();
         this.§+`§ = param1;
         this.§%!P§ = param2;
         this.§^!I§ = 0;
         this.§"!6§();
      }
      
      public function §^!7§() : §'1§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§'1§ = new §'1§();
         this.§5Y§();
         switch(this.§%!Q§)
         {
            case "{":
               _loc1_.type = §#!C§.§6!W§;
               _loc1_.value = "{";
               this.§"!6§();
               break;
            case "}":
               _loc1_.type = §#!C§.§"!@§;
               _loc1_.value = "}";
               this.§"!6§();
               break;
            case "[":
               _loc1_.type = §#!C§.§1!D§;
               _loc1_.value = "[";
               this.§"!6§();
               break;
            case "]":
               _loc1_.type = §#!C§.§!!I§;
               _loc1_.value = "]";
               this.§"!6§();
               break;
            case ",":
               _loc1_.type = §#!C§.§5v§;
               _loc1_.value = ",";
               this.§"!6§();
               break;
            case ":":
               _loc1_.type = §#!C§.§+@§;
               _loc1_.value = ":";
               this.§"!6§();
               break;
            case "t":
               _loc2_ = "t" + this.§"!6§() + this.§"!6§() + this.§"!6§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §#!C§.TRUE;
                  _loc1_.value = true;
                  this.§"!6§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§"!6§() + this.§"!6§() + this.§"!6§() + this.§"!6§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §#!C§.FALSE;
                  _loc1_.value = false;
                  this.§"!6§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§"!6§() + this.§"!6§() + this.§"!6§()) == "null")
               {
                  _loc1_.type = §#!C§.§7!2§;
                  _loc1_.value = null;
                  this.§"!6§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§"!6§() + this.§"!6§()) == "NaN")
               {
                  _loc1_.type = §#!C§.§[!Q§;
                  _loc1_.value = NaN;
                  this.§"!6§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§0r§();
               break;
            default:
               if(this.§[!&§(this.§%!Q§) || this.§%!Q§ == "-")
               {
                  _loc1_ = this.§9!N§();
                  break;
               }
               if(this.§%!Q§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§%!Q§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §0r§() : §'1§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§^!I§;
         while(true)
         {
            _loc1_ = this.§+`§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§+`§.charAt(_loc4_) == "\\")
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
         var _loc2_:§'1§ = new §'1§();
         _loc2_.type = §#!C§.§=1§;
         _loc2_.value = this.§#F§(this.§+`§.substr(this.§^!I§,_loc1_ - this.§^!I§));
         this.§^!I§ = _loc1_ + 1;
         this.§"!6§();
         return _loc2_;
      }
      
      public function §#F§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§%!P§ && this.§,f§.test(param1))
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
                     if(!this.§;f§(_loc10_))
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
      
      private function §9!N§() : §'1§
      {
         var _loc3_:§'1§ = null;
         var _loc1_:* = "";
         if(this.§%!Q§ == "-")
         {
            _loc1_ += "-";
            this.§"!6§();
         }
         if(!this.§[!&§(this.§%!Q§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§%!Q§ == "0")
         {
            _loc1_ += this.§%!Q§;
            this.§"!6§();
            if(this.§[!&§(this.§%!Q§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§%!P§ && this.§%!Q§ == "x")
            {
               _loc1_ += this.§%!Q§;
               this.§"!6§();
               if(this.§;f§(this.§%!Q§))
               {
                  _loc1_ += this.§%!Q§;
                  this.§"!6§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§;f§(this.§%!Q§))
               {
                  _loc1_ += this.§%!Q§;
                  this.§"!6§();
               }
            }
         }
         else
         {
            while(this.§[!&§(this.§%!Q§))
            {
               _loc1_ += this.§%!Q§;
               this.§"!6§();
            }
         }
         if(this.§%!Q§ == ".")
         {
            _loc1_ += ".";
            this.§"!6§();
            if(!this.§[!&§(this.§%!Q§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§[!&§(this.§%!Q§))
            {
               _loc1_ += this.§%!Q§;
               this.§"!6§();
            }
         }
         if(this.§%!Q§ == "e" || this.§%!Q§ == "E")
         {
            _loc1_ += "e";
            this.§"!6§();
            if(this.§%!Q§ == "+" || this.§%!Q§ == "-")
            {
               _loc1_ += this.§%!Q§;
               this.§"!6§();
            }
            if(!this.§[!&§(this.§%!Q§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§[!&§(this.§%!Q§))
            {
               _loc1_ += this.§%!Q§;
               this.§"!6§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §'1§();
            _loc3_.type = §#!C§.§=!E§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §"!6§() : String
      {
         return this.§%!Q§ = this.§+`§.charAt(this.§^!I§++);
      }
      
      private function §5Y§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§^!I§;
            this.§&7§();
            this.§<J§();
         }
         while(_loc1_ != this.§^!I§);
         
      }
      
      private function §<J§() : void
      {
         if(this.§%!Q§ == "/")
         {
            this.§"!6§();
            switch(this.§%!Q§)
            {
               case "/":
                  do
                  {
                     this.§"!6§();
                  }
                  while(this.§%!Q§ != "\n" && this.§%!Q§ != "");
                  
                  this.§"!6§();
                  break;
               case "*":
                  this.§"!6§();
                  while(true)
                  {
                     if(this.§%!Q§ == "*")
                     {
                        this.§"!6§();
                        if(this.§%!Q§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§"!6§();
                     }
                     if(this.§%!Q§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§"!6§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§%!Q§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §&7§() : void
      {
         while(this.§ +§(this.§%!Q§))
         {
            this.§"!6§();
         }
      }
      
      private function § +§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§%!P§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §[!&§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §;f§(param1:String) : Boolean
      {
         return this.§[!&§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§^!I§,this.§+`§);
      }
   }
}
