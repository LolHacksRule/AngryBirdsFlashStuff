package §&!4§
{
   public class §10§
   {
       
      
      private var § Y§:Boolean;
      
      private var obj:Object;
      
      private var §+!J§:String;
      
      private var §"-§:int;
      
      private var §4!a§:String;
      
      private var §<!;§:RegExp;
      
      public function §10§(param1:String, param2:Boolean)
      {
         this.§<!;§ = /[\x00-\x1F]/;
         super();
         this.§+!J§ = param1;
         this.§ Y§ = param2;
         this.§"-§ = 0;
         this.§^P§();
      }
      
      public function § !U§() : §,!;§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§,!;§ = new §,!;§();
         this.§44§();
         switch(this.§4!a§)
         {
            case "{":
               _loc1_.type = §]!k§.§[!>§;
               _loc1_.value = "{";
               this.§^P§();
               break;
            case "}":
               _loc1_.type = §]!k§.§6N§;
               _loc1_.value = "}";
               this.§^P§();
               break;
            case "[":
               _loc1_.type = §]!k§.§<f§;
               _loc1_.value = "[";
               this.§^P§();
               break;
            case "]":
               _loc1_.type = §]!k§.§^!r§;
               _loc1_.value = "]";
               this.§^P§();
               break;
            case ",":
               _loc1_.type = §]!k§.§4K§;
               _loc1_.value = ",";
               this.§^P§();
               break;
            case ":":
               _loc1_.type = §]!k§.§5!#§;
               _loc1_.value = ":";
               this.§^P§();
               break;
            case "t":
               _loc2_ = "t" + this.§^P§() + this.§^P§() + this.§^P§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §]!k§.TRUE;
                  _loc1_.value = true;
                  this.§^P§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§^P§() + this.§^P§() + this.§^P§() + this.§^P§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §]!k§.FALSE;
                  _loc1_.value = false;
                  this.§^P§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§^P§() + this.§^P§() + this.§^P§()) == "null")
               {
                  _loc1_.type = §]!k§.NULL;
                  _loc1_.value = null;
                  this.§^P§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§^P§() + this.§^P§()) == "NaN")
               {
                  _loc1_.type = §]!k§.§%p§;
                  _loc1_.value = NaN;
                  this.§^P§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§1E§();
               break;
            default:
               if(this.§+p§(this.§4!a§) || this.§4!a§ == "-")
               {
                  _loc1_ = this.§>C§();
                  break;
               }
               if(this.§4!a§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§4!a§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §1E§() : §,!;§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§"-§;
         while(true)
         {
            _loc1_ = this.§+!J§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§+!J§.charAt(_loc4_) == "\\")
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
         var _loc2_:§,!;§ = new §,!;§();
         _loc2_.type = §]!k§.§1Y§;
         _loc2_.value = this.§%B§(this.§+!J§.substr(this.§"-§,_loc1_ - this.§"-§));
         this.§"-§ = _loc1_ + 1;
         this.§^P§();
         return _loc2_;
      }
      
      public function §%B§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§ Y§ && this.§<!;§.test(param1))
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
                     if(!this.§9!^§(_loc10_))
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
      
      private function §>C§() : §,!;§
      {
         var _loc3_:§,!;§ = null;
         var _loc1_:* = "";
         if(this.§4!a§ == "-")
         {
            _loc1_ += "-";
            this.§^P§();
         }
         if(!this.§+p§(this.§4!a§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§4!a§ == "0")
         {
            _loc1_ += this.§4!a§;
            this.§^P§();
            if(this.§+p§(this.§4!a§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§ Y§ && this.§4!a§ == "x")
            {
               _loc1_ += this.§4!a§;
               this.§^P§();
               if(this.§9!^§(this.§4!a§))
               {
                  _loc1_ += this.§4!a§;
                  this.§^P§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§9!^§(this.§4!a§))
               {
                  _loc1_ += this.§4!a§;
                  this.§^P§();
               }
            }
         }
         else
         {
            while(this.§+p§(this.§4!a§))
            {
               _loc1_ += this.§4!a§;
               this.§^P§();
            }
         }
         if(this.§4!a§ == ".")
         {
            _loc1_ += ".";
            this.§^P§();
            if(!this.§+p§(this.§4!a§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§+p§(this.§4!a§))
            {
               _loc1_ += this.§4!a§;
               this.§^P§();
            }
         }
         if(this.§4!a§ == "e" || this.§4!a§ == "E")
         {
            _loc1_ += "e";
            this.§^P§();
            if(this.§4!a§ == "+" || this.§4!a§ == "-")
            {
               _loc1_ += this.§4!a§;
               this.§^P§();
            }
            if(!this.§+p§(this.§4!a§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§+p§(this.§4!a§))
            {
               _loc1_ += this.§4!a§;
               this.§^P§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §,!;§();
            _loc3_.type = §]!k§.§-d§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §^P§() : String
      {
         return this.§4!a§ = this.§+!J§.charAt(this.§"-§++);
      }
      
      private function §44§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§"-§;
            this.§0!t§();
            this.§@!V§();
         }
         while(_loc1_ != this.§"-§);
         
      }
      
      private function §@!V§() : void
      {
         if(this.§4!a§ == "/")
         {
            this.§^P§();
            switch(this.§4!a§)
            {
               case "/":
                  do
                  {
                     this.§^P§();
                  }
                  while(this.§4!a§ != "\n" && this.§4!a§ != "");
                  
                  this.§^P§();
                  break;
               case "*":
                  this.§^P§();
                  while(true)
                  {
                     if(this.§4!a§ == "*")
                     {
                        this.§^P§();
                        if(this.§4!a§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§^P§();
                     }
                     if(this.§4!a§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§^P§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§4!a§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §0!t§() : void
      {
         while(this.§56§(this.§4!a§))
         {
            this.§^P§();
         }
      }
      
      private function §56§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§ Y§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §+p§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §9!^§(param1:String) : Boolean
      {
         return this.§+p§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§"-§,this.§+!J§);
      }
   }
}
