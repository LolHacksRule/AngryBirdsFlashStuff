package §else §
{
   public class §;!]§
   {
       
      
      private var §4"K§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §&"R§:int;
      
      private var ch:String;
      
      private var §?"K§:RegExp;
      
      public function §;!]§(param1:String, param2:Boolean)
      {
         this.§?"K§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§4"K§ = param2;
         this.§&"R§ = 0;
         this.§""p§();
      }
      
      public function §6!$§() : §=h§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§=h§ = new §=h§();
         this.§^+§();
         switch(this.ch)
         {
            case "{":
               _loc1_.type = §#" §.§'#T§;
               _loc1_.value = "{";
               this.§""p§();
               break;
            case "}":
               _loc1_.type = §#" §.§="i§;
               _loc1_.value = "}";
               this.§""p§();
               break;
            case "[":
               _loc1_.type = §#" §.§;"=§;
               _loc1_.value = "[";
               this.§""p§();
               break;
            case "]":
               _loc1_.type = §#" §.§6![§;
               _loc1_.value = "]";
               this.§""p§();
               break;
            case ",":
               _loc1_.type = §#" §.§&"i§;
               _loc1_.value = ",";
               this.§""p§();
               break;
            case ":":
               _loc1_.type = §#" §.§+"U§;
               _loc1_.value = ":";
               this.§""p§();
               break;
            case "t":
               _loc2_ = "t" + this.§""p§() + this.§""p§() + this.§""p§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §#" §.TRUE;
                  _loc1_.value = true;
                  this.§""p§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§""p§() + this.§""p§() + this.§""p§() + this.§""p§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §#" §.FALSE;
                  _loc1_.value = false;
                  this.§""p§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§""p§() + this.§""p§() + this.§""p§()) == "null")
               {
                  _loc1_.type = §#" §.NULL;
                  _loc1_.value = null;
                  this.§""p§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§""p§() + this.§""p§()) == "NaN")
               {
                  _loc1_.type = §#" §.§!!D§;
                  _loc1_.value = NaN;
                  this.§""p§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§9!q§();
               break;
            default:
               if(this.§8!9§(this.ch) || this.ch == "-")
               {
                  _loc1_ = this.§="'§();
                  break;
               }
               if(this.ch == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.ch + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §9!q§() : §=h§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§&"R§;
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
         var _loc2_:§=h§ = new §=h§();
         _loc2_.type = §#" §.§3!,§;
         _loc2_.value = this.§="O§(this.jsonString.substr(this.§&"R§,_loc1_ - this.§&"R§));
         this.§&"R§ = _loc1_ + 1;
         this.§""p§();
         return _loc2_;
      }
      
      public function §="O§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§4"K§ && this.§?"K§.test(param1))
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
                     if(!this.§>!2§(_loc10_))
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
      
      private function §="'§() : §=h§
      {
         var _loc3_:§=h§ = null;
         var _loc1_:* = "";
         if(this.ch == "-")
         {
            _loc1_ += "-";
            this.§""p§();
         }
         if(!this.§8!9§(this.ch))
         {
            this.parseError("Expecting a digit");
         }
         if(this.ch == "0")
         {
            _loc1_ += this.ch;
            this.§""p§();
            if(this.§8!9§(this.ch))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§4"K§ && this.ch == "x")
            {
               _loc1_ += this.ch;
               this.§""p§();
               if(this.§>!2§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§""p§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§>!2§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§""p§();
               }
            }
         }
         else
         {
            while(this.§8!9§(this.ch))
            {
               _loc1_ += this.ch;
               this.§""p§();
            }
         }
         if(this.ch == ".")
         {
            _loc1_ += ".";
            this.§""p§();
            if(!this.§8!9§(this.ch))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§8!9§(this.ch))
            {
               _loc1_ += this.ch;
               this.§""p§();
            }
         }
         if(this.ch == "e" || this.ch == "E")
         {
            _loc1_ += "e";
            this.§""p§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc1_ += this.ch;
               this.§""p§();
            }
            if(!this.§8!9§(this.ch))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§8!9§(this.ch))
            {
               _loc1_ += this.ch;
               this.§""p§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §=h§();
            _loc3_.type = §#" §.§]!s§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §""p§() : String
      {
         return this.ch = this.jsonString.charAt(this.§&"R§++);
      }
      
      private function §^+§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§&"R§;
            this.§1!c§();
            this.§&#_§();
         }
         while(_loc1_ != this.§&"R§);
         
      }
      
      private function §&#_§() : void
      {
         if(this.ch == "/")
         {
            this.§""p§();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.§""p§();
                  }
                  while(this.ch != "\n" && this.ch != "");
                  
                  this.§""p§();
                  break;
               case "*":
                  this.§""p§();
                  while(true)
                  {
                     if(this.ch == "*")
                     {
                        this.§""p§();
                        if(this.ch == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§""p§();
                     }
                     if(this.ch == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§""p§();
                  break;
               default:
                  this.parseError("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §1!c§() : void
      {
         while(this.§6M§(this.ch))
         {
            this.§""p§();
         }
      }
      
      private function §6M§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§4"K§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §8!9§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §>!2§(param1:String) : Boolean
      {
         return this.§8!9§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§&"R§,this.jsonString);
      }
   }
}
