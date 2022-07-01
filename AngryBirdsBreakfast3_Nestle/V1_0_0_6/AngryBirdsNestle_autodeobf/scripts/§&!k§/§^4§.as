package §&!k§
{
   public class §^4§
   {
       
      
      private var §;!b§:Boolean;
      
      private var §]u§:Object;
      
      private var jsonString:String;
      
      private var §=u§:int;
      
      private var §0"#§:String;
      
      private var §?"$§:RegExp;
      
      public function §^4§(param1:String, param2:Boolean)
      {
         this.§?"$§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§;!b§ = param2;
         this.§=u§ = 0;
         this.§`!#§();
      }
      
      public function §%"+§() : §^!I§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§^!I§ = new §^!I§();
         this.§^H§();
         switch(this.§0"#§)
         {
            case "{":
               _loc1_.type = §;!4§.§ !x§;
               _loc1_.value = "{";
               this.§`!#§();
               break;
            case "}":
               _loc1_.type = §;!4§.§#E§;
               _loc1_.value = "}";
               this.§`!#§();
               break;
            case "[":
               _loc1_.type = §;!4§.§%!l§;
               _loc1_.value = "[";
               this.§`!#§();
               break;
            case "]":
               _loc1_.type = §;!4§.§=!-§;
               _loc1_.value = "]";
               this.§`!#§();
               break;
            case ",":
               _loc1_.type = §;!4§.§8s§;
               _loc1_.value = ",";
               this.§`!#§();
               break;
            case ":":
               _loc1_.type = §;!4§.§&!x§;
               _loc1_.value = ":";
               this.§`!#§();
               break;
            case "t":
               _loc2_ = "t" + this.§`!#§() + this.§`!#§() + this.§`!#§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §;!4§.TRUE;
                  _loc1_.value = true;
                  this.§`!#§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§`!#§() + this.§`!#§() + this.§`!#§() + this.§`!#§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §;!4§.FALSE;
                  _loc1_.value = false;
                  this.§`!#§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§`!#§() + this.§`!#§() + this.§`!#§()) == "null")
               {
                  _loc1_.type = §;!4§.NULL;
                  _loc1_.value = null;
                  this.§`!#§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§`!#§() + this.§`!#§()) == "NaN")
               {
                  _loc1_.type = §;!4§.§7B§;
                  _loc1_.value = NaN;
                  this.§`!#§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§@!x§();
               break;
            default:
               if(this.§@w§(this.§0"#§) || this.§0"#§ == "-")
               {
                  _loc1_ = this.§4!@§();
                  break;
               }
               if(this.§0"#§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§0"#§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §@!x§() : §^!I§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§=u§;
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
         var _loc2_:§^!I§ = new §^!I§();
         _loc2_.type = §;!4§.§ !l§;
         _loc2_.value = this.§7!q§(this.jsonString.substr(this.§=u§,_loc1_ - this.§=u§));
         this.§=u§ = _loc1_ + 1;
         this.§`!#§();
         return _loc2_;
      }
      
      public function §7!q§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§;!b§ && this.§?"$§.test(param1))
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
                     if(!this.§`!q§(_loc10_))
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
      
      private function §4!@§() : §^!I§
      {
         var _loc3_:§^!I§ = null;
         var _loc1_:* = "";
         if(this.§0"#§ == "-")
         {
            _loc1_ += "-";
            this.§`!#§();
         }
         if(!this.§@w§(this.§0"#§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§0"#§ == "0")
         {
            _loc1_ += this.§0"#§;
            this.§`!#§();
            if(this.§@w§(this.§0"#§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§;!b§ && this.§0"#§ == "x")
            {
               _loc1_ += this.§0"#§;
               this.§`!#§();
               if(this.§`!q§(this.§0"#§))
               {
                  _loc1_ += this.§0"#§;
                  this.§`!#§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§`!q§(this.§0"#§))
               {
                  _loc1_ += this.§0"#§;
                  this.§`!#§();
               }
            }
         }
         else
         {
            while(this.§@w§(this.§0"#§))
            {
               _loc1_ += this.§0"#§;
               this.§`!#§();
            }
         }
         if(this.§0"#§ == ".")
         {
            _loc1_ += ".";
            this.§`!#§();
            if(!this.§@w§(this.§0"#§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§@w§(this.§0"#§))
            {
               _loc1_ += this.§0"#§;
               this.§`!#§();
            }
         }
         if(this.§0"#§ == "e" || this.§0"#§ == "E")
         {
            _loc1_ += "e";
            this.§`!#§();
            if(this.§0"#§ == "+" || this.§0"#§ == "-")
            {
               _loc1_ += this.§0"#§;
               this.§`!#§();
            }
            if(!this.§@w§(this.§0"#§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§@w§(this.§0"#§))
            {
               _loc1_ += this.§0"#§;
               this.§`!#§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §^!I§();
            _loc3_.type = §;!4§.§<r§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §`!#§() : String
      {
         return this.§0"#§ = this.jsonString.charAt(this.§=u§++);
      }
      
      private function §^H§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§=u§;
            this.§5!u§();
            this.§<!;§();
         }
         while(_loc1_ != this.§=u§);
         
      }
      
      private function §<!;§() : void
      {
         if(this.§0"#§ == "/")
         {
            this.§`!#§();
            switch(this.§0"#§)
            {
               case "/":
                  do
                  {
                     this.§`!#§();
                  }
                  while(this.§0"#§ != "\n" && this.§0"#§ != "");
                  
                  this.§`!#§();
                  break;
               case "*":
                  this.§`!#§();
                  while(true)
                  {
                     if(this.§0"#§ == "*")
                     {
                        this.§`!#§();
                        if(this.§0"#§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§`!#§();
                     }
                     if(this.§0"#§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§`!#§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§0"#§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §5!u§() : void
      {
         while(this.§#0§(this.§0"#§))
         {
            this.§`!#§();
         }
      }
      
      private function §#0§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§;!b§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §@w§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §`!q§(param1:String) : Boolean
      {
         return this.§@w§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§=u§,this.jsonString);
      }
   }
}
