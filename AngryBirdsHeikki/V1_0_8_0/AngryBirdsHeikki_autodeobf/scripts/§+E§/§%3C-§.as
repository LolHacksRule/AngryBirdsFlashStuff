package §+E§
{
   public class §<-§
   {
       
      
      private var §!!9§:Boolean;
      
      private var obj:Object;
      
      private var §'!H§:String;
      
      private var §7P§:int;
      
      private var §4!>§:String;
      
      private var §3!B§:RegExp;
      
      public function §<-§(param1:String, param2:Boolean)
      {
         this.§3!B§ = /[\x00-\x1F]/;
         super();
         this.§'!H§ = param1;
         this.§!!9§ = param2;
         this.§7P§ = 0;
         this.§'s§();
      }
      
      public function §2-§() : §-J§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§-J§ = new §-J§();
         this.§![§();
         switch(this.§4!>§)
         {
            case "{":
               _loc1_.type = §%Q§.§@!`§;
               _loc1_.value = "{";
               this.§'s§();
               break;
            case "}":
               _loc1_.type = §%Q§.§4$§;
               _loc1_.value = "}";
               this.§'s§();
               break;
            case "[":
               _loc1_.type = §%Q§.§?!-§;
               _loc1_.value = "[";
               this.§'s§();
               break;
            case "]":
               _loc1_.type = §%Q§.§55§;
               _loc1_.value = "]";
               this.§'s§();
               break;
            case ",":
               _loc1_.type = §%Q§.§3Y§;
               _loc1_.value = ",";
               this.§'s§();
               break;
            case ":":
               _loc1_.type = §%Q§.§[s§;
               _loc1_.value = ":";
               this.§'s§();
               break;
            case "t":
               _loc2_ = "t" + this.§'s§() + this.§'s§() + this.§'s§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §%Q§.TRUE;
                  _loc1_.value = true;
                  this.§'s§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§'s§() + this.§'s§() + this.§'s§() + this.§'s§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §%Q§.FALSE;
                  _loc1_.value = false;
                  this.§'s§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§'s§() + this.§'s§() + this.§'s§()) == "null")
               {
                  _loc1_.type = §%Q§.§-!P§;
                  _loc1_.value = null;
                  this.§'s§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§'s§() + this.§'s§()) == "NaN")
               {
                  _loc1_.type = §%Q§.§^!N§;
                  _loc1_.value = NaN;
                  this.§'s§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§-G§();
               break;
            default:
               if(this.§9H§(this.§4!>§) || this.§4!>§ == "-")
               {
                  _loc1_ = this.§3!W§();
                  break;
               }
               if(this.§4!>§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§4!>§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §-G§() : §-J§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§7P§;
         while(true)
         {
            _loc1_ = this.§'!H§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§'!H§.charAt(_loc4_) == "\\")
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
         var _loc2_:§-J§ = new §-J§();
         _loc2_.type = §%Q§.§ ]§;
         _loc2_.value = this.§'!;§(this.§'!H§.substr(this.§7P§,_loc1_ - this.§7P§));
         this.§7P§ = _loc1_ + 1;
         this.§'s§();
         return _loc2_;
      }
      
      public function §'!;§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§!!9§ && this.§3!B§.test(param1))
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
                     if(!this.§>0§(_loc10_))
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
      
      private function §3!W§() : §-J§
      {
         var _loc3_:§-J§ = null;
         var _loc1_:* = "";
         if(this.§4!>§ == "-")
         {
            _loc1_ += "-";
            this.§'s§();
         }
         if(!this.§9H§(this.§4!>§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§4!>§ == "0")
         {
            _loc1_ += this.§4!>§;
            this.§'s§();
            if(this.§9H§(this.§4!>§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§!!9§ && this.§4!>§ == "x")
            {
               _loc1_ += this.§4!>§;
               this.§'s§();
               if(this.§>0§(this.§4!>§))
               {
                  _loc1_ += this.§4!>§;
                  this.§'s§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§>0§(this.§4!>§))
               {
                  _loc1_ += this.§4!>§;
                  this.§'s§();
               }
            }
         }
         else
         {
            while(this.§9H§(this.§4!>§))
            {
               _loc1_ += this.§4!>§;
               this.§'s§();
            }
         }
         if(this.§4!>§ == ".")
         {
            _loc1_ += ".";
            this.§'s§();
            if(!this.§9H§(this.§4!>§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§9H§(this.§4!>§))
            {
               _loc1_ += this.§4!>§;
               this.§'s§();
            }
         }
         if(this.§4!>§ == "e" || this.§4!>§ == "E")
         {
            _loc1_ += "e";
            this.§'s§();
            if(this.§4!>§ == "+" || this.§4!>§ == "-")
            {
               _loc1_ += this.§4!>§;
               this.§'s§();
            }
            if(!this.§9H§(this.§4!>§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§9H§(this.§4!>§))
            {
               _loc1_ += this.§4!>§;
               this.§'s§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §-J§();
            _loc3_.type = §%Q§.§3>§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §'s§() : String
      {
         return this.§4!>§ = this.§'!H§.charAt(this.§7P§++);
      }
      
      private function §![§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§7P§;
            this.§3!3§();
            this.§8!4§();
         }
         while(_loc1_ != this.§7P§);
         
      }
      
      private function §8!4§() : void
      {
         if(this.§4!>§ == "/")
         {
            this.§'s§();
            switch(this.§4!>§)
            {
               case "/":
                  do
                  {
                     this.§'s§();
                  }
                  while(this.§4!>§ != "\n" && this.§4!>§ != "");
                  
                  this.§'s§();
                  break;
               case "*":
                  this.§'s§();
                  while(true)
                  {
                     if(this.§4!>§ == "*")
                     {
                        this.§'s§();
                        if(this.§4!>§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§'s§();
                     }
                     if(this.§4!>§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§'s§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§4!>§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §3!3§() : void
      {
         while(this.§>^§(this.§4!>§))
         {
            this.§'s§();
         }
      }
      
      private function §>^§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§!!9§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §9H§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §>0§(param1:String) : Boolean
      {
         return this.§9H§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§7P§,this.§'!H§);
      }
   }
}
