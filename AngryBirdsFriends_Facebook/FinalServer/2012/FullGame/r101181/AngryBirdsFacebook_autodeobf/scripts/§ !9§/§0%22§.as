package § !9§
{
   public class §0"§
   {
       
      
      private var §2[§:Boolean;
      
      private var obj:Object;
      
      private var §2w§:String;
      
      private var §4F§:int;
      
      private var §]"A§:String;
      
      private var §7"7§:RegExp;
      
      public function §0"§(param1:String, param2:Boolean)
      {
         this.§7"7§ = /[\x00-\x1F]/;
         super();
         this.§2w§ = param1;
         this.§2[§ = param2;
         this.§4F§ = 0;
         this.§8!#§();
      }
      
      public function §!!%§() : §2!P§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§2!P§ = new §2!P§();
         this.§#!t§();
         switch(this.§]"A§)
         {
            case "{":
               _loc1_.type = §0";§.§;"'§;
               _loc1_.value = "{";
               this.§8!#§();
               break;
            case "}":
               _loc1_.type = §0";§.§'!,§;
               _loc1_.value = "}";
               this.§8!#§();
               break;
            case "[":
               _loc1_.type = §0";§.§^[§;
               _loc1_.value = "[";
               this.§8!#§();
               break;
            case "]":
               _loc1_.type = §0";§.§^-§;
               _loc1_.value = "]";
               this.§8!#§();
               break;
            case ",":
               _loc1_.type = §0";§.§+b§;
               _loc1_.value = ",";
               this.§8!#§();
               break;
            case ":":
               _loc1_.type = §0";§.§7!%§;
               _loc1_.value = ":";
               this.§8!#§();
               break;
            case "t":
               _loc2_ = "t" + this.§8!#§() + this.§8!#§() + this.§8!#§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §0";§.TRUE;
                  _loc1_.value = true;
                  this.§8!#§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§8!#§() + this.§8!#§() + this.§8!#§() + this.§8!#§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §0";§.FALSE;
                  _loc1_.value = false;
                  this.§8!#§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§8!#§() + this.§8!#§() + this.§8!#§()) == "null")
               {
                  _loc1_.type = §0";§.NULL;
                  _loc1_.value = null;
                  this.§8!#§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§8!#§() + this.§8!#§()) == "NaN")
               {
                  _loc1_.type = §0";§.§2",§;
                  _loc1_.value = NaN;
                  this.§8!#§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§8!l§();
               break;
            default:
               if(this.§;p§(this.§]"A§) || this.§]"A§ == "-")
               {
                  _loc1_ = this.§ Q§();
                  break;
               }
               if(this.§]"A§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§]"A§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §8!l§() : §2!P§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§4F§;
         while(true)
         {
            _loc1_ = this.§2w§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§2w§.charAt(_loc4_) == "\\")
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
         var _loc2_:§2!P§ = new §2!P§();
         _loc2_.type = §0";§.§<"$§;
         _loc2_.value = this.§ "F§(this.§2w§.substr(this.§4F§,_loc1_ - this.§4F§));
         this.§4F§ = _loc1_ + 1;
         this.§8!#§();
         return _loc2_;
      }
      
      public function § "F§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§2[§ && this.§7"7§.test(param1))
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
                     if(!this.§%!M§(_loc10_))
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
      
      private function § Q§() : §2!P§
      {
         var _loc3_:§2!P§ = null;
         var _loc1_:* = "";
         if(this.§]"A§ == "-")
         {
            _loc1_ += "-";
            this.§8!#§();
         }
         if(!this.§;p§(this.§]"A§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§]"A§ == "0")
         {
            _loc1_ += this.§]"A§;
            this.§8!#§();
            if(this.§;p§(this.§]"A§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§2[§ && this.§]"A§ == "x")
            {
               _loc1_ += this.§]"A§;
               this.§8!#§();
               if(this.§%!M§(this.§]"A§))
               {
                  _loc1_ += this.§]"A§;
                  this.§8!#§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§%!M§(this.§]"A§))
               {
                  _loc1_ += this.§]"A§;
                  this.§8!#§();
               }
            }
         }
         else
         {
            while(this.§;p§(this.§]"A§))
            {
               _loc1_ += this.§]"A§;
               this.§8!#§();
            }
         }
         if(this.§]"A§ == ".")
         {
            _loc1_ += ".";
            this.§8!#§();
            if(!this.§;p§(this.§]"A§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§;p§(this.§]"A§))
            {
               _loc1_ += this.§]"A§;
               this.§8!#§();
            }
         }
         if(this.§]"A§ == "e" || this.§]"A§ == "E")
         {
            _loc1_ += "e";
            this.§8!#§();
            if(this.§]"A§ == "+" || this.§]"A§ == "-")
            {
               _loc1_ += this.§]"A§;
               this.§8!#§();
            }
            if(!this.§;p§(this.§]"A§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§;p§(this.§]"A§))
            {
               _loc1_ += this.§]"A§;
               this.§8!#§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §2!P§();
            _loc3_.type = §0";§.§6!R§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §8!#§() : String
      {
         return this.§]"A§ = this.§2w§.charAt(this.§4F§++);
      }
      
      private function §#!t§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§4F§;
            this.§20§();
            this.§5!+§();
         }
         while(_loc1_ != this.§4F§);
         
      }
      
      private function §5!+§() : void
      {
         if(this.§]"A§ == "/")
         {
            this.§8!#§();
            switch(this.§]"A§)
            {
               case "/":
                  do
                  {
                     this.§8!#§();
                  }
                  while(this.§]"A§ != "\n" && this.§]"A§ != "");
                  
                  this.§8!#§();
                  break;
               case "*":
                  this.§8!#§();
                  while(true)
                  {
                     if(this.§]"A§ == "*")
                     {
                        this.§8!#§();
                        if(this.§]"A§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§8!#§();
                     }
                     if(this.§]"A§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§8!#§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§]"A§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §20§() : void
      {
         while(this.§@!q§(this.§]"A§))
         {
            this.§8!#§();
         }
      }
      
      private function §@!q§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§2[§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §;p§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §%!M§(param1:String) : Boolean
      {
         return this.§;p§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§4F§,this.§2w§);
      }
   }
}
