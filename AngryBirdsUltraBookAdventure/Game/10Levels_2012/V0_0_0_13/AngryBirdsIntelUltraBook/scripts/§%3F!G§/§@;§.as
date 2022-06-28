package §?!G§
{
   public class §@;§
   {
       
      
      private var §+c§:Boolean;
      
      private var obj:Object;
      
      private var §0!#§:String;
      
      private var §7;§:int;
      
      private var §>!S§:String;
      
      private var §0Y§:RegExp;
      
      public function §@;§(param1:String, param2:Boolean)
      {
         this.§0Y§ = /[\x00-\x1F]/;
         super();
         this.§0!#§ = param1;
         this.§+c§ = param2;
         this.§7;§ = 0;
         this.§,!P§();
      }
      
      public function §`!A§() : §[!X§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§[!X§ = new §[!X§();
         this.§4v§();
         switch(this.§>!S§)
         {
            case "{":
               _loc1_.type = §0H§.§"0§;
               _loc1_.value = "{";
               this.§,!P§();
               break;
            case "}":
               _loc1_.type = §0H§.§7§;
               _loc1_.value = "}";
               this.§,!P§();
               break;
            case "[":
               _loc1_.type = §0H§.§9D§;
               _loc1_.value = "[";
               this.§,!P§();
               break;
            case "]":
               _loc1_.type = §0H§.§!@§;
               _loc1_.value = "]";
               this.§,!P§();
               break;
            case ",":
               _loc1_.type = §0H§.§;!^§;
               _loc1_.value = ",";
               this.§,!P§();
               break;
            case ":":
               _loc1_.type = §0H§.§ !2§;
               _loc1_.value = ":";
               this.§,!P§();
               break;
            case "t":
               _loc2_ = "t" + this.§,!P§() + this.§,!P§() + this.§,!P§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §0H§.TRUE;
                  _loc1_.value = true;
                  this.§,!P§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§,!P§() + this.§,!P§() + this.§,!P§() + this.§,!P§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §0H§.FALSE;
                  _loc1_.value = false;
                  this.§,!P§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               _loc4_ = "n" + this.§,!P§() + this.§,!P§() + this.§,!P§();
               if(_loc4_ == "null")
               {
                  _loc1_.type = §0H§.NULL;
                  _loc1_.value = null;
                  this.§,!P§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               _loc5_ = "N" + this.§,!P§() + this.§,!P§();
               if(_loc5_ == "NaN")
               {
                  _loc1_.type = §0H§.§'!6§;
                  _loc1_.value = NaN;
                  this.§,!P§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§+W§();
               break;
            default:
               if(this.§68§(this.§>!S§) || this.§>!S§ == "-")
               {
                  _loc1_ = this.§?&§();
                  break;
               }
               if(this.§>!S§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§>!S§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §+W§() : §[!X§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§7;§;
         while(true)
         {
            _loc1_ = this.§0!#§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§0!#§.charAt(_loc4_) == "\\")
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
         var _loc2_:§[!X§ = new §[!X§();
         _loc2_.type = §0H§.§'!,§;
         _loc2_.value = this.§@]§(this.§0!#§.substr(this.§7;§,_loc1_ - this.§7;§));
         this.§7;§ = _loc1_ + 1;
         this.§,!P§();
         return _loc2_;
      }
      
      public function §@]§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§+c§ && this.§0Y§.test(param1))
         {
            this.parseError("String contains unescaped control character (0x00-0x1F)");
         }
         var _loc2_:String = "";
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
                     if(!this.§1! §(_loc10_))
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
      
      private function §?&§() : §[!X§
      {
         var _loc3_:§[!X§ = null;
         var _loc1_:String = "";
         if(this.§>!S§ == "-")
         {
            _loc1_ += "-";
            this.§,!P§();
         }
         if(!this.§68§(this.§>!S§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§>!S§ == "0")
         {
            _loc1_ += this.§>!S§;
            this.§,!P§();
            if(this.§68§(this.§>!S§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§+c§ && this.§>!S§ == "x")
            {
               _loc1_ += this.§>!S§;
               this.§,!P§();
               if(this.§1! §(this.§>!S§))
               {
                  _loc1_ += this.§>!S§;
                  this.§,!P§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§1! §(this.§>!S§))
               {
                  _loc1_ += this.§>!S§;
                  this.§,!P§();
               }
            }
         }
         else
         {
            while(this.§68§(this.§>!S§))
            {
               _loc1_ += this.§>!S§;
               this.§,!P§();
            }
         }
         if(this.§>!S§ == ".")
         {
            _loc1_ += ".";
            this.§,!P§();
            if(!this.§68§(this.§>!S§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§68§(this.§>!S§))
            {
               _loc1_ += this.§>!S§;
               this.§,!P§();
            }
         }
         if(this.§>!S§ == "e" || this.§>!S§ == "E")
         {
            _loc1_ += "e";
            this.§,!P§();
            if(this.§>!S§ == "+" || this.§>!S§ == "-")
            {
               _loc1_ += this.§>!S§;
               this.§,!P§();
            }
            if(!this.§68§(this.§>!S§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§68§(this.§>!S§))
            {
               _loc1_ += this.§>!S§;
               this.§,!P§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §[!X§();
            _loc3_.type = §0H§.§>!T§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §,!P§() : String
      {
         return this.§>!S§ = this.§0!#§.charAt(this.§7;§++);
      }
      
      private function §4v§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§7;§;
            this.§ Y§();
            this.§?!]§();
         }
         while(_loc1_ != this.§7;§);
         
      }
      
      private function §?!]§() : void
      {
         if(this.§>!S§ == "/")
         {
            this.§,!P§();
            switch(this.§>!S§)
            {
               case "/":
                  do
                  {
                     this.§,!P§();
                  }
                  while(this.§>!S§ != "\n" && this.§>!S§ != "");
                  
                  this.§,!P§();
                  break;
               case "*":
                  this.§,!P§();
                  while(true)
                  {
                     if(this.§>!S§ == "*")
                     {
                        this.§,!P§();
                        if(this.§>!S§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§,!P§();
                     }
                     if(this.§>!S§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§,!P§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§>!S§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function § Y§() : void
      {
         while(this.§@&§(this.§>!S§))
         {
            this.§,!P§();
         }
      }
      
      private function §@&§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§+c§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §68§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §1! §(param1:String) : Boolean
      {
         return this.§68§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§7;§,this.§0!#§);
      }
   }
}
