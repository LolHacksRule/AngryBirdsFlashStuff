package §]!N§
{
   public class §8s§
   {
       
      
      private var §1U§:Boolean;
      
      private var obj:Object;
      
      private var §^H§:String;
      
      private var § !H§:int;
      
      private var §0!=§:String;
      
      private var §,B§:RegExp;
      
      public function §8s§(param1:String, param2:Boolean)
      {
         this.§,B§ = /[\x00-\x1F]/;
         super();
         this.§^H§ = param1;
         this.§1U§ = param2;
         this.§ !H§ = 0;
         this.§@O§();
      }
      
      public function §"?§() : §0f§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§0f§ = new §0f§();
         this.§&!+§();
         switch(this.§0!=§)
         {
            case "{":
               _loc1_.type = §9o§.§6W§;
               _loc1_.value = "{";
               this.§@O§();
               break;
            case "}":
               _loc1_.type = §9o§.§<!E§;
               _loc1_.value = "}";
               this.§@O§();
               break;
            case "[":
               _loc1_.type = §9o§.§9X§;
               _loc1_.value = "[";
               this.§@O§();
               break;
            case "]":
               _loc1_.type = §9o§.§'p§;
               _loc1_.value = "]";
               this.§@O§();
               break;
            case ",":
               _loc1_.type = §9o§.§1h§;
               _loc1_.value = ",";
               this.§@O§();
               break;
            case ":":
               _loc1_.type = §9o§.§>"§;
               _loc1_.value = ":";
               this.§@O§();
               break;
            case "t":
               _loc2_ = "t" + this.§@O§() + this.§@O§() + this.§@O§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §9o§.TRUE;
                  _loc1_.value = true;
                  this.§@O§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§@O§() + this.§@O§() + this.§@O§() + this.§@O§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §9o§.FALSE;
                  _loc1_.value = false;
                  this.§@O§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§@O§() + this.§@O§() + this.§@O§()) == "null")
               {
                  _loc1_.type = §9o§.§?!#§;
                  _loc1_.value = null;
                  this.§@O§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§@O§() + this.§@O§()) == "NaN")
               {
                  _loc1_.type = §9o§.§+!A§;
                  _loc1_.value = NaN;
                  this.§@O§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§,!N§();
               break;
            default:
               if(this.§=!B§(this.§0!=§) || this.§0!=§ == "-")
               {
                  _loc1_ = this.§<?§();
               }
               else
               {
                  if(this.§0!=§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§0!=§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §,!N§() : §0f§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§ !H§;
         while(true)
         {
            _loc1_ = this.§^H§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§^H§.charAt(_loc4_) == "\\")
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
         var _loc2_:§0f§ = new §0f§();
         _loc2_.type = §9o§.§#n§;
         _loc2_.value = this.§@!4§(this.§^H§.substr(this.§ !H§,_loc1_ - this.§ !H§));
         this.§ !H§ = _loc1_ + 1;
         this.§@O§();
         return _loc2_;
      }
      
      public function §@!4§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§1U§ && this.§,B§.test(param1))
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
                     if(!this.§9u§(_loc10_))
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
      
      private function §<?§() : §0f§
      {
         var _loc3_:§0f§ = null;
         var _loc1_:* = "";
         if(this.§0!=§ == "-")
         {
            _loc1_ += "-";
            this.§@O§();
         }
         if(!this.§=!B§(this.§0!=§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§0!=§ == "0")
         {
            _loc1_ += this.§0!=§;
            this.§@O§();
            if(this.§=!B§(this.§0!=§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§1U§ && this.§0!=§ == "x")
            {
               _loc1_ += this.§0!=§;
               this.§@O§();
               if(this.§9u§(this.§0!=§))
               {
                  _loc1_ += this.§0!=§;
                  this.§@O§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§9u§(this.§0!=§))
               {
                  _loc1_ += this.§0!=§;
                  this.§@O§();
               }
            }
         }
         else
         {
            while(this.§=!B§(this.§0!=§))
            {
               _loc1_ += this.§0!=§;
               this.§@O§();
            }
         }
         if(this.§0!=§ == ".")
         {
            _loc1_ += ".";
            this.§@O§();
            if(!this.§=!B§(this.§0!=§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§=!B§(this.§0!=§))
            {
               _loc1_ += this.§0!=§;
               this.§@O§();
            }
         }
         if(this.§0!=§ == "e" || this.§0!=§ == "E")
         {
            _loc1_ += "e";
            this.§@O§();
            if(this.§0!=§ == "+" || this.§0!=§ == "-")
            {
               _loc1_ += this.§0!=§;
               this.§@O§();
            }
            if(!this.§=!B§(this.§0!=§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§=!B§(this.§0!=§))
            {
               _loc1_ += this.§0!=§;
               this.§@O§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §0f§();
            _loc3_.type = §9o§.§1V§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §@O§() : String
      {
         return this.§0!=§ = this.§^H§.charAt(this.§ !H§++);
      }
      
      private function §&!+§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§ !H§;
            this.§?i§();
            this.§?+§();
         }
         while(_loc1_ != this.§ !H§);
         
      }
      
      private function §?+§() : void
      {
         if(this.§0!=§ == "/")
         {
            this.§@O§();
            switch(this.§0!=§)
            {
               case "/":
                  do
                  {
                     this.§@O§();
                  }
                  while(this.§0!=§ != "\n" && this.§0!=§ != "");
                  
                  this.§@O§();
                  break;
               case "*":
                  this.§@O§();
                  while(true)
                  {
                     if(this.§0!=§ == "*")
                     {
                        this.§@O§();
                        if(this.§0!=§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§@O§();
                     }
                     if(this.§0!=§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§@O§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§0!=§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §?i§() : void
      {
         while(this.§;;§(this.§0!=§))
         {
            this.§@O§();
         }
      }
      
      private function §;;§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§1U§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §=!B§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §9u§(param1:String) : Boolean
      {
         return this.§=!B§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§ !H§,this.§^H§);
      }
   }
}
