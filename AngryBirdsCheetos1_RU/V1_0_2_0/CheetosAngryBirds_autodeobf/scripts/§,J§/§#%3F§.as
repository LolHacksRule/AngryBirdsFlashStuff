package §,J§
{
   public class §#?§
   {
       
      
      private var §+!@§:Boolean;
      
      private var obj:Object;
      
      private var §9!'§:String;
      
      private var §]R§:int;
      
      private var §^O§:String;
      
      private var §0,§:RegExp;
      
      public function §#?§(param1:String, param2:Boolean)
      {
         this.§0,§ = /[\x00-\x1F]/;
         super();
         this.§9!'§ = param1;
         this.§+!@§ = param2;
         this.§]R§ = 0;
         this.§6!6§();
      }
      
      public function §&]§() : §8!@§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§8!@§ = new §8!@§();
         this.§ !K§();
         switch(this.§^O§)
         {
            case "{":
               _loc1_.type = §^!]§.§0k§;
               _loc1_.value = "{";
               this.§6!6§();
               break;
            case "}":
               _loc1_.type = §^!]§.§"!`§;
               _loc1_.value = "}";
               this.§6!6§();
               break;
            case "[":
               _loc1_.type = §^!]§.§+!Y§;
               _loc1_.value = "[";
               this.§6!6§();
               break;
            case "]":
               _loc1_.type = §^!]§.§>!;§;
               _loc1_.value = "]";
               this.§6!6§();
               break;
            case ",":
               _loc1_.type = §^!]§.§^!6§;
               _loc1_.value = ",";
               this.§6!6§();
               break;
            case ":":
               _loc1_.type = §^!]§.§1!7§;
               _loc1_.value = ":";
               this.§6!6§();
               break;
            case "t":
               _loc2_ = "t" + this.§6!6§() + this.§6!6§() + this.§6!6§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §^!]§.TRUE;
                  _loc1_.value = true;
                  this.§6!6§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§6!6§() + this.§6!6§() + this.§6!6§() + this.§6!6§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §^!]§.FALSE;
                  _loc1_.value = false;
                  this.§6!6§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§6!6§() + this.§6!6§() + this.§6!6§()) == "null")
               {
                  _loc1_.type = §^!]§.§#!J§;
                  _loc1_.value = null;
                  this.§6!6§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§6!6§() + this.§6!6§()) == "NaN")
               {
                  _loc1_.type = §^!]§.§7]§;
                  _loc1_.value = NaN;
                  this.§6!6§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§`!_§();
               break;
            default:
               if(this.§,n§(this.§^O§) || this.§^O§ == "-")
               {
                  _loc1_ = this.§>8§();
                  break;
               }
               if(this.§^O§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§^O§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §`!_§() : §8!@§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§]R§;
         while(true)
         {
            _loc1_ = this.§9!'§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§9!'§.charAt(_loc4_) == "\\")
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
         var _loc2_:§8!@§ = new §8!@§();
         _loc2_.type = §^!]§.§'!S§;
         _loc2_.value = this.§-Z§(this.§9!'§.substr(this.§]R§,_loc1_ - this.§]R§));
         this.§]R§ = _loc1_ + 1;
         this.§6!6§();
         return _loc2_;
      }
      
      public function §-Z§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§+!@§ && this.§0,§.test(param1))
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
                     if(!this.§ !%§(_loc10_))
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
      
      private function §>8§() : §8!@§
      {
         var _loc3_:§8!@§ = null;
         var _loc1_:* = "";
         if(this.§^O§ == "-")
         {
            _loc1_ += "-";
            this.§6!6§();
         }
         if(!this.§,n§(this.§^O§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§^O§ == "0")
         {
            _loc1_ += this.§^O§;
            this.§6!6§();
            if(this.§,n§(this.§^O§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§+!@§ && this.§^O§ == "x")
            {
               _loc1_ += this.§^O§;
               this.§6!6§();
               if(this.§ !%§(this.§^O§))
               {
                  _loc1_ += this.§^O§;
                  this.§6!6§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§ !%§(this.§^O§))
               {
                  _loc1_ += this.§^O§;
                  this.§6!6§();
               }
            }
         }
         else
         {
            while(this.§,n§(this.§^O§))
            {
               _loc1_ += this.§^O§;
               this.§6!6§();
            }
         }
         if(this.§^O§ == ".")
         {
            _loc1_ += ".";
            this.§6!6§();
            if(!this.§,n§(this.§^O§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§,n§(this.§^O§))
            {
               _loc1_ += this.§^O§;
               this.§6!6§();
            }
         }
         if(this.§^O§ == "e" || this.§^O§ == "E")
         {
            _loc1_ += "e";
            this.§6!6§();
            if(this.§^O§ == "+" || this.§^O§ == "-")
            {
               _loc1_ += this.§^O§;
               this.§6!6§();
            }
            if(!this.§,n§(this.§^O§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§,n§(this.§^O§))
            {
               _loc1_ += this.§^O§;
               this.§6!6§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §8!@§();
            _loc3_.type = §^!]§.§6!$§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §6!6§() : String
      {
         return this.§^O§ = this.§9!'§.charAt(this.§]R§++);
      }
      
      private function § !K§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§]R§;
            this.§]a§();
            this.§?!]§();
         }
         while(_loc1_ != this.§]R§);
         
      }
      
      private function §?!]§() : void
      {
         if(this.§^O§ == "/")
         {
            this.§6!6§();
            switch(this.§^O§)
            {
               case "/":
                  do
                  {
                     this.§6!6§();
                  }
                  while(this.§^O§ != "\n" && this.§^O§ != "");
                  
                  this.§6!6§();
                  break;
               case "*":
                  this.§6!6§();
                  while(true)
                  {
                     if(this.§^O§ == "*")
                     {
                        this.§6!6§();
                        if(this.§^O§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§6!6§();
                     }
                     if(this.§^O§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§6!6§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§^O§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §]a§() : void
      {
         while(this.§=! §(this.§^O§))
         {
            this.§6!6§();
         }
      }
      
      private function §=! §(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§+!@§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §,n§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function § !%§(param1:String) : Boolean
      {
         return this.§,n§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§]R§,this.§9!'§);
      }
   }
}
