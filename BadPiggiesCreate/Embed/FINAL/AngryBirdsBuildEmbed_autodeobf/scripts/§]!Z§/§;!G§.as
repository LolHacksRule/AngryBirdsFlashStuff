package §]!Z§
{
   public class §;!G§
   {
       
      
      private var §@N§:Boolean;
      
      private var obj:Object;
      
      private var §60§:String;
      
      private var §6!>§:int;
      
      private var §@!f§:String;
      
      private var § G§:RegExp;
      
      public function §;!G§(param1:String, param2:Boolean)
      {
         this.§ G§ = /[\x00-\x1F]/;
         super();
         this.§60§ = param1;
         this.§@N§ = param2;
         this.§6!>§ = 0;
         this.§`!D§();
      }
      
      public function §4!h§() : §in§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§in§ = new §in§();
         this.§4D§();
         switch(this.§@!f§)
         {
            case "{":
               _loc1_.type = §8M§.§"!J§;
               _loc1_.value = "{";
               this.§`!D§();
               break;
            case "}":
               _loc1_.type = §8M§.§&!t§;
               _loc1_.value = "}";
               this.§`!D§();
               break;
            case "[":
               _loc1_.type = §8M§.§1r§;
               _loc1_.value = "[";
               this.§`!D§();
               break;
            case "]":
               _loc1_.type = §8M§.§@!p§;
               _loc1_.value = "]";
               this.§`!D§();
               break;
            case ",":
               _loc1_.type = §8M§.§`!<§;
               _loc1_.value = ",";
               this.§`!D§();
               break;
            case ":":
               _loc1_.type = §8M§.§0^§;
               _loc1_.value = ":";
               this.§`!D§();
               break;
            case "t":
               _loc2_ = "t" + this.§`!D§() + this.§`!D§() + this.§`!D§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §8M§.TRUE;
                  _loc1_.value = true;
                  this.§`!D§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§`!D§() + this.§`!D§() + this.§`!D§() + this.§`!D§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §8M§.FALSE;
                  _loc1_.value = false;
                  this.§`!D§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§`!D§() + this.§`!D§() + this.§`!D§()) == "null")
               {
                  _loc1_.type = §8M§.NULL;
                  _loc1_.value = null;
                  this.§`!D§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§`!D§() + this.§`!D§()) == "NaN")
               {
                  _loc1_.type = §8M§.§+!p§;
                  _loc1_.value = NaN;
                  this.§`!D§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§[!g§();
               break;
            default:
               if(this.§!!m§(this.§@!f§) || this.§@!f§ == "-")
               {
                  _loc1_ = this.§-!O§();
                  break;
               }
               if(this.§@!f§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§@!f§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §[!g§() : §in§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§6!>§;
         while(true)
         {
            _loc1_ = this.§60§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§60§.charAt(_loc4_) == "\\")
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
         var _loc2_:§in§ = new §in§();
         _loc2_.type = §8M§.§0!h§;
         _loc2_.value = this.§^H§(this.§60§.substr(this.§6!>§,_loc1_ - this.§6!>§));
         this.§6!>§ = _loc1_ + 1;
         this.§`!D§();
         return _loc2_;
      }
      
      public function §^H§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§@N§ && this.§ G§.test(param1))
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
                     if(!this.§]!Y§(_loc10_))
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
      
      private function §-!O§() : §in§
      {
         var _loc3_:§in§ = null;
         var _loc1_:* = "";
         if(this.§@!f§ == "-")
         {
            _loc1_ += "-";
            this.§`!D§();
         }
         if(!this.§!!m§(this.§@!f§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§@!f§ == "0")
         {
            _loc1_ += this.§@!f§;
            this.§`!D§();
            if(this.§!!m§(this.§@!f§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§@N§ && this.§@!f§ == "x")
            {
               _loc1_ += this.§@!f§;
               this.§`!D§();
               if(this.§]!Y§(this.§@!f§))
               {
                  _loc1_ += this.§@!f§;
                  this.§`!D§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§]!Y§(this.§@!f§))
               {
                  _loc1_ += this.§@!f§;
                  this.§`!D§();
               }
            }
         }
         else
         {
            while(this.§!!m§(this.§@!f§))
            {
               _loc1_ += this.§@!f§;
               this.§`!D§();
            }
         }
         if(this.§@!f§ == ".")
         {
            _loc1_ += ".";
            this.§`!D§();
            if(!this.§!!m§(this.§@!f§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§!!m§(this.§@!f§))
            {
               _loc1_ += this.§@!f§;
               this.§`!D§();
            }
         }
         if(this.§@!f§ == "e" || this.§@!f§ == "E")
         {
            _loc1_ += "e";
            this.§`!D§();
            if(this.§@!f§ == "+" || this.§@!f§ == "-")
            {
               _loc1_ += this.§@!f§;
               this.§`!D§();
            }
            if(!this.§!!m§(this.§@!f§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§!!m§(this.§@!f§))
            {
               _loc1_ += this.§@!f§;
               this.§`!D§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §in§();
            _loc3_.type = §8M§.§1!b§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §`!D§() : String
      {
         return this.§@!f§ = this.§60§.charAt(this.§6!>§++);
      }
      
      private function §4D§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§6!>§;
            this.§5g§();
            this.§7J§();
         }
         while(_loc1_ != this.§6!>§);
         
      }
      
      private function §7J§() : void
      {
         if(this.§@!f§ == "/")
         {
            this.§`!D§();
            switch(this.§@!f§)
            {
               case "/":
                  do
                  {
                     this.§`!D§();
                  }
                  while(this.§@!f§ != "\n" && this.§@!f§ != "");
                  
                  this.§`!D§();
                  break;
               case "*":
                  this.§`!D§();
                  while(true)
                  {
                     if(this.§@!f§ == "*")
                     {
                        this.§`!D§();
                        if(this.§@!f§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§`!D§();
                     }
                     if(this.§@!f§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§`!D§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§@!f§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §5g§() : void
      {
         while(this.§&!>§(this.§@!f§))
         {
            this.§`!D§();
         }
      }
      
      private function §&!>§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§@N§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §!!m§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §]!Y§(param1:String) : Boolean
      {
         return this.§!!m§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§6!>§,this.§60§);
      }
   }
}
