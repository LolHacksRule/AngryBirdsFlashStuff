package §?!7§
{
   public class §9c§
   {
       
      
      private var §#!C§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §%u§:int;
      
      private var §6m§:String;
      
      private var §null §:RegExp;
      
      public function §9c§(param1:String, param2:Boolean)
      {
         this.§null § = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§#!C§ = param2;
         this.§%u§ = 0;
         this.§!%§();
      }
      
      public function §0t§() : §=u§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§=u§ = new §=u§();
         this.§<X§();
         switch(this.§6m§)
         {
            case "{":
               _loc1_.type = §<a§.§-j§;
               _loc1_.value = "{";
               this.§!%§();
               break;
            case "}":
               _loc1_.type = §<a§.§=-§;
               _loc1_.value = "}";
               this.§!%§();
               break;
            case "[":
               _loc1_.type = §<a§.§ e§;
               _loc1_.value = "[";
               this.§!%§();
               break;
            case "]":
               _loc1_.type = §<a§.§#Z§;
               _loc1_.value = "]";
               this.§!%§();
               break;
            case ",":
               _loc1_.type = §<a§.§4v§;
               _loc1_.value = ",";
               this.§!%§();
               break;
            case ":":
               _loc1_.type = §<a§.§8!B§;
               _loc1_.value = ":";
               this.§!%§();
               break;
            case "t":
               _loc2_ = "t" + this.§!%§() + this.§!%§() + this.§!%§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §<a§.TRUE;
                  _loc1_.value = true;
                  this.§!%§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§!%§() + this.§!%§() + this.§!%§() + this.§!%§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §<a§.FALSE;
                  _loc1_.value = false;
                  this.§!%§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§!%§() + this.§!%§() + this.§!%§()) == "null")
               {
                  _loc1_.type = §<a§.NULL;
                  _loc1_.value = null;
                  this.§!%§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§!%§() + this.§!%§()) == "NaN")
               {
                  _loc1_.type = §<a§.§`e§;
                  _loc1_.value = NaN;
                  this.§!%§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§5!-§();
               break;
            default:
               if(this.§^!>§(this.§6m§) || this.§6m§ == "-")
               {
                  _loc1_ = this.§`w§();
                  break;
               }
               if(this.§6m§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§6m§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §5!-§() : §=u§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§%u§;
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
         var _loc2_:§=u§ = new §=u§();
         _loc2_.type = §<a§.§;e§;
         _loc2_.value = this.§else §(this.jsonString.substr(this.§%u§,_loc1_ - this.§%u§));
         this.§%u§ = _loc1_ + 1;
         this.§!%§();
         return _loc2_;
      }
      
      public function §else §(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§#!C§ && this.§null §.test(param1))
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
                     if(!this.§9x§(_loc10_))
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
      
      private function §`w§() : §=u§
      {
         var _loc3_:§=u§ = null;
         var _loc1_:* = "";
         if(this.§6m§ == "-")
         {
            _loc1_ += "-";
            this.§!%§();
         }
         if(!this.§^!>§(this.§6m§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§6m§ == "0")
         {
            _loc1_ += this.§6m§;
            this.§!%§();
            if(this.§^!>§(this.§6m§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§#!C§ && this.§6m§ == "x")
            {
               _loc1_ += this.§6m§;
               this.§!%§();
               if(this.§9x§(this.§6m§))
               {
                  _loc1_ += this.§6m§;
                  this.§!%§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§9x§(this.§6m§))
               {
                  _loc1_ += this.§6m§;
                  this.§!%§();
               }
            }
         }
         else
         {
            while(this.§^!>§(this.§6m§))
            {
               _loc1_ += this.§6m§;
               this.§!%§();
            }
         }
         if(this.§6m§ == ".")
         {
            _loc1_ += ".";
            this.§!%§();
            if(!this.§^!>§(this.§6m§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§^!>§(this.§6m§))
            {
               _loc1_ += this.§6m§;
               this.§!%§();
            }
         }
         if(this.§6m§ == "e" || this.§6m§ == "E")
         {
            _loc1_ += "e";
            this.§!%§();
            if(this.§6m§ == "+" || this.§6m§ == "-")
            {
               _loc1_ += this.§6m§;
               this.§!%§();
            }
            if(!this.§^!>§(this.§6m§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§^!>§(this.§6m§))
            {
               _loc1_ += this.§6m§;
               this.§!%§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §=u§();
            _loc3_.type = §<a§.§&_§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §!%§() : String
      {
         return this.§6m§ = this.jsonString.charAt(this.§%u§++);
      }
      
      private function §<X§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§%u§;
            this.§^V§();
            this.§&!K§();
         }
         while(_loc1_ != this.§%u§);
         
      }
      
      private function §&!K§() : void
      {
         if(this.§6m§ == "/")
         {
            this.§!%§();
            switch(this.§6m§)
            {
               case "/":
                  do
                  {
                     this.§!%§();
                  }
                  while(this.§6m§ != "\n" && this.§6m§ != "");
                  
                  this.§!%§();
                  break;
               case "*":
                  this.§!%§();
                  while(true)
                  {
                     if(this.§6m§ == "*")
                     {
                        this.§!%§();
                        if(this.§6m§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§!%§();
                     }
                     if(this.§6m§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§!%§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§6m§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §^V§() : void
      {
         while(this.§<K§(this.§6m§))
         {
            this.§!%§();
         }
      }
      
      private function §<K§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§#!C§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §^!>§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §9x§(param1:String) : Boolean
      {
         return this.§^!>§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§%u§,this.jsonString);
      }
   }
}
