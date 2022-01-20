package §%!H§
{
   public class §2w§
   {
       
      
      private var §5!n§:Boolean;
      
      private var obj:Object;
      
      private var §8!T§:String;
      
      private var §?%§:int;
      
      private var §<i§:String;
      
      private var §[!?§:RegExp;
      
      public function §2w§(param1:String, param2:Boolean)
      {
         this.§[!?§ = /[\x00-\x1F]/;
         super();
         this.§8!T§ = param1;
         this.§5!n§ = param2;
         this.§?%§ = 0;
         this.§3O§();
      }
      
      public function §6`§() : §;^§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§;^§ = new §;^§();
         this.§==§();
         switch(this.§<i§)
         {
            case "{":
               _loc1_.type = §%!b§.§,!A§;
               _loc1_.value = "{";
               this.§3O§();
               break;
            case "}":
               _loc1_.type = §%!b§.§!!k§;
               _loc1_.value = "}";
               this.§3O§();
               break;
            case "[":
               _loc1_.type = §%!b§.§^O§;
               _loc1_.value = "[";
               this.§3O§();
               break;
            case "]":
               _loc1_.type = §%!b§.§<-§;
               _loc1_.value = "]";
               this.§3O§();
               break;
            case ",":
               _loc1_.type = §%!b§.§9!d§;
               _loc1_.value = ",";
               this.§3O§();
               break;
            case ":":
               _loc1_.type = §%!b§.§4Y§;
               _loc1_.value = ":";
               this.§3O§();
               break;
            case "t":
               _loc2_ = "t" + this.§3O§() + this.§3O§() + this.§3O§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §%!b§.TRUE;
                  _loc1_.value = true;
                  this.§3O§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§3O§() + this.§3O§() + this.§3O§() + this.§3O§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §%!b§.FALSE;
                  _loc1_.value = false;
                  this.§3O§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§3O§() + this.§3O§() + this.§3O§()) == "null")
               {
                  _loc1_.type = §%!b§.NULL;
                  _loc1_.value = null;
                  this.§3O§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§3O§() + this.§3O§()) == "NaN")
               {
                  _loc1_.type = §%!b§.§ !K§;
                  _loc1_.value = NaN;
                  this.§3O§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§0!e§();
               break;
            default:
               if(this.§-!!§(this.§<i§) || this.§<i§ == "-")
               {
                  _loc1_ = this.§@0§();
                  break;
               }
               if(this.§<i§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§<i§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §0!e§() : §;^§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§?%§;
         while(true)
         {
            _loc1_ = this.§8!T§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§8!T§.charAt(_loc4_) == "\\")
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
         var _loc2_:§;^§ = new §;^§();
         _loc2_.type = §%!b§.§-!9§;
         _loc2_.value = this.§@2§(this.§8!T§.substr(this.§?%§,_loc1_ - this.§?%§));
         this.§?%§ = _loc1_ + 1;
         this.§3O§();
         return _loc2_;
      }
      
      public function §@2§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§5!n§ && this.§[!?§.test(param1))
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
                     if(!this.§#D§(_loc10_))
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
      
      private function §@0§() : §;^§
      {
         var _loc3_:§;^§ = null;
         var _loc1_:* = "";
         if(this.§<i§ == "-")
         {
            _loc1_ += "-";
            this.§3O§();
         }
         if(!this.§-!!§(this.§<i§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§<i§ == "0")
         {
            _loc1_ += this.§<i§;
            this.§3O§();
            if(this.§-!!§(this.§<i§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§5!n§ && this.§<i§ == "x")
            {
               _loc1_ += this.§<i§;
               this.§3O§();
               if(this.§#D§(this.§<i§))
               {
                  _loc1_ += this.§<i§;
                  this.§3O§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§#D§(this.§<i§))
               {
                  _loc1_ += this.§<i§;
                  this.§3O§();
               }
            }
         }
         else
         {
            while(this.§-!!§(this.§<i§))
            {
               _loc1_ += this.§<i§;
               this.§3O§();
            }
         }
         if(this.§<i§ == ".")
         {
            _loc1_ += ".";
            this.§3O§();
            if(!this.§-!!§(this.§<i§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§-!!§(this.§<i§))
            {
               _loc1_ += this.§<i§;
               this.§3O§();
            }
         }
         if(this.§<i§ == "e" || this.§<i§ == "E")
         {
            _loc1_ += "e";
            this.§3O§();
            if(this.§<i§ == "+" || this.§<i§ == "-")
            {
               _loc1_ += this.§<i§;
               this.§3O§();
            }
            if(!this.§-!!§(this.§<i§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§-!!§(this.§<i§))
            {
               _loc1_ += this.§<i§;
               this.§3O§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §;^§();
            _loc3_.type = §%!b§.§[?§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §3O§() : String
      {
         return this.§<i§ = this.§8!T§.charAt(this.§?%§++);
      }
      
      private function §==§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§?%§;
            this.§?!g§();
            this.§ ?§();
         }
         while(_loc1_ != this.§?%§);
         
      }
      
      private function § ?§() : void
      {
         if(this.§<i§ == "/")
         {
            this.§3O§();
            switch(this.§<i§)
            {
               case "/":
                  do
                  {
                     this.§3O§();
                  }
                  while(this.§<i§ != "\n" && this.§<i§ != "");
                  
                  this.§3O§();
                  break;
               case "*":
                  this.§3O§();
                  while(true)
                  {
                     if(this.§<i§ == "*")
                     {
                        this.§3O§();
                        if(this.§<i§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§3O§();
                     }
                     if(this.§<i§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§3O§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§<i§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §?!g§() : void
      {
         while(this.§implements§(this.§<i§))
         {
            this.§3O§();
         }
      }
      
      private function §implements§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§5!n§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §-!!§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §#D§(param1:String) : Boolean
      {
         return this.§-!!§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§?%§,this.§8!T§);
      }
   }
}
