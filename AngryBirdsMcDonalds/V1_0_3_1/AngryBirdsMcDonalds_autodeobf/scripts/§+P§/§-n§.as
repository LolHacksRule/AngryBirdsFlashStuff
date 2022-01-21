package §+P§
{
   public class §-n§
   {
       
      
      private var §7h§:Boolean;
      
      private var obj:Object;
      
      private var §[1§:String;
      
      private var §'!=§:int;
      
      private var §!#§:String;
      
      private var §4!<§:RegExp;
      
      public function §-n§(param1:String, param2:Boolean)
      {
         this.§4!<§ = /[\x00-\x1F]/;
         super();
         this.§[1§ = param1;
         this.§7h§ = param2;
         this.§'!=§ = 0;
         this.§5!Q§();
      }
      
      public function §2^§() : §6![§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§6![§ = new §6![§();
         this.§5,§();
         switch(this.§!#§)
         {
            case "{":
               _loc1_.type = §<![§.§<!k§;
               _loc1_.value = "{";
               this.§5!Q§();
               break;
            case "}":
               _loc1_.type = §<![§.§1!l§;
               _loc1_.value = "}";
               this.§5!Q§();
               break;
            case "[":
               _loc1_.type = §<![§.§[!#§;
               _loc1_.value = "[";
               this.§5!Q§();
               break;
            case "]":
               _loc1_.type = §<![§.§+x§;
               _loc1_.value = "]";
               this.§5!Q§();
               break;
            case ",":
               _loc1_.type = §<![§.§-§;
               _loc1_.value = ",";
               this.§5!Q§();
               break;
            case ":":
               _loc1_.type = §<![§.§1!E§;
               _loc1_.value = ":";
               this.§5!Q§();
               break;
            case "t":
               _loc2_ = "t" + this.§5!Q§() + this.§5!Q§() + this.§5!Q§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §<![§.TRUE;
                  _loc1_.value = true;
                  this.§5!Q§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§5!Q§() + this.§5!Q§() + this.§5!Q§() + this.§5!Q§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §<![§.FALSE;
                  _loc1_.value = false;
                  this.§5!Q§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§5!Q§() + this.§5!Q§() + this.§5!Q§()) == "null")
               {
                  _loc1_.type = §<![§.NULL;
                  _loc1_.value = null;
                  this.§5!Q§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§5!Q§() + this.§5!Q§()) == "NaN")
               {
                  _loc1_.type = §<![§.§!!4§;
                  _loc1_.value = NaN;
                  this.§5!Q§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§"K§();
               break;
            default:
               if(this.§;!]§(this.§!#§) || this.§!#§ == "-")
               {
                  _loc1_ = this.§8!?§();
                  break;
               }
               if(this.§!#§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§!#§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §"K§() : §6![§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§'!=§;
         while(true)
         {
            _loc1_ = this.§[1§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§[1§.charAt(_loc4_) == "\\")
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
         var _loc2_:§6![§ = new §6![§();
         _loc2_.type = §<![§.§]&§;
         _loc2_.value = this.§?!U§(this.§[1§.substr(this.§'!=§,_loc1_ - this.§'!=§));
         this.§'!=§ = _loc1_ + 1;
         this.§5!Q§();
         return _loc2_;
      }
      
      public function §?!U§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§7h§ && this.§4!<§.test(param1))
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
                     if(!this.§<e§(_loc10_))
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
      
      private function §8!?§() : §6![§
      {
         var _loc3_:§6![§ = null;
         var _loc1_:* = "";
         if(this.§!#§ == "-")
         {
            _loc1_ += "-";
            this.§5!Q§();
         }
         if(!this.§;!]§(this.§!#§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§!#§ == "0")
         {
            _loc1_ += this.§!#§;
            this.§5!Q§();
            if(this.§;!]§(this.§!#§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§7h§ && this.§!#§ == "x")
            {
               _loc1_ += this.§!#§;
               this.§5!Q§();
               if(this.§<e§(this.§!#§))
               {
                  _loc1_ += this.§!#§;
                  this.§5!Q§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§<e§(this.§!#§))
               {
                  _loc1_ += this.§!#§;
                  this.§5!Q§();
               }
            }
         }
         else
         {
            while(this.§;!]§(this.§!#§))
            {
               _loc1_ += this.§!#§;
               this.§5!Q§();
            }
         }
         if(this.§!#§ == ".")
         {
            _loc1_ += ".";
            this.§5!Q§();
            if(!this.§;!]§(this.§!#§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§;!]§(this.§!#§))
            {
               _loc1_ += this.§!#§;
               this.§5!Q§();
            }
         }
         if(this.§!#§ == "e" || this.§!#§ == "E")
         {
            _loc1_ += "e";
            this.§5!Q§();
            if(this.§!#§ == "+" || this.§!#§ == "-")
            {
               _loc1_ += this.§!#§;
               this.§5!Q§();
            }
            if(!this.§;!]§(this.§!#§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§;!]§(this.§!#§))
            {
               _loc1_ += this.§!#§;
               this.§5!Q§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §6![§();
            _loc3_.type = §<![§.§ l§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §5!Q§() : String
      {
         return this.§!#§ = this.§[1§.charAt(this.§'!=§++);
      }
      
      private function §5,§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§'!=§;
            this.§0@§();
            this.§1y§();
         }
         while(_loc1_ != this.§'!=§);
         
      }
      
      private function §1y§() : void
      {
         if(this.§!#§ == "/")
         {
            this.§5!Q§();
            switch(this.§!#§)
            {
               case "/":
                  do
                  {
                     this.§5!Q§();
                  }
                  while(this.§!#§ != "\n" && this.§!#§ != "");
                  
                  this.§5!Q§();
                  break;
               case "*":
                  this.§5!Q§();
                  while(true)
                  {
                     if(this.§!#§ == "*")
                     {
                        this.§5!Q§();
                        if(this.§!#§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§5!Q§();
                     }
                     if(this.§!#§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§5!Q§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§!#§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §0@§() : void
      {
         while(this.§<!U§(this.§!#§))
         {
            this.§5!Q§();
         }
      }
      
      private function §<!U§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§7h§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §;!]§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §<e§(param1:String) : Boolean
      {
         return this.§;!]§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§'!=§,this.§[1§);
      }
   }
}
