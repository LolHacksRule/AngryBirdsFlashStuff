package §]a§
{
   public class §7!&§
   {
       
      
      private var §>!4§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §1e§:int;
      
      private var §9d§:String;
      
      private var §,<§:RegExp;
      
      public function §7!&§(param1:String, param2:Boolean)
      {
         this.§,<§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§>!4§ = param2;
         this.§1e§ = 0;
         this.§<b§();
      }
      
      public function §9!"§() : §+s§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§+s§ = new §+s§();
         this.§=m§();
         switch(this.§9d§)
         {
            case "{":
               _loc1_.type = §^m§.§,!@§;
               _loc1_.value = "{";
               this.§<b§();
               break;
            case "}":
               _loc1_.type = §^m§.§#,§;
               _loc1_.value = "}";
               this.§<b§();
               break;
            case "[":
               _loc1_.type = §^m§.§?P§;
               _loc1_.value = "[";
               this.§<b§();
               break;
            case "]":
               _loc1_.type = §^m§.§9!3§;
               _loc1_.value = "]";
               this.§<b§();
               break;
            case ",":
               _loc1_.type = §^m§.§'r§;
               _loc1_.value = ",";
               this.§<b§();
               break;
            case ":":
               _loc1_.type = §^m§.§+P§;
               _loc1_.value = ":";
               this.§<b§();
               break;
            case "t":
               _loc2_ = "t" + this.§<b§() + this.§<b§() + this.§<b§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §^m§.TRUE;
                  _loc1_.value = true;
                  this.§<b§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§<b§() + this.§<b§() + this.§<b§() + this.§<b§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §^m§.FALSE;
                  _loc1_.value = false;
                  this.§<b§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§<b§() + this.§<b§() + this.§<b§()) == "null")
               {
                  _loc1_.type = §^m§.NULL;
                  _loc1_.value = null;
                  this.§<b§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§<b§() + this.§<b§()) == "NaN")
               {
                  _loc1_.type = §^m§.§4Y§;
                  _loc1_.value = NaN;
                  this.§<b§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§"d§();
               break;
            default:
               if(this.§0!;§(this.§9d§) || this.§9d§ == "-")
               {
                  _loc1_ = this.§^N§();
                  break;
               }
               if(this.§9d§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§9d§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §"d§() : §+s§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§1e§;
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
         var _loc2_:§+s§ = new §+s§();
         _loc2_.type = §^m§.§7x§;
         _loc2_.value = this.§+k§(this.jsonString.substr(this.§1e§,_loc1_ - this.§1e§));
         this.§1e§ = _loc1_ + 1;
         this.§<b§();
         return _loc2_;
      }
      
      public function §+k§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§>!4§ && this.§,<§.test(param1))
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
                     if(!this.§6J§(_loc10_))
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
      
      private function §^N§() : §+s§
      {
         var _loc3_:§+s§ = null;
         var _loc1_:* = "";
         if(this.§9d§ == "-")
         {
            _loc1_ += "-";
            this.§<b§();
         }
         if(!this.§0!;§(this.§9d§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§9d§ == "0")
         {
            _loc1_ += this.§9d§;
            this.§<b§();
            if(this.§0!;§(this.§9d§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§>!4§ && this.§9d§ == "x")
            {
               _loc1_ += this.§9d§;
               this.§<b§();
               if(this.§6J§(this.§9d§))
               {
                  _loc1_ += this.§9d§;
                  this.§<b§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§6J§(this.§9d§))
               {
                  _loc1_ += this.§9d§;
                  this.§<b§();
               }
            }
         }
         else
         {
            while(this.§0!;§(this.§9d§))
            {
               _loc1_ += this.§9d§;
               this.§<b§();
            }
         }
         if(this.§9d§ == ".")
         {
            _loc1_ += ".";
            this.§<b§();
            if(!this.§0!;§(this.§9d§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§0!;§(this.§9d§))
            {
               _loc1_ += this.§9d§;
               this.§<b§();
            }
         }
         if(this.§9d§ == "e" || this.§9d§ == "E")
         {
            _loc1_ += "e";
            this.§<b§();
            if(this.§9d§ == "+" || this.§9d§ == "-")
            {
               _loc1_ += this.§9d§;
               this.§<b§();
            }
            if(!this.§0!;§(this.§9d§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§0!;§(this.§9d§))
            {
               _loc1_ += this.§9d§;
               this.§<b§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §+s§();
            _loc3_.type = §^m§.§1S§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §<b§() : String
      {
         return this.§9d§ = this.jsonString.charAt(this.§1e§++);
      }
      
      private function §=m§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§1e§;
            this.§-C§();
            this.§1h§();
         }
         while(_loc1_ != this.§1e§);
         
      }
      
      private function §1h§() : void
      {
         if(this.§9d§ == "/")
         {
            this.§<b§();
            switch(this.§9d§)
            {
               case "/":
                  do
                  {
                     this.§<b§();
                  }
                  while(this.§9d§ != "\n" && this.§9d§ != "");
                  
                  this.§<b§();
                  break;
               case "*":
                  this.§<b§();
                  while(true)
                  {
                     if(this.§9d§ == "*")
                     {
                        this.§<b§();
                        if(this.§9d§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§<b§();
                     }
                     if(this.§9d§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§<b§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§9d§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §-C§() : void
      {
         while(this.§-]§(this.§9d§))
         {
            this.§<b§();
         }
      }
      
      private function §-]§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§>!4§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §0!;§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §6J§(param1:String) : Boolean
      {
         return this.§0!;§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§1e§,this.jsonString);
      }
   }
}
