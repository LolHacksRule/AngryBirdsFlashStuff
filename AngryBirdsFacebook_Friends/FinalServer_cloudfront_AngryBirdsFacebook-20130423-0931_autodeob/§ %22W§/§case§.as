package § "W§
{
   public class §case§
   {
       
      
      private var §4"$§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §+"'§:int;
      
      private var §4"Z§:String;
      
      private var §#" §:RegExp;
      
      public function §case§(param1:String, param2:Boolean)
      {
         this.§#" § = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§4"$§ = param2;
         this.§+"'§ = 0;
         this.§0[§();
      }
      
      public function §^!l§() : §,!V§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§,!V§ = new §,!V§();
         this.§5"?§();
         switch(this.§4"Z§)
         {
            case "{":
               _loc1_.type = §]!H§.§3!U§;
               _loc1_.value = "{";
               this.§0[§();
               break;
            case "}":
               _loc1_.type = §]!H§.§@!z§;
               _loc1_.value = "}";
               this.§0[§();
               break;
            case "[":
               _loc1_.type = §]!H§.§`"@§;
               _loc1_.value = "[";
               this.§0[§();
               break;
            case "]":
               _loc1_.type = §]!H§.§[<§;
               _loc1_.value = "]";
               this.§0[§();
               break;
            case ",":
               _loc1_.type = §]!H§.§-n§;
               _loc1_.value = ",";
               this.§0[§();
               break;
            case ":":
               _loc1_.type = §]!H§.§[!0§;
               _loc1_.value = ":";
               this.§0[§();
               break;
            case "t":
               _loc2_ = "t" + this.§0[§() + this.§0[§() + this.§0[§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §]!H§.TRUE;
                  _loc1_.value = true;
                  this.§0[§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§0[§() + this.§0[§() + this.§0[§() + this.§0[§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §]!H§.FALSE;
                  _loc1_.value = false;
                  this.§0[§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§0[§() + this.§0[§() + this.§0[§()) == "null")
               {
                  _loc1_.type = §]!H§.NULL;
                  _loc1_.value = null;
                  this.§0[§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§0[§() + this.§0[§()) == "NaN")
               {
                  _loc1_.type = §]!H§.§[!g§;
                  _loc1_.value = NaN;
                  this.§0[§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§!@§();
               break;
            default:
               if(this.§0!n§(this.§4"Z§) || this.§4"Z§ == "-")
               {
                  _loc1_ = this.§4"D§();
               }
               else
               {
                  if(this.§4"Z§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§4"Z§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §!@§() : §,!V§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+"'§;
         while(true)
         {
            _loc1_ = this.jsonString.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.jsonString.charAt(_loc4_) == "\\")
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
         var _loc2_:§,!V§ = new §,!V§();
         _loc2_.type = §]!H§.§?"S§;
         _loc2_.value = this.§6!a§(this.jsonString.substr(this.§+"'§,_loc1_ - this.§+"'§));
         this.§+"'§ = _loc1_ + 1;
         this.§0[§();
         return _loc2_;
      }
      
      public function §6!a§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§4"$§ && this.§#" §.test(param1))
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
                     if(!this.§"_§(_loc10_))
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
      
      private function §4"D§() : §,!V§
      {
         var _loc3_:§,!V§ = null;
         var _loc1_:* = "";
         if(this.§4"Z§ == "-")
         {
            _loc1_ += "-";
            this.§0[§();
         }
         if(!this.§0!n§(this.§4"Z§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§4"Z§ == "0")
         {
            _loc1_ += this.§4"Z§;
            this.§0[§();
            if(this.§0!n§(this.§4"Z§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§4"$§ && this.§4"Z§ == "x")
            {
               _loc1_ += this.§4"Z§;
               this.§0[§();
               if(this.§"_§(this.§4"Z§))
               {
                  _loc1_ += this.§4"Z§;
                  this.§0[§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§"_§(this.§4"Z§))
               {
                  _loc1_ += this.§4"Z§;
                  this.§0[§();
               }
            }
         }
         else
         {
            while(this.§0!n§(this.§4"Z§))
            {
               _loc1_ += this.§4"Z§;
               this.§0[§();
            }
         }
         if(this.§4"Z§ == ".")
         {
            _loc1_ += ".";
            this.§0[§();
            if(!this.§0!n§(this.§4"Z§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§0!n§(this.§4"Z§))
            {
               _loc1_ += this.§4"Z§;
               this.§0[§();
            }
         }
         if(this.§4"Z§ == "e" || this.§4"Z§ == "E")
         {
            _loc1_ += "e";
            this.§0[§();
            if(this.§4"Z§ == "+" || this.§4"Z§ == "-")
            {
               _loc1_ += this.§4"Z§;
               this.§0[§();
            }
            if(!this.§0!n§(this.§4"Z§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§0!n§(this.§4"Z§))
            {
               _loc1_ += this.§4"Z§;
               this.§0[§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §,!V§();
            _loc3_.type = §]!H§.§3!w§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §0[§() : String
      {
         return this.§4"Z§ = this.jsonString.charAt(this.§+"'§++);
      }
      
      private function §5"?§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+"'§;
            this.§+!W§();
            this.§3",§();
         }
         while(_loc1_ != this.§+"'§);
         
      }
      
      private function §3",§() : void
      {
         if(this.§4"Z§ == "/")
         {
            this.§0[§();
            switch(this.§4"Z§)
            {
               case "/":
                  do
                  {
                     this.§0[§();
                  }
                  while(this.§4"Z§ != "\n" && this.§4"Z§ != "");
                  
                  this.§0[§();
                  break;
               case "*":
                  this.§0[§();
                  while(true)
                  {
                     if(this.§4"Z§ == "*")
                     {
                        this.§0[§();
                        if(this.§4"Z§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§0[§();
                     }
                     if(this.§4"Z§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§0[§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§4"Z§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §+!W§() : void
      {
         while(this.§;!%§(this.§4"Z§))
         {
            this.§0[§();
         }
      }
      
      private function §;!%§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§4"$§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §0!n§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §"_§(param1:String) : Boolean
      {
         return this.§0!n§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+"'§,this.jsonString);
      }
   }
}
