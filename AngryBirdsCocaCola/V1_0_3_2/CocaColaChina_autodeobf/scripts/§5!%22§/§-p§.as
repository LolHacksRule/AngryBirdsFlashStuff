package §5!"§
{
   public class §-p§
   {
       
      
      private var §+y§:Boolean;
      
      private var obj:Object;
      
      private var §5!`§:String;
      
      private var §+]§:int;
      
      private var §,!§:String;
      
      private var §%!]§:RegExp;
      
      public function §-p§(param1:String, param2:Boolean)
      {
         this.§%!]§ = /[\x00-\x1F]/;
         super();
         this.§5!`§ = param1;
         this.§+y§ = param2;
         this.§+]§ = 0;
         this.§0!T§();
      }
      
      public function §9!b§() : §,!5§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§,!5§ = new §,!5§();
         this.§!!C§();
         switch(this.§,!§)
         {
            case "{":
               _loc1_.type = §>N§.§5!2§;
               _loc1_.value = "{";
               this.§0!T§();
               break;
            case "}":
               _loc1_.type = §>N§.§`[§;
               _loc1_.value = "}";
               this.§0!T§();
               break;
            case "[":
               _loc1_.type = §>N§.§4!T§;
               _loc1_.value = "[";
               this.§0!T§();
               break;
            case "]":
               _loc1_.type = §>N§.§@[§;
               _loc1_.value = "]";
               this.§0!T§();
               break;
            case ",":
               _loc1_.type = §>N§.§1l§;
               _loc1_.value = ",";
               this.§0!T§();
               break;
            case ":":
               _loc1_.type = §>N§.§0!+§;
               _loc1_.value = ":";
               this.§0!T§();
               break;
            case "t":
               _loc2_ = "t" + this.§0!T§() + this.§0!T§() + this.§0!T§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §>N§.TRUE;
                  _loc1_.value = true;
                  this.§0!T§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§0!T§() + this.§0!T§() + this.§0!T§() + this.§0!T§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §>N§.FALSE;
                  _loc1_.value = false;
                  this.§0!T§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§0!T§() + this.§0!T§() + this.§0!T§()) == "null")
               {
                  _loc1_.type = §>N§.§9!5§;
                  _loc1_.value = null;
                  this.§0!T§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§0!T§() + this.§0!T§()) == "NaN")
               {
                  _loc1_.type = §>N§.§!$§;
                  _loc1_.value = NaN;
                  this.§0!T§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§1b§();
               break;
            default:
               if(this.§%Q§(this.§,!§) || this.§,!§ == "-")
               {
                  _loc1_ = this.§+!+§();
                  break;
               }
               if(this.§,!§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§,!§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §1b§() : §,!5§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+]§;
         while(true)
         {
            _loc1_ = this.§5!`§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§5!`§.charAt(_loc4_) == "\\")
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
         var _loc2_:§,!5§ = new §,!5§();
         _loc2_.type = §>N§.§^![§;
         _loc2_.value = this.§[!'§(this.§5!`§.substr(this.§+]§,_loc1_ - this.§+]§));
         this.§+]§ = _loc1_ + 1;
         this.§0!T§();
         return _loc2_;
      }
      
      public function §[!'§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§+y§ && this.§%!]§.test(param1))
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
                     if(!this.§+w§(_loc10_))
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
      
      private function §+!+§() : §,!5§
      {
         var _loc3_:§,!5§ = null;
         var _loc1_:* = "";
         if(this.§,!§ == "-")
         {
            _loc1_ += "-";
            this.§0!T§();
         }
         if(!this.§%Q§(this.§,!§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§,!§ == "0")
         {
            _loc1_ += this.§,!§;
            this.§0!T§();
            if(this.§%Q§(this.§,!§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§+y§ && this.§,!§ == "x")
            {
               _loc1_ += this.§,!§;
               this.§0!T§();
               if(this.§+w§(this.§,!§))
               {
                  _loc1_ += this.§,!§;
                  this.§0!T§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§+w§(this.§,!§))
               {
                  _loc1_ += this.§,!§;
                  this.§0!T§();
               }
            }
         }
         else
         {
            while(this.§%Q§(this.§,!§))
            {
               _loc1_ += this.§,!§;
               this.§0!T§();
            }
         }
         if(this.§,!§ == ".")
         {
            _loc1_ += ".";
            this.§0!T§();
            if(!this.§%Q§(this.§,!§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§%Q§(this.§,!§))
            {
               _loc1_ += this.§,!§;
               this.§0!T§();
            }
         }
         if(this.§,!§ == "e" || this.§,!§ == "E")
         {
            _loc1_ += "e";
            this.§0!T§();
            if(this.§,!§ == "+" || this.§,!§ == "-")
            {
               _loc1_ += this.§,!§;
               this.§0!T§();
            }
            if(!this.§%Q§(this.§,!§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§%Q§(this.§,!§))
            {
               _loc1_ += this.§,!§;
               this.§0!T§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §,!5§();
            _loc3_.type = §>N§.§do§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §0!T§() : String
      {
         return this.§,!§ = this.§5!`§.charAt(this.§+]§++);
      }
      
      private function §!!C§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+]§;
            this.§'4§();
            this.§]!E§();
         }
         while(_loc1_ != this.§+]§);
         
      }
      
      private function §]!E§() : void
      {
         if(this.§,!§ == "/")
         {
            this.§0!T§();
            switch(this.§,!§)
            {
               case "/":
                  do
                  {
                     this.§0!T§();
                  }
                  while(this.§,!§ != "\n" && this.§,!§ != "");
                  
                  this.§0!T§();
                  break;
               case "*":
                  this.§0!T§();
                  while(true)
                  {
                     if(this.§,!§ == "*")
                     {
                        this.§0!T§();
                        if(this.§,!§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§0!T§();
                     }
                     if(this.§,!§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§0!T§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§,!§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §'4§() : void
      {
         while(this.§=K§(this.§,!§))
         {
            this.§0!T§();
         }
      }
      
      private function §=K§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§+y§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §%Q§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §+w§(param1:String) : Boolean
      {
         return this.§%Q§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+]§,this.§5!`§);
      }
   }
}
