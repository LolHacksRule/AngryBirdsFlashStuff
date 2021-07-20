package §3I§
{
   public class §1!-§
   {
       
      
      private var §`!o§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §<G§:int;
      
      private var §1#§:String;
      
      private var §-"A§:RegExp;
      
      public function §1!-§(param1:String, param2:Boolean)
      {
         this.§-"A§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§`!o§ = param2;
         this.§<G§ = 0;
         this.§<"&§();
      }
      
      public function §!"5§() : §#X§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#X§ = new §#X§();
         this.§'"$§();
         switch(this.§1#§)
         {
            case "{":
               _loc1_.type = §!p§.§@""§;
               _loc1_.value = "{";
               this.§<"&§();
               break;
            case "}":
               _loc1_.type = §!p§.§%<§;
               _loc1_.value = "}";
               this.§<"&§();
               break;
            case "[":
               _loc1_.type = §!p§.§93§;
               _loc1_.value = "[";
               this.§<"&§();
               break;
            case "]":
               _loc1_.type = §!p§.§%7§;
               _loc1_.value = "]";
               this.§<"&§();
               break;
            case ",":
               _loc1_.type = §!p§.§[Z§;
               _loc1_.value = ",";
               this.§<"&§();
               break;
            case ":":
               _loc1_.type = §!p§.§,"C§;
               _loc1_.value = ":";
               this.§<"&§();
               break;
            case "t":
               _loc2_ = "t" + this.§<"&§() + this.§<"&§() + this.§<"&§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §!p§.TRUE;
                  _loc1_.value = true;
                  this.§<"&§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§<"&§() + this.§<"&§() + this.§<"&§() + this.§<"&§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §!p§.FALSE;
                  _loc1_.value = false;
                  this.§<"&§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§<"&§() + this.§<"&§() + this.§<"&§()) == "null")
               {
                  _loc1_.type = §!p§.NULL;
                  _loc1_.value = null;
                  this.§<"&§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§<"&§() + this.§<"&§()) == "NaN")
               {
                  _loc1_.type = §!p§.§3!,§;
                  _loc1_.value = NaN;
                  this.§<"&§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§+-§();
               break;
            default:
               if(this.§@"4§(this.§1#§) || this.§1#§ == "-")
               {
                  _loc1_ = this.§2!+§();
               }
               else
               {
                  if(this.§1#§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§1#§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §+-§() : §#X§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§<G§;
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
         var _loc2_:§#X§ = new §#X§();
         _loc2_.type = §!p§.§=!j§;
         _loc2_.value = this.§]n§(this.jsonString.substr(this.§<G§,_loc1_ - this.§<G§));
         this.§<G§ = _loc1_ + 1;
         this.§<"&§();
         return _loc2_;
      }
      
      public function §]n§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§`!o§ && this.§-"A§.test(param1))
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
                     if(!this.§7"$§(_loc10_))
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
      
      private function §2!+§() : §#X§
      {
         var _loc3_:§#X§ = null;
         var _loc1_:* = "";
         if(this.§1#§ == "-")
         {
            _loc1_ += "-";
            this.§<"&§();
         }
         if(!this.§@"4§(this.§1#§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§1#§ == "0")
         {
            _loc1_ += this.§1#§;
            this.§<"&§();
            if(this.§@"4§(this.§1#§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§`!o§ && this.§1#§ == "x")
            {
               _loc1_ += this.§1#§;
               this.§<"&§();
               if(this.§7"$§(this.§1#§))
               {
                  _loc1_ += this.§1#§;
                  this.§<"&§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§7"$§(this.§1#§))
               {
                  _loc1_ += this.§1#§;
                  this.§<"&§();
               }
            }
         }
         else
         {
            while(this.§@"4§(this.§1#§))
            {
               _loc1_ += this.§1#§;
               this.§<"&§();
            }
         }
         if(this.§1#§ == ".")
         {
            _loc1_ += ".";
            this.§<"&§();
            if(!this.§@"4§(this.§1#§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§@"4§(this.§1#§))
            {
               _loc1_ += this.§1#§;
               this.§<"&§();
            }
         }
         if(this.§1#§ == "e" || this.§1#§ == "E")
         {
            _loc1_ += "e";
            this.§<"&§();
            if(this.§1#§ == "+" || this.§1#§ == "-")
            {
               _loc1_ += this.§1#§;
               this.§<"&§();
            }
            if(!this.§@"4§(this.§1#§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§@"4§(this.§1#§))
            {
               _loc1_ += this.§1#§;
               this.§<"&§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §#X§();
            _loc3_.type = §!p§.§,!R§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §<"&§() : String
      {
         return this.§1#§ = this.jsonString.charAt(this.§<G§++);
      }
      
      private function §'"$§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§<G§;
            this.§9"-§();
            this.§ !Z§();
         }
         while(_loc1_ != this.§<G§);
         
      }
      
      private function § !Z§() : void
      {
         if(this.§1#§ == "/")
         {
            this.§<"&§();
            switch(this.§1#§)
            {
               case "/":
                  do
                  {
                     this.§<"&§();
                  }
                  while(this.§1#§ != "\n" && this.§1#§ != "");
                  
                  this.§<"&§();
                  break;
               case "*":
                  this.§<"&§();
                  while(true)
                  {
                     if(this.§1#§ == "*")
                     {
                        this.§<"&§();
                        if(this.§1#§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§<"&§();
                     }
                     if(this.§1#§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§<"&§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§1#§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §9"-§() : void
      {
         while(this.§#!j§(this.§1#§))
         {
            this.§<"&§();
         }
      }
      
      private function §#!j§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§`!o§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §@"4§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §7"$§(param1:String) : Boolean
      {
         return this.§@"4§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§<G§,this.jsonString);
      }
   }
}
