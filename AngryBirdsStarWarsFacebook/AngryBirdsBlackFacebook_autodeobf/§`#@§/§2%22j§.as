package §`#@§
{
   public class §2"j§
   {
       
      
      private var §<"@§:Boolean;
      
      private var §=#U§:Object;
      
      private var jsonString:String;
      
      private var §#9§:int;
      
      private var §@"-§:String;
      
      private var §^"@§:RegExp;
      
      public function §2"j§(param1:String, param2:Boolean)
      {
         this.§^"@§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§<"@§ = param2;
         this.§#9§ = 0;
         this.§]"B§();
      }
      
      public function §9f§() : §+"9§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§+"9§ = new §+"9§();
         this.§,#<§();
         switch(this.§@"-§)
         {
            case "{":
               _loc1_.type = §6#^§.§>9§;
               _loc1_.value = "{";
               this.§]"B§();
               break;
            case "}":
               _loc1_.type = §6#^§.§85§;
               _loc1_.value = "}";
               this.§]"B§();
               break;
            case "[":
               _loc1_.type = §6#^§.§1!j§;
               _loc1_.value = "[";
               this.§]"B§();
               break;
            case "]":
               _loc1_.type = §6#^§.§?$§;
               _loc1_.value = "]";
               this.§]"B§();
               break;
            case ",":
               _loc1_.type = §6#^§.§>"J§;
               _loc1_.value = ",";
               this.§]"B§();
               break;
            case ":":
               _loc1_.type = §6#^§.§@#2§;
               _loc1_.value = ":";
               this.§]"B§();
               break;
            case "t":
               _loc2_ = "t" + this.§]"B§() + this.§]"B§() + this.§]"B§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §6#^§.TRUE;
                  _loc1_.value = true;
                  this.§]"B§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§]"B§() + this.§]"B§() + this.§]"B§() + this.§]"B§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §6#^§.FALSE;
                  _loc1_.value = false;
                  this.§]"B§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§]"B§() + this.§]"B§() + this.§]"B§()) == "null")
               {
                  _loc1_.type = §6#^§.NULL;
                  _loc1_.value = null;
                  this.§]"B§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§]"B§() + this.§]"B§()) == "NaN")
               {
                  _loc1_.type = §6#^§.§8"I§;
                  _loc1_.value = NaN;
                  this.§]"B§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§'#Y§();
               break;
            default:
               if(this.§^"H§(this.§@"-§) || this.§@"-§ == "-")
               {
                  _loc1_ = this.§+!w§();
               }
               else
               {
                  if(this.§@"-§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§@"-§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §'#Y§() : §+"9§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§#9§;
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
         var _loc2_:§+"9§ = new §+"9§();
         _loc2_.type = §6#^§.§`"y§;
         _loc2_.value = this.§!#5§(this.jsonString.substr(this.§#9§,_loc1_ - this.§#9§));
         this.§#9§ = _loc1_ + 1;
         this.§]"B§();
         return _loc2_;
      }
      
      public function §!#5§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§<"@§ && this.§^"@§.test(param1))
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
                     if(!this.§#!_§(_loc10_))
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
      
      private function §+!w§() : §+"9§
      {
         var _loc3_:§+"9§ = null;
         var _loc1_:* = "";
         if(this.§@"-§ == "-")
         {
            _loc1_ += "-";
            this.§]"B§();
         }
         if(!this.§^"H§(this.§@"-§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§@"-§ == "0")
         {
            _loc1_ += this.§@"-§;
            this.§]"B§();
            if(this.§^"H§(this.§@"-§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§<"@§ && this.§@"-§ == "x")
            {
               _loc1_ += this.§@"-§;
               this.§]"B§();
               if(this.§#!_§(this.§@"-§))
               {
                  _loc1_ += this.§@"-§;
                  this.§]"B§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§#!_§(this.§@"-§))
               {
                  _loc1_ += this.§@"-§;
                  this.§]"B§();
               }
            }
         }
         else
         {
            while(this.§^"H§(this.§@"-§))
            {
               _loc1_ += this.§@"-§;
               this.§]"B§();
            }
         }
         if(this.§@"-§ == ".")
         {
            _loc1_ += ".";
            this.§]"B§();
            if(!this.§^"H§(this.§@"-§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§^"H§(this.§@"-§))
            {
               _loc1_ += this.§@"-§;
               this.§]"B§();
            }
         }
         if(this.§@"-§ == "e" || this.§@"-§ == "E")
         {
            _loc1_ += "e";
            this.§]"B§();
            if(this.§@"-§ == "+" || this.§@"-§ == "-")
            {
               _loc1_ += this.§@"-§;
               this.§]"B§();
            }
            if(!this.§^"H§(this.§@"-§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§^"H§(this.§@"-§))
            {
               _loc1_ += this.§@"-§;
               this.§]"B§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §+"9§();
            _loc3_.type = §6#^§.§>+§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §]"B§() : String
      {
         return this.§@"-§ = this.jsonString.charAt(this.§#9§++);
      }
      
      private function §,#<§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§#9§;
            this.§]"o§();
            this.§&",§();
         }
         while(_loc1_ != this.§#9§);
         
      }
      
      private function §&",§() : void
      {
         if(this.§@"-§ == "/")
         {
            this.§]"B§();
            switch(this.§@"-§)
            {
               case "/":
                  do
                  {
                     this.§]"B§();
                  }
                  while(this.§@"-§ != "\n" && this.§@"-§ != "");
                  
                  this.§]"B§();
                  break;
               case "*":
                  this.§]"B§();
                  while(true)
                  {
                     if(this.§@"-§ == "*")
                     {
                        this.§]"B§();
                        if(this.§@"-§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§]"B§();
                     }
                     if(this.§@"-§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§]"B§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§@"-§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §]"o§() : void
      {
         while(this.§]n§(this.§@"-§))
         {
            this.§]"B§();
         }
      }
      
      private function §]n§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§<"@§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §^"H§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §#!_§(param1:String) : Boolean
      {
         return this.§^"H§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§#9§,this.jsonString);
      }
   }
}
