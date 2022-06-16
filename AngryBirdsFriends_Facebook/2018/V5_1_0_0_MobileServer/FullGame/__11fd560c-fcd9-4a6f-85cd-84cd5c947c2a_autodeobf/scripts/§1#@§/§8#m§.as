package §1#@§
{
   public class §8#m§
   {
       
      
      private var §3"E§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §?!J§:int;
      
      private var ch:String;
      
      private var §?!I§:RegExp;
      
      public function §8#m§(param1:String, param2:Boolean)
      {
         this.§?!I§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§3"E§ = param2;
         this.§?!J§ = 0;
         this.§;"u§();
      }
      
      public function §-!j§() : §]!J§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§]!J§ = new §]!J§();
         this.§0"E§();
         switch(this.ch)
         {
            case "{":
               _loc1_.type = §+v§.§?"D§;
               _loc1_.value = "{";
               this.§;"u§();
               break;
            case "}":
               _loc1_.type = §+v§.§9!5§;
               _loc1_.value = "}";
               this.§;"u§();
               break;
            case "[":
               _loc1_.type = §+v§.§!"I§;
               _loc1_.value = "[";
               this.§;"u§();
               break;
            case "]":
               _loc1_.type = §+v§.§0!B§;
               _loc1_.value = "]";
               this.§;"u§();
               break;
            case ",":
               _loc1_.type = §+v§.§[!K§;
               _loc1_.value = ",";
               this.§;"u§();
               break;
            case ":":
               _loc1_.type = §+v§.§2#§;
               _loc1_.value = ":";
               this.§;"u§();
               break;
            case "t":
               _loc2_ = "t" + this.§;"u§() + this.§;"u§() + this.§;"u§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §+v§.TRUE;
                  _loc1_.value = true;
                  this.§;"u§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§;"u§() + this.§;"u§() + this.§;"u§() + this.§;"u§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §+v§.FALSE;
                  _loc1_.value = false;
                  this.§;"u§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§;"u§() + this.§;"u§() + this.§;"u§()) == "null")
               {
                  _loc1_.type = §+v§.NULL;
                  _loc1_.value = null;
                  this.§;"u§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§;"u§() + this.§;"u§()) == "NaN")
               {
                  _loc1_.type = §+v§.§6"x§;
                  _loc1_.value = NaN;
                  this.§;"u§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§'#a§();
               break;
            default:
               if(this.§"$5§(this.ch) || this.ch == "-")
               {
                  _loc1_ = this.§@!#§();
               }
               else
               {
                  if(this.ch == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.ch + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §'#a§() : §]!J§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§?!J§;
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
         var _loc2_:§]!J§ = new §]!J§();
         _loc2_.type = §+v§.§ #f§;
         _loc2_.value = this.§-"A§(this.jsonString.substr(this.§?!J§,_loc1_ - this.§?!J§));
         this.§?!J§ = _loc1_ + 1;
         this.§;"u§();
         return _loc2_;
      }
      
      public function §-"A§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§3"E§ && this.§?!I§.test(param1))
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
                     if(!this.§-c§(_loc10_))
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
      
      private function §@!#§() : §]!J§
      {
         var _loc3_:§]!J§ = null;
         var _loc1_:* = "";
         if(this.ch == "-")
         {
            _loc1_ += "-";
            this.§;"u§();
         }
         if(!this.§"$5§(this.ch))
         {
            this.parseError("Expecting a digit");
         }
         if(this.ch == "0")
         {
            _loc1_ += this.ch;
            this.§;"u§();
            if(this.§"$5§(this.ch))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§3"E§ && this.ch == "x")
            {
               _loc1_ += this.ch;
               this.§;"u§();
               if(this.§-c§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§;"u§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§-c§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§;"u§();
               }
            }
         }
         else
         {
            while(this.§"$5§(this.ch))
            {
               _loc1_ += this.ch;
               this.§;"u§();
            }
         }
         if(this.ch == ".")
         {
            _loc1_ += ".";
            this.§;"u§();
            if(!this.§"$5§(this.ch))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§"$5§(this.ch))
            {
               _loc1_ += this.ch;
               this.§;"u§();
            }
         }
         if(this.ch == "e" || this.ch == "E")
         {
            _loc1_ += "e";
            this.§;"u§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc1_ += this.ch;
               this.§;"u§();
            }
            if(!this.§"$5§(this.ch))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§"$5§(this.ch))
            {
               _loc1_ += this.ch;
               this.§;"u§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §]!J§();
            _loc3_.type = §+v§.§7A§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §;"u§() : String
      {
         return this.ch = this.jsonString.charAt(this.§?!J§++);
      }
      
      private function §0"E§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§?!J§;
            this.§=P§();
            this.§%"q§();
         }
         while(_loc1_ != this.§?!J§);
         
      }
      
      private function §%"q§() : void
      {
         if(this.ch == "/")
         {
            this.§;"u§();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.§;"u§();
                  }
                  while(this.ch != "\n" && this.ch != "");
                  
                  this.§;"u§();
                  break;
               case "*":
                  this.§;"u§();
                  while(true)
                  {
                     if(this.ch == "*")
                     {
                        this.§;"u§();
                        if(this.ch == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§;"u§();
                     }
                     if(this.ch == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§;"u§();
                  break;
               default:
                  this.parseError("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §=P§() : void
      {
         while(this.§ #=§(this.ch))
         {
            this.§;"u§();
         }
      }
      
      private function § #=§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§3"E§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §"$5§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §-c§(param1:String) : Boolean
      {
         return this.§"$5§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§?!J§,this.jsonString);
      }
   }
}
