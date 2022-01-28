package §>'§
{
   public class §-",§
   {
       
      
      private var §3!K§:Boolean;
      
      private var obj:Object;
      
      private var §5!%§:String;
      
      private var §?"+§:int;
      
      private var §%A§:String;
      
      private var §9!Y§:RegExp;
      
      public function §-",§(param1:String, param2:Boolean)
      {
         this.§9!Y§ = /[\x00-\x1F]/;
         super();
         this.§5!%§ = param1;
         this.§3!K§ = param2;
         this.§?"+§ = 0;
         this.§+!4§();
      }
      
      public function §[!p§() : §#s§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#s§ = new §#s§();
         this.§[a§();
         switch(this.§%A§)
         {
            case "{":
               _loc1_.type = §7j§.§8!'§;
               _loc1_.value = "{";
               this.§+!4§();
               break;
            case "}":
               _loc1_.type = §7j§.§#!y§;
               _loc1_.value = "}";
               this.§+!4§();
               break;
            case "[":
               _loc1_.type = §7j§.§8!m§;
               _loc1_.value = "[";
               this.§+!4§();
               break;
            case "]":
               _loc1_.type = §7j§.§"?§;
               _loc1_.value = "]";
               this.§+!4§();
               break;
            case ",":
               _loc1_.type = §7j§.§`"?§;
               _loc1_.value = ",";
               this.§+!4§();
               break;
            case ":":
               _loc1_.type = §7j§.§8§;
               _loc1_.value = ":";
               this.§+!4§();
               break;
            case "t":
               _loc2_ = "t" + this.§+!4§() + this.§+!4§() + this.§+!4§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §7j§.TRUE;
                  _loc1_.value = true;
                  this.§+!4§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§+!4§() + this.§+!4§() + this.§+!4§() + this.§+!4§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §7j§.FALSE;
                  _loc1_.value = false;
                  this.§+!4§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§+!4§() + this.§+!4§() + this.§+!4§()) == "null")
               {
                  _loc1_.type = §7j§.§#!A§;
                  _loc1_.value = null;
                  this.§+!4§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§+!4§() + this.§+!4§()) == "NaN")
               {
                  _loc1_.type = §7j§.§=V§;
                  _loc1_.value = NaN;
                  this.§+!4§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§<!w§();
               break;
            default:
               if(this.§"!@§(this.§%A§) || this.§%A§ == "-")
               {
                  _loc1_ = this.§#"1§();
                  break;
               }
               if(this.§%A§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§%A§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §<!w§() : §#s§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§?"+§;
         while(true)
         {
            _loc1_ = this.§5!%§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§5!%§.charAt(_loc4_) == "\\")
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
         var _loc2_:§#s§ = new §#s§();
         _loc2_.type = §7j§.§%w§;
         _loc2_.value = this.§,!a§(this.§5!%§.substr(this.§?"+§,_loc1_ - this.§?"+§));
         this.§?"+§ = _loc1_ + 1;
         this.§+!4§();
         return _loc2_;
      }
      
      public function §,!a§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§3!K§ && this.§9!Y§.test(param1))
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
                     if(!this.§!!V§(_loc10_))
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
      
      private function §#"1§() : §#s§
      {
         var _loc3_:§#s§ = null;
         var _loc1_:* = "";
         if(this.§%A§ == "-")
         {
            _loc1_ += "-";
            this.§+!4§();
         }
         if(!this.§"!@§(this.§%A§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§%A§ == "0")
         {
            _loc1_ += this.§%A§;
            this.§+!4§();
            if(this.§"!@§(this.§%A§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§3!K§ && this.§%A§ == "x")
            {
               _loc1_ += this.§%A§;
               this.§+!4§();
               if(this.§!!V§(this.§%A§))
               {
                  _loc1_ += this.§%A§;
                  this.§+!4§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§!!V§(this.§%A§))
               {
                  _loc1_ += this.§%A§;
                  this.§+!4§();
               }
            }
         }
         else
         {
            while(this.§"!@§(this.§%A§))
            {
               _loc1_ += this.§%A§;
               this.§+!4§();
            }
         }
         if(this.§%A§ == ".")
         {
            _loc1_ += ".";
            this.§+!4§();
            if(!this.§"!@§(this.§%A§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§"!@§(this.§%A§))
            {
               _loc1_ += this.§%A§;
               this.§+!4§();
            }
         }
         if(this.§%A§ == "e" || this.§%A§ == "E")
         {
            _loc1_ += "e";
            this.§+!4§();
            if(this.§%A§ == "+" || this.§%A§ == "-")
            {
               _loc1_ += this.§%A§;
               this.§+!4§();
            }
            if(!this.§"!@§(this.§%A§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§"!@§(this.§%A§))
            {
               _loc1_ += this.§%A§;
               this.§+!4§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §#s§();
            _loc3_.type = §7j§.§&$§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §+!4§() : String
      {
         return this.§%A§ = this.§5!%§.charAt(this.§?"+§++);
      }
      
      private function §[a§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§?"+§;
            this.§@!E§();
            this.§1!Y§();
         }
         while(_loc1_ != this.§?"+§);
         
      }
      
      private function §1!Y§() : void
      {
         if(this.§%A§ == "/")
         {
            this.§+!4§();
            switch(this.§%A§)
            {
               case "/":
                  do
                  {
                     this.§+!4§();
                  }
                  while(this.§%A§ != "\n" && this.§%A§ != "");
                  
                  this.§+!4§();
                  break;
               case "*":
                  this.§+!4§();
                  while(true)
                  {
                     if(this.§%A§ == "*")
                     {
                        this.§+!4§();
                        if(this.§%A§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§+!4§();
                     }
                     if(this.§%A§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§+!4§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§%A§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §@!E§() : void
      {
         while(this.§7"$§(this.§%A§))
         {
            this.§+!4§();
         }
      }
      
      private function §7"$§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§3!K§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §"!@§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §!!V§(param1:String) : Boolean
      {
         return this.§"!@§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§?"+§,this.§5!%§);
      }
   }
}
