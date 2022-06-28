package §60§
{
   public class §=!;§
   {
       
      
      private var §&k§:Boolean;
      
      private var obj:Object;
      
      private var § L§:String;
      
      private var §25§:int;
      
      private var §4u§:String;
      
      private var §>`§:RegExp;
      
      public function §=!;§(param1:String, param2:Boolean)
      {
         this.§>`§ = /[\x00-\x1F]/;
         super();
         this.§ L§ = param1;
         this.§&k§ = param2;
         this.§25§ = 0;
         this.§?=§();
      }
      
      public function §!!"§() : §&d§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§&d§ = new §&d§();
         this.§<Y§();
         switch(this.§4u§)
         {
            case "{":
               _loc1_.type = §94§.§[!!§;
               _loc1_.value = "{";
               this.§?=§();
               break;
            case "}":
               _loc1_.type = §94§.§+!;§;
               _loc1_.value = "}";
               this.§?=§();
               break;
            case "[":
               _loc1_.type = §94§.§[Y§;
               _loc1_.value = "[";
               this.§?=§();
               break;
            case "]":
               _loc1_.type = §94§.§@!6§;
               _loc1_.value = "]";
               this.§?=§();
               break;
            case ",":
               _loc1_.type = §94§.§0!%§;
               _loc1_.value = ",";
               this.§?=§();
               break;
            case ":":
               _loc1_.type = §94§.§ do§;
               _loc1_.value = ":";
               this.§?=§();
               break;
            case "t":
               _loc2_ = "t" + this.§?=§() + this.§?=§() + this.§?=§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §94§.TRUE;
                  _loc1_.value = true;
                  this.§?=§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§?=§() + this.§?=§() + this.§?=§() + this.§?=§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §94§.FALSE;
                  _loc1_.value = false;
                  this.§?=§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§?=§() + this.§?=§() + this.§?=§()) == "null")
               {
                  _loc1_.type = §94§.NULL;
                  _loc1_.value = null;
                  this.§?=§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§?=§() + this.§?=§()) == "NaN")
               {
                  _loc1_.type = §94§.§[!&§;
                  _loc1_.value = NaN;
                  this.§?=§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§>r§();
               break;
            default:
               if(this.§4!,§(this.§4u§) || this.§4u§ == "-")
               {
                  _loc1_ = this.§>2§();
                  break;
               }
               if(this.§4u§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§4u§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §>r§() : §&d§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§25§;
         while(true)
         {
            _loc1_ = this.§ L§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§ L§.charAt(_loc4_) == "\\")
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
         var _loc2_:§&d§ = new §&d§();
         _loc2_.type = §94§.§[5§;
         _loc2_.value = this.§1!C§(this.§ L§.substr(this.§25§,_loc1_ - this.§25§));
         this.§25§ = _loc1_ + 1;
         this.§?=§();
         return _loc2_;
      }
      
      public function §1!C§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§&k§ && this.§>`§.test(param1))
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
                     if(!this.§<-§(_loc10_))
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
      
      private function §>2§() : §&d§
      {
         var _loc3_:§&d§ = null;
         var _loc1_:* = "";
         if(this.§4u§ == "-")
         {
            _loc1_ += "-";
            this.§?=§();
         }
         if(!this.§4!,§(this.§4u§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§4u§ == "0")
         {
            _loc1_ += this.§4u§;
            this.§?=§();
            if(this.§4!,§(this.§4u§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§&k§ && this.§4u§ == "x")
            {
               _loc1_ += this.§4u§;
               this.§?=§();
               if(this.§<-§(this.§4u§))
               {
                  _loc1_ += this.§4u§;
                  this.§?=§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§<-§(this.§4u§))
               {
                  _loc1_ += this.§4u§;
                  this.§?=§();
               }
            }
         }
         else
         {
            while(this.§4!,§(this.§4u§))
            {
               _loc1_ += this.§4u§;
               this.§?=§();
            }
         }
         if(this.§4u§ == ".")
         {
            _loc1_ += ".";
            this.§?=§();
            if(!this.§4!,§(this.§4u§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§4!,§(this.§4u§))
            {
               _loc1_ += this.§4u§;
               this.§?=§();
            }
         }
         if(this.§4u§ == "e" || this.§4u§ == "E")
         {
            _loc1_ += "e";
            this.§?=§();
            if(this.§4u§ == "+" || this.§4u§ == "-")
            {
               _loc1_ += this.§4u§;
               this.§?=§();
            }
            if(!this.§4!,§(this.§4u§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§4!,§(this.§4u§))
            {
               _loc1_ += this.§4u§;
               this.§?=§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §&d§();
            _loc3_.type = §94§.§%!4§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §?=§() : String
      {
         return this.§4u§ = this.§ L§.charAt(this.§25§++);
      }
      
      private function §<Y§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§25§;
            this.§6!=§();
            this.§@Z§();
         }
         while(_loc1_ != this.§25§);
         
      }
      
      private function §@Z§() : void
      {
         if(this.§4u§ == "/")
         {
            this.§?=§();
            switch(this.§4u§)
            {
               case "/":
                  do
                  {
                     this.§?=§();
                  }
                  while(this.§4u§ != "\n" && this.§4u§ != "");
                  
                  this.§?=§();
                  break;
               case "*":
                  this.§?=§();
                  while(true)
                  {
                     if(this.§4u§ == "*")
                     {
                        this.§?=§();
                        if(this.§4u§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§?=§();
                     }
                     if(this.§4u§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§?=§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§4u§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §6!=§() : void
      {
         while(this.§`!B§(this.§4u§))
         {
            this.§?=§();
         }
      }
      
      private function §`!B§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§&k§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §4!,§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §<-§(param1:String) : Boolean
      {
         return this.§4!,§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§25§,this.§ L§);
      }
   }
}
