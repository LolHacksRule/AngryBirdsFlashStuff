package §!@§
{
   public class §4! §
   {
       
      
      private var §6"§:Boolean;
      
      private var obj:Object;
      
      private var §,!-§:String;
      
      private var §3e§:int;
      
      private var §7o§:String;
      
      private var §3v§:RegExp;
      
      public function §4! §(param1:String, param2:Boolean)
      {
         this.§3v§ = /[\x00-\x1F]/;
         super();
         this.§,!-§ = param1;
         this.§6"§ = param2;
         this.§3e§ = 0;
         this.§0l§();
      }
      
      public function §%[§() : §`E§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§`E§ = new §`E§();
         this.§=a§();
         switch(this.§7o§)
         {
            case "{":
               _loc1_.type = §]!<§.§5M§;
               _loc1_.value = "{";
               this.§0l§();
               break;
            case "}":
               _loc1_.type = §]!<§.§%g§;
               _loc1_.value = "}";
               this.§0l§();
               break;
            case "[":
               _loc1_.type = §]!<§.§ !8§;
               _loc1_.value = "[";
               this.§0l§();
               break;
            case "]":
               _loc1_.type = §]!<§.§-D§;
               _loc1_.value = "]";
               this.§0l§();
               break;
            case ",":
               _loc1_.type = §]!<§.§;!G§;
               _loc1_.value = ",";
               this.§0l§();
               break;
            case ":":
               _loc1_.type = §]!<§.§>N§;
               _loc1_.value = ":";
               this.§0l§();
               break;
            case "t":
               _loc2_ = "t" + this.§0l§() + this.§0l§() + this.§0l§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §]!<§.TRUE;
                  _loc1_.value = true;
                  this.§0l§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§0l§() + this.§0l§() + this.§0l§() + this.§0l§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §]!<§.FALSE;
                  _loc1_.value = false;
                  this.§0l§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§0l§() + this.§0l§() + this.§0l§()) == "null")
               {
                  _loc1_.type = §]!<§.NULL;
                  _loc1_.value = null;
                  this.§0l§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§0l§() + this.§0l§()) == "NaN")
               {
                  _loc1_.type = §]!<§.§-Y§;
                  _loc1_.value = NaN;
                  this.§0l§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§0f§();
               break;
            default:
               if(this.§&Y§(this.§7o§) || this.§7o§ == "-")
               {
                  _loc1_ = this.§=X§();
                  break;
               }
               if(this.§7o§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§7o§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §0f§() : §`E§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§3e§;
         while(true)
         {
            _loc1_ = this.§,!-§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§,!-§.charAt(_loc4_) == "\\")
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
         var _loc2_:§`E§ = new §`E§();
         _loc2_.type = §]!<§.§6!+§;
         _loc2_.value = this.§&!G§(this.§,!-§.substr(this.§3e§,_loc1_ - this.§3e§));
         this.§3e§ = _loc1_ + 1;
         this.§0l§();
         return _loc2_;
      }
      
      public function §&!G§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§6"§ && this.§3v§.test(param1))
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
                     if(!this.§5§(_loc10_))
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
      
      private function §=X§() : §`E§
      {
         var _loc3_:§`E§ = null;
         var _loc1_:* = "";
         if(this.§7o§ == "-")
         {
            _loc1_ += "-";
            this.§0l§();
         }
         if(!this.§&Y§(this.§7o§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§7o§ == "0")
         {
            _loc1_ += this.§7o§;
            this.§0l§();
            if(this.§&Y§(this.§7o§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§6"§ && this.§7o§ == "x")
            {
               _loc1_ += this.§7o§;
               this.§0l§();
               if(this.§5§(this.§7o§))
               {
                  _loc1_ += this.§7o§;
                  this.§0l§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§5§(this.§7o§))
               {
                  _loc1_ += this.§7o§;
                  this.§0l§();
               }
            }
         }
         else
         {
            while(this.§&Y§(this.§7o§))
            {
               _loc1_ += this.§7o§;
               this.§0l§();
            }
         }
         if(this.§7o§ == ".")
         {
            _loc1_ += ".";
            this.§0l§();
            if(!this.§&Y§(this.§7o§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§&Y§(this.§7o§))
            {
               _loc1_ += this.§7o§;
               this.§0l§();
            }
         }
         if(this.§7o§ == "e" || this.§7o§ == "E")
         {
            _loc1_ += "e";
            this.§0l§();
            if(this.§7o§ == "+" || this.§7o§ == "-")
            {
               _loc1_ += this.§7o§;
               this.§0l§();
            }
            if(!this.§&Y§(this.§7o§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§&Y§(this.§7o§))
            {
               _loc1_ += this.§7o§;
               this.§0l§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §`E§();
            _loc3_.type = §]!<§.§1t§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §0l§() : String
      {
         return this.§7o§ = this.§,!-§.charAt(this.§3e§++);
      }
      
      private function §=a§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§3e§;
            this.§;e§();
            this.§+!E§();
         }
         while(_loc1_ != this.§3e§);
         
      }
      
      private function §+!E§() : void
      {
         if(this.§7o§ == "/")
         {
            this.§0l§();
            switch(this.§7o§)
            {
               case "/":
                  do
                  {
                     this.§0l§();
                  }
                  while(this.§7o§ != "\n" && this.§7o§ != "");
                  
                  this.§0l§();
                  break;
               case "*":
                  this.§0l§();
                  while(true)
                  {
                     if(this.§7o§ == "*")
                     {
                        this.§0l§();
                        if(this.§7o§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§0l§();
                     }
                     if(this.§7o§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§0l§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§7o§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §;e§() : void
      {
         while(this.§-P§(this.§7o§))
         {
            this.§0l§();
         }
      }
      
      private function §-P§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§6"§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §&Y§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §5§(param1:String) : Boolean
      {
         return this.§&Y§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§3e§,this.§,!-§);
      }
   }
}
