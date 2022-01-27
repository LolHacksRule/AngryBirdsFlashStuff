package §9!&§
{
   public class §>@§
   {
       
      
      private var §0#§:Boolean;
      
      private var obj:Object;
      
      private var §,!_§:String;
      
      private var §+E§:int;
      
      private var §3!X§:String;
      
      private var §#!N§:RegExp;
      
      public function §>@§(param1:String, param2:Boolean)
      {
         this.§#!N§ = /[\x00-\x1F]/;
         super();
         this.§,!_§ = param1;
         this.§0#§ = param2;
         this.§+E§ = 0;
         this.§4p§();
      }
      
      public function §>j§() : §6!'§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§6!'§ = new §6!'§();
         this.§0V§();
         switch(this.§3!X§)
         {
            case "{":
               _loc1_.type = §"!8§.§@N§;
               _loc1_.value = "{";
               this.§4p§();
               break;
            case "}":
               _loc1_.type = §"!8§.§8!8§;
               _loc1_.value = "}";
               this.§4p§();
               break;
            case "[":
               _loc1_.type = §"!8§.§8z§;
               _loc1_.value = "[";
               this.§4p§();
               break;
            case "]":
               _loc1_.type = §"!8§.§0!W§;
               _loc1_.value = "]";
               this.§4p§();
               break;
            case ",":
               _loc1_.type = §"!8§.§&!1§;
               _loc1_.value = ",";
               this.§4p§();
               break;
            case ":":
               _loc1_.type = §"!8§.§switch§;
               _loc1_.value = ":";
               this.§4p§();
               break;
            case "t":
               _loc2_ = "t" + this.§4p§() + this.§4p§() + this.§4p§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §"!8§.TRUE;
                  _loc1_.value = true;
                  this.§4p§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§4p§() + this.§4p§() + this.§4p§() + this.§4p§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §"!8§.FALSE;
                  _loc1_.value = false;
                  this.§4p§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§4p§() + this.§4p§() + this.§4p§()) == "null")
               {
                  _loc1_.type = §"!8§.§?!Q§;
                  _loc1_.value = null;
                  this.§4p§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§4p§() + this.§4p§()) == "NaN")
               {
                  _loc1_.type = §"!8§.§@!+§;
                  _loc1_.value = NaN;
                  this.§4p§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§"!!§();
               break;
            default:
               if(this.§%!]§(this.§3!X§) || this.§3!X§ == "-")
               {
                  _loc1_ = this.§!!W§();
                  break;
               }
               if(this.§3!X§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§3!X§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §"!!§() : §6!'§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+E§;
         while(true)
         {
            _loc1_ = this.§,!_§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§,!_§.charAt(_loc4_) == "\\")
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
         var _loc2_:§6!'§ = new §6!'§();
         _loc2_.type = §"!8§.§?!C§;
         _loc2_.value = this.§!![§(this.§,!_§.substr(this.§+E§,_loc1_ - this.§+E§));
         this.§+E§ = _loc1_ + 1;
         this.§4p§();
         return _loc2_;
      }
      
      public function §!![§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§0#§ && this.§#!N§.test(param1))
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
                     if(!this.§"!R§(_loc10_))
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
      
      private function §!!W§() : §6!'§
      {
         var _loc3_:§6!'§ = null;
         var _loc1_:* = "";
         if(this.§3!X§ == "-")
         {
            _loc1_ += "-";
            this.§4p§();
         }
         if(!this.§%!]§(this.§3!X§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§3!X§ == "0")
         {
            _loc1_ += this.§3!X§;
            this.§4p§();
            if(this.§%!]§(this.§3!X§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§0#§ && this.§3!X§ == "x")
            {
               _loc1_ += this.§3!X§;
               this.§4p§();
               if(this.§"!R§(this.§3!X§))
               {
                  _loc1_ += this.§3!X§;
                  this.§4p§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§"!R§(this.§3!X§))
               {
                  _loc1_ += this.§3!X§;
                  this.§4p§();
               }
            }
         }
         else
         {
            while(this.§%!]§(this.§3!X§))
            {
               _loc1_ += this.§3!X§;
               this.§4p§();
            }
         }
         if(this.§3!X§ == ".")
         {
            _loc1_ += ".";
            this.§4p§();
            if(!this.§%!]§(this.§3!X§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§%!]§(this.§3!X§))
            {
               _loc1_ += this.§3!X§;
               this.§4p§();
            }
         }
         if(this.§3!X§ == "e" || this.§3!X§ == "E")
         {
            _loc1_ += "e";
            this.§4p§();
            if(this.§3!X§ == "+" || this.§3!X§ == "-")
            {
               _loc1_ += this.§3!X§;
               this.§4p§();
            }
            if(!this.§%!]§(this.§3!X§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§%!]§(this.§3!X§))
            {
               _loc1_ += this.§3!X§;
               this.§4p§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §6!'§();
            _loc3_.type = §"!8§.§1+§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §4p§() : String
      {
         return this.§3!X§ = this.§,!_§.charAt(this.§+E§++);
      }
      
      private function §0V§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+E§;
            this.§#f§();
            this.§^!`§();
         }
         while(_loc1_ != this.§+E§);
         
      }
      
      private function §^!`§() : void
      {
         if(this.§3!X§ == "/")
         {
            this.§4p§();
            switch(this.§3!X§)
            {
               case "/":
                  do
                  {
                     this.§4p§();
                  }
                  while(this.§3!X§ != "\n" && this.§3!X§ != "");
                  
                  this.§4p§();
                  break;
               case "*":
                  this.§4p§();
                  while(true)
                  {
                     if(this.§3!X§ == "*")
                     {
                        this.§4p§();
                        if(this.§3!X§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§4p§();
                     }
                     if(this.§3!X§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§4p§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§3!X§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §#f§() : void
      {
         while(this.§<E§(this.§3!X§))
         {
            this.§4p§();
         }
      }
      
      private function §<E§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§0#§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §%!]§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §"!R§(param1:String) : Boolean
      {
         return this.§%!]§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+E§,this.§,!_§);
      }
   }
}
