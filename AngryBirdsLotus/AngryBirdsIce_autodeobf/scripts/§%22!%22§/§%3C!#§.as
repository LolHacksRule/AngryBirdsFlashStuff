package §"!"§
{
   public class §<!#§
   {
       
      
      private var §"!C§:Boolean;
      
      private var obj:Object;
      
      private var §%o§:String;
      
      private var §<!+§:int;
      
      private var §<z§:String;
      
      private var §6N§:RegExp;
      
      public function §<!#§(param1:String, param2:Boolean)
      {
         this.§6N§ = /[\x00-\x1F]/;
         super();
         this.§%o§ = param1;
         this.§"!C§ = param2;
         this.§<!+§ = 0;
         this.§`!?§();
      }
      
      public function § s§() : §"!-§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§"!-§ = new §"!-§();
         this.§@z§();
         switch(this.§<z§)
         {
            case "{":
               _loc1_.type = §2!4§.§+S§;
               _loc1_.value = "{";
               this.§`!?§();
               break;
            case "}":
               _loc1_.type = §2!4§.§,!F§;
               _loc1_.value = "}";
               this.§`!?§();
               break;
            case "[":
               _loc1_.type = §2!4§.§-J§;
               _loc1_.value = "[";
               this.§`!?§();
               break;
            case "]":
               _loc1_.type = §2!4§.§9!C§;
               _loc1_.value = "]";
               this.§`!?§();
               break;
            case ",":
               _loc1_.type = §2!4§.§-!"§;
               _loc1_.value = ",";
               this.§`!?§();
               break;
            case ":":
               _loc1_.type = §2!4§.§5u§;
               _loc1_.value = ":";
               this.§`!?§();
               break;
            case "t":
               _loc2_ = "t" + this.§`!?§() + this.§`!?§() + this.§`!?§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §2!4§.TRUE;
                  _loc1_.value = true;
                  this.§`!?§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§`!?§() + this.§`!?§() + this.§`!?§() + this.§`!?§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §2!4§.FALSE;
                  _loc1_.value = false;
                  this.§`!?§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§`!?§() + this.§`!?§() + this.§`!?§()) == "null")
               {
                  _loc1_.type = §2!4§.NULL;
                  _loc1_.value = null;
                  this.§`!?§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§`!?§() + this.§`!?§()) == "NaN")
               {
                  _loc1_.type = §2!4§.§!!"§;
                  _loc1_.value = NaN;
                  this.§`!?§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§-A§();
               break;
            default:
               if(this.§8K§(this.§<z§) || this.§<z§ == "-")
               {
                  _loc1_ = this.§[!B§();
               }
               else
               {
                  if(this.§<z§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§<z§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §-A§() : §"!-§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§<!+§;
         while(true)
         {
            _loc1_ = this.§%o§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§%o§.charAt(_loc4_) == "\\")
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
         var _loc2_:§"!-§ = new §"!-§();
         _loc2_.type = §2!4§.§"!F§;
         _loc2_.value = this.§,V§(this.§%o§.substr(this.§<!+§,_loc1_ - this.§<!+§));
         this.§<!+§ = _loc1_ + 1;
         this.§`!?§();
         return _loc2_;
      }
      
      public function §,V§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§"!C§ && this.§6N§.test(param1))
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
                     if(!this.§4! §(_loc10_))
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
      
      private function §[!B§() : §"!-§
      {
         var _loc3_:§"!-§ = null;
         var _loc1_:* = "";
         if(this.§<z§ == "-")
         {
            _loc1_ += "-";
            this.§`!?§();
         }
         if(!this.§8K§(this.§<z§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§<z§ == "0")
         {
            _loc1_ += this.§<z§;
            this.§`!?§();
            if(this.§8K§(this.§<z§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§"!C§ && this.§<z§ == "x")
            {
               _loc1_ += this.§<z§;
               this.§`!?§();
               if(this.§4! §(this.§<z§))
               {
                  _loc1_ += this.§<z§;
                  this.§`!?§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§4! §(this.§<z§))
               {
                  _loc1_ += this.§<z§;
                  this.§`!?§();
               }
            }
         }
         else
         {
            while(this.§8K§(this.§<z§))
            {
               _loc1_ += this.§<z§;
               this.§`!?§();
            }
         }
         if(this.§<z§ == ".")
         {
            _loc1_ += ".";
            this.§`!?§();
            if(!this.§8K§(this.§<z§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§8K§(this.§<z§))
            {
               _loc1_ += this.§<z§;
               this.§`!?§();
            }
         }
         if(this.§<z§ == "e" || this.§<z§ == "E")
         {
            _loc1_ += "e";
            this.§`!?§();
            if(this.§<z§ == "+" || this.§<z§ == "-")
            {
               _loc1_ += this.§<z§;
               this.§`!?§();
            }
            if(!this.§8K§(this.§<z§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§8K§(this.§<z§))
            {
               _loc1_ += this.§<z§;
               this.§`!?§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §"!-§();
            _loc3_.type = §2!4§.§6!1§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §`!?§() : String
      {
         return this.§<z§ = this.§%o§.charAt(this.§<!+§++);
      }
      
      private function §@z§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§<!+§;
            this.§;!+§();
            this.§;!>§();
         }
         while(_loc1_ != this.§<!+§);
         
      }
      
      private function §;!>§() : void
      {
         if(this.§<z§ == "/")
         {
            this.§`!?§();
            switch(this.§<z§)
            {
               case "/":
                  do
                  {
                     this.§`!?§();
                  }
                  while(this.§<z§ != "\n" && this.§<z§ != "");
                  
                  this.§`!?§();
                  break;
               case "*":
                  this.§`!?§();
                  while(true)
                  {
                     if(this.§<z§ == "*")
                     {
                        this.§`!?§();
                        if(this.§<z§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§`!?§();
                     }
                     if(this.§<z§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§`!?§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§<z§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §;!+§() : void
      {
         while(this.§5C§(this.§<z§))
         {
            this.§`!?§();
         }
      }
      
      private function §5C§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§"!C§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §8K§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §4! §(param1:String) : Boolean
      {
         return this.§8K§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§<!+§,this.§%o§);
      }
   }
}
