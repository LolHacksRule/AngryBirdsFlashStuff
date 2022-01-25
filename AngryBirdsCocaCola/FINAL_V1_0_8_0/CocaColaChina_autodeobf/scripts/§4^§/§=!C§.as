package §4^§
{
   public class §=!C§
   {
       
      
      private var §[!A§:Boolean;
      
      private var obj:Object;
      
      private var §#!'§:String;
      
      private var §@x§:int;
      
      private var §3V§:String;
      
      private var §`M§:RegExp;
      
      public function §=!C§(param1:String, param2:Boolean)
      {
         this.§`M§ = /[\x00-\x1F]/;
         super();
         this.§#!'§ = param1;
         this.§[!A§ = param2;
         this.§@x§ = 0;
         this.§]!?§();
      }
      
      public function §4R§() : §3!G§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§3!G§ = new §3!G§();
         this.§`!Z§();
         switch(this.§3V§)
         {
            case "{":
               _loc1_.type = § b§.§ -§;
               _loc1_.value = "{";
               this.§]!?§();
               break;
            case "}":
               _loc1_.type = § b§.§-!M§;
               _loc1_.value = "}";
               this.§]!?§();
               break;
            case "[":
               _loc1_.type = § b§.§1!$§;
               _loc1_.value = "[";
               this.§]!?§();
               break;
            case "]":
               _loc1_.type = § b§.§3!K§;
               _loc1_.value = "]";
               this.§]!?§();
               break;
            case ",":
               _loc1_.type = § b§.§@!D§;
               _loc1_.value = ",";
               this.§]!?§();
               break;
            case ":":
               _loc1_.type = § b§.§32§;
               _loc1_.value = ":";
               this.§]!?§();
               break;
            case "t":
               _loc2_ = "t" + this.§]!?§() + this.§]!?§() + this.§]!?§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = § b§.TRUE;
                  _loc1_.value = true;
                  this.§]!?§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§]!?§() + this.§]!?§() + this.§]!?§() + this.§]!?§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = § b§.FALSE;
                  _loc1_.value = false;
                  this.§]!?§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§]!?§() + this.§]!?§() + this.§]!?§()) == "null")
               {
                  _loc1_.type = § b§.§;E§;
                  _loc1_.value = null;
                  this.§]!?§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§]!?§() + this.§]!?§()) == "NaN")
               {
                  _loc1_.type = § b§.§3l§;
                  _loc1_.value = NaN;
                  this.§]!?§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§-!+§();
               break;
            default:
               if(this.§^!X§(this.§3V§) || this.§3V§ == "-")
               {
                  _loc1_ = this.§?e§();
                  break;
               }
               if(this.§3V§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§3V§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §-!+§() : §3!G§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§@x§;
         while(true)
         {
            _loc1_ = this.§#!'§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§#!'§.charAt(_loc4_) == "\\")
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
         var _loc2_:§3!G§ = new §3!G§();
         _loc2_.type = § b§.§"!E§;
         _loc2_.value = this.§6x§(this.§#!'§.substr(this.§@x§,_loc1_ - this.§@x§));
         this.§@x§ = _loc1_ + 1;
         this.§]!?§();
         return _loc2_;
      }
      
      public function §6x§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§[!A§ && this.§`M§.test(param1))
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
                     if(!this.§%!O§(_loc10_))
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
      
      private function §?e§() : §3!G§
      {
         var _loc3_:§3!G§ = null;
         var _loc1_:* = "";
         if(this.§3V§ == "-")
         {
            _loc1_ += "-";
            this.§]!?§();
         }
         if(!this.§^!X§(this.§3V§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§3V§ == "0")
         {
            _loc1_ += this.§3V§;
            this.§]!?§();
            if(this.§^!X§(this.§3V§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§[!A§ && this.§3V§ == "x")
            {
               _loc1_ += this.§3V§;
               this.§]!?§();
               if(this.§%!O§(this.§3V§))
               {
                  _loc1_ += this.§3V§;
                  this.§]!?§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§%!O§(this.§3V§))
               {
                  _loc1_ += this.§3V§;
                  this.§]!?§();
               }
            }
         }
         else
         {
            while(this.§^!X§(this.§3V§))
            {
               _loc1_ += this.§3V§;
               this.§]!?§();
            }
         }
         if(this.§3V§ == ".")
         {
            _loc1_ += ".";
            this.§]!?§();
            if(!this.§^!X§(this.§3V§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§^!X§(this.§3V§))
            {
               _loc1_ += this.§3V§;
               this.§]!?§();
            }
         }
         if(this.§3V§ == "e" || this.§3V§ == "E")
         {
            _loc1_ += "e";
            this.§]!?§();
            if(this.§3V§ == "+" || this.§3V§ == "-")
            {
               _loc1_ += this.§3V§;
               this.§]!?§();
            }
            if(!this.§^!X§(this.§3V§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§^!X§(this.§3V§))
            {
               _loc1_ += this.§3V§;
               this.§]!?§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §3!G§();
            _loc3_.type = § b§.§'v§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §]!?§() : String
      {
         return this.§3V§ = this.§#!'§.charAt(this.§@x§++);
      }
      
      private function §`!Z§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§@x§;
            this.§"!Q§();
            this.§2!?§();
         }
         while(_loc1_ != this.§@x§);
         
      }
      
      private function §2!?§() : void
      {
         if(this.§3V§ == "/")
         {
            this.§]!?§();
            switch(this.§3V§)
            {
               case "/":
                  do
                  {
                     this.§]!?§();
                  }
                  while(this.§3V§ != "\n" && this.§3V§ != "");
                  
                  this.§]!?§();
                  break;
               case "*":
                  this.§]!?§();
                  while(true)
                  {
                     if(this.§3V§ == "*")
                     {
                        this.§]!?§();
                        if(this.§3V§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§]!?§();
                     }
                     if(this.§3V§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§]!?§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§3V§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §"!Q§() : void
      {
         while(this.§2!X§(this.§3V§))
         {
            this.§]!?§();
         }
      }
      
      private function §2!X§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§[!A§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §^!X§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §%!O§(param1:String) : Boolean
      {
         return this.§^!X§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§@x§,this.§#!'§);
      }
   }
}
