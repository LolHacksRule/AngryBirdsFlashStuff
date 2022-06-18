package §#!<§
{
   public class §8!O§
   {
       
      
      private var §[y§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var § y§:int;
      
      private var §7O§:String;
      
      private var §!!6§:RegExp;
      
      public function §8!O§(param1:String, param2:Boolean)
      {
         this.§!!6§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§[y§ = param2;
         this.§ y§ = 0;
         this.§=!N§();
      }
      
      public function §?!D§() : §65§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§65§ = new §65§();
         this.§-%§();
         switch(this.§7O§)
         {
            case "{":
               _loc1_.type = §?t§.§2S§;
               _loc1_.value = "{";
               this.§=!N§();
               break;
            case "}":
               _loc1_.type = §?t§.§9!>§;
               _loc1_.value = "}";
               this.§=!N§();
               break;
            case "[":
               _loc1_.type = §?t§.§1_§;
               _loc1_.value = "[";
               this.§=!N§();
               break;
            case "]":
               _loc1_.type = §?t§.§@c§;
               _loc1_.value = "]";
               this.§=!N§();
               break;
            case ",":
               _loc1_.type = §?t§.§"j§;
               _loc1_.value = ",";
               this.§=!N§();
               break;
            case ":":
               _loc1_.type = §?t§.§>K§;
               _loc1_.value = ":";
               this.§=!N§();
               break;
            case "t":
               _loc2_ = "t" + this.§=!N§() + this.§=!N§() + this.§=!N§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §?t§.TRUE;
                  _loc1_.value = true;
                  this.§=!N§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§=!N§() + this.§=!N§() + this.§=!N§() + this.§=!N§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §?t§.FALSE;
                  _loc1_.value = false;
                  this.§=!N§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§=!N§() + this.§=!N§() + this.§=!N§()) == "null")
               {
                  _loc1_.type = §?t§.NULL;
                  _loc1_.value = null;
                  this.§=!N§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§=!N§() + this.§=!N§()) == "NaN")
               {
                  _loc1_.type = §?t§.§"o§;
                  _loc1_.value = NaN;
                  this.§=!N§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§0G§();
               break;
            default:
               if(this.§?7§(this.§7O§) || this.§7O§ == "-")
               {
                  _loc1_ = this.§;&§();
                  break;
               }
               if(this.§7O§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§7O§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §0G§() : §65§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§ y§;
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
         var _loc2_:§65§ = new §65§();
         _loc2_.type = §?t§.§8!?§;
         _loc2_.value = this.§,!8§(this.jsonString.substr(this.§ y§,_loc1_ - this.§ y§));
         this.§ y§ = _loc1_ + 1;
         this.§=!N§();
         return _loc2_;
      }
      
      public function §,!8§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§[y§ && this.§!!6§.test(param1))
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
                     if(!this.§'L§(_loc10_))
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
      
      private function §;&§() : §65§
      {
         var _loc3_:§65§ = null;
         var _loc1_:* = "";
         if(this.§7O§ == "-")
         {
            _loc1_ += "-";
            this.§=!N§();
         }
         if(!this.§?7§(this.§7O§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§7O§ == "0")
         {
            _loc1_ += this.§7O§;
            this.§=!N§();
            if(this.§?7§(this.§7O§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§[y§ && this.§7O§ == "x")
            {
               _loc1_ += this.§7O§;
               this.§=!N§();
               if(this.§'L§(this.§7O§))
               {
                  _loc1_ += this.§7O§;
                  this.§=!N§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§'L§(this.§7O§))
               {
                  _loc1_ += this.§7O§;
                  this.§=!N§();
               }
            }
         }
         else
         {
            while(this.§?7§(this.§7O§))
            {
               _loc1_ += this.§7O§;
               this.§=!N§();
            }
         }
         if(this.§7O§ == ".")
         {
            _loc1_ += ".";
            this.§=!N§();
            if(!this.§?7§(this.§7O§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§?7§(this.§7O§))
            {
               _loc1_ += this.§7O§;
               this.§=!N§();
            }
         }
         if(this.§7O§ == "e" || this.§7O§ == "E")
         {
            _loc1_ += "e";
            this.§=!N§();
            if(this.§7O§ == "+" || this.§7O§ == "-")
            {
               _loc1_ += this.§7O§;
               this.§=!N§();
            }
            if(!this.§?7§(this.§7O§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§?7§(this.§7O§))
            {
               _loc1_ += this.§7O§;
               this.§=!N§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §65§();
            _loc3_.type = §?t§.§^!$§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §=!N§() : String
      {
         return this.§7O§ = this.jsonString.charAt(this.§ y§++);
      }
      
      private function §-%§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§ y§;
            this.§<5§();
            this.§=!L§();
         }
         while(_loc1_ != this.§ y§);
         
      }
      
      private function §=!L§() : void
      {
         if(this.§7O§ == "/")
         {
            this.§=!N§();
            switch(this.§7O§)
            {
               case "/":
                  do
                  {
                     this.§=!N§();
                  }
                  while(this.§7O§ != "\n" && this.§7O§ != "");
                  
                  this.§=!N§();
                  break;
               case "*":
                  this.§=!N§();
                  while(true)
                  {
                     if(this.§7O§ == "*")
                     {
                        this.§=!N§();
                        if(this.§7O§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§=!N§();
                     }
                     if(this.§7O§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§=!N§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§7O§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §<5§() : void
      {
         while(this.§=B§(this.§7O§))
         {
            this.§=!N§();
         }
      }
      
      private function §=B§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§[y§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §?7§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §'L§(param1:String) : Boolean
      {
         return this.§?7§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§ y§,this.jsonString);
      }
   }
}
