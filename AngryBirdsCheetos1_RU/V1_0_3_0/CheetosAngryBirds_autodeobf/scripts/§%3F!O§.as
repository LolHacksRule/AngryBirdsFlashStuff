package
{
   public class §?!O§
   {
       
      
      private var §#Q§:Boolean;
      
      private var obj:Object;
      
      private var §]!!§:String;
      
      private var §%U§:int;
      
      private var §6x§:String;
      
      private var §;s§:RegExp;
      
      public function §?!O§(param1:String, param2:Boolean)
      {
         this.§;s§ = /[\x00-\x1F]/;
         super();
         this.§]!!§ = param1;
         this.§#Q§ = param2;
         this.§%U§ = 0;
         this.§ !J§();
      }
      
      public function final() : §3!S§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§3!S§ = new §3!S§();
         this.§9y§();
         switch(this.§6x§)
         {
            case "{":
               _loc1_.type = §@C§.§3M§;
               _loc1_.value = "{";
               this.§ !J§();
               break;
            case "}":
               _loc1_.type = §@C§.§8p§;
               _loc1_.value = "}";
               this.§ !J§();
               break;
            case "[":
               _loc1_.type = §@C§.§8!#§;
               _loc1_.value = "[";
               this.§ !J§();
               break;
            case "]":
               _loc1_.type = §@C§.§0!b§;
               _loc1_.value = "]";
               this.§ !J§();
               break;
            case ",":
               _loc1_.type = §@C§.§;e§;
               _loc1_.value = ",";
               this.§ !J§();
               break;
            case ":":
               _loc1_.type = §@C§.§>!,§;
               _loc1_.value = ":";
               this.§ !J§();
               break;
            case "t":
               _loc2_ = "t" + this.§ !J§() + this.§ !J§() + this.§ !J§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §@C§.TRUE;
                  _loc1_.value = true;
                  this.§ !J§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§ !J§() + this.§ !J§() + this.§ !J§() + this.§ !J§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §@C§.FALSE;
                  _loc1_.value = false;
                  this.§ !J§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§ !J§() + this.§ !J§() + this.§ !J§()) == "null")
               {
                  _loc1_.type = §@C§.§%s§;
                  _loc1_.value = null;
                  this.§ !J§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§ !J§() + this.§ !J§()) == "NaN")
               {
                  _loc1_.type = §@C§.§-F§;
                  _loc1_.value = NaN;
                  this.§ !J§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§-!$§();
               break;
            default:
               if(this.§'>§(this.§6x§) || this.§6x§ == "-")
               {
                  _loc1_ = this.§>-§();
                  break;
               }
               if(this.§6x§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§6x§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §-!$§() : §3!S§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§%U§;
         while(true)
         {
            _loc1_ = this.§]!!§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§]!!§.charAt(_loc4_) == "\\")
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
         var _loc2_:§3!S§ = new §3!S§();
         _loc2_.type = §@C§.§@!,§;
         _loc2_.value = this.§%!]§(this.§]!!§.substr(this.§%U§,_loc1_ - this.§%U§));
         this.§%U§ = _loc1_ + 1;
         this.§ !J§();
         return _loc2_;
      }
      
      public function §%!]§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§#Q§ && this.§;s§.test(param1))
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
                     if(!this.§&F§(_loc10_))
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
      
      private function §>-§() : §3!S§
      {
         var _loc3_:§3!S§ = null;
         var _loc1_:* = "";
         if(this.§6x§ == "-")
         {
            _loc1_ += "-";
            this.§ !J§();
         }
         if(!this.§'>§(this.§6x§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§6x§ == "0")
         {
            _loc1_ += this.§6x§;
            this.§ !J§();
            if(this.§'>§(this.§6x§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§#Q§ && this.§6x§ == "x")
            {
               _loc1_ += this.§6x§;
               this.§ !J§();
               if(this.§&F§(this.§6x§))
               {
                  _loc1_ += this.§6x§;
                  this.§ !J§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§&F§(this.§6x§))
               {
                  _loc1_ += this.§6x§;
                  this.§ !J§();
               }
            }
         }
         else
         {
            while(this.§'>§(this.§6x§))
            {
               _loc1_ += this.§6x§;
               this.§ !J§();
            }
         }
         if(this.§6x§ == ".")
         {
            _loc1_ += ".";
            this.§ !J§();
            if(!this.§'>§(this.§6x§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§'>§(this.§6x§))
            {
               _loc1_ += this.§6x§;
               this.§ !J§();
            }
         }
         if(this.§6x§ == "e" || this.§6x§ == "E")
         {
            _loc1_ += "e";
            this.§ !J§();
            if(this.§6x§ == "+" || this.§6x§ == "-")
            {
               _loc1_ += this.§6x§;
               this.§ !J§();
            }
            if(!this.§'>§(this.§6x§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§'>§(this.§6x§))
            {
               _loc1_ += this.§6x§;
               this.§ !J§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §3!S§();
            _loc3_.type = §@C§.§4!A§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function § !J§() : String
      {
         return this.§6x§ = this.§]!!§.charAt(this.§%U§++);
      }
      
      private function §9y§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§%U§;
            this.§;3§();
            this.§#v§();
         }
         while(_loc1_ != this.§%U§);
         
      }
      
      private function §#v§() : void
      {
         if(this.§6x§ == "/")
         {
            this.§ !J§();
            switch(this.§6x§)
            {
               case "/":
                  do
                  {
                     this.§ !J§();
                  }
                  while(this.§6x§ != "\n" && this.§6x§ != "");
                  
                  this.§ !J§();
                  break;
               case "*":
                  this.§ !J§();
                  while(true)
                  {
                     if(this.§6x§ == "*")
                     {
                        this.§ !J§();
                        if(this.§6x§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§ !J§();
                     }
                     if(this.§6x§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§ !J§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§6x§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §;3§() : void
      {
         while(this.§6X§(this.§6x§))
         {
            this.§ !J§();
         }
      }
      
      private function §6X§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§#Q§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §'>§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §&F§(param1:String) : Boolean
      {
         return this.§'>§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§%U§,this.§]!!§);
      }
   }
}
