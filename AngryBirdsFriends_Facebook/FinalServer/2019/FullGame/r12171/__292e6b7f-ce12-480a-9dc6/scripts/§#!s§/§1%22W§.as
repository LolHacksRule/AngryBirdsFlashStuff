package §#!s§
{
   public class §1"W§
   {
       
      
      private var §8!^§:Boolean;
      
      private var obj:Object;
      
      private var jsonString:String;
      
      private var §+#a§:int;
      
      private var ch:String;
      
      private var §6!V§:RegExp;
      
      public function §1"W§(param1:String, param2:Boolean)
      {
         this.§6!V§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§8!^§ = param2;
         this.§+#a§ = 0;
         this.§`"X§();
      }
      
      public function § "'§() : §3I§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§3I§ = new §3I§();
         this.§+x§();
         switch(this.ch)
         {
            case "{":
               _loc1_.type = §6#R§.§0n§;
               _loc1_.value = "{";
               this.§`"X§();
               break;
            case "}":
               _loc1_.type = §6#R§.§1!^§;
               _loc1_.value = "}";
               this.§`"X§();
               break;
            case "[":
               _loc1_.type = §6#R§.§-!]§;
               _loc1_.value = "[";
               this.§`"X§();
               break;
            case "]":
               _loc1_.type = §6#R§.§`$5§;
               _loc1_.value = "]";
               this.§`"X§();
               break;
            case ",":
               _loc1_.type = §6#R§.§]$6§;
               _loc1_.value = ",";
               this.§`"X§();
               break;
            case ":":
               _loc1_.type = §6#R§.§=!h§;
               _loc1_.value = ":";
               this.§`"X§();
               break;
            case "t":
               _loc2_ = "t" + this.§`"X§() + this.§`"X§() + this.§`"X§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §6#R§.TRUE;
                  _loc1_.value = true;
                  this.§`"X§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§`"X§() + this.§`"X§() + this.§`"X§() + this.§`"X§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §6#R§.FALSE;
                  _loc1_.value = false;
                  this.§`"X§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§`"X§() + this.§`"X§() + this.§`"X§()) == "null")
               {
                  _loc1_.type = §6#R§.NULL;
                  _loc1_.value = null;
                  this.§`"X§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§`"X§() + this.§`"X§()) == "NaN")
               {
                  _loc1_.type = §6#R§.§[Z§;
                  _loc1_.value = NaN;
                  this.§`"X§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§>t§();
               break;
            default:
               if(this.§-L§(this.ch) || this.ch == "-")
               {
                  _loc1_ = this.§<#G§();
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
      
      private function §>t§() : §3I§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§+#a§;
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
         var _loc2_:§3I§ = new §3I§();
         _loc2_.type = §6#R§.§0#k§;
         _loc2_.value = this.§""P§(this.jsonString.substr(this.§+#a§,_loc1_ - this.§+#a§));
         this.§+#a§ = _loc1_ + 1;
         this.§`"X§();
         return _loc2_;
      }
      
      public function §""P§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§8!^§ && this.§6!V§.test(param1))
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
                     if(!this.§7-§(_loc10_))
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
      
      private function §<#G§() : §3I§
      {
         var _loc3_:§3I§ = null;
         var _loc1_:* = "";
         if(this.ch == "-")
         {
            _loc1_ += "-";
            this.§`"X§();
         }
         if(!this.§-L§(this.ch))
         {
            this.parseError("Expecting a digit");
         }
         if(this.ch == "0")
         {
            _loc1_ += this.ch;
            this.§`"X§();
            if(this.§-L§(this.ch))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§8!^§ && this.ch == "x")
            {
               _loc1_ += this.ch;
               this.§`"X§();
               if(this.§7-§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§`"X§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§7-§(this.ch))
               {
                  _loc1_ += this.ch;
                  this.§`"X§();
               }
            }
         }
         else
         {
            while(this.§-L§(this.ch))
            {
               _loc1_ += this.ch;
               this.§`"X§();
            }
         }
         if(this.ch == ".")
         {
            _loc1_ += ".";
            this.§`"X§();
            if(!this.§-L§(this.ch))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§-L§(this.ch))
            {
               _loc1_ += this.ch;
               this.§`"X§();
            }
         }
         if(this.ch == "e" || this.ch == "E")
         {
            _loc1_ += "e";
            this.§`"X§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc1_ += this.ch;
               this.§`"X§();
            }
            if(!this.§-L§(this.ch))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§-L§(this.ch))
            {
               _loc1_ += this.ch;
               this.§`"X§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §3I§();
            _loc3_.type = §6#R§.§7&§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §`"X§() : String
      {
         return this.ch = this.jsonString.charAt(this.§+#a§++);
      }
      
      private function §+x§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§+#a§;
            this.§+!;§();
            this.§'!§();
         }
         while(_loc1_ != this.§+#a§);
         
      }
      
      private function §'!§() : void
      {
         if(this.ch == "/")
         {
            this.§`"X§();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.§`"X§();
                  }
                  while(this.ch != "\n" && this.ch != "");
                  
                  this.§`"X§();
                  break;
               case "*":
                  this.§`"X§();
                  while(true)
                  {
                     if(this.ch == "*")
                     {
                        this.§`"X§();
                        if(this.ch == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§`"X§();
                     }
                     if(this.ch == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§`"X§();
                  break;
               default:
                  this.parseError("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §+!;§() : void
      {
         while(this.§"X§(this.ch))
         {
            this.§`"X§();
         }
      }
      
      private function §"X§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§8!^§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §-L§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §7-§(param1:String) : Boolean
      {
         return this.§-L§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§+#a§,this.jsonString);
      }
   }
}
