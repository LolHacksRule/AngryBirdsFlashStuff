package §?H§
{
   public class §4!5§
   {
       
      
      private var §^!!§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §+-§:int;
      
      private var §>!D§:String;
      
      private var §]!L§:RegExp;
      
      public function §4!5§(param1:String, param2:Boolean)
      {
         this.§]!L§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§^!!§ = param2;
         this.§+-§ = 0;
         this.§,!#§();
      }
      
      public function §!U§() : §+Y§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§+Y§ = new §+Y§();
         this.§29§();
         switch(this.§>!D§)
         {
            case "{":
               _loc1_.type = §@!M§.§!!O§;
               _loc1_.value = "{";
               this.§,!#§();
               break;
            case "}":
               _loc1_.type = §@!M§.§&!8§;
               _loc1_.value = "}";
               this.§,!#§();
               break;
            case "[":
               _loc1_.type = §@!M§.§&F§;
               _loc1_.value = "[";
               this.§,!#§();
               break;
            case "]":
               _loc1_.type = §@!M§.§][§;
               _loc1_.value = "]";
               this.§,!#§();
               break;
            case ",":
               _loc1_.type = §@!M§.§?l§;
               _loc1_.value = ",";
               this.§,!#§();
               break;
            case ":":
               _loc1_.type = §@!M§.§9v§;
               _loc1_.value = ":";
               this.§,!#§();
               break;
            case "t":
               _loc2_ = "t" + this.§,!#§() + this.§,!#§() + this.§,!#§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §@!M§.TRUE;
                  _loc1_.value = true;
                  this.§,!#§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§,!#§() + this.§,!#§() + this.§,!#§() + this.§,!#§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §@!M§.FALSE;
                  _loc1_.value = false;
                  this.§,!#§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§,!#§() + this.§,!#§() + this.§,!#§()) == "null")
               {
                  _loc1_.type = §@!M§.NULL;
                  _loc1_.value = null;
                  this.§,!#§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§,!#§() + this.§,!#§()) == "NaN")
               {
                  _loc1_.type = §@!M§.§6o§;
                  _loc1_.value = NaN;
                  this.§,!#§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§7^§();
               break;
            default:
               if(this.§'b§(this.§>!D§) || this.§>!D§ == "-")
               {
                  _loc1_ = this.§6b§();
                  break;
               }
               if(this.§>!D§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§>!D§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §7^§() : §+Y§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+-§;
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
         var _loc2_:§+Y§ = new §+Y§();
         _loc2_.type = §@!M§.§1v§;
         _loc2_.value = this.§,@§(this.jsonString.substr(this.§+-§,_loc1_ - this.§+-§));
         this.§+-§ = _loc1_ + 1;
         this.§,!#§();
         return _loc2_;
      }
      
      public function §,@§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§^!!§ && this.§]!L§.test(param1))
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
                     if(!this.§3!4§(_loc10_))
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
      
      private function §6b§() : §+Y§
      {
         var _loc3_:§+Y§ = null;
         var _loc1_:* = "";
         if(this.§>!D§ == "-")
         {
            _loc1_ += "-";
            this.§,!#§();
         }
         if(!this.§'b§(this.§>!D§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§>!D§ == "0")
         {
            _loc1_ += this.§>!D§;
            this.§,!#§();
            if(this.§'b§(this.§>!D§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§^!!§ && this.§>!D§ == "x")
            {
               _loc1_ += this.§>!D§;
               this.§,!#§();
               if(this.§3!4§(this.§>!D§))
               {
                  _loc1_ += this.§>!D§;
                  this.§,!#§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§3!4§(this.§>!D§))
               {
                  _loc1_ += this.§>!D§;
                  this.§,!#§();
               }
            }
         }
         else
         {
            while(this.§'b§(this.§>!D§))
            {
               _loc1_ += this.§>!D§;
               this.§,!#§();
            }
         }
         if(this.§>!D§ == ".")
         {
            _loc1_ += ".";
            this.§,!#§();
            if(!this.§'b§(this.§>!D§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§'b§(this.§>!D§))
            {
               _loc1_ += this.§>!D§;
               this.§,!#§();
            }
         }
         if(this.§>!D§ == "e" || this.§>!D§ == "E")
         {
            _loc1_ += "e";
            this.§,!#§();
            if(this.§>!D§ == "+" || this.§>!D§ == "-")
            {
               _loc1_ += this.§>!D§;
               this.§,!#§();
            }
            if(!this.§'b§(this.§>!D§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§'b§(this.§>!D§))
            {
               _loc1_ += this.§>!D§;
               this.§,!#§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §+Y§();
            _loc3_.type = §@!M§.§6l§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §,!#§() : String
      {
         return this.§>!D§ = this.jsonString.charAt(this.§+-§++);
      }
      
      private function §29§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+-§;
            this.§'!=§();
            this.§ s§();
         }
         while(_loc1_ != this.§+-§);
         
      }
      
      private function § s§() : void
      {
         if(this.§>!D§ == "/")
         {
            this.§,!#§();
            switch(this.§>!D§)
            {
               case "/":
                  do
                  {
                     this.§,!#§();
                  }
                  while(this.§>!D§ != "\n" && this.§>!D§ != "");
                  
                  this.§,!#§();
                  break;
               case "*":
                  this.§,!#§();
                  while(true)
                  {
                     if(this.§>!D§ == "*")
                     {
                        this.§,!#§();
                        if(this.§>!D§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§,!#§();
                     }
                     if(this.§>!D§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§,!#§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§>!D§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §'!=§() : void
      {
         while(this.§"k§(this.§>!D§))
         {
            this.§,!#§();
         }
      }
      
      private function §"k§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§^!!§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §'b§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §3!4§(param1:String) : Boolean
      {
         return this.§'b§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+-§,this.jsonString);
      }
   }
}
