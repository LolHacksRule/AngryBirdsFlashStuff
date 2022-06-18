package §;!%§
{
   public class §7w§
   {
       
      
      private var §#O§:Boolean;
      
      private var obj:Object;
      
      private var §>!4§:String;
      
      private var §^,§:int;
      
      private var §&!#§:String;
      
      private var §0B§:RegExp;
      
      public function §7w§(param1:String, param2:Boolean)
      {
         this.§0B§ = /[\x00-\x1F]/;
         super();
         this.§>!4§ = param1;
         this.§#O§ = param2;
         this.§^,§ = 0;
         this.§]E§();
      }
      
      public function §[i§() : §'<§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§'<§ = new §'<§();
         this.§ v§();
         switch(this.§&!#§)
         {
            case "{":
               _loc1_.type = §,!7§.§]4§;
               _loc1_.value = "{";
               this.§]E§();
               break;
            case "}":
               _loc1_.type = §,!7§.§2s§;
               _loc1_.value = "}";
               this.§]E§();
               break;
            case "[":
               _loc1_.type = §,!7§.§>!H§;
               _loc1_.value = "[";
               this.§]E§();
               break;
            case "]":
               _loc1_.type = §,!7§.§&!&§;
               _loc1_.value = "]";
               this.§]E§();
               break;
            case ",":
               _loc1_.type = §,!7§.§!m§;
               _loc1_.value = ",";
               this.§]E§();
               break;
            case ":":
               _loc1_.type = §,!7§.§&N§;
               _loc1_.value = ":";
               this.§]E§();
               break;
            case "t":
               _loc2_ = "t" + this.§]E§() + this.§]E§() + this.§]E§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §,!7§.TRUE;
                  _loc1_.value = true;
                  this.§]E§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§]E§() + this.§]E§() + this.§]E§() + this.§]E§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §,!7§.FALSE;
                  _loc1_.value = false;
                  this.§]E§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§]E§() + this.§]E§() + this.§]E§()) == "null")
               {
                  _loc1_.type = §,!7§.NULL;
                  _loc1_.value = null;
                  this.§]E§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§]E§() + this.§]E§()) == "NaN")
               {
                  _loc1_.type = §,!7§.§1K§;
                  _loc1_.value = NaN;
                  this.§]E§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§'q§();
               break;
            default:
               if(this.§@!&§(this.§&!#§) || this.§&!#§ == "-")
               {
                  _loc1_ = this.§@!,§();
                  break;
               }
               if(this.§&!#§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§&!#§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §'q§() : §'<§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§^,§;
         while(true)
         {
            _loc1_ = this.§>!4§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§>!4§.charAt(_loc4_) == "\\")
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
         var _loc2_:§'<§ = new §'<§();
         _loc2_.type = §,!7§.§3!<§;
         _loc2_.value = this.§=S§(this.§>!4§.substr(this.§^,§,_loc1_ - this.§^,§));
         this.§^,§ = _loc1_ + 1;
         this.§]E§();
         return _loc2_;
      }
      
      public function §=S§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§#O§ && this.§0B§.test(param1))
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
                     if(!this.§91§(_loc10_))
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
      
      private function §@!,§() : §'<§
      {
         var _loc3_:§'<§ = null;
         var _loc1_:* = "";
         if(this.§&!#§ == "-")
         {
            _loc1_ += "-";
            this.§]E§();
         }
         if(!this.§@!&§(this.§&!#§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§&!#§ == "0")
         {
            _loc1_ += this.§&!#§;
            this.§]E§();
            if(this.§@!&§(this.§&!#§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§#O§ && this.§&!#§ == "x")
            {
               _loc1_ += this.§&!#§;
               this.§]E§();
               if(this.§91§(this.§&!#§))
               {
                  _loc1_ += this.§&!#§;
                  this.§]E§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§91§(this.§&!#§))
               {
                  _loc1_ += this.§&!#§;
                  this.§]E§();
               }
            }
         }
         else
         {
            while(this.§@!&§(this.§&!#§))
            {
               _loc1_ += this.§&!#§;
               this.§]E§();
            }
         }
         if(this.§&!#§ == ".")
         {
            _loc1_ += ".";
            this.§]E§();
            if(!this.§@!&§(this.§&!#§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§@!&§(this.§&!#§))
            {
               _loc1_ += this.§&!#§;
               this.§]E§();
            }
         }
         if(this.§&!#§ == "e" || this.§&!#§ == "E")
         {
            _loc1_ += "e";
            this.§]E§();
            if(this.§&!#§ == "+" || this.§&!#§ == "-")
            {
               _loc1_ += this.§&!#§;
               this.§]E§();
            }
            if(!this.§@!&§(this.§&!#§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§@!&§(this.§&!#§))
            {
               _loc1_ += this.§&!#§;
               this.§]E§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §'<§();
            _loc3_.type = §,!7§.§]y§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §]E§() : String
      {
         return this.§&!#§ = this.§>!4§.charAt(this.§^,§++);
      }
      
      private function § v§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§^,§;
            this.§"!+§();
            this.§`!+§();
         }
         while(_loc1_ != this.§^,§);
         
      }
      
      private function §`!+§() : void
      {
         if(this.§&!#§ == "/")
         {
            this.§]E§();
            switch(this.§&!#§)
            {
               case "/":
                  do
                  {
                     this.§]E§();
                  }
                  while(this.§&!#§ != "\n" && this.§&!#§ != "");
                  
                  this.§]E§();
                  break;
               case "*":
                  this.§]E§();
                  while(true)
                  {
                     if(this.§&!#§ == "*")
                     {
                        this.§]E§();
                        if(this.§&!#§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§]E§();
                     }
                     if(this.§&!#§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§]E§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§&!#§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §"!+§() : void
      {
         while(this.§9c§(this.§&!#§))
         {
            this.§]E§();
         }
      }
      
      private function §9c§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§#O§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §@!&§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §91§(param1:String) : Boolean
      {
         return this.§@!&§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§^,§,this.§>!4§);
      }
   }
}
