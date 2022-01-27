package §?j§
{
   public class §6!&§
   {
       
      
      private var §?V§:Boolean;
      
      private var obj:Object;
      
      private var §>p§:String;
      
      private var §!!;§:int;
      
      private var §^!I§:String;
      
      private var §#8§:RegExp;
      
      public function §6!&§(param1:String, param2:Boolean)
      {
         this.§#8§ = /[\x00-\x1F]/;
         super();
         this.§>p§ = param1;
         this.§?V§ = param2;
         this.§!!;§ = 0;
         this.§2!8§();
      }
      
      public function §3!Z§() : §1#§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§1#§ = new §1#§();
         this.§%r§();
         switch(this.§^!I§)
         {
            case "{":
               _loc1_.type = §0h§.§-A§;
               _loc1_.value = "{";
               this.§2!8§();
               break;
            case "}":
               _loc1_.type = §0h§.§^!K§;
               _loc1_.value = "}";
               this.§2!8§();
               break;
            case "[":
               _loc1_.type = §0h§.§>!1§;
               _loc1_.value = "[";
               this.§2!8§();
               break;
            case "]":
               _loc1_.type = §0h§.§`>§;
               _loc1_.value = "]";
               this.§2!8§();
               break;
            case ",":
               _loc1_.type = §0h§.§9!_§;
               _loc1_.value = ",";
               this.§2!8§();
               break;
            case ":":
               _loc1_.type = §0h§.§ !P§;
               _loc1_.value = ":";
               this.§2!8§();
               break;
            case "t":
               _loc2_ = "t" + this.§2!8§() + this.§2!8§() + this.§2!8§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §0h§.TRUE;
                  _loc1_.value = true;
                  this.§2!8§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§2!8§() + this.§2!8§() + this.§2!8§() + this.§2!8§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §0h§.FALSE;
                  _loc1_.value = false;
                  this.§2!8§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§2!8§() + this.§2!8§() + this.§2!8§()) == "null")
               {
                  _loc1_.type = §0h§.§[x§;
                  _loc1_.value = null;
                  this.§2!8§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§2!8§() + this.§2!8§()) == "NaN")
               {
                  _loc1_.type = §0h§.§8!§;
                  _loc1_.value = NaN;
                  this.§2!8§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§7k§();
               break;
            default:
               if(this.§+'§(this.§^!I§) || this.§^!I§ == "-")
               {
                  _loc1_ = this.§0V§();
                  break;
               }
               if(this.§^!I§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§^!I§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §7k§() : §1#§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§!!;§;
         while(true)
         {
            _loc1_ = this.§>p§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§>p§.charAt(_loc4_) == "\\")
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
         var _loc2_:§1#§ = new §1#§();
         _loc2_.type = §0h§.§'!S§;
         _loc2_.value = this.§'m§(this.§>p§.substr(this.§!!;§,_loc1_ - this.§!!;§));
         this.§!!;§ = _loc1_ + 1;
         this.§2!8§();
         return _loc2_;
      }
      
      public function §'m§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§?V§ && this.§#8§.test(param1))
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
                     if(!this.§5!8§(_loc10_))
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
      
      private function §0V§() : §1#§
      {
         var _loc3_:§1#§ = null;
         var _loc1_:* = "";
         if(this.§^!I§ == "-")
         {
            _loc1_ += "-";
            this.§2!8§();
         }
         if(!this.§+'§(this.§^!I§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§^!I§ == "0")
         {
            _loc1_ += this.§^!I§;
            this.§2!8§();
            if(this.§+'§(this.§^!I§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§?V§ && this.§^!I§ == "x")
            {
               _loc1_ += this.§^!I§;
               this.§2!8§();
               if(this.§5!8§(this.§^!I§))
               {
                  _loc1_ += this.§^!I§;
                  this.§2!8§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§5!8§(this.§^!I§))
               {
                  _loc1_ += this.§^!I§;
                  this.§2!8§();
               }
            }
         }
         else
         {
            while(this.§+'§(this.§^!I§))
            {
               _loc1_ += this.§^!I§;
               this.§2!8§();
            }
         }
         if(this.§^!I§ == ".")
         {
            _loc1_ += ".";
            this.§2!8§();
            if(!this.§+'§(this.§^!I§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§+'§(this.§^!I§))
            {
               _loc1_ += this.§^!I§;
               this.§2!8§();
            }
         }
         if(this.§^!I§ == "e" || this.§^!I§ == "E")
         {
            _loc1_ += "e";
            this.§2!8§();
            if(this.§^!I§ == "+" || this.§^!I§ == "-")
            {
               _loc1_ += this.§^!I§;
               this.§2!8§();
            }
            if(!this.§+'§(this.§^!I§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§+'§(this.§^!I§))
            {
               _loc1_ += this.§^!I§;
               this.§2!8§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §1#§();
            _loc3_.type = §0h§.§%!9§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §2!8§() : String
      {
         return this.§^!I§ = this.§>p§.charAt(this.§!!;§++);
      }
      
      private function §%r§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§!!;§;
            this.§&!'§();
            this.§@B§();
         }
         while(_loc1_ != this.§!!;§);
         
      }
      
      private function §@B§() : void
      {
         if(this.§^!I§ == "/")
         {
            this.§2!8§();
            switch(this.§^!I§)
            {
               case "/":
                  do
                  {
                     this.§2!8§();
                  }
                  while(this.§^!I§ != "\n" && this.§^!I§ != "");
                  
                  this.§2!8§();
                  break;
               case "*":
                  this.§2!8§();
                  while(true)
                  {
                     if(this.§^!I§ == "*")
                     {
                        this.§2!8§();
                        if(this.§^!I§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§2!8§();
                     }
                     if(this.§^!I§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§2!8§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§^!I§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §&!'§() : void
      {
         while(this.§+U§(this.§^!I§))
         {
            this.§2!8§();
         }
      }
      
      private function §+U§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§?V§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §+'§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §5!8§(param1:String) : Boolean
      {
         return this.§+'§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§!!;§,this.§>p§);
      }
   }
}
