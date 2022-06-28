package §?!f§
{
   public class §5c§
   {
       
      
      private var §0!#§:Boolean;
      
      private var obj:Object;
      
      private var §;!f§:String;
      
      private var §+!Q§:int;
      
      private var §&%§:String;
      
      private var §<O§:RegExp;
      
      public function §5c§(param1:String, param2:Boolean)
      {
         this.§<O§ = /[\x00-\x1F]/;
         super();
         this.§;!f§ = param1;
         this.§0!#§ = param2;
         this.§+!Q§ = 0;
         this.§=g§();
      }
      
      public function §%!'§() : §^!+§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§^!+§ = new §^!+§();
         this.§?!V§();
         switch(this.§&%§)
         {
            case "{":
               _loc1_.type = §8G§.§#k§;
               _loc1_.value = "{";
               this.§=g§();
               break;
            case "}":
               _loc1_.type = §8G§.§%!_§;
               _loc1_.value = "}";
               this.§=g§();
               break;
            case "[":
               _loc1_.type = §8G§.§,A§;
               _loc1_.value = "[";
               this.§=g§();
               break;
            case "]":
               _loc1_.type = §8G§.§8!I§;
               _loc1_.value = "]";
               this.§=g§();
               break;
            case ",":
               _loc1_.type = §8G§.§3S§;
               _loc1_.value = ",";
               this.§=g§();
               break;
            case ":":
               _loc1_.type = §8G§.§]W§;
               _loc1_.value = ":";
               this.§=g§();
               break;
            case "t":
               _loc2_ = "t" + this.§=g§() + this.§=g§() + this.§=g§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §8G§.TRUE;
                  _loc1_.value = true;
                  this.§=g§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§=g§() + this.§=g§() + this.§=g§() + this.§=g§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §8G§.FALSE;
                  _loc1_.value = false;
                  this.§=g§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               _loc4_ = "n" + this.§=g§() + this.§=g§() + this.§=g§();
               if(_loc4_ == "null")
               {
                  _loc1_.type = §8G§.NULL;
                  _loc1_.value = null;
                  this.§=g§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               _loc5_ = "N" + this.§=g§() + this.§=g§();
               if(_loc5_ == "NaN")
               {
                  _loc1_.type = §8G§.§4%§;
                  _loc1_.value = NaN;
                  this.§=g§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§<!c§();
               break;
            default:
               if(this.§3!S§(this.§&%§) || this.§&%§ == "-")
               {
                  _loc1_ = this.§@]§();
                  break;
               }
               if(this.§&%§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§&%§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §<!c§() : §^!+§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+!Q§;
         while(true)
         {
            _loc1_ = this.§;!f§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§;!f§.charAt(_loc4_) == "\\")
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
         var _loc2_:§^!+§ = new §^!+§();
         _loc2_.type = §8G§.§8;§;
         _loc2_.value = this.§1D§(this.§;!f§.substr(this.§+!Q§,_loc1_ - this.§+!Q§));
         this.§+!Q§ = _loc1_ + 1;
         this.§=g§();
         return _loc2_;
      }
      
      public function §1D§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§0!#§ && this.§<O§.test(param1))
         {
            this.parseError("String contains unescaped control character (0x00-0x1F)");
         }
         var _loc2_:String = "";
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
                     if(!this.§3E§(_loc10_))
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
      
      private function §@]§() : §^!+§
      {
         var _loc3_:§^!+§ = null;
         var _loc1_:String = "";
         if(this.§&%§ == "-")
         {
            _loc1_ += "-";
            this.§=g§();
         }
         if(!this.§3!S§(this.§&%§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§&%§ == "0")
         {
            _loc1_ += this.§&%§;
            this.§=g§();
            if(this.§3!S§(this.§&%§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§0!#§ && this.§&%§ == "x")
            {
               _loc1_ += this.§&%§;
               this.§=g§();
               if(this.§3E§(this.§&%§))
               {
                  _loc1_ += this.§&%§;
                  this.§=g§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§3E§(this.§&%§))
               {
                  _loc1_ += this.§&%§;
                  this.§=g§();
               }
            }
         }
         else
         {
            while(this.§3!S§(this.§&%§))
            {
               _loc1_ += this.§&%§;
               this.§=g§();
            }
         }
         if(this.§&%§ == ".")
         {
            _loc1_ += ".";
            this.§=g§();
            if(!this.§3!S§(this.§&%§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§3!S§(this.§&%§))
            {
               _loc1_ += this.§&%§;
               this.§=g§();
            }
         }
         if(this.§&%§ == "e" || this.§&%§ == "E")
         {
            _loc1_ += "e";
            this.§=g§();
            if(this.§&%§ == "+" || this.§&%§ == "-")
            {
               _loc1_ += this.§&%§;
               this.§=g§();
            }
            if(!this.§3!S§(this.§&%§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§3!S§(this.§&%§))
            {
               _loc1_ += this.§&%§;
               this.§=g§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §^!+§();
            _loc3_.type = §8G§.§"!W§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §=g§() : String
      {
         return this.§&%§ = this.§;!f§.charAt(this.§+!Q§++);
      }
      
      private function §?!V§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+!Q§;
            this.§[<§();
            this.§#!Y§();
         }
         while(_loc1_ != this.§+!Q§);
         
      }
      
      private function §#!Y§() : void
      {
         if(this.§&%§ == "/")
         {
            this.§=g§();
            switch(this.§&%§)
            {
               case "/":
                  do
                  {
                     this.§=g§();
                  }
                  while(this.§&%§ != "\n" && this.§&%§ != "");
                  
                  this.§=g§();
                  break;
               case "*":
                  this.§=g§();
                  while(true)
                  {
                     if(this.§&%§ == "*")
                     {
                        this.§=g§();
                        if(this.§&%§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§=g§();
                     }
                     if(this.§&%§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§=g§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§&%§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §[<§() : void
      {
         while(this.§ !F§(this.§&%§))
         {
            this.§=g§();
         }
      }
      
      private function § !F§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§0!#§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §3!S§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §3E§(param1:String) : Boolean
      {
         return this.§3!S§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+!Q§,this.§;!f§);
      }
   }
}
