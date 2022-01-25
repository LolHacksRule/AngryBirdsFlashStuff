package §#G§
{
   public class §`"$§
   {
       
      
      private var §1T§:Boolean;
      
      private var §#@§:Object;
      
      private var jsonString:String;
      
      private var §%!p§:int;
      
      private var §!6§:String;
      
      private var §=!p§:RegExp;
      
      public function §`"$§(param1:String, param2:Boolean)
      {
         this.§=!p§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§1T§ = param2;
         this.§%!p§ = 0;
         this.§@!_§();
      }
      
      public function §@g§() : §#e§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#e§ = new §#e§();
         this.§3"2§();
         switch(this.§!6§)
         {
            case "{":
               _loc1_.type = §@!e§.§3!a§;
               _loc1_.value = "{";
               this.§@!_§();
               break;
            case "}":
               _loc1_.type = §@!e§.§>",§;
               _loc1_.value = "}";
               this.§@!_§();
               break;
            case "[":
               _loc1_.type = §@!e§.§,j§;
               _loc1_.value = "[";
               this.§@!_§();
               break;
            case "]":
               _loc1_.type = §@!e§.§<"§;
               _loc1_.value = "]";
               this.§@!_§();
               break;
            case ",":
               _loc1_.type = §@!e§.§3e§;
               _loc1_.value = ",";
               this.§@!_§();
               break;
            case ":":
               _loc1_.type = §@!e§.§=!k§;
               _loc1_.value = ":";
               this.§@!_§();
               break;
            case "t":
               _loc2_ = "t" + this.§@!_§() + this.§@!_§() + this.§@!_§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §@!e§.TRUE;
                  _loc1_.value = true;
                  this.§@!_§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§@!_§() + this.§@!_§() + this.§@!_§() + this.§@!_§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §@!e§.FALSE;
                  _loc1_.value = false;
                  this.§@!_§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§@!_§() + this.§@!_§() + this.§@!_§()) == "null")
               {
                  _loc1_.type = §@!e§.NULL;
                  _loc1_.value = null;
                  this.§@!_§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§@!_§() + this.§@!_§()) == "NaN")
               {
                  _loc1_.type = §@!e§.§%!l§;
                  _loc1_.value = NaN;
                  this.§@!_§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§>!N§();
               break;
            default:
               if(this.§&!f§(this.§!6§) || this.§!6§ == "-")
               {
                  _loc1_ = this.§1!>§();
                  break;
               }
               if(this.§!6§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§!6§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §>!N§() : §#e§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§%!p§;
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
         var _loc2_:§#e§ = new §#e§();
         _loc2_.type = §@!e§.§?![§;
         _loc2_.value = this.§8!H§(this.jsonString.substr(this.§%!p§,_loc1_ - this.§%!p§));
         this.§%!p§ = _loc1_ + 1;
         this.§@!_§();
         return _loc2_;
      }
      
      public function §8!H§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§1T§ && this.§=!p§.test(param1))
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
                     if(!this.§+!u§(_loc10_))
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
      
      private function §1!>§() : §#e§
      {
         var _loc3_:§#e§ = null;
         var _loc1_:* = "";
         if(this.§!6§ == "-")
         {
            _loc1_ += "-";
            this.§@!_§();
         }
         if(!this.§&!f§(this.§!6§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§!6§ == "0")
         {
            _loc1_ += this.§!6§;
            this.§@!_§();
            if(this.§&!f§(this.§!6§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§1T§ && this.§!6§ == "x")
            {
               _loc1_ += this.§!6§;
               this.§@!_§();
               if(this.§+!u§(this.§!6§))
               {
                  _loc1_ += this.§!6§;
                  this.§@!_§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§+!u§(this.§!6§))
               {
                  _loc1_ += this.§!6§;
                  this.§@!_§();
               }
            }
         }
         else
         {
            while(this.§&!f§(this.§!6§))
            {
               _loc1_ += this.§!6§;
               this.§@!_§();
            }
         }
         if(this.§!6§ == ".")
         {
            _loc1_ += ".";
            this.§@!_§();
            if(!this.§&!f§(this.§!6§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§&!f§(this.§!6§))
            {
               _loc1_ += this.§!6§;
               this.§@!_§();
            }
         }
         if(this.§!6§ == "e" || this.§!6§ == "E")
         {
            _loc1_ += "e";
            this.§@!_§();
            if(this.§!6§ == "+" || this.§!6§ == "-")
            {
               _loc1_ += this.§!6§;
               this.§@!_§();
            }
            if(!this.§&!f§(this.§!6§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§&!f§(this.§!6§))
            {
               _loc1_ += this.§!6§;
               this.§@!_§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §#e§();
            _loc3_.type = §@!e§.§@!l§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §@!_§() : String
      {
         return this.§!6§ = this.jsonString.charAt(this.§%!p§++);
      }
      
      private function §3"2§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§%!p§;
            this.§ !L§();
            this.§],§();
         }
         while(_loc1_ != this.§%!p§);
         
      }
      
      private function §],§() : void
      {
         if(this.§!6§ == "/")
         {
            this.§@!_§();
            switch(this.§!6§)
            {
               case "/":
                  do
                  {
                     this.§@!_§();
                  }
                  while(this.§!6§ != "\n" && this.§!6§ != "");
                  
                  this.§@!_§();
                  break;
               case "*":
                  this.§@!_§();
                  while(true)
                  {
                     if(this.§!6§ == "*")
                     {
                        this.§@!_§();
                        if(this.§!6§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§@!_§();
                     }
                     if(this.§!6§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§@!_§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§!6§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function § !L§() : void
      {
         while(this.§?!g§(this.§!6§))
         {
            this.§@!_§();
         }
      }
      
      private function §?!g§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§1T§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §&!f§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §+!u§(param1:String) : Boolean
      {
         return this.§&!f§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§%!p§,this.jsonString);
      }
   }
}
