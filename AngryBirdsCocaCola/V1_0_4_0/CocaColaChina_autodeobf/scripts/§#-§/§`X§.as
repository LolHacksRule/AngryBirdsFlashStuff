package §#-§
{
   public class §`X§
   {
       
      
      private var §7j§:Boolean;
      
      private var obj:Object;
      
      private var §8t§:String;
      
      private var §%g§:int;
      
      private var §!X§:String;
      
      private var §6O§:RegExp;
      
      public function §`X§(param1:String, param2:Boolean)
      {
         this.§6O§ = /[\x00-\x1F]/;
         super();
         this.§8t§ = param1;
         this.§7j§ = param2;
         this.§%g§ = 0;
         this.§`g§();
      }
      
      public function §-!I§() : §[!5§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§[!5§ = new §[!5§();
         this.§ !U§();
         switch(this.§!X§)
         {
            case "{":
               _loc1_.type = §5c§.§5!`§;
               _loc1_.value = "{";
               this.§`g§();
               break;
            case "}":
               _loc1_.type = §5c§.§2@§;
               _loc1_.value = "}";
               this.§`g§();
               break;
            case "[":
               _loc1_.type = §5c§.§ !O§;
               _loc1_.value = "[";
               this.§`g§();
               break;
            case "]":
               _loc1_.type = §5c§.§@w§;
               _loc1_.value = "]";
               this.§`g§();
               break;
            case ",":
               _loc1_.type = §5c§.§]u§;
               _loc1_.value = ",";
               this.§`g§();
               break;
            case ":":
               _loc1_.type = §5c§.§0!X§;
               _loc1_.value = ":";
               this.§`g§();
               break;
            case "t":
               _loc2_ = "t" + this.§`g§() + this.§`g§() + this.§`g§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §5c§.TRUE;
                  _loc1_.value = true;
                  this.§`g§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§`g§() + this.§`g§() + this.§`g§() + this.§`g§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §5c§.FALSE;
                  _loc1_.value = false;
                  this.§`g§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§`g§() + this.§`g§() + this.§`g§()) == "null")
               {
                  _loc1_.type = §5c§.§;!0§;
                  _loc1_.value = null;
                  this.§`g§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§`g§() + this.§`g§()) == "NaN")
               {
                  _loc1_.type = §5c§.§,!7§;
                  _loc1_.value = NaN;
                  this.§`g§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§<T§();
               break;
            default:
               if(this.§[!%§(this.§!X§) || this.§!X§ == "-")
               {
                  _loc1_ = this.§%!>§();
                  break;
               }
               if(this.§!X§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§!X§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §<T§() : §[!5§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§%g§;
         while(true)
         {
            _loc1_ = this.§8t§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§8t§.charAt(_loc4_) == "\\")
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
         var _loc2_:§[!5§ = new §[!5§();
         _loc2_.type = §5c§.§'h§;
         _loc2_.value = this.§ H§(this.§8t§.substr(this.§%g§,_loc1_ - this.§%g§));
         this.§%g§ = _loc1_ + 1;
         this.§`g§();
         return _loc2_;
      }
      
      public function § H§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§7j§ && this.§6O§.test(param1))
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
                     if(!this.§>^§(_loc10_))
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
      
      private function §%!>§() : §[!5§
      {
         var _loc3_:§[!5§ = null;
         var _loc1_:* = "";
         if(this.§!X§ == "-")
         {
            _loc1_ += "-";
            this.§`g§();
         }
         if(!this.§[!%§(this.§!X§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§!X§ == "0")
         {
            _loc1_ += this.§!X§;
            this.§`g§();
            if(this.§[!%§(this.§!X§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§7j§ && this.§!X§ == "x")
            {
               _loc1_ += this.§!X§;
               this.§`g§();
               if(this.§>^§(this.§!X§))
               {
                  _loc1_ += this.§!X§;
                  this.§`g§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§>^§(this.§!X§))
               {
                  _loc1_ += this.§!X§;
                  this.§`g§();
               }
            }
         }
         else
         {
            while(this.§[!%§(this.§!X§))
            {
               _loc1_ += this.§!X§;
               this.§`g§();
            }
         }
         if(this.§!X§ == ".")
         {
            _loc1_ += ".";
            this.§`g§();
            if(!this.§[!%§(this.§!X§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§[!%§(this.§!X§))
            {
               _loc1_ += this.§!X§;
               this.§`g§();
            }
         }
         if(this.§!X§ == "e" || this.§!X§ == "E")
         {
            _loc1_ += "e";
            this.§`g§();
            if(this.§!X§ == "+" || this.§!X§ == "-")
            {
               _loc1_ += this.§!X§;
               this.§`g§();
            }
            if(!this.§[!%§(this.§!X§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§[!%§(this.§!X§))
            {
               _loc1_ += this.§!X§;
               this.§`g§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §[!5§();
            _loc3_.type = §5c§.§;w§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §`g§() : String
      {
         return this.§!X§ = this.§8t§.charAt(this.§%g§++);
      }
      
      private function § !U§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§%g§;
            this.§`_§();
            this.§`B§();
         }
         while(_loc1_ != this.§%g§);
         
      }
      
      private function §`B§() : void
      {
         if(this.§!X§ == "/")
         {
            this.§`g§();
            switch(this.§!X§)
            {
               case "/":
                  do
                  {
                     this.§`g§();
                  }
                  while(this.§!X§ != "\n" && this.§!X§ != "");
                  
                  this.§`g§();
                  break;
               case "*":
                  this.§`g§();
                  while(true)
                  {
                     if(this.§!X§ == "*")
                     {
                        this.§`g§();
                        if(this.§!X§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§`g§();
                     }
                     if(this.§!X§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§`g§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§!X§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §`_§() : void
      {
         while(this.§2,§(this.§!X§))
         {
            this.§`g§();
         }
      }
      
      private function §2,§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§7j§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §[!%§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §>^§(param1:String) : Boolean
      {
         return this.§[!%§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§%g§,this.§8t§);
      }
   }
}
