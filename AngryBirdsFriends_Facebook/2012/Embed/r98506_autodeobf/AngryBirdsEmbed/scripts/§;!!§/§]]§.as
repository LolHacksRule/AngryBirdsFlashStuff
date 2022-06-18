package §;!!§
{
   public class §]]§
   {
       
      
      private var §[!B§:Boolean;
      
      private var obj:Object;
      
      private var §6!?§:String;
      
      private var §+!+§:int;
      
      private var §1&§:String;
      
      private var §'!?§:RegExp;
      
      public function §]]§(param1:String, param2:Boolean)
      {
         this.§'!?§ = /[\x00-\x1F]/;
         super();
         this.§6!?§ = param1;
         this.§[!B§ = param2;
         this.§+!+§ = 0;
         this.§2q§();
      }
      
      public function §!!+§() : §5F§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§5F§ = new §5F§();
         this.§ !+§();
         switch(this.§1&§)
         {
            case "{":
               _loc1_.type = §7>§.§4I§;
               _loc1_.value = "{";
               this.§2q§();
               break;
            case "}":
               _loc1_.type = §7>§.§]9§;
               _loc1_.value = "}";
               this.§2q§();
               break;
            case "[":
               _loc1_.type = §7>§.§1!6§;
               _loc1_.value = "[";
               this.§2q§();
               break;
            case "]":
               _loc1_.type = §7>§.§!r§;
               _loc1_.value = "]";
               this.§2q§();
               break;
            case ",":
               _loc1_.type = §7>§.§=!$§;
               _loc1_.value = ",";
               this.§2q§();
               break;
            case ":":
               _loc1_.type = §7>§.§"!<§;
               _loc1_.value = ":";
               this.§2q§();
               break;
            case "t":
               _loc2_ = "t" + this.§2q§() + this.§2q§() + this.§2q§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §7>§.TRUE;
                  _loc1_.value = true;
                  this.§2q§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§2q§() + this.§2q§() + this.§2q§() + this.§2q§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §7>§.FALSE;
                  _loc1_.value = false;
                  this.§2q§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§2q§() + this.§2q§() + this.§2q§()) == "null")
               {
                  _loc1_.type = §7>§.NULL;
                  _loc1_.value = null;
                  this.§2q§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§2q§() + this.§2q§()) == "NaN")
               {
                  _loc1_.type = §7>§.§]V§;
                  _loc1_.value = NaN;
                  this.§2q§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§9!H§();
               break;
            default:
               if(this.§4P§(this.§1&§) || this.§1&§ == "-")
               {
                  _loc1_ = this.§=q§();
                  break;
               }
               if(this.§1&§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§1&§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §9!H§() : §5F§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+!+§;
         while(true)
         {
            _loc1_ = this.§6!?§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§6!?§.charAt(_loc4_) == "\\")
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
         var _loc2_:§5F§ = new §5F§();
         _loc2_.type = §7>§.§`!D§;
         _loc2_.value = this.§<y§(this.§6!?§.substr(this.§+!+§,_loc1_ - this.§+!+§));
         this.§+!+§ = _loc1_ + 1;
         this.§2q§();
         return _loc2_;
      }
      
      public function §<y§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§[!B§ && this.§'!?§.test(param1))
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
                     if(!this.§#&§(_loc10_))
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
      
      private function §=q§() : §5F§
      {
         var _loc3_:§5F§ = null;
         var _loc1_:* = "";
         if(this.§1&§ == "-")
         {
            _loc1_ += "-";
            this.§2q§();
         }
         if(!this.§4P§(this.§1&§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§1&§ == "0")
         {
            _loc1_ += this.§1&§;
            this.§2q§();
            if(this.§4P§(this.§1&§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§[!B§ && this.§1&§ == "x")
            {
               _loc1_ += this.§1&§;
               this.§2q§();
               if(this.§#&§(this.§1&§))
               {
                  _loc1_ += this.§1&§;
                  this.§2q§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§#&§(this.§1&§))
               {
                  _loc1_ += this.§1&§;
                  this.§2q§();
               }
            }
         }
         else
         {
            while(this.§4P§(this.§1&§))
            {
               _loc1_ += this.§1&§;
               this.§2q§();
            }
         }
         if(this.§1&§ == ".")
         {
            _loc1_ += ".";
            this.§2q§();
            if(!this.§4P§(this.§1&§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§4P§(this.§1&§))
            {
               _loc1_ += this.§1&§;
               this.§2q§();
            }
         }
         if(this.§1&§ == "e" || this.§1&§ == "E")
         {
            _loc1_ += "e";
            this.§2q§();
            if(this.§1&§ == "+" || this.§1&§ == "-")
            {
               _loc1_ += this.§1&§;
               this.§2q§();
            }
            if(!this.§4P§(this.§1&§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§4P§(this.§1&§))
            {
               _loc1_ += this.§1&§;
               this.§2q§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §5F§();
            _loc3_.type = §7>§.§2!3§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §2q§() : String
      {
         return this.§1&§ = this.§6!?§.charAt(this.§+!+§++);
      }
      
      private function § !+§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+!+§;
            this.§0!#§();
            this.§ !G§();
         }
         while(_loc1_ != this.§+!+§);
         
      }
      
      private function § !G§() : void
      {
         if(this.§1&§ == "/")
         {
            this.§2q§();
            switch(this.§1&§)
            {
               case "/":
                  do
                  {
                     this.§2q§();
                  }
                  while(this.§1&§ != "\n" && this.§1&§ != "");
                  
                  this.§2q§();
                  break;
               case "*":
                  this.§2q§();
                  while(true)
                  {
                     if(this.§1&§ == "*")
                     {
                        this.§2q§();
                        if(this.§1&§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§2q§();
                     }
                     if(this.§1&§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§2q§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§1&§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §0!#§() : void
      {
         while(this.§=K§(this.§1&§))
         {
            this.§2q§();
         }
      }
      
      private function §=K§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§[!B§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §4P§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §#&§(param1:String) : Boolean
      {
         return this.§4P§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+!+§,this.§6!?§);
      }
   }
}
