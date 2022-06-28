package §?2§
{
   public class §[`§
   {
       
      
      private var §3>§:Boolean;
      
      private var obj:Object;
      
      private var §<R§:String;
      
      private var §75§:int;
      
      private var §"I§:String;
      
      private var §7B§:RegExp;
      
      public function §[`§(param1:String, param2:Boolean)
      {
         this.§7B§ = /[\x00-\x1F]/;
         super();
         this.§<R§ = param1;
         this.§3>§ = param2;
         this.§75§ = 0;
         this.§"x§();
      }
      
      public function §^m§() : §?Z§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§?Z§ = new §?Z§();
         this.§7!-§();
         switch(this.§"I§)
         {
            case "{":
               _loc1_.type = §,B§.§'!E§;
               _loc1_.value = "{";
               this.§"x§();
               break;
            case "}":
               _loc1_.type = §,B§.§<!;§;
               _loc1_.value = "}";
               this.§"x§();
               break;
            case "[":
               _loc1_.type = §,B§.§"V§;
               _loc1_.value = "[";
               this.§"x§();
               break;
            case "]":
               _loc1_.type = §,B§.§]i§;
               _loc1_.value = "]";
               this.§"x§();
               break;
            case ",":
               _loc1_.type = §,B§.§#!'§;
               _loc1_.value = ",";
               this.§"x§();
               break;
            case ":":
               _loc1_.type = §,B§.§5!>§;
               _loc1_.value = ":";
               this.§"x§();
               break;
            case "t":
               _loc2_ = "t" + this.§"x§() + this.§"x§() + this.§"x§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §,B§.TRUE;
                  _loc1_.value = true;
                  this.§"x§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§"x§() + this.§"x§() + this.§"x§() + this.§"x§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §,B§.FALSE;
                  _loc1_.value = false;
                  this.§"x§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§"x§() + this.§"x§() + this.§"x§()) == "null")
               {
                  _loc1_.type = §,B§.NULL;
                  _loc1_.value = null;
                  this.§"x§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§"x§() + this.§"x§()) == "NaN")
               {
                  _loc1_.type = §,B§.§[!A§;
                  _loc1_.value = NaN;
                  this.§"x§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§<!D§();
               break;
            default:
               if(this.§!w§(this.§"I§) || this.§"I§ == "-")
               {
                  _loc1_ = this.§%?§();
                  break;
               }
               if(this.§"I§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§"I§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §<!D§() : §?Z§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§75§;
         while(true)
         {
            _loc1_ = this.§<R§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§<R§.charAt(_loc4_) == "\\")
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
         var _loc2_:§?Z§ = new §?Z§();
         _loc2_.type = §,B§.§9W§;
         _loc2_.value = this.§`[§(this.§<R§.substr(this.§75§,_loc1_ - this.§75§));
         this.§75§ = _loc1_ + 1;
         this.§"x§();
         return _loc2_;
      }
      
      public function §`[§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§3>§ && this.§7B§.test(param1))
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
                     if(!this.§+!J§(_loc10_))
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
      
      private function §%?§() : §?Z§
      {
         var _loc3_:§?Z§ = null;
         var _loc1_:* = "";
         if(this.§"I§ == "-")
         {
            _loc1_ += "-";
            this.§"x§();
         }
         if(!this.§!w§(this.§"I§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§"I§ == "0")
         {
            _loc1_ += this.§"I§;
            this.§"x§();
            if(this.§!w§(this.§"I§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§3>§ && this.§"I§ == "x")
            {
               _loc1_ += this.§"I§;
               this.§"x§();
               if(this.§+!J§(this.§"I§))
               {
                  _loc1_ += this.§"I§;
                  this.§"x§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§+!J§(this.§"I§))
               {
                  _loc1_ += this.§"I§;
                  this.§"x§();
               }
            }
         }
         else
         {
            while(this.§!w§(this.§"I§))
            {
               _loc1_ += this.§"I§;
               this.§"x§();
            }
         }
         if(this.§"I§ == ".")
         {
            _loc1_ += ".";
            this.§"x§();
            if(!this.§!w§(this.§"I§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§!w§(this.§"I§))
            {
               _loc1_ += this.§"I§;
               this.§"x§();
            }
         }
         if(this.§"I§ == "e" || this.§"I§ == "E")
         {
            _loc1_ += "e";
            this.§"x§();
            if(this.§"I§ == "+" || this.§"I§ == "-")
            {
               _loc1_ += this.§"I§;
               this.§"x§();
            }
            if(!this.§!w§(this.§"I§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§!w§(this.§"I§))
            {
               _loc1_ += this.§"I§;
               this.§"x§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §?Z§();
            _loc3_.type = §,B§.§@Z§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §"x§() : String
      {
         return this.§"I§ = this.§<R§.charAt(this.§75§++);
      }
      
      private function §7!-§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§75§;
            this.§3S§();
            this.§6K§();
         }
         while(_loc1_ != this.§75§);
         
      }
      
      private function §6K§() : void
      {
         if(this.§"I§ == "/")
         {
            this.§"x§();
            switch(this.§"I§)
            {
               case "/":
                  do
                  {
                     this.§"x§();
                  }
                  while(this.§"I§ != "\n" && this.§"I§ != "");
                  
                  this.§"x§();
                  break;
               case "*":
                  this.§"x§();
                  while(true)
                  {
                     if(this.§"I§ == "*")
                     {
                        this.§"x§();
                        if(this.§"I§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§"x§();
                     }
                     if(this.§"I§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§"x§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§"I§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §3S§() : void
      {
         while(this.§"n§(this.§"I§))
         {
            this.§"x§();
         }
      }
      
      private function §"n§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§3>§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §!w§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §+!J§(param1:String) : Boolean
      {
         return this.§!w§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§75§,this.§<R§);
      }
   }
}
