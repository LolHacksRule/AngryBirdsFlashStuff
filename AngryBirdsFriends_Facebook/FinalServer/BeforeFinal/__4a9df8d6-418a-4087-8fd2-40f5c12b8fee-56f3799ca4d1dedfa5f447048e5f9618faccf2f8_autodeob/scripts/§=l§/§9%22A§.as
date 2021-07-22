package §=l§
{
   public class §9"A§
   {
       
      
      private var §?b§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §+"g§:int;
      
      private var ch:String;
      
      private var §3#'§:RegExp;
      
      public function §9"A§(param1:String, param2:Boolean)
      {
         this.§3#'§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§?b§ = param2;
         this.§+"g§ = 0;
         this.§>!C§();
      }
      
      public function §0$D§() : §8C§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§8C§ = new §8C§();
         this.§!!t§();
         switch(this.ch)
         {
            case "{":
               _loc1_.type = §@#o§.§,#]§;
               _loc1_.value = "{";
               this.§>!C§();
               break;
            case "}":
               _loc1_.type = §@#o§.§'"Q§;
               _loc1_.value = "}";
               this.§>!C§();
               break;
            case "[":
               _loc1_.type = §@#o§.§?!U§;
               _loc1_.value = "[";
               this.§>!C§();
               break;
            case "]":
               _loc1_.type = §@#o§.§2'§;
               _loc1_.value = "]";
               this.§>!C§();
               break;
            case ",":
               _loc1_.type = §@#o§.§2$<§;
               _loc1_.value = ",";
               this.§>!C§();
               break;
            case ":":
               _loc1_.type = §@#o§.§#"q§;
               _loc1_.value = ":";
               this.§>!C§();
               break;
            case "t":
               _loc2_ = "t" + this.§>!C§() + this.§>!C§() + this.§>!C§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §@#o§.TRUE;
                  _loc1_.value = true;
                  this.§>!C§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§>!C§() + this.§>!C§() + this.§>!C§() + this.§>!C§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §@#o§.FALSE;
                  _loc1_.value = false;
                  this.§>!C§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§>!C§() + this.§>!C§() + this.§>!C§()) == "null")
               {
                  _loc1_.type = §@#o§.NULL;
                  _loc1_.value = null;
                  this.§>!C§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§>!C§() + this.§>!C§()) == "NaN")
               {
                  _loc1_.type = §@#o§.§4H§;
                  _loc1_.value = NaN;
                  this.§>!C§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§,"_§();
               break;
            default:
               if(this.§2"y§(this.ch) || this.ch == "-")
               {
                  _loc1_ = this.§>"e§();
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
      
      private function §,"_§() : §8C§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+"g§;
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
         var _loc2_:§8C§ = new §8C§();
         _loc2_.type = §@#o§.§`+§;
         _loc2_.value = this.§^!J§(this.jsonString.substr(this.§+"g§,_loc1_ - this.§+"g§));
         this.§+"g§ = _loc1_ + 1;
         this.§>!C§();
         return _loc2_;
      }
      
      public function §^!J§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§?b§ && this.§3#'§.test(param1))
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
                     if(!this.§+"p§(_loc10_))
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
      
      private function §>"e§() : §8C§
      {
         var _loc3_:§8C§ = null;
         var _loc1_:* = "";
         if(this.ch == "-")
         {
            _loc1_ += "-";
            this.§>!C§();
         }
         if(!this.§2"y§(this.ch))
         {
            this.parseError("Expecting a digit");
         }
         if(this.ch == "0")
         {
            _loc1_ += this.ch;
            this.§>!C§();
            if(this.§2"y§(this.ch))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§?b§ && this.ch == "x")
            {
               _loc1_ += this.ch;
               this.§>!C§();
               if(this.§+"p§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§>!C§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§+"p§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§>!C§();
               }
            }
         }
         else
         {
            while(this.§2"y§(this.ch))
            {
               _loc1_ += this.ch;
               this.§>!C§();
            }
         }
         if(this.ch == ".")
         {
            _loc1_ += ".";
            this.§>!C§();
            if(!this.§2"y§(this.ch))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§2"y§(this.ch))
            {
               _loc1_ += this.ch;
               this.§>!C§();
            }
         }
         if(this.ch == "e" || this.ch == "E")
         {
            _loc1_ += "e";
            this.§>!C§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc1_ += this.ch;
               this.§>!C§();
            }
            if(!this.§2"y§(this.ch))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§2"y§(this.ch))
            {
               _loc1_ += this.ch;
               this.§>!C§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §8C§();
            _loc3_.type = §@#o§.§`!#§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §>!C§() : String
      {
         return this.ch = this.jsonString.charAt(this.§+"g§++);
      }
      
      private function §!!t§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+"g§;
            this.§'"V§();
            this.§8#M§();
         }
         while(_loc1_ != this.§+"g§);
         
      }
      
      private function §8#M§() : void
      {
         if(this.ch == "/")
         {
            this.§>!C§();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.§>!C§();
                  }
                  while(this.ch != "\n" && this.ch != "");
                  
                  this.§>!C§();
                  break;
               case "*":
                  this.§>!C§();
                  while(true)
                  {
                     if(this.ch == "*")
                     {
                        this.§>!C§();
                        if(this.ch == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§>!C§();
                     }
                     if(this.ch == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§>!C§();
                  break;
               default:
                  this.parseError("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §'"V§() : void
      {
         while(this.§!!b§(this.ch))
         {
            this.§>!C§();
         }
      }
      
      private function §!!b§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§?b§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §2"y§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §+"p§(param1:String) : Boolean
      {
         return this.§2"y§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+"g§,this.jsonString);
      }
   }
}
