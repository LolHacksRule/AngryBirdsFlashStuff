package §`"3§
{
   public class §#!,§
   {
       
      
      private var §`!b§:Boolean;
      
      private var obj:Object;
      
      private var §-!f§:String;
      
      private var §["+§:int;
      
      private var §'!q§:String;
      
      private var §;!u§:RegExp;
      
      public function §#!,§(param1:String, param2:Boolean)
      {
         this.§;!u§ = /[\x00-\x1F]/;
         super();
         this.§-!f§ = param1;
         this.§`!b§ = param2;
         this.§["+§ = 0;
         this.§]b§();
      }
      
      public function §]-§() : §&e§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§&e§ = new §&e§();
         this.§ a§();
         switch(this.§'!q§)
         {
            case "{":
               _loc1_.type = §<!B§.§7!`§;
               _loc1_.value = "{";
               this.§]b§();
               break;
            case "}":
               _loc1_.type = §<!B§.§[%§;
               _loc1_.value = "}";
               this.§]b§();
               break;
            case "[":
               _loc1_.type = §<!B§.§%S§;
               _loc1_.value = "[";
               this.§]b§();
               break;
            case "]":
               _loc1_.type = §<!B§.§;O§;
               _loc1_.value = "]";
               this.§]b§();
               break;
            case ",":
               _loc1_.type = §<!B§.§0"!§;
               _loc1_.value = ",";
               this.§]b§();
               break;
            case ":":
               _loc1_.type = §<!B§.§7!d§;
               _loc1_.value = ":";
               this.§]b§();
               break;
            case "t":
               _loc2_ = "t" + this.§]b§() + this.§]b§() + this.§]b§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §<!B§.TRUE;
                  _loc1_.value = true;
                  this.§]b§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§]b§() + this.§]b§() + this.§]b§() + this.§]b§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §<!B§.FALSE;
                  _loc1_.value = false;
                  this.§]b§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§]b§() + this.§]b§() + this.§]b§()) == "null")
               {
                  _loc1_.type = §<!B§.NULL;
                  _loc1_.value = null;
                  this.§]b§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§]b§() + this.§]b§()) == "NaN")
               {
                  _loc1_.type = §<!B§.§ "9§;
                  _loc1_.value = NaN;
                  this.§]b§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§%-§();
               break;
            default:
               if(this.§6!t§(this.§'!q§) || this.§'!q§ == "-")
               {
                  _loc1_ = this.§ !v§();
                  break;
               }
               if(this.§'!q§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§'!q§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §%-§() : §&e§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§["+§;
         while(true)
         {
            _loc1_ = this.§-!f§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§-!f§.charAt(_loc4_) == "\\")
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
         var _loc2_:§&e§ = new §&e§();
         _loc2_.type = §<!B§.§0L§;
         _loc2_.value = this.§`z§(this.§-!f§.substr(this.§["+§,_loc1_ - this.§["+§));
         this.§["+§ = _loc1_ + 1;
         this.§]b§();
         return _loc2_;
      }
      
      public function §`z§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§`!b§ && this.§;!u§.test(param1))
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
                     if(!this.§%h§(_loc10_))
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
      
      private function § !v§() : §&e§
      {
         var _loc3_:§&e§ = null;
         var _loc1_:* = "";
         if(this.§'!q§ == "-")
         {
            _loc1_ += "-";
            this.§]b§();
         }
         if(!this.§6!t§(this.§'!q§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§'!q§ == "0")
         {
            _loc1_ += this.§'!q§;
            this.§]b§();
            if(this.§6!t§(this.§'!q§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§`!b§ && this.§'!q§ == "x")
            {
               _loc1_ += this.§'!q§;
               this.§]b§();
               if(this.§%h§(this.§'!q§))
               {
                  _loc1_ += this.§'!q§;
                  this.§]b§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§%h§(this.§'!q§))
               {
                  _loc1_ += this.§'!q§;
                  this.§]b§();
               }
            }
         }
         else
         {
            while(this.§6!t§(this.§'!q§))
            {
               _loc1_ += this.§'!q§;
               this.§]b§();
            }
         }
         if(this.§'!q§ == ".")
         {
            _loc1_ += ".";
            this.§]b§();
            if(!this.§6!t§(this.§'!q§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§6!t§(this.§'!q§))
            {
               _loc1_ += this.§'!q§;
               this.§]b§();
            }
         }
         if(this.§'!q§ == "e" || this.§'!q§ == "E")
         {
            _loc1_ += "e";
            this.§]b§();
            if(this.§'!q§ == "+" || this.§'!q§ == "-")
            {
               _loc1_ += this.§'!q§;
               this.§]b§();
            }
            if(!this.§6!t§(this.§'!q§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§6!t§(this.§'!q§))
            {
               _loc1_ += this.§'!q§;
               this.§]b§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §&e§();
            _loc3_.type = §<!B§.§+v§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §]b§() : String
      {
         return this.§'!q§ = this.§-!f§.charAt(this.§["+§++);
      }
      
      private function § a§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§["+§;
            this.§8q§();
            this.§^!x§();
         }
         while(_loc1_ != this.§["+§);
         
      }
      
      private function §^!x§() : void
      {
         if(this.§'!q§ == "/")
         {
            this.§]b§();
            switch(this.§'!q§)
            {
               case "/":
                  do
                  {
                     this.§]b§();
                  }
                  while(this.§'!q§ != "\n" && this.§'!q§ != "");
                  
                  this.§]b§();
                  break;
               case "*":
                  this.§]b§();
                  while(true)
                  {
                     if(this.§'!q§ == "*")
                     {
                        this.§]b§();
                        if(this.§'!q§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§]b§();
                     }
                     if(this.§'!q§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§]b§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§'!q§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §8q§() : void
      {
         while(this.§@%§(this.§'!q§))
         {
            this.§]b§();
         }
      }
      
      private function §@%§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§`!b§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §6!t§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §%h§(param1:String) : Boolean
      {
         return this.§6!t§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§["+§,this.§-!f§);
      }
   }
}
