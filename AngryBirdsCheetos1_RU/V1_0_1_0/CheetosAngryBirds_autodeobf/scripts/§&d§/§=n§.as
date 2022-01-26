package §&d§
{
   public class §=n§
   {
       
      
      private var §60§:Boolean;
      
      private var obj:Object;
      
      private var §!R§:String;
      
      private var §6!>§:int;
      
      private var §0!-§:String;
      
      private var §2t§:RegExp;
      
      public function §=n§(param1:String, param2:Boolean)
      {
         this.§2t§ = /[\x00-\x1F]/;
         super();
         this.§!R§ = param1;
         this.§60§ = param2;
         this.§6!>§ = 0;
         this.§3!!§();
      }
      
      public function §9N§() : §4§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§4§ = new §4§();
         this.§8!0§();
         switch(this.§0!-§)
         {
            case "{":
               _loc1_.type = §94§.§>J§;
               _loc1_.value = "{";
               this.§3!!§();
               break;
            case "}":
               _loc1_.type = §94§.§ !H§;
               _loc1_.value = "}";
               this.§3!!§();
               break;
            case "[":
               _loc1_.type = §94§.§@b§;
               _loc1_.value = "[";
               this.§3!!§();
               break;
            case "]":
               _loc1_.type = §94§.§?!_§;
               _loc1_.value = "]";
               this.§3!!§();
               break;
            case ",":
               _loc1_.type = §94§.§;r§;
               _loc1_.value = ",";
               this.§3!!§();
               break;
            case ":":
               _loc1_.type = §94§.§+p§;
               _loc1_.value = ":";
               this.§3!!§();
               break;
            case "t":
               _loc2_ = "t" + this.§3!!§() + this.§3!!§() + this.§3!!§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §94§.TRUE;
                  _loc1_.value = true;
                  this.§3!!§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§3!!§() + this.§3!!§() + this.§3!!§() + this.§3!!§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §94§.FALSE;
                  _loc1_.value = false;
                  this.§3!!§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§3!!§() + this.§3!!§() + this.§3!!§()) == "null")
               {
                  _loc1_.type = §94§.§"!M§;
                  _loc1_.value = null;
                  this.§3!!§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§3!!§() + this.§3!!§()) == "NaN")
               {
                  _loc1_.type = §94§.§3g§;
                  _loc1_.value = NaN;
                  this.§3!!§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§#W§();
               break;
            default:
               if(this.§=2§(this.§0!-§) || this.§0!-§ == "-")
               {
                  _loc1_ = this.§ !@§();
                  break;
               }
               if(this.§0!-§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§0!-§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §#W§() : §4§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§6!>§;
         while(true)
         {
            _loc1_ = this.§!R§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§!R§.charAt(_loc4_) == "\\")
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
         var _loc2_:§4§ = new §4§();
         _loc2_.type = §94§.§==§;
         _loc2_.value = this.§#!C§(this.§!R§.substr(this.§6!>§,_loc1_ - this.§6!>§));
         this.§6!>§ = _loc1_ + 1;
         this.§3!!§();
         return _loc2_;
      }
      
      public function §#!C§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§60§ && this.§2t§.test(param1))
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
                     if(!this.§1T§(_loc10_))
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
      
      private function § !@§() : §4§
      {
         var _loc3_:§4§ = null;
         var _loc1_:* = "";
         if(this.§0!-§ == "-")
         {
            _loc1_ += "-";
            this.§3!!§();
         }
         if(!this.§=2§(this.§0!-§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§0!-§ == "0")
         {
            _loc1_ += this.§0!-§;
            this.§3!!§();
            if(this.§=2§(this.§0!-§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§60§ && this.§0!-§ == "x")
            {
               _loc1_ += this.§0!-§;
               this.§3!!§();
               if(this.§1T§(this.§0!-§))
               {
                  _loc1_ += this.§0!-§;
                  this.§3!!§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§1T§(this.§0!-§))
               {
                  _loc1_ += this.§0!-§;
                  this.§3!!§();
               }
            }
         }
         else
         {
            while(this.§=2§(this.§0!-§))
            {
               _loc1_ += this.§0!-§;
               this.§3!!§();
            }
         }
         if(this.§0!-§ == ".")
         {
            _loc1_ += ".";
            this.§3!!§();
            if(!this.§=2§(this.§0!-§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§=2§(this.§0!-§))
            {
               _loc1_ += this.§0!-§;
               this.§3!!§();
            }
         }
         if(this.§0!-§ == "e" || this.§0!-§ == "E")
         {
            _loc1_ += "e";
            this.§3!!§();
            if(this.§0!-§ == "+" || this.§0!-§ == "-")
            {
               _loc1_ += this.§0!-§;
               this.§3!!§();
            }
            if(!this.§=2§(this.§0!-§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§=2§(this.§0!-§))
            {
               _loc1_ += this.§0!-§;
               this.§3!!§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §4§();
            _loc3_.type = §94§.§5!F§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §3!!§() : String
      {
         return this.§0!-§ = this.§!R§.charAt(this.§6!>§++);
      }
      
      private function §8!0§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§6!>§;
            this.§7!§();
            this.§7l§();
         }
         while(_loc1_ != this.§6!>§);
         
      }
      
      private function §7l§() : void
      {
         if(this.§0!-§ == "/")
         {
            this.§3!!§();
            switch(this.§0!-§)
            {
               case "/":
                  do
                  {
                     this.§3!!§();
                  }
                  while(this.§0!-§ != "\n" && this.§0!-§ != "");
                  
                  this.§3!!§();
                  break;
               case "*":
                  this.§3!!§();
                  while(true)
                  {
                     if(this.§0!-§ == "*")
                     {
                        this.§3!!§();
                        if(this.§0!-§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§3!!§();
                     }
                     if(this.§0!-§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§3!!§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§0!-§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §7!§() : void
      {
         while(this.§@!O§(this.§0!-§))
         {
            this.§3!!§();
         }
      }
      
      private function §@!O§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§60§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §=2§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §1T§(param1:String) : Boolean
      {
         return this.§=2§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§6!>§,this.§!R§);
      }
   }
}
