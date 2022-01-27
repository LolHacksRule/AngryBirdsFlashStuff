package §;!]§
{
   public class §8a§
   {
       
      
      private var §<!Q§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §%m§:int;
      
      private var §,r§:String;
      
      private var §`!M§:RegExp;
      
      public function §8a§(param1:String, param2:Boolean)
      {
         this.§`!M§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§<!Q§ = param2;
         this.§%m§ = 0;
         this.§8'§();
      }
      
      public function §!W§() : §&![§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§&![§ = new §&![§();
         this.§@3§();
         switch(this.§,r§)
         {
            case "{":
               _loc1_.type = §]I§.§^![§;
               _loc1_.value = "{";
               this.§8'§();
               break;
            case "}":
               _loc1_.type = §]I§.§]s§;
               _loc1_.value = "}";
               this.§8'§();
               break;
            case "[":
               _loc1_.type = §]I§.§?p§;
               _loc1_.value = "[";
               this.§8'§();
               break;
            case "]":
               _loc1_.type = §]I§.§3V§;
               _loc1_.value = "]";
               this.§8'§();
               break;
            case ",":
               _loc1_.type = §]I§.§?k§;
               _loc1_.value = ",";
               this.§8'§();
               break;
            case ":":
               _loc1_.type = §]I§.§4<§;
               _loc1_.value = ":";
               this.§8'§();
               break;
            case "t":
               _loc2_ = "t" + this.§8'§() + this.§8'§() + this.§8'§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §]I§.TRUE;
                  _loc1_.value = true;
                  this.§8'§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§8'§() + this.§8'§() + this.§8'§() + this.§8'§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §]I§.FALSE;
                  _loc1_.value = false;
                  this.§8'§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§8'§() + this.§8'§() + this.§8'§()) == "null")
               {
                  _loc1_.type = §]I§.§2!=§;
                  _loc1_.value = null;
                  this.§8'§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§8'§() + this.§8'§()) == "NaN")
               {
                  _loc1_.type = §]I§.§`!7§;
                  _loc1_.value = NaN;
                  this.§8'§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§'i§();
               break;
            default:
               if(this.§#!'§(this.§,r§) || this.§,r§ == "-")
               {
                  _loc1_ = this.§6!V§();
                  break;
               }
               if(this.§,r§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§,r§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §'i§() : §&![§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§%m§;
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
         var _loc2_:§&![§ = new §&![§();
         _loc2_.type = §]I§.§9!U§;
         _loc2_.value = this.§3!g§(this.jsonString.substr(this.§%m§,_loc1_ - this.§%m§));
         this.§%m§ = _loc1_ + 1;
         this.§8'§();
         return _loc2_;
      }
      
      public function §3!g§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§<!Q§ && this.§`!M§.test(param1))
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
                     if(!this.§9!K§(_loc10_))
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
      
      private function §6!V§() : §&![§
      {
         var _loc3_:§&![§ = null;
         var _loc1_:* = "";
         if(this.§,r§ == "-")
         {
            _loc1_ += "-";
            this.§8'§();
         }
         if(!this.§#!'§(this.§,r§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§,r§ == "0")
         {
            _loc1_ += this.§,r§;
            this.§8'§();
            if(this.§#!'§(this.§,r§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§<!Q§ && this.§,r§ == "x")
            {
               _loc1_ += this.§,r§;
               this.§8'§();
               if(this.§9!K§(this.§,r§))
               {
                  _loc1_ += this.§,r§;
                  this.§8'§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§9!K§(this.§,r§))
               {
                  _loc1_ += this.§,r§;
                  this.§8'§();
               }
            }
         }
         else
         {
            while(this.§#!'§(this.§,r§))
            {
               _loc1_ += this.§,r§;
               this.§8'§();
            }
         }
         if(this.§,r§ == ".")
         {
            _loc1_ += ".";
            this.§8'§();
            if(!this.§#!'§(this.§,r§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§#!'§(this.§,r§))
            {
               _loc1_ += this.§,r§;
               this.§8'§();
            }
         }
         if(this.§,r§ == "e" || this.§,r§ == "E")
         {
            _loc1_ += "e";
            this.§8'§();
            if(this.§,r§ == "+" || this.§,r§ == "-")
            {
               _loc1_ += this.§,r§;
               this.§8'§();
            }
            if(!this.§#!'§(this.§,r§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§#!'§(this.§,r§))
            {
               _loc1_ += this.§,r§;
               this.§8'§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §&![§();
            _loc3_.type = §]I§.§,c§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §8'§() : String
      {
         return this.§,r§ = this.jsonString.charAt(this.§%m§++);
      }
      
      private function §@3§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§%m§;
            this.§%@§();
            this.§8!$§();
         }
         while(_loc1_ != this.§%m§);
         
      }
      
      private function §8!$§() : void
      {
         if(this.§,r§ == "/")
         {
            this.§8'§();
            switch(this.§,r§)
            {
               case "/":
                  do
                  {
                     this.§8'§();
                  }
                  while(this.§,r§ != "\n" && this.§,r§ != "");
                  
                  this.§8'§();
                  break;
               case "*":
                  this.§8'§();
                  while(true)
                  {
                     if(this.§,r§ == "*")
                     {
                        this.§8'§();
                        if(this.§,r§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§8'§();
                     }
                     if(this.§,r§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§8'§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§,r§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §%@§() : void
      {
         while(this.§4h§(this.§,r§))
         {
            this.§8'§();
         }
      }
      
      private function §4h§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§<!Q§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §#!'§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §9!K§(param1:String) : Boolean
      {
         return this.§#!'§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§%m§,this.jsonString);
      }
   }
}
