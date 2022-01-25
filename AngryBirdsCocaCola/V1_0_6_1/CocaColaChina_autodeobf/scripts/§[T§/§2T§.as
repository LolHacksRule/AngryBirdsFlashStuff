package §[T§
{
   public class §2T§
   {
       
      
      private var §[!1§:Boolean;
      
      private var obj:Object;
      
      private var §27§:String;
      
      private var §5!^§:int;
      
      private var §=!1§:String;
      
      private var §<!J§:RegExp;
      
      public function §2T§(param1:String, param2:Boolean)
      {
         this.§<!J§ = /[\x00-\x1F]/;
         super();
         this.§27§ = param1;
         this.§[!1§ = param2;
         this.§5!^§ = 0;
         this.§#!9§();
      }
      
      public function §#t§() : §84§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§84§ = new §84§();
         this.§==§();
         switch(this.§=!1§)
         {
            case "{":
               _loc1_.type = §5e§.§7I§;
               _loc1_.value = "{";
               this.§#!9§();
               break;
            case "}":
               _loc1_.type = §5e§.§9O§;
               _loc1_.value = "}";
               this.§#!9§();
               break;
            case "[":
               _loc1_.type = §5e§.§6!%§;
               _loc1_.value = "[";
               this.§#!9§();
               break;
            case "]":
               _loc1_.type = §5e§.§&S§;
               _loc1_.value = "]";
               this.§#!9§();
               break;
            case ",":
               _loc1_.type = §5e§.§'!5§;
               _loc1_.value = ",";
               this.§#!9§();
               break;
            case ":":
               _loc1_.type = §5e§.§]! §;
               _loc1_.value = ":";
               this.§#!9§();
               break;
            case "t":
               _loc2_ = "t" + this.§#!9§() + this.§#!9§() + this.§#!9§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §5e§.TRUE;
                  _loc1_.value = true;
                  this.§#!9§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§#!9§() + this.§#!9§() + this.§#!9§() + this.§#!9§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §5e§.FALSE;
                  _loc1_.value = false;
                  this.§#!9§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§#!9§() + this.§#!9§() + this.§#!9§()) == "null")
               {
                  _loc1_.type = §5e§.§@!@§;
                  _loc1_.value = null;
                  this.§#!9§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§#!9§() + this.§#!9§()) == "NaN")
               {
                  _loc1_.type = §5e§.§<!?§;
                  _loc1_.value = NaN;
                  this.§#!9§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§7![§();
               break;
            default:
               if(this.§ f§(this.§=!1§) || this.§=!1§ == "-")
               {
                  _loc1_ = this.§ !#§();
                  break;
               }
               if(this.§=!1§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§=!1§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §7![§() : §84§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§5!^§;
         while(true)
         {
            _loc1_ = this.§27§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§27§.charAt(_loc4_) == "\\")
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
         var _loc2_:§84§ = new §84§();
         _loc2_.type = §5e§.§>!6§;
         _loc2_.value = this.§@;§(this.§27§.substr(this.§5!^§,_loc1_ - this.§5!^§));
         this.§5!^§ = _loc1_ + 1;
         this.§#!9§();
         return _loc2_;
      }
      
      public function §@;§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§[!1§ && this.§<!J§.test(param1))
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
                     if(!this.§93§(_loc10_))
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
      
      private function § !#§() : §84§
      {
         var _loc3_:§84§ = null;
         var _loc1_:* = "";
         if(this.§=!1§ == "-")
         {
            _loc1_ += "-";
            this.§#!9§();
         }
         if(!this.§ f§(this.§=!1§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§=!1§ == "0")
         {
            _loc1_ += this.§=!1§;
            this.§#!9§();
            if(this.§ f§(this.§=!1§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§[!1§ && this.§=!1§ == "x")
            {
               _loc1_ += this.§=!1§;
               this.§#!9§();
               if(this.§93§(this.§=!1§))
               {
                  _loc1_ += this.§=!1§;
                  this.§#!9§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§93§(this.§=!1§))
               {
                  _loc1_ += this.§=!1§;
                  this.§#!9§();
               }
            }
         }
         else
         {
            while(this.§ f§(this.§=!1§))
            {
               _loc1_ += this.§=!1§;
               this.§#!9§();
            }
         }
         if(this.§=!1§ == ".")
         {
            _loc1_ += ".";
            this.§#!9§();
            if(!this.§ f§(this.§=!1§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§ f§(this.§=!1§))
            {
               _loc1_ += this.§=!1§;
               this.§#!9§();
            }
         }
         if(this.§=!1§ == "e" || this.§=!1§ == "E")
         {
            _loc1_ += "e";
            this.§#!9§();
            if(this.§=!1§ == "+" || this.§=!1§ == "-")
            {
               _loc1_ += this.§=!1§;
               this.§#!9§();
            }
            if(!this.§ f§(this.§=!1§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§ f§(this.§=!1§))
            {
               _loc1_ += this.§=!1§;
               this.§#!9§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §84§();
            _loc3_.type = §5e§.§0!H§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §#!9§() : String
      {
         return this.§=!1§ = this.§27§.charAt(this.§5!^§++);
      }
      
      private function §==§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§5!^§;
            this.§;e§();
            this.§9!Y§();
         }
         while(_loc1_ != this.§5!^§);
         
      }
      
      private function §9!Y§() : void
      {
         if(this.§=!1§ == "/")
         {
            this.§#!9§();
            switch(this.§=!1§)
            {
               case "/":
                  do
                  {
                     this.§#!9§();
                  }
                  while(this.§=!1§ != "\n" && this.§=!1§ != "");
                  
                  this.§#!9§();
                  break;
               case "*":
                  this.§#!9§();
                  while(true)
                  {
                     if(this.§=!1§ == "*")
                     {
                        this.§#!9§();
                        if(this.§=!1§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§#!9§();
                     }
                     if(this.§=!1§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§#!9§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§=!1§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §;e§() : void
      {
         while(this.§=I§(this.§=!1§))
         {
            this.§#!9§();
         }
      }
      
      private function §=I§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§[!1§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function § f§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §93§(param1:String) : Boolean
      {
         return this.§ f§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§5!^§,this.§27§);
      }
   }
}
