package §=K§
{
   public class §1$§
   {
       
      
      private var §;!b§:Boolean;
      
      private var obj:Object;
      
      private var §+!-§:String;
      
      private var §"!t§:int;
      
      private var §'"7§:String;
      
      private var §?!G§:RegExp;
      
      public function §1$§(param1:String, param2:Boolean)
      {
         this.§?!G§ = /[\x00-\x1F]/;
         super();
         this.§+!-§ = param1;
         this.§;!b§ = param2;
         this.§"!t§ = 0;
         this.§9!L§();
      }
      
      public function §'!]§() : §`!s§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§`!s§ = new §`!s§();
         this.§]!#§();
         switch(this.§'"7§)
         {
            case "{":
               _loc1_.type = §@!q§.§!!w§;
               _loc1_.value = "{";
               this.§9!L§();
               break;
            case "}":
               _loc1_.type = §@!q§.§`"5§;
               _loc1_.value = "}";
               this.§9!L§();
               break;
            case "[":
               _loc1_.type = §@!q§.§2v§;
               _loc1_.value = "[";
               this.§9!L§();
               break;
            case "]":
               _loc1_.type = §@!q§.§%!k§;
               _loc1_.value = "]";
               this.§9!L§();
               break;
            case ",":
               _loc1_.type = §@!q§.§%E§;
               _loc1_.value = ",";
               this.§9!L§();
               break;
            case ":":
               _loc1_.type = §@!q§.§0!o§;
               _loc1_.value = ":";
               this.§9!L§();
               break;
            case "t":
               _loc2_ = "t" + this.§9!L§() + this.§9!L§() + this.§9!L§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §@!q§.TRUE;
                  _loc1_.value = true;
                  this.§9!L§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§9!L§() + this.§9!L§() + this.§9!L§() + this.§9!L§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §@!q§.FALSE;
                  _loc1_.value = false;
                  this.§9!L§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§9!L§() + this.§9!L§() + this.§9!L§()) == "null")
               {
                  _loc1_.type = §@!q§.§5J§;
                  _loc1_.value = null;
                  this.§9!L§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§9!L§() + this.§9!L§()) == "NaN")
               {
                  _loc1_.type = §@!q§.§="§;
                  _loc1_.value = NaN;
                  this.§9!L§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§0U§();
               break;
            default:
               if(this.§1!T§(this.§'"7§) || this.§'"7§ == "-")
               {
                  _loc1_ = this.§1!k§();
                  break;
               }
               if(this.§'"7§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§'"7§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §0U§() : §`!s§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§"!t§;
         while(true)
         {
            _loc1_ = this.§+!-§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§+!-§.charAt(_loc4_) == "\\")
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
         var _loc2_:§`!s§ = new §`!s§();
         _loc2_.type = §@!q§.§4"#§;
         _loc2_.value = this.§^!3§(this.§+!-§.substr(this.§"!t§,_loc1_ - this.§"!t§));
         this.§"!t§ = _loc1_ + 1;
         this.§9!L§();
         return _loc2_;
      }
      
      public function §^!3§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§;!b§ && this.§?!G§.test(param1))
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
                     if(!this.§!!q§(_loc10_))
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
      
      private function §1!k§() : §`!s§
      {
         var _loc3_:§`!s§ = null;
         var _loc1_:* = "";
         if(this.§'"7§ == "-")
         {
            _loc1_ += "-";
            this.§9!L§();
         }
         if(!this.§1!T§(this.§'"7§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§'"7§ == "0")
         {
            _loc1_ += this.§'"7§;
            this.§9!L§();
            if(this.§1!T§(this.§'"7§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§;!b§ && this.§'"7§ == "x")
            {
               _loc1_ += this.§'"7§;
               this.§9!L§();
               if(this.§!!q§(this.§'"7§))
               {
                  _loc1_ += this.§'"7§;
                  this.§9!L§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§!!q§(this.§'"7§))
               {
                  _loc1_ += this.§'"7§;
                  this.§9!L§();
               }
            }
         }
         else
         {
            while(this.§1!T§(this.§'"7§))
            {
               _loc1_ += this.§'"7§;
               this.§9!L§();
            }
         }
         if(this.§'"7§ == ".")
         {
            _loc1_ += ".";
            this.§9!L§();
            if(!this.§1!T§(this.§'"7§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§1!T§(this.§'"7§))
            {
               _loc1_ += this.§'"7§;
               this.§9!L§();
            }
         }
         if(this.§'"7§ == "e" || this.§'"7§ == "E")
         {
            _loc1_ += "e";
            this.§9!L§();
            if(this.§'"7§ == "+" || this.§'"7§ == "-")
            {
               _loc1_ += this.§'"7§;
               this.§9!L§();
            }
            if(!this.§1!T§(this.§'"7§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§1!T§(this.§'"7§))
            {
               _loc1_ += this.§'"7§;
               this.§9!L§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §`!s§();
            _loc3_.type = §@!q§.§!H§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §9!L§() : String
      {
         return this.§'"7§ = this.§+!-§.charAt(this.§"!t§++);
      }
      
      private function §]!#§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§"!t§;
            this.§2!0§();
            this.§5!a§();
         }
         while(_loc1_ != this.§"!t§);
         
      }
      
      private function §5!a§() : void
      {
         if(this.§'"7§ == "/")
         {
            this.§9!L§();
            switch(this.§'"7§)
            {
               case "/":
                  do
                  {
                     this.§9!L§();
                  }
                  while(this.§'"7§ != "\n" && this.§'"7§ != "");
                  
                  this.§9!L§();
                  break;
               case "*":
                  this.§9!L§();
                  while(true)
                  {
                     if(this.§'"7§ == "*")
                     {
                        this.§9!L§();
                        if(this.§'"7§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§9!L§();
                     }
                     if(this.§'"7§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§9!L§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§'"7§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §2!0§() : void
      {
         while(this.§1!;§(this.§'"7§))
         {
            this.§9!L§();
         }
      }
      
      private function §1!;§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§;!b§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §1!T§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §!!q§(param1:String) : Boolean
      {
         return this.§1!T§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§"!t§,this.§+!-§);
      }
   }
}
