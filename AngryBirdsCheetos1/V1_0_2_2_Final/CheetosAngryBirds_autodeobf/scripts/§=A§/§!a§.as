package §=A§
{
   public class §!a§
   {
       
      
      private var §4m§:Boolean;
      
      private var obj:Object;
      
      private var §=!V§:String;
      
      private var §[!-§:int;
      
      private var §3@§:String;
      
      private var §=!-§:RegExp;
      
      public function §!a§(param1:String, param2:Boolean)
      {
         this.§=!-§ = /[\x00-\x1F]/;
         super();
         this.§=!V§ = param1;
         this.§4m§ = param2;
         this.§[!-§ = 0;
         this.§&!R§();
      }
      
      public function §!%§() : §^M§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§^M§ = new §^M§();
         this.§4G§();
         switch(this.§3@§)
         {
            case "{":
               _loc1_.type = §+!-§.§-R§;
               _loc1_.value = "{";
               this.§&!R§();
               break;
            case "}":
               _loc1_.type = §+!-§.§!^§;
               _loc1_.value = "}";
               this.§&!R§();
               break;
            case "[":
               _loc1_.type = §+!-§.§5!E§;
               _loc1_.value = "[";
               this.§&!R§();
               break;
            case "]":
               _loc1_.type = §+!-§.§-B§;
               _loc1_.value = "]";
               this.§&!R§();
               break;
            case ",":
               _loc1_.type = §+!-§.§+[§;
               _loc1_.value = ",";
               this.§&!R§();
               break;
            case ":":
               _loc1_.type = §+!-§.§5[§;
               _loc1_.value = ":";
               this.§&!R§();
               break;
            case "t":
               _loc2_ = "t" + this.§&!R§() + this.§&!R§() + this.§&!R§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §+!-§.TRUE;
                  _loc1_.value = true;
                  this.§&!R§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§&!R§() + this.§&!R§() + this.§&!R§() + this.§&!R§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §+!-§.FALSE;
                  _loc1_.value = false;
                  this.§&!R§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§&!R§() + this.§&!R§() + this.§&!R§()) == "null")
               {
                  _loc1_.type = §+!-§.§7!-§;
                  _loc1_.value = null;
                  this.§&!R§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§&!R§() + this.§&!R§()) == "NaN")
               {
                  _loc1_.type = §+!-§.§3X§;
                  _loc1_.value = NaN;
                  this.§&!R§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§8J§();
               break;
            default:
               if(this.§-f§(this.§3@§) || this.§3@§ == "-")
               {
                  _loc1_ = this.§4l§();
                  break;
               }
               if(this.§3@§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§3@§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §8J§() : §^M§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§[!-§;
         while(true)
         {
            _loc1_ = this.§=!V§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§=!V§.charAt(_loc4_) == "\\")
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
         var _loc2_:§^M§ = new §^M§();
         _loc2_.type = §+!-§.§5!&§;
         _loc2_.value = this.§#!Q§(this.§=!V§.substr(this.§[!-§,_loc1_ - this.§[!-§));
         this.§[!-§ = _loc1_ + 1;
         this.§&!R§();
         return _loc2_;
      }
      
      public function §#!Q§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§4m§ && this.§=!-§.test(param1))
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
                     if(!this.§3!I§(_loc10_))
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
      
      private function §4l§() : §^M§
      {
         var _loc3_:§^M§ = null;
         var _loc1_:* = "";
         if(this.§3@§ == "-")
         {
            _loc1_ += "-";
            this.§&!R§();
         }
         if(!this.§-f§(this.§3@§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§3@§ == "0")
         {
            _loc1_ += this.§3@§;
            this.§&!R§();
            if(this.§-f§(this.§3@§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§4m§ && this.§3@§ == "x")
            {
               _loc1_ += this.§3@§;
               this.§&!R§();
               if(this.§3!I§(this.§3@§))
               {
                  _loc1_ += this.§3@§;
                  this.§&!R§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§3!I§(this.§3@§))
               {
                  _loc1_ += this.§3@§;
                  this.§&!R§();
               }
            }
         }
         else
         {
            while(this.§-f§(this.§3@§))
            {
               _loc1_ += this.§3@§;
               this.§&!R§();
            }
         }
         if(this.§3@§ == ".")
         {
            _loc1_ += ".";
            this.§&!R§();
            if(!this.§-f§(this.§3@§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§-f§(this.§3@§))
            {
               _loc1_ += this.§3@§;
               this.§&!R§();
            }
         }
         if(this.§3@§ == "e" || this.§3@§ == "E")
         {
            _loc1_ += "e";
            this.§&!R§();
            if(this.§3@§ == "+" || this.§3@§ == "-")
            {
               _loc1_ += this.§3@§;
               this.§&!R§();
            }
            if(!this.§-f§(this.§3@§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§-f§(this.§3@§))
            {
               _loc1_ += this.§3@§;
               this.§&!R§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §^M§();
            _loc3_.type = §+!-§.§2!M§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §&!R§() : String
      {
         return this.§3@§ = this.§=!V§.charAt(this.§[!-§++);
      }
      
      private function §4G§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§[!-§;
            this.§&!U§();
            this.§,!U§();
         }
         while(_loc1_ != this.§[!-§);
         
      }
      
      private function §,!U§() : void
      {
         if(this.§3@§ == "/")
         {
            this.§&!R§();
            switch(this.§3@§)
            {
               case "/":
                  do
                  {
                     this.§&!R§();
                  }
                  while(this.§3@§ != "\n" && this.§3@§ != "");
                  
                  this.§&!R§();
                  break;
               case "*":
                  this.§&!R§();
                  while(true)
                  {
                     if(this.§3@§ == "*")
                     {
                        this.§&!R§();
                        if(this.§3@§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§&!R§();
                     }
                     if(this.§3@§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§&!R§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§3@§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §&!U§() : void
      {
         while(this.§<z§(this.§3@§))
         {
            this.§&!R§();
         }
      }
      
      private function §<z§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§4m§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §-f§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §3!I§(param1:String) : Boolean
      {
         return this.§-f§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§[!-§,this.§=!V§);
      }
   }
}
