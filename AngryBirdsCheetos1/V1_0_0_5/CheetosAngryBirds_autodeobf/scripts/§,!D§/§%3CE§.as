package §,!D§
{
   public class §<E§
   {
       
      
      private var §3!U§:Boolean;
      
      private var obj:Object;
      
      private var §=!$§:String;
      
      private var §1x§:int;
      
      private var §>!5§:String;
      
      private var §%!X§:RegExp;
      
      public function §<E§(param1:String, param2:Boolean)
      {
         this.§%!X§ = /[\x00-\x1F]/;
         super();
         this.§=!$§ = param1;
         this.§3!U§ = param2;
         this.§1x§ = 0;
         this.§=u§();
      }
      
      public function § w§() : §8! §
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§8! § = new §8! §();
         this.§^+§();
         switch(this.§>!5§)
         {
            case "{":
               _loc1_.type = §@!5§.§%9§;
               _loc1_.value = "{";
               this.§=u§();
               break;
            case "}":
               _loc1_.type = §@!5§.§;#§;
               _loc1_.value = "}";
               this.§=u§();
               break;
            case "[":
               _loc1_.type = §@!5§.§]!B§;
               _loc1_.value = "[";
               this.§=u§();
               break;
            case "]":
               _loc1_.type = §@!5§.§!!T§;
               _loc1_.value = "]";
               this.§=u§();
               break;
            case ",":
               _loc1_.type = §@!5§.§2D§;
               _loc1_.value = ",";
               this.§=u§();
               break;
            case ":":
               _loc1_.type = §@!5§.§3b§;
               _loc1_.value = ":";
               this.§=u§();
               break;
            case "t":
               _loc2_ = "t" + this.§=u§() + this.§=u§() + this.§=u§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §@!5§.TRUE;
                  _loc1_.value = true;
                  this.§=u§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§=u§() + this.§=u§() + this.§=u§() + this.§=u§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §@!5§.FALSE;
                  _loc1_.value = false;
                  this.§=u§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§=u§() + this.§=u§() + this.§=u§()) == "null")
               {
                  _loc1_.type = §@!5§.§-!-§;
                  _loc1_.value = null;
                  this.§=u§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§=u§() + this.§=u§()) == "NaN")
               {
                  _loc1_.type = §@!5§.§;!,§;
                  _loc1_.value = NaN;
                  this.§=u§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§?!I§();
               break;
            default:
               if(this.§13§(this.§>!5§) || this.§>!5§ == "-")
               {
                  _loc1_ = this.§&!G§();
                  break;
               }
               if(this.§>!5§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§>!5§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §?!I§() : §8! §
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§1x§;
         while(true)
         {
            _loc1_ = this.§=!$§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§=!$§.charAt(_loc4_) == "\\")
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
         var _loc2_:§8! § = new §8! §();
         _loc2_.type = §@!5§.§#M§;
         _loc2_.value = this.§>!#§(this.§=!$§.substr(this.§1x§,_loc1_ - this.§1x§));
         this.§1x§ = _loc1_ + 1;
         this.§=u§();
         return _loc2_;
      }
      
      public function §>!#§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§3!U§ && this.§%!X§.test(param1))
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
                     if(!this.§%!H§(_loc10_))
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
      
      private function §&!G§() : §8! §
      {
         var _loc3_:§8! § = null;
         var _loc1_:* = "";
         if(this.§>!5§ == "-")
         {
            _loc1_ += "-";
            this.§=u§();
         }
         if(!this.§13§(this.§>!5§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§>!5§ == "0")
         {
            _loc1_ += this.§>!5§;
            this.§=u§();
            if(this.§13§(this.§>!5§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§3!U§ && this.§>!5§ == "x")
            {
               _loc1_ += this.§>!5§;
               this.§=u§();
               if(this.§%!H§(this.§>!5§))
               {
                  _loc1_ += this.§>!5§;
                  this.§=u§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§%!H§(this.§>!5§))
               {
                  _loc1_ += this.§>!5§;
                  this.§=u§();
               }
            }
         }
         else
         {
            while(this.§13§(this.§>!5§))
            {
               _loc1_ += this.§>!5§;
               this.§=u§();
            }
         }
         if(this.§>!5§ == ".")
         {
            _loc1_ += ".";
            this.§=u§();
            if(!this.§13§(this.§>!5§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§13§(this.§>!5§))
            {
               _loc1_ += this.§>!5§;
               this.§=u§();
            }
         }
         if(this.§>!5§ == "e" || this.§>!5§ == "E")
         {
            _loc1_ += "e";
            this.§=u§();
            if(this.§>!5§ == "+" || this.§>!5§ == "-")
            {
               _loc1_ += this.§>!5§;
               this.§=u§();
            }
            if(!this.§13§(this.§>!5§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§13§(this.§>!5§))
            {
               _loc1_ += this.§>!5§;
               this.§=u§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §8! §();
            _loc3_.type = §@!5§.§8!!§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §=u§() : String
      {
         return this.§>!5§ = this.§=!$§.charAt(this.§1x§++);
      }
      
      private function §^+§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§1x§;
            this.§"@§();
            this.§[!O§();
         }
         while(_loc1_ != this.§1x§);
         
      }
      
      private function §[!O§() : void
      {
         if(this.§>!5§ == "/")
         {
            this.§=u§();
            switch(this.§>!5§)
            {
               case "/":
                  do
                  {
                     this.§=u§();
                  }
                  while(this.§>!5§ != "\n" && this.§>!5§ != "");
                  
                  this.§=u§();
                  break;
               case "*":
                  this.§=u§();
                  while(true)
                  {
                     if(this.§>!5§ == "*")
                     {
                        this.§=u§();
                        if(this.§>!5§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§=u§();
                     }
                     if(this.§>!5§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§=u§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§>!5§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §"@§() : void
      {
         while(this.§%!G§(this.§>!5§))
         {
            this.§=u§();
         }
      }
      
      private function §%!G§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§3!U§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §13§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §%!H§(param1:String) : Boolean
      {
         return this.§13§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§1x§,this.§=!$§);
      }
   }
}
