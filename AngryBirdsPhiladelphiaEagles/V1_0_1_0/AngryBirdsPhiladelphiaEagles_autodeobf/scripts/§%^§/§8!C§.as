package §%^§
{
   public class §8!C§
   {
       
      
      private var §^!0§:Boolean;
      
      private var obj:Object;
      
      private var §,m§:String;
      
      private var §5!A§:int;
      
      private var §]!B§:String;
      
      private var §70§:RegExp;
      
      public function §8!C§(param1:String, param2:Boolean)
      {
         this.§70§ = /[\x00-\x1F]/;
         super();
         this.§,m§ = param1;
         this.§^!0§ = param2;
         this.§5!A§ = 0;
         this.§>z§();
      }
      
      public function §^[§() : §7m§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§7m§ = new §7m§();
         this.§=;§();
         switch(this.§]!B§)
         {
            case "{":
               _loc1_.type = §=!#§.§]!K§;
               _loc1_.value = "{";
               this.§>z§();
               break;
            case "}":
               _loc1_.type = §=!#§.§8q§;
               _loc1_.value = "}";
               this.§>z§();
               break;
            case "[":
               _loc1_.type = §=!#§.§5f§;
               _loc1_.value = "[";
               this.§>z§();
               break;
            case "]":
               _loc1_.type = §=!#§.§^c§;
               _loc1_.value = "]";
               this.§>z§();
               break;
            case ",":
               _loc1_.type = §=!#§.§"P§;
               _loc1_.value = ",";
               this.§>z§();
               break;
            case ":":
               _loc1_.type = §=!#§.§-;§;
               _loc1_.value = ":";
               this.§>z§();
               break;
            case "t":
               _loc2_ = "t" + this.§>z§() + this.§>z§() + this.§>z§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §=!#§.TRUE;
                  _loc1_.value = true;
                  this.§>z§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§>z§() + this.§>z§() + this.§>z§() + this.§>z§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §=!#§.FALSE;
                  _loc1_.value = false;
                  this.§>z§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§>z§() + this.§>z§() + this.§>z§()) == "null")
               {
                  _loc1_.type = §=!#§.NULL;
                  _loc1_.value = null;
                  this.§>z§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§>z§() + this.§>z§()) == "NaN")
               {
                  _loc1_.type = §=!#§.§'=§;
                  _loc1_.value = NaN;
                  this.§>z§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§;!#§();
               break;
            default:
               if(this.§+!"§(this.§]!B§) || this.§]!B§ == "-")
               {
                  _loc1_ = this.§7!0§();
                  break;
               }
               if(this.§]!B§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§]!B§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §;!#§() : §7m§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§5!A§;
         while(true)
         {
            _loc1_ = this.§,m§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§,m§.charAt(_loc4_) == "\\")
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
         var _loc2_:§7m§ = new §7m§();
         _loc2_.type = §=!#§.§#7§;
         _loc2_.value = this.§"F§(this.§,m§.substr(this.§5!A§,_loc1_ - this.§5!A§));
         this.§5!A§ = _loc1_ + 1;
         this.§>z§();
         return _loc2_;
      }
      
      public function §"F§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§^!0§ && this.§70§.test(param1))
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
                     if(!this.§,!1§(_loc10_))
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
      
      private function §7!0§() : §7m§
      {
         var _loc3_:§7m§ = null;
         var _loc1_:* = "";
         if(this.§]!B§ == "-")
         {
            _loc1_ += "-";
            this.§>z§();
         }
         if(!this.§+!"§(this.§]!B§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§]!B§ == "0")
         {
            _loc1_ += this.§]!B§;
            this.§>z§();
            if(this.§+!"§(this.§]!B§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§^!0§ && this.§]!B§ == "x")
            {
               _loc1_ += this.§]!B§;
               this.§>z§();
               if(this.§,!1§(this.§]!B§))
               {
                  _loc1_ += this.§]!B§;
                  this.§>z§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§,!1§(this.§]!B§))
               {
                  _loc1_ += this.§]!B§;
                  this.§>z§();
               }
            }
         }
         else
         {
            while(this.§+!"§(this.§]!B§))
            {
               _loc1_ += this.§]!B§;
               this.§>z§();
            }
         }
         if(this.§]!B§ == ".")
         {
            _loc1_ += ".";
            this.§>z§();
            if(!this.§+!"§(this.§]!B§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§+!"§(this.§]!B§))
            {
               _loc1_ += this.§]!B§;
               this.§>z§();
            }
         }
         if(this.§]!B§ == "e" || this.§]!B§ == "E")
         {
            _loc1_ += "e";
            this.§>z§();
            if(this.§]!B§ == "+" || this.§]!B§ == "-")
            {
               _loc1_ += this.§]!B§;
               this.§>z§();
            }
            if(!this.§+!"§(this.§]!B§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§+!"§(this.§]!B§))
            {
               _loc1_ += this.§]!B§;
               this.§>z§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §7m§();
            _loc3_.type = §=!#§.§7!6§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §>z§() : String
      {
         return this.§]!B§ = this.§,m§.charAt(this.§5!A§++);
      }
      
      private function §=;§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§5!A§;
            this.§,F§();
            this.§=!@§();
         }
         while(_loc1_ != this.§5!A§);
         
      }
      
      private function §=!@§() : void
      {
         if(this.§]!B§ == "/")
         {
            this.§>z§();
            switch(this.§]!B§)
            {
               case "/":
                  do
                  {
                     this.§>z§();
                  }
                  while(this.§]!B§ != "\n" && this.§]!B§ != "");
                  
                  this.§>z§();
                  break;
               case "*":
                  this.§>z§();
                  while(true)
                  {
                     if(this.§]!B§ == "*")
                     {
                        this.§>z§();
                        if(this.§]!B§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§>z§();
                     }
                     if(this.§]!B§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§>z§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§]!B§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §,F§() : void
      {
         while(this.§!!4§(this.§]!B§))
         {
            this.§>z§();
         }
      }
      
      private function §!!4§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§^!0§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §+!"§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §,!1§(param1:String) : Boolean
      {
         return this.§+!"§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§5!A§,this.§,m§);
      }
   }
}
