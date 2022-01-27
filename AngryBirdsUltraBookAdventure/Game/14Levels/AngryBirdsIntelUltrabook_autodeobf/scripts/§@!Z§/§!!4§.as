package §@!Z§
{
   public class §!!4§
   {
       
      
      private var §!c§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var § c§:int;
      
      private var §%!-§:String;
      
      private var §!!6§:RegExp;
      
      public function §!!4§(param1:String, param2:Boolean)
      {
         this.§!!6§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§!c§ = param2;
         this.§ c§ = 0;
         this.§?%§();
      }
      
      public function §=4§() : §#!]§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#!]§ = new §#!]§();
         this.§8!0§();
         switch(this.§%!-§)
         {
            case "{":
               _loc1_.type = §<q§.§^!h§;
               _loc1_.value = "{";
               this.§?%§();
               break;
            case "}":
               _loc1_.type = §<q§.§6!L§;
               _loc1_.value = "}";
               this.§?%§();
               break;
            case "[":
               _loc1_.type = §<q§.§]!o§;
               _loc1_.value = "[";
               this.§?%§();
               break;
            case "]":
               _loc1_.type = §<q§.§<!R§;
               _loc1_.value = "]";
               this.§?%§();
               break;
            case ",":
               _loc1_.type = §<q§.§0!,§;
               _loc1_.value = ",";
               this.§?%§();
               break;
            case ":":
               _loc1_.type = §<q§.§1W§;
               _loc1_.value = ":";
               this.§?%§();
               break;
            case "t":
               _loc2_ = "t" + this.§?%§() + this.§?%§() + this.§?%§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §<q§.TRUE;
                  _loc1_.value = true;
                  this.§?%§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§?%§() + this.§?%§() + this.§?%§() + this.§?%§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §<q§.FALSE;
                  _loc1_.value = false;
                  this.§?%§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§?%§() + this.§?%§() + this.§?%§()) == "null")
               {
                  _loc1_.type = §<q§.NULL;
                  _loc1_.value = null;
                  this.§?%§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§?%§() + this.§?%§()) == "NaN")
               {
                  _loc1_.type = §<q§.§3X§;
                  _loc1_.value = NaN;
                  this.§?%§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§<$§();
               break;
            default:
               if(this.§,3§(this.§%!-§) || this.§%!-§ == "-")
               {
                  _loc1_ = this.§=@§();
                  break;
               }
               if(this.§%!-§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§%!-§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §<$§() : §#!]§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§ c§;
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
         var _loc2_:§#!]§ = new §#!]§();
         _loc2_.type = §<q§.§ !W§;
         _loc2_.value = this.§`!W§(this.jsonString.substr(this.§ c§,_loc1_ - this.§ c§));
         this.§ c§ = _loc1_ + 1;
         this.§?%§();
         return _loc2_;
      }
      
      public function §`!W§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§!c§ && this.§!!6§.test(param1))
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
                     if(!this.§ !M§(_loc10_))
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
      
      private function §=@§() : §#!]§
      {
         var _loc3_:§#!]§ = null;
         var _loc1_:* = "";
         if(this.§%!-§ == "-")
         {
            _loc1_ += "-";
            this.§?%§();
         }
         if(!this.§,3§(this.§%!-§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§%!-§ == "0")
         {
            _loc1_ += this.§%!-§;
            this.§?%§();
            if(this.§,3§(this.§%!-§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§!c§ && this.§%!-§ == "x")
            {
               _loc1_ += this.§%!-§;
               this.§?%§();
               if(this.§ !M§(this.§%!-§))
               {
                  _loc1_ += this.§%!-§;
                  this.§?%§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§ !M§(this.§%!-§))
               {
                  _loc1_ += this.§%!-§;
                  this.§?%§();
               }
            }
         }
         else
         {
            while(this.§,3§(this.§%!-§))
            {
               _loc1_ += this.§%!-§;
               this.§?%§();
            }
         }
         if(this.§%!-§ == ".")
         {
            _loc1_ += ".";
            this.§?%§();
            if(!this.§,3§(this.§%!-§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§,3§(this.§%!-§))
            {
               _loc1_ += this.§%!-§;
               this.§?%§();
            }
         }
         if(this.§%!-§ == "e" || this.§%!-§ == "E")
         {
            _loc1_ += "e";
            this.§?%§();
            if(this.§%!-§ == "+" || this.§%!-§ == "-")
            {
               _loc1_ += this.§%!-§;
               this.§?%§();
            }
            if(!this.§,3§(this.§%!-§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§,3§(this.§%!-§))
            {
               _loc1_ += this.§%!-§;
               this.§?%§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §#!]§();
            _loc3_.type = §<q§.§2S§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §?%§() : String
      {
         return this.§%!-§ = this.jsonString.charAt(this.§ c§++);
      }
      
      private function §8!0§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§ c§;
            this.§!" §();
            this.§;!P§();
         }
         while(_loc1_ != this.§ c§);
         
      }
      
      private function §;!P§() : void
      {
         if(this.§%!-§ == "/")
         {
            this.§?%§();
            switch(this.§%!-§)
            {
               case "/":
                  do
                  {
                     this.§?%§();
                  }
                  while(this.§%!-§ != "\n" && this.§%!-§ != "");
                  
                  this.§?%§();
                  break;
               case "*":
                  this.§?%§();
                  while(true)
                  {
                     if(this.§%!-§ == "*")
                     {
                        this.§?%§();
                        if(this.§%!-§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§?%§();
                     }
                     if(this.§%!-§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§?%§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§%!-§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §!" §() : void
      {
         while(this.§^!H§(this.§%!-§))
         {
            this.§?%§();
         }
      }
      
      private function §^!H§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§!c§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §,3§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function § !M§(param1:String) : Boolean
      {
         return this.§,3§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§ c§,this.jsonString);
      }
   }
}
