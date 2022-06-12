package §?s§
{
   public class §#`§
   {
       
      
      private var §&+§:Boolean;
      
      private var obj:Object;
      
      private var §8"%§:String;
      
      private var §&X§:int;
      
      private var §;O§:String;
      
      private var §@"+§:RegExp;
      
      public function §#`§(param1:String, param2:Boolean)
      {
         this.§@"+§ = /[\x00-\x1F]/;
         super();
         this.§8"%§ = param1;
         this.§&+§ = param2;
         this.§&X§ = 0;
         this.§0!<§();
      }
      
      public function §!p§() : §@"6§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§@"6§ = new §@"6§();
         this.§#q§();
         switch(this.§;O§)
         {
            case "{":
               _loc1_.type = §2@§.§>!D§;
               _loc1_.value = "{";
               this.§0!<§();
               break;
            case "}":
               _loc1_.type = §2@§.§<!n§;
               _loc1_.value = "}";
               this.§0!<§();
               break;
            case "[":
               _loc1_.type = §2@§.§5!j§;
               _loc1_.value = "[";
               this.§0!<§();
               break;
            case "]":
               _loc1_.type = §2@§.§@f§;
               _loc1_.value = "]";
               this.§0!<§();
               break;
            case ",":
               _loc1_.type = §2@§.§<v§;
               _loc1_.value = ",";
               this.§0!<§();
               break;
            case ":":
               _loc1_.type = §2@§.§""-§;
               _loc1_.value = ":";
               this.§0!<§();
               break;
            case "t":
               _loc2_ = "t" + this.§0!<§() + this.§0!<§() + this.§0!<§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §2@§.TRUE;
                  _loc1_.value = true;
                  this.§0!<§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§0!<§() + this.§0!<§() + this.§0!<§() + this.§0!<§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §2@§.FALSE;
                  _loc1_.value = false;
                  this.§0!<§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§0!<§() + this.§0!<§() + this.§0!<§()) == "null")
               {
                  _loc1_.type = §2@§.§=U§;
                  _loc1_.value = null;
                  this.§0!<§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§0!<§() + this.§0!<§()) == "NaN")
               {
                  _loc1_.type = §2@§.§ §;
                  _loc1_.value = NaN;
                  this.§0!<§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§'!u§();
               break;
            default:
               if(this.§,o§(this.§;O§) || this.§;O§ == "-")
               {
                  _loc1_ = this.§!!r§();
                  break;
               }
               if(this.§;O§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§;O§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §'!u§() : §@"6§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§&X§;
         while(true)
         {
            _loc1_ = this.§8"%§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§8"%§.charAt(_loc4_) == "\\")
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
         var _loc2_:§@"6§ = new §@"6§();
         _loc2_.type = §2@§.§-!V§;
         _loc2_.value = this.§7H§(this.§8"%§.substr(this.§&X§,_loc1_ - this.§&X§));
         this.§&X§ = _loc1_ + 1;
         this.§0!<§();
         return _loc2_;
      }
      
      public function §7H§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§&+§ && this.§@"+§.test(param1))
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
                     if(!this.§5k§(_loc10_))
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
      
      private function §!!r§() : §@"6§
      {
         var _loc3_:§@"6§ = null;
         var _loc1_:* = "";
         if(this.§;O§ == "-")
         {
            _loc1_ += "-";
            this.§0!<§();
         }
         if(!this.§,o§(this.§;O§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§;O§ == "0")
         {
            _loc1_ += this.§;O§;
            this.§0!<§();
            if(this.§,o§(this.§;O§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§&+§ && this.§;O§ == "x")
            {
               _loc1_ += this.§;O§;
               this.§0!<§();
               if(this.§5k§(this.§;O§))
               {
                  _loc1_ += this.§;O§;
                  this.§0!<§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§5k§(this.§;O§))
               {
                  _loc1_ += this.§;O§;
                  this.§0!<§();
               }
            }
         }
         else
         {
            while(this.§,o§(this.§;O§))
            {
               _loc1_ += this.§;O§;
               this.§0!<§();
            }
         }
         if(this.§;O§ == ".")
         {
            _loc1_ += ".";
            this.§0!<§();
            if(!this.§,o§(this.§;O§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§,o§(this.§;O§))
            {
               _loc1_ += this.§;O§;
               this.§0!<§();
            }
         }
         if(this.§;O§ == "e" || this.§;O§ == "E")
         {
            _loc1_ += "e";
            this.§0!<§();
            if(this.§;O§ == "+" || this.§;O§ == "-")
            {
               _loc1_ += this.§;O§;
               this.§0!<§();
            }
            if(!this.§,o§(this.§;O§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§,o§(this.§;O§))
            {
               _loc1_ += this.§;O§;
               this.§0!<§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §@"6§();
            _loc3_.type = §2@§.§7"6§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §0!<§() : String
      {
         return this.§;O§ = this.§8"%§.charAt(this.§&X§++);
      }
      
      private function §#q§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§&X§;
            this.§^z§();
            this.§+]§();
         }
         while(_loc1_ != this.§&X§);
         
      }
      
      private function §+]§() : void
      {
         if(this.§;O§ == "/")
         {
            this.§0!<§();
            switch(this.§;O§)
            {
               case "/":
                  do
                  {
                     this.§0!<§();
                  }
                  while(this.§;O§ != "\n" && this.§;O§ != "");
                  
                  this.§0!<§();
                  break;
               case "*":
                  this.§0!<§();
                  while(true)
                  {
                     if(this.§;O§ == "*")
                     {
                        this.§0!<§();
                        if(this.§;O§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§0!<§();
                     }
                     if(this.§;O§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§0!<§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§;O§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §^z§() : void
      {
         while(this.§8!H§(this.§;O§))
         {
            this.§0!<§();
         }
      }
      
      private function §8!H§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§&+§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §,o§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §5k§(param1:String) : Boolean
      {
         return this.§,o§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§&X§,this.§8"%§);
      }
   }
}
