package §""1§
{
   public class §+!M§
   {
       
      
      private var §]"$§:Boolean;
      
      private var obj:Object;
      
      private var §7p§:String;
      
      private var §#"-§:int;
      
      private var §-!Y§:String;
      
      private var §0"4§:RegExp;
      
      public function §+!M§(param1:String, param2:Boolean)
      {
         this.§0"4§ = /[\x00-\x1F]/;
         super();
         this.§7p§ = param1;
         this.§]"$§ = param2;
         this.§#"-§ = 0;
         this.§&!q§();
      }
      
      public function §68§() : §;!q§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§;!q§ = new §;!q§();
         this.§8<§();
         switch(this.§-!Y§)
         {
            case "{":
               _loc1_.type = §7Q§.§9!I§;
               _loc1_.value = "{";
               this.§&!q§();
               break;
            case "}":
               _loc1_.type = §7Q§.§4l§;
               _loc1_.value = "}";
               this.§&!q§();
               break;
            case "[":
               _loc1_.type = §7Q§.§,!D§;
               _loc1_.value = "[";
               this.§&!q§();
               break;
            case "]":
               _loc1_.type = §7Q§.§9!Z§;
               _loc1_.value = "]";
               this.§&!q§();
               break;
            case ",":
               _loc1_.type = §7Q§.§""-§;
               _loc1_.value = ",";
               this.§&!q§();
               break;
            case ":":
               _loc1_.type = §7Q§.§,!Y§;
               _loc1_.value = ":";
               this.§&!q§();
               break;
            case "t":
               _loc2_ = "t" + this.§&!q§() + this.§&!q§() + this.§&!q§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §7Q§.TRUE;
                  _loc1_.value = true;
                  this.§&!q§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§&!q§() + this.§&!q§() + this.§&!q§() + this.§&!q§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §7Q§.FALSE;
                  _loc1_.value = false;
                  this.§&!q§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§&!q§() + this.§&!q§() + this.§&!q§()) == "null")
               {
                  _loc1_.type = §7Q§.§,!d§;
                  _loc1_.value = null;
                  this.§&!q§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§&!q§() + this.§&!q§()) == "NaN")
               {
                  _loc1_.type = §7Q§.§1[§;
                  _loc1_.value = NaN;
                  this.§&!q§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§2!@§();
               break;
            default:
               if(this.§6F§(this.§-!Y§) || this.§-!Y§ == "-")
               {
                  _loc1_ = this.§@K§();
                  break;
               }
               if(this.§-!Y§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§-!Y§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §2!@§() : §;!q§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§#"-§;
         while(true)
         {
            _loc1_ = this.§7p§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§7p§.charAt(_loc4_) == "\\")
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
         var _loc2_:§;!q§ = new §;!q§();
         _loc2_.type = §7Q§.§;!=§;
         _loc2_.value = this.§8!4§(this.§7p§.substr(this.§#"-§,_loc1_ - this.§#"-§));
         this.§#"-§ = _loc1_ + 1;
         this.§&!q§();
         return _loc2_;
      }
      
      public function §8!4§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§]"$§ && this.§0"4§.test(param1))
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
                     if(!this.§5!T§(_loc10_))
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
      
      private function §@K§() : §;!q§
      {
         var _loc3_:§;!q§ = null;
         var _loc1_:* = "";
         if(this.§-!Y§ == "-")
         {
            _loc1_ += "-";
            this.§&!q§();
         }
         if(!this.§6F§(this.§-!Y§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§-!Y§ == "0")
         {
            _loc1_ += this.§-!Y§;
            this.§&!q§();
            if(this.§6F§(this.§-!Y§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§]"$§ && this.§-!Y§ == "x")
            {
               _loc1_ += this.§-!Y§;
               this.§&!q§();
               if(this.§5!T§(this.§-!Y§))
               {
                  _loc1_ += this.§-!Y§;
                  this.§&!q§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§5!T§(this.§-!Y§))
               {
                  _loc1_ += this.§-!Y§;
                  this.§&!q§();
               }
            }
         }
         else
         {
            while(this.§6F§(this.§-!Y§))
            {
               _loc1_ += this.§-!Y§;
               this.§&!q§();
            }
         }
         if(this.§-!Y§ == ".")
         {
            _loc1_ += ".";
            this.§&!q§();
            if(!this.§6F§(this.§-!Y§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§6F§(this.§-!Y§))
            {
               _loc1_ += this.§-!Y§;
               this.§&!q§();
            }
         }
         if(this.§-!Y§ == "e" || this.§-!Y§ == "E")
         {
            _loc1_ += "e";
            this.§&!q§();
            if(this.§-!Y§ == "+" || this.§-!Y§ == "-")
            {
               _loc1_ += this.§-!Y§;
               this.§&!q§();
            }
            if(!this.§6F§(this.§-!Y§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§6F§(this.§-!Y§))
            {
               _loc1_ += this.§-!Y§;
               this.§&!q§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §;!q§();
            _loc3_.type = §7Q§.§+]§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §&!q§() : String
      {
         return this.§-!Y§ = this.§7p§.charAt(this.§#"-§++);
      }
      
      private function §8<§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§#"-§;
            this.§8"'§();
            this.§!f§();
         }
         while(_loc1_ != this.§#"-§);
         
      }
      
      private function §!f§() : void
      {
         if(this.§-!Y§ == "/")
         {
            this.§&!q§();
            switch(this.§-!Y§)
            {
               case "/":
                  do
                  {
                     this.§&!q§();
                  }
                  while(this.§-!Y§ != "\n" && this.§-!Y§ != "");
                  
                  this.§&!q§();
                  break;
               case "*":
                  this.§&!q§();
                  while(true)
                  {
                     if(this.§-!Y§ == "*")
                     {
                        this.§&!q§();
                        if(this.§-!Y§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§&!q§();
                     }
                     if(this.§-!Y§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§&!q§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§-!Y§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §8"'§() : void
      {
         while(this.§9!G§(this.§-!Y§))
         {
            this.§&!q§();
         }
      }
      
      private function §9!G§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§]"$§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §6F§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §5!T§(param1:String) : Boolean
      {
         return this.§6F§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§#"-§,this.§7p§);
      }
   }
}
