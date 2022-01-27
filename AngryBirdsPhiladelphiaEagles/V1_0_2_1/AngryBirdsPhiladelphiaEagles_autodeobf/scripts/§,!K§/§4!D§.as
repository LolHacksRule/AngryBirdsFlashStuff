package §,!K§
{
   public class §4!D§
   {
       
      
      private var §?h§:Boolean;
      
      private var obj:Object;
      
      private var § z§:String;
      
      private var §4!7§:int;
      
      private var §-b§:String;
      
      private var §'3§:RegExp;
      
      public function §4!D§(param1:String, param2:Boolean)
      {
         this.§'3§ = /[\x00-\x1F]/;
         super();
         this.§ z§ = param1;
         this.§?h§ = param2;
         this.§4!7§ = 0;
         this.§ !§();
      }
      
      public function §^y§() : §+I§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§+I§ = new §+I§();
         this.§01§();
         switch(this.§-b§)
         {
            case "{":
               _loc1_.type = §7!;§.§0R§;
               _loc1_.value = "{";
               this.§ !§();
               break;
            case "}":
               _loc1_.type = §7!;§.§ A§;
               _loc1_.value = "}";
               this.§ !§();
               break;
            case "[":
               _loc1_.type = §7!;§.§!H§;
               _loc1_.value = "[";
               this.§ !§();
               break;
            case "]":
               _loc1_.type = §7!;§.§"G§;
               _loc1_.value = "]";
               this.§ !§();
               break;
            case ",":
               _loc1_.type = §7!;§.§2>§;
               _loc1_.value = ",";
               this.§ !§();
               break;
            case ":":
               _loc1_.type = §7!;§.§7!5§;
               _loc1_.value = ":";
               this.§ !§();
               break;
            case "t":
               _loc2_ = "t" + this.§ !§() + this.§ !§() + this.§ !§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §7!;§.TRUE;
                  _loc1_.value = true;
                  this.§ !§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§ !§() + this.§ !§() + this.§ !§() + this.§ !§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §7!;§.FALSE;
                  _loc1_.value = false;
                  this.§ !§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§ !§() + this.§ !§() + this.§ !§()) == "null")
               {
                  _loc1_.type = §7!;§.NULL;
                  _loc1_.value = null;
                  this.§ !§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§ !§() + this.§ !§()) == "NaN")
               {
                  _loc1_.type = §7!;§.§]!N§;
                  _loc1_.value = NaN;
                  this.§ !§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§4f§();
               break;
            default:
               if(this.§5'§(this.§-b§) || this.§-b§ == "-")
               {
                  _loc1_ = this.§]J§();
                  break;
               }
               if(this.§-b§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§-b§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §4f§() : §+I§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§4!7§;
         while(true)
         {
            _loc1_ = this.§ z§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§ z§.charAt(_loc4_) == "\\")
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
         var _loc2_:§+I§ = new §+I§();
         _loc2_.type = §7!;§.§+!9§;
         _loc2_.value = this.§0w§(this.§ z§.substr(this.§4!7§,_loc1_ - this.§4!7§));
         this.§4!7§ = _loc1_ + 1;
         this.§ !§();
         return _loc2_;
      }
      
      public function §0w§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§?h§ && this.§'3§.test(param1))
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
                     if(!this.§7!L§(_loc10_))
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
      
      private function §]J§() : §+I§
      {
         var _loc3_:§+I§ = null;
         var _loc1_:* = "";
         if(this.§-b§ == "-")
         {
            _loc1_ += "-";
            this.§ !§();
         }
         if(!this.§5'§(this.§-b§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§-b§ == "0")
         {
            _loc1_ += this.§-b§;
            this.§ !§();
            if(this.§5'§(this.§-b§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§?h§ && this.§-b§ == "x")
            {
               _loc1_ += this.§-b§;
               this.§ !§();
               if(this.§7!L§(this.§-b§))
               {
                  _loc1_ += this.§-b§;
                  this.§ !§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§7!L§(this.§-b§))
               {
                  _loc1_ += this.§-b§;
                  this.§ !§();
               }
            }
         }
         else
         {
            while(this.§5'§(this.§-b§))
            {
               _loc1_ += this.§-b§;
               this.§ !§();
            }
         }
         if(this.§-b§ == ".")
         {
            _loc1_ += ".";
            this.§ !§();
            if(!this.§5'§(this.§-b§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§5'§(this.§-b§))
            {
               _loc1_ += this.§-b§;
               this.§ !§();
            }
         }
         if(this.§-b§ == "e" || this.§-b§ == "E")
         {
            _loc1_ += "e";
            this.§ !§();
            if(this.§-b§ == "+" || this.§-b§ == "-")
            {
               _loc1_ += this.§-b§;
               this.§ !§();
            }
            if(!this.§5'§(this.§-b§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§5'§(this.§-b§))
            {
               _loc1_ += this.§-b§;
               this.§ !§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §+I§();
            _loc3_.type = §7!;§.§2`§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function § !§() : String
      {
         return this.§-b§ = this.§ z§.charAt(this.§4!7§++);
      }
      
      private function §01§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§4!7§;
            this.§5p§();
            this.§36§();
         }
         while(_loc1_ != this.§4!7§);
         
      }
      
      private function §36§() : void
      {
         if(this.§-b§ == "/")
         {
            this.§ !§();
            switch(this.§-b§)
            {
               case "/":
                  do
                  {
                     this.§ !§();
                  }
                  while(this.§-b§ != "\n" && this.§-b§ != "");
                  
                  this.§ !§();
                  break;
               case "*":
                  this.§ !§();
                  while(true)
                  {
                     if(this.§-b§ == "*")
                     {
                        this.§ !§();
                        if(this.§-b§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§ !§();
                     }
                     if(this.§-b§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§ !§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§-b§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §5p§() : void
      {
         while(this.§[!"§(this.§-b§))
         {
            this.§ !§();
         }
      }
      
      private function §[!"§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§?h§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §5'§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §7!L§(param1:String) : Boolean
      {
         return this.§5'§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§4!7§,this.§ z§);
      }
   }
}
