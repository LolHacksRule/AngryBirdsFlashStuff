package §`t§
{
   public class §=d§
   {
       
      
      private var §8!'§:Boolean;
      
      private var obj:Object;
      
      private var §@a§:String;
      
      private var §-!;§:int;
      
      private var §=k§:String;
      
      private var §&s§:RegExp;
      
      public function §=d§(param1:String, param2:Boolean)
      {
         this.§&s§ = /[\x00-\x1F]/;
         super();
         this.§@a§ = param1;
         this.§8!'§ = param2;
         this.§-!;§ = 0;
         this.§+a§();
      }
      
      public function §@y§() : § '§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§ '§ = new § '§();
         this.§;C§();
         switch(this.§=k§)
         {
            case "{":
               _loc1_.type = §=!E§.§5,§;
               _loc1_.value = "{";
               this.§+a§();
               break;
            case "}":
               _loc1_.type = §=!E§.§`!F§;
               _loc1_.value = "}";
               this.§+a§();
               break;
            case "[":
               _loc1_.type = §=!E§.§32§;
               _loc1_.value = "[";
               this.§+a§();
               break;
            case "]":
               _loc1_.type = §=!E§.dynamic;
               _loc1_.value = "]";
               this.§+a§();
               break;
            case ",":
               _loc1_.type = §=!E§.§`!A§;
               _loc1_.value = ",";
               this.§+a§();
               break;
            case ":":
               _loc1_.type = §=!E§.§>o§;
               _loc1_.value = ":";
               this.§+a§();
               break;
            case "t":
               _loc2_ = "t" + this.§+a§() + this.§+a§() + this.§+a§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §=!E§.TRUE;
                  _loc1_.value = true;
                  this.§+a§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§+a§() + this.§+a§() + this.§+a§() + this.§+a§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §=!E§.FALSE;
                  _loc1_.value = false;
                  this.§+a§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§+a§() + this.§+a§() + this.§+a§()) == "null")
               {
                  _loc1_.type = §=!E§.NULL;
                  _loc1_.value = null;
                  this.§+a§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§+a§() + this.§+a§()) == "NaN")
               {
                  _loc1_.type = §=!E§.§+5§;
                  _loc1_.value = NaN;
                  this.§+a§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§!o§();
               break;
            default:
               if(this.§2!<§(this.§=k§) || this.§=k§ == "-")
               {
                  _loc1_ = this.§&!A§();
                  break;
               }
               if(this.§=k§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§=k§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §!o§() : § '§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§-!;§;
         while(true)
         {
            _loc1_ = this.§@a§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§@a§.charAt(_loc4_) == "\\")
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
         var _loc2_:§ '§ = new § '§();
         _loc2_.type = §=!E§.§`!E§;
         _loc2_.value = this.§88§(this.§@a§.substr(this.§-!;§,_loc1_ - this.§-!;§));
         this.§-!;§ = _loc1_ + 1;
         this.§+a§();
         return _loc2_;
      }
      
      public function §88§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§8!'§ && this.§&s§.test(param1))
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
                     if(!this.§?!8§(_loc10_))
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
      
      private function §&!A§() : § '§
      {
         var _loc3_:§ '§ = null;
         var _loc1_:* = "";
         if(this.§=k§ == "-")
         {
            _loc1_ += "-";
            this.§+a§();
         }
         if(!this.§2!<§(this.§=k§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§=k§ == "0")
         {
            _loc1_ += this.§=k§;
            this.§+a§();
            if(this.§2!<§(this.§=k§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§8!'§ && this.§=k§ == "x")
            {
               _loc1_ += this.§=k§;
               this.§+a§();
               if(this.§?!8§(this.§=k§))
               {
                  _loc1_ += this.§=k§;
                  this.§+a§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§?!8§(this.§=k§))
               {
                  _loc1_ += this.§=k§;
                  this.§+a§();
               }
            }
         }
         else
         {
            while(this.§2!<§(this.§=k§))
            {
               _loc1_ += this.§=k§;
               this.§+a§();
            }
         }
         if(this.§=k§ == ".")
         {
            _loc1_ += ".";
            this.§+a§();
            if(!this.§2!<§(this.§=k§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§2!<§(this.§=k§))
            {
               _loc1_ += this.§=k§;
               this.§+a§();
            }
         }
         if(this.§=k§ == "e" || this.§=k§ == "E")
         {
            _loc1_ += "e";
            this.§+a§();
            if(this.§=k§ == "+" || this.§=k§ == "-")
            {
               _loc1_ += this.§=k§;
               this.§+a§();
            }
            if(!this.§2!<§(this.§=k§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§2!<§(this.§=k§))
            {
               _loc1_ += this.§=k§;
               this.§+a§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new § '§();
            _loc3_.type = §=!E§.§6!C§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §+a§() : String
      {
         return this.§=k§ = this.§@a§.charAt(this.§-!;§++);
      }
      
      private function §;C§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§-!;§;
            this.§0v§();
            this.§#!@§();
         }
         while(_loc1_ != this.§-!;§);
         
      }
      
      private function §#!@§() : void
      {
         if(this.§=k§ == "/")
         {
            this.§+a§();
            switch(this.§=k§)
            {
               case "/":
                  do
                  {
                     this.§+a§();
                  }
                  while(this.§=k§ != "\n" && this.§=k§ != "");
                  
                  this.§+a§();
                  break;
               case "*":
                  this.§+a§();
                  while(true)
                  {
                     if(this.§=k§ == "*")
                     {
                        this.§+a§();
                        if(this.§=k§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§+a§();
                     }
                     if(this.§=k§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§+a§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§=k§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §0v§() : void
      {
         while(this.§@N§(this.§=k§))
         {
            this.§+a§();
         }
      }
      
      private function §@N§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§8!'§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §2!<§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §?!8§(param1:String) : Boolean
      {
         return this.§2!<§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§-!;§,this.§@a§);
      }
   }
}
