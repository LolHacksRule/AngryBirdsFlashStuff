package §6"&§
{
   public class §>!z§
   {
       
      
      private var §68§:Boolean;
      
      private var obj:Object;
      
      private var §`"7§:String;
      
      private var §'C§:int;
      
      private var §^!h§:String;
      
      private var §^!%§:RegExp;
      
      public function §>!z§(param1:String, param2:Boolean)
      {
         this.§^!%§ = /[\x00-\x1F]/;
         super();
         this.§`"7§ = param1;
         this.§68§ = param2;
         this.§'C§ = 0;
         this.§2!A§();
      }
      
      public function §13§() : §9t§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§9t§ = new §9t§();
         this.§+T§();
         switch(this.§^!h§)
         {
            case "{":
               _loc1_.type = §&!F§.§#"<§;
               _loc1_.value = "{";
               this.§2!A§();
               break;
            case "}":
               _loc1_.type = §&!F§.§>"7§;
               _loc1_.value = "}";
               this.§2!A§();
               break;
            case "[":
               _loc1_.type = §&!F§.§,!F§;
               _loc1_.value = "[";
               this.§2!A§();
               break;
            case "]":
               _loc1_.type = §&!F§.§`"-§;
               _loc1_.value = "]";
               this.§2!A§();
               break;
            case ",":
               _loc1_.type = §&!F§.§4">§;
               _loc1_.value = ",";
               this.§2!A§();
               break;
            case ":":
               _loc1_.type = §&!F§.§@!O§;
               _loc1_.value = ":";
               this.§2!A§();
               break;
            case "t":
               _loc2_ = "t" + this.§2!A§() + this.§2!A§() + this.§2!A§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §&!F§.TRUE;
                  _loc1_.value = true;
                  this.§2!A§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§2!A§() + this.§2!A§() + this.§2!A§() + this.§2!A§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §&!F§.FALSE;
                  _loc1_.value = false;
                  this.§2!A§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§2!A§() + this.§2!A§() + this.§2!A§()) == "null")
               {
                  _loc1_.type = §&!F§.§`M§;
                  _loc1_.value = null;
                  this.§2!A§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§2!A§() + this.§2!A§()) == "NaN")
               {
                  _loc1_.type = §&!F§.§<d§;
                  _loc1_.value = NaN;
                  this.§2!A§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§2!;§();
               break;
            default:
               if(this.§<!L§(this.§^!h§) || this.§^!h§ == "-")
               {
                  _loc1_ = this.§,G§();
                  break;
               }
               if(this.§^!h§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§^!h§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §2!;§() : §9t§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§'C§;
         while(true)
         {
            _loc1_ = this.§`"7§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§`"7§.charAt(_loc4_) == "\\")
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
         var _loc2_:§9t§ = new §9t§();
         _loc2_.type = §&!F§.§>-§;
         _loc2_.value = this.§=">§(this.§`"7§.substr(this.§'C§,_loc1_ - this.§'C§));
         this.§'C§ = _loc1_ + 1;
         this.§2!A§();
         return _loc2_;
      }
      
      public function §=">§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§68§ && this.§^!%§.test(param1))
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
                     if(!this.§&"0§(_loc10_))
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
      
      private function §,G§() : §9t§
      {
         var _loc3_:§9t§ = null;
         var _loc1_:* = "";
         if(this.§^!h§ == "-")
         {
            _loc1_ += "-";
            this.§2!A§();
         }
         if(!this.§<!L§(this.§^!h§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§^!h§ == "0")
         {
            _loc1_ += this.§^!h§;
            this.§2!A§();
            if(this.§<!L§(this.§^!h§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§68§ && this.§^!h§ == "x")
            {
               _loc1_ += this.§^!h§;
               this.§2!A§();
               if(this.§&"0§(this.§^!h§))
               {
                  _loc1_ += this.§^!h§;
                  this.§2!A§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§&"0§(this.§^!h§))
               {
                  _loc1_ += this.§^!h§;
                  this.§2!A§();
               }
            }
         }
         else
         {
            while(this.§<!L§(this.§^!h§))
            {
               _loc1_ += this.§^!h§;
               this.§2!A§();
            }
         }
         if(this.§^!h§ == ".")
         {
            _loc1_ += ".";
            this.§2!A§();
            if(!this.§<!L§(this.§^!h§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§<!L§(this.§^!h§))
            {
               _loc1_ += this.§^!h§;
               this.§2!A§();
            }
         }
         if(this.§^!h§ == "e" || this.§^!h§ == "E")
         {
            _loc1_ += "e";
            this.§2!A§();
            if(this.§^!h§ == "+" || this.§^!h§ == "-")
            {
               _loc1_ += this.§^!h§;
               this.§2!A§();
            }
            if(!this.§<!L§(this.§^!h§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§<!L§(this.§^!h§))
            {
               _loc1_ += this.§^!h§;
               this.§2!A§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §9t§();
            _loc3_.type = §&!F§.§;!s§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §2!A§() : String
      {
         return this.§^!h§ = this.§`"7§.charAt(this.§'C§++);
      }
      
      private function §+T§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§'C§;
            this.§>r§();
            this.§ H§();
         }
         while(_loc1_ != this.§'C§);
         
      }
      
      private function § H§() : void
      {
         if(this.§^!h§ == "/")
         {
            this.§2!A§();
            switch(this.§^!h§)
            {
               case "/":
                  do
                  {
                     this.§2!A§();
                  }
                  while(this.§^!h§ != "\n" && this.§^!h§ != "");
                  
                  this.§2!A§();
                  break;
               case "*":
                  this.§2!A§();
                  while(true)
                  {
                     if(this.§^!h§ == "*")
                     {
                        this.§2!A§();
                        if(this.§^!h§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§2!A§();
                     }
                     if(this.§^!h§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§2!A§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§^!h§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §>r§() : void
      {
         while(this.§'!"§(this.§^!h§))
         {
            this.§2!A§();
         }
      }
      
      private function §'!"§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§68§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §<!L§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §&"0§(param1:String) : Boolean
      {
         return this.§<!L§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§'C§,this.§`"7§);
      }
   }
}
