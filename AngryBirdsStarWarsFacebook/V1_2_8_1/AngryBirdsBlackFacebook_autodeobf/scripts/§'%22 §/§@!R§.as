package §'" §
{
   public class §@!R§
   {
       
      
      private var §'"_§:Boolean;
      
      private var §5"!§:Object;
      
      private var jsonString:String;
      
      private var §2!Y§:int;
      
      private var §5e§:String;
      
      private var §`]§:RegExp;
      
      public function §@!R§(param1:String, param2:Boolean)
      {
         this.§`]§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§'"_§ = param2;
         this.§2!Y§ = 0;
         this.§#"c§();
      }
      
      public function §[!p§() : §=!P§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§=!P§ = new §=!P§();
         this.§^#0§();
         switch(this.§5e§)
         {
            case "{":
               _loc1_.type = § "@§.§[!§;
               _loc1_.value = "{";
               this.§#"c§();
               break;
            case "}":
               _loc1_.type = § "@§.§;!Q§;
               _loc1_.value = "}";
               this.§#"c§();
               break;
            case "[":
               _loc1_.type = § "@§.§>"q§;
               _loc1_.value = "[";
               this.§#"c§();
               break;
            case "]":
               _loc1_.type = § "@§.§["@§;
               _loc1_.value = "]";
               this.§#"c§();
               break;
            case ",":
               _loc1_.type = § "@§.§0""§;
               _loc1_.value = ",";
               this.§#"c§();
               break;
            case ":":
               _loc1_.type = § "@§.§ !T§;
               _loc1_.value = ":";
               this.§#"c§();
               break;
            case "t":
               _loc2_ = "t" + this.§#"c§() + this.§#"c§() + this.§#"c§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = § "@§.TRUE;
                  _loc1_.value = true;
                  this.§#"c§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§#"c§() + this.§#"c§() + this.§#"c§() + this.§#"c§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = § "@§.FALSE;
                  _loc1_.value = false;
                  this.§#"c§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§#"c§() + this.§#"c§() + this.§#"c§()) == "null")
               {
                  _loc1_.type = § "@§.NULL;
                  _loc1_.value = null;
                  this.§#"c§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§#"c§() + this.§#"c§()) == "NaN")
               {
                  _loc1_.type = § "@§.§4!p§;
                  _loc1_.value = NaN;
                  this.§#"c§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§+"[§();
               break;
            default:
               if(this.§'5§(this.§5e§) || this.§5e§ == "-")
               {
                  _loc1_ = this.§5"x§();
                  break;
               }
               if(this.§5e§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§5e§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §+"[§() : §=!P§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§2!Y§;
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
         var _loc2_:§=!P§ = new §=!P§();
         _loc2_.type = § "@§.§-! §;
         _loc2_.value = this.§;"i§(this.jsonString.substr(this.§2!Y§,_loc1_ - this.§2!Y§));
         this.§2!Y§ = _loc1_ + 1;
         this.§#"c§();
         return _loc2_;
      }
      
      public function §;"i§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§'"_§ && this.§`]§.test(param1))
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
                     if(!this.§'!H§(_loc10_))
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
      
      private function §5"x§() : §=!P§
      {
         var _loc3_:§=!P§ = null;
         var _loc1_:* = "";
         if(this.§5e§ == "-")
         {
            _loc1_ += "-";
            this.§#"c§();
         }
         if(!this.§'5§(this.§5e§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§5e§ == "0")
         {
            _loc1_ += this.§5e§;
            this.§#"c§();
            if(this.§'5§(this.§5e§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§'"_§ && this.§5e§ == "x")
            {
               _loc1_ += this.§5e§;
               this.§#"c§();
               if(this.§'!H§(this.§5e§))
               {
                  _loc1_ += this.§5e§;
                  this.§#"c§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§'!H§(this.§5e§))
               {
                  _loc1_ += this.§5e§;
                  this.§#"c§();
               }
            }
         }
         else
         {
            while(this.§'5§(this.§5e§))
            {
               _loc1_ += this.§5e§;
               this.§#"c§();
            }
         }
         if(this.§5e§ == ".")
         {
            _loc1_ += ".";
            this.§#"c§();
            if(!this.§'5§(this.§5e§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§'5§(this.§5e§))
            {
               _loc1_ += this.§5e§;
               this.§#"c§();
            }
         }
         if(this.§5e§ == "e" || this.§5e§ == "E")
         {
            _loc1_ += "e";
            this.§#"c§();
            if(this.§5e§ == "+" || this.§5e§ == "-")
            {
               _loc1_ += this.§5e§;
               this.§#"c§();
            }
            if(!this.§'5§(this.§5e§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§'5§(this.§5e§))
            {
               _loc1_ += this.§5e§;
               this.§#"c§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §=!P§();
            _loc3_.type = § "@§.§#"H§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §#"c§() : String
      {
         return this.§5e§ = this.jsonString.charAt(this.§2!Y§++);
      }
      
      private function §^#0§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§2!Y§;
            this.§7Y§();
            this.§?"4§();
         }
         while(_loc1_ != this.§2!Y§);
         
      }
      
      private function §?"4§() : void
      {
         if(this.§5e§ == "/")
         {
            this.§#"c§();
            switch(this.§5e§)
            {
               case "/":
                  do
                  {
                     this.§#"c§();
                  }
                  while(this.§5e§ != "\n" && this.§5e§ != "");
                  
                  this.§#"c§();
                  break;
               case "*":
                  this.§#"c§();
                  while(true)
                  {
                     if(this.§5e§ == "*")
                     {
                        this.§#"c§();
                        if(this.§5e§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§#"c§();
                     }
                     if(this.§5e§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§#"c§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§5e§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §7Y§() : void
      {
         while(this.§'a§(this.§5e§))
         {
            this.§#"c§();
         }
      }
      
      private function §'a§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§'"_§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §'5§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §'!H§(param1:String) : Boolean
      {
         return this.§'5§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§2!Y§,this.jsonString);
      }
   }
}
