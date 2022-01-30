package §4!V§
{
   public class §]!b§
   {
       
      
      private var §6!H§:Boolean;
      
      private var §["3§:Object;
      
      private var jsonString:String;
      
      private var § z§:int;
      
      private var §9""§:String;
      
      private var §>!b§:RegExp;
      
      public function §]!b§(param1:String, param2:Boolean)
      {
         this.§>!b§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§6!H§ = param2;
         this.§ z§ = 0;
         this.§?v§();
      }
      
      public function §&m§() : §7!&§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§7!&§ = new §7!&§();
         this.§"!q§();
         switch(this.§9""§)
         {
            case "{":
               _loc1_.type = §!!9§.§5!y§;
               _loc1_.value = "{";
               this.§?v§();
               break;
            case "}":
               _loc1_.type = §!!9§.§3!B§;
               _loc1_.value = "}";
               this.§?v§();
               break;
            case "[":
               _loc1_.type = §!!9§.§+!k§;
               _loc1_.value = "[";
               this.§?v§();
               break;
            case "]":
               _loc1_.type = §!!9§.§>!2§;
               _loc1_.value = "]";
               this.§?v§();
               break;
            case ",":
               _loc1_.type = §!!9§.§=N§;
               _loc1_.value = ",";
               this.§?v§();
               break;
            case ":":
               _loc1_.type = §!!9§.§`!?§;
               _loc1_.value = ":";
               this.§?v§();
               break;
            case "t":
               _loc2_ = "t" + this.§?v§() + this.§?v§() + this.§?v§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §!!9§.TRUE;
                  _loc1_.value = true;
                  this.§?v§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§?v§() + this.§?v§() + this.§?v§() + this.§?v§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §!!9§.FALSE;
                  _loc1_.value = false;
                  this.§?v§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§?v§() + this.§?v§() + this.§?v§()) == "null")
               {
                  _loc1_.type = §!!9§.NULL;
                  _loc1_.value = null;
                  this.§?v§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§?v§() + this.§?v§()) == "NaN")
               {
                  _loc1_.type = §!!9§.§4j§;
                  _loc1_.value = NaN;
                  this.§?v§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§8J§();
               break;
            default:
               if(this.§`I§(this.§9""§) || this.§9""§ == "-")
               {
                  _loc1_ = this.§ f§();
                  break;
               }
               if(this.§9""§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§9""§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §8J§() : §7!&§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§ z§;
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
         var _loc2_:§7!&§ = new §7!&§();
         _loc2_.type = §!!9§.§0!A§;
         _loc2_.value = this.§!v§(this.jsonString.substr(this.§ z§,_loc1_ - this.§ z§));
         this.§ z§ = _loc1_ + 1;
         this.§?v§();
         return _loc2_;
      }
      
      public function §!v§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§6!H§ && this.§>!b§.test(param1))
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
                     if(!this.§0" §(_loc10_))
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
      
      private function § f§() : §7!&§
      {
         var _loc3_:§7!&§ = null;
         var _loc1_:* = "";
         if(this.§9""§ == "-")
         {
            _loc1_ += "-";
            this.§?v§();
         }
         if(!this.§`I§(this.§9""§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§9""§ == "0")
         {
            _loc1_ += this.§9""§;
            this.§?v§();
            if(this.§`I§(this.§9""§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§6!H§ && this.§9""§ == "x")
            {
               _loc1_ += this.§9""§;
               this.§?v§();
               if(this.§0" §(this.§9""§))
               {
                  _loc1_ += this.§9""§;
                  this.§?v§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§0" §(this.§9""§))
               {
                  _loc1_ += this.§9""§;
                  this.§?v§();
               }
            }
         }
         else
         {
            while(this.§`I§(this.§9""§))
            {
               _loc1_ += this.§9""§;
               this.§?v§();
            }
         }
         if(this.§9""§ == ".")
         {
            _loc1_ += ".";
            this.§?v§();
            if(!this.§`I§(this.§9""§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§`I§(this.§9""§))
            {
               _loc1_ += this.§9""§;
               this.§?v§();
            }
         }
         if(this.§9""§ == "e" || this.§9""§ == "E")
         {
            _loc1_ += "e";
            this.§?v§();
            if(this.§9""§ == "+" || this.§9""§ == "-")
            {
               _loc1_ += this.§9""§;
               this.§?v§();
            }
            if(!this.§`I§(this.§9""§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§`I§(this.§9""§))
            {
               _loc1_ += this.§9""§;
               this.§?v§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §7!&§();
            _loc3_.type = §!!9§.§5!%§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §?v§() : String
      {
         return this.§9""§ = this.jsonString.charAt(this.§ z§++);
      }
      
      private function §"!q§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§ z§;
            this.§3!K§();
            this.§,!8§();
         }
         while(_loc1_ != this.§ z§);
         
      }
      
      private function §,!8§() : void
      {
         if(this.§9""§ == "/")
         {
            this.§?v§();
            switch(this.§9""§)
            {
               case "/":
                  do
                  {
                     this.§?v§();
                  }
                  while(this.§9""§ != "\n" && this.§9""§ != "");
                  
                  this.§?v§();
                  break;
               case "*":
                  this.§?v§();
                  while(true)
                  {
                     if(this.§9""§ == "*")
                     {
                        this.§?v§();
                        if(this.§9""§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§?v§();
                     }
                     if(this.§9""§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§?v§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§9""§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §3!K§() : void
      {
         while(this.§@!b§(this.§9""§))
         {
            this.§?v§();
         }
      }
      
      private function §@!b§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§6!H§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §`I§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §0" §(param1:String) : Boolean
      {
         return this.§`I§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§ z§,this.jsonString);
      }
   }
}
