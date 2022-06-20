package §'!g§
{
   public class §%#t§
   {
       
      
      private var §'"D§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §-"=§:int;
      
      private var ch:String;
      
      private var §,Z§:RegExp;
      
      public function §%#t§(param1:String, param2:Boolean)
      {
         this.§,Z§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§'"D§ = param2;
         this.§-"=§ = 0;
         this.§9"O§();
      }
      
      public function §%"S§() : §7#j§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§7#j§ = new §7#j§();
         this.§@!S§();
         switch(this.ch)
         {
            case "{":
               _loc1_.type = §?"1§.§7!K§;
               _loc1_.value = "{";
               this.§9"O§();
               break;
            case "}":
               _loc1_.type = §?"1§.§<"Y§;
               _loc1_.value = "}";
               this.§9"O§();
               break;
            case "[":
               _loc1_.type = §?"1§.§ !"§;
               _loc1_.value = "[";
               this.§9"O§();
               break;
            case "]":
               _loc1_.type = §?"1§.§&"P§;
               _loc1_.value = "]";
               this.§9"O§();
               break;
            case ",":
               _loc1_.type = §?"1§.§2!3§;
               _loc1_.value = ",";
               this.§9"O§();
               break;
            case ":":
               _loc1_.type = §?"1§.§^!k§;
               _loc1_.value = ":";
               this.§9"O§();
               break;
            case "t":
               _loc2_ = "t" + this.§9"O§() + this.§9"O§() + this.§9"O§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §?"1§.TRUE;
                  _loc1_.value = true;
                  this.§9"O§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§9"O§() + this.§9"O§() + this.§9"O§() + this.§9"O§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §?"1§.FALSE;
                  _loc1_.value = false;
                  this.§9"O§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§9"O§() + this.§9"O§() + this.§9"O§()) == "null")
               {
                  _loc1_.type = §?"1§.NULL;
                  _loc1_.value = null;
                  this.§9"O§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§9"O§() + this.§9"O§()) == "NaN")
               {
                  _loc1_.type = §?"1§.§7#U§;
                  _loc1_.value = NaN;
                  this.§9"O§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§^!N§();
               break;
            default:
               if(this.§9w§(this.ch) || this.ch == "-")
               {
                  _loc1_ = this.§!u§();
                  break;
               }
               if(this.ch == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.ch + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §^!N§() : §7#j§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§-"=§;
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
         var _loc2_:§7#j§ = new §7#j§();
         _loc2_.type = §?"1§.§>#5§;
         _loc2_.value = this.§<"m§(this.jsonString.substr(this.§-"=§,_loc1_ - this.§-"=§));
         this.§-"=§ = _loc1_ + 1;
         this.§9"O§();
         return _loc2_;
      }
      
      public function §<"m§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§'"D§ && this.§,Z§.test(param1))
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
                     if(!this.§ $<§(_loc10_))
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
      
      private function §!u§() : §7#j§
      {
         var _loc3_:§7#j§ = null;
         var _loc1_:* = "";
         if(this.ch == "-")
         {
            _loc1_ += "-";
            this.§9"O§();
         }
         if(!this.§9w§(this.ch))
         {
            this.parseError("Expecting a digit");
         }
         if(this.ch == "0")
         {
            _loc1_ += this.ch;
            this.§9"O§();
            if(this.§9w§(this.ch))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§'"D§ && this.ch == "x")
            {
               _loc1_ += this.ch;
               this.§9"O§();
               if(this.§ $<§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§9"O§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§ $<§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§9"O§();
               }
            }
         }
         else
         {
            while(this.§9w§(this.ch))
            {
               _loc1_ += this.ch;
               this.§9"O§();
            }
         }
         if(this.ch == ".")
         {
            _loc1_ += ".";
            this.§9"O§();
            if(!this.§9w§(this.ch))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§9w§(this.ch))
            {
               _loc1_ += this.ch;
               this.§9"O§();
            }
         }
         if(this.ch == "e" || this.ch == "E")
         {
            _loc1_ += "e";
            this.§9"O§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc1_ += this.ch;
               this.§9"O§();
            }
            if(!this.§9w§(this.ch))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§9w§(this.ch))
            {
               _loc1_ += this.ch;
               this.§9"O§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §7#j§();
            _loc3_.type = §?"1§.§ !H§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §9"O§() : String
      {
         return this.ch = this.jsonString.charAt(this.§-"=§++);
      }
      
      private function §@!S§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§-"=§;
            this.§+"c§();
            this.§ d§();
         }
         while(_loc1_ != this.§-"=§);
         
      }
      
      private function § d§() : void
      {
         if(this.ch == "/")
         {
            this.§9"O§();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.§9"O§();
                  }
                  while(this.ch != "\n" && this.ch != "");
                  
                  this.§9"O§();
                  break;
               case "*":
                  this.§9"O§();
                  while(true)
                  {
                     if(this.ch == "*")
                     {
                        this.§9"O§();
                        if(this.ch == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§9"O§();
                     }
                     if(this.ch == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§9"O§();
                  break;
               default:
                  this.parseError("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §+"c§() : void
      {
         while(this.§6"x§(this.ch))
         {
            this.§9"O§();
         }
      }
      
      private function §6"x§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§'"D§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §9w§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function § $<§(param1:String) : Boolean
      {
         return this.§9w§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§-"=§,this.jsonString);
      }
   }
}
