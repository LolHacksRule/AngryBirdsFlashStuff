package §5!8§
{
   public class §;"o§
   {
       
      
      private var §%Y§:Boolean;
      
      private var §-"R§:Object;
      
      private var jsonString:String;
      
      private var §`#-§:int;
      
      private var §^![§:String;
      
      private var §[!'§:RegExp;
      
      public function §;"o§(param1:String, param2:Boolean)
      {
         this.§[!'§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§%Y§ = param2;
         this.§`#-§ = 0;
         this.§4!]§();
      }
      
      public function §<"$§() : §=!3§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§=!3§ = new §=!3§();
         this.§#!;§();
         switch(this.§^![§)
         {
            case "{":
               _loc1_.type = §`" §.§0x§;
               _loc1_.value = "{";
               this.§4!]§();
               break;
            case "}":
               _loc1_.type = §`" §.§2M§;
               _loc1_.value = "}";
               this.§4!]§();
               break;
            case "[":
               _loc1_.type = §`" §.§[!u§;
               _loc1_.value = "[";
               this.§4!]§();
               break;
            case "]":
               _loc1_.type = §`" §.§!#5§;
               _loc1_.value = "]";
               this.§4!]§();
               break;
            case ",":
               _loc1_.type = §`" §.§>"E§;
               _loc1_.value = ",";
               this.§4!]§();
               break;
            case ":":
               _loc1_.type = §`" §.§<8§;
               _loc1_.value = ":";
               this.§4!]§();
               break;
            case "t":
               _loc2_ = "t" + this.§4!]§() + this.§4!]§() + this.§4!]§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §`" §.TRUE;
                  _loc1_.value = true;
                  this.§4!]§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§4!]§() + this.§4!]§() + this.§4!]§() + this.§4!]§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §`" §.FALSE;
                  _loc1_.value = false;
                  this.§4!]§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§4!]§() + this.§4!]§() + this.§4!]§()) == "null")
               {
                  _loc1_.type = §`" §.NULL;
                  _loc1_.value = null;
                  this.§4!]§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§4!]§() + this.§4!]§()) == "NaN")
               {
                  _loc1_.type = §`" §.§4!!§;
                  _loc1_.value = NaN;
                  this.§4!]§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§'#%§();
               break;
            default:
               if(this.§""A§(this.§^![§) || this.§^![§ == "-")
               {
                  _loc1_ = this.§^"z§();
                  break;
               }
               if(this.§^![§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§^![§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §'#%§() : §=!3§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§`#-§;
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
         var _loc2_:§=!3§ = new §=!3§();
         _loc2_.type = §`" §.§!"I§;
         _loc2_.value = this.§4@§(this.jsonString.substr(this.§`#-§,_loc1_ - this.§`#-§));
         this.§`#-§ = _loc1_ + 1;
         this.§4!]§();
         return _loc2_;
      }
      
      public function §4@§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§%Y§ && this.§[!'§.test(param1))
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
                     if(!this.§;8§(_loc10_))
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
      
      private function §^"z§() : §=!3§
      {
         var _loc3_:§=!3§ = null;
         var _loc1_:* = "";
         if(this.§^![§ == "-")
         {
            _loc1_ += "-";
            this.§4!]§();
         }
         if(!this.§""A§(this.§^![§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§^![§ == "0")
         {
            _loc1_ += this.§^![§;
            this.§4!]§();
            if(this.§""A§(this.§^![§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§%Y§ && this.§^![§ == "x")
            {
               _loc1_ += this.§^![§;
               this.§4!]§();
               if(this.§;8§(this.§^![§))
               {
                  _loc1_ += this.§^![§;
                  this.§4!]§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§;8§(this.§^![§))
               {
                  _loc1_ += this.§^![§;
                  this.§4!]§();
               }
            }
         }
         else
         {
            while(this.§""A§(this.§^![§))
            {
               _loc1_ += this.§^![§;
               this.§4!]§();
            }
         }
         if(this.§^![§ == ".")
         {
            _loc1_ += ".";
            this.§4!]§();
            if(!this.§""A§(this.§^![§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§""A§(this.§^![§))
            {
               _loc1_ += this.§^![§;
               this.§4!]§();
            }
         }
         if(this.§^![§ == "e" || this.§^![§ == "E")
         {
            _loc1_ += "e";
            this.§4!]§();
            if(this.§^![§ == "+" || this.§^![§ == "-")
            {
               _loc1_ += this.§^![§;
               this.§4!]§();
            }
            if(!this.§""A§(this.§^![§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§""A§(this.§^![§))
            {
               _loc1_ += this.§^![§;
               this.§4!]§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §=!3§();
            _loc3_.type = §`" §.§[O§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §4!]§() : String
      {
         return this.§^![§ = this.jsonString.charAt(this.§`#-§++);
      }
      
      private function §#!;§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§`#-§;
            this.§4"1§();
            this.§5!T§();
         }
         while(_loc1_ != this.§`#-§);
         
      }
      
      private function §5!T§() : void
      {
         if(this.§^![§ == "/")
         {
            this.§4!]§();
            switch(this.§^![§)
            {
               case "/":
                  do
                  {
                     this.§4!]§();
                  }
                  while(this.§^![§ != "\n" && this.§^![§ != "");
                  
                  this.§4!]§();
                  break;
               case "*":
                  this.§4!]§();
                  while(true)
                  {
                     if(this.§^![§ == "*")
                     {
                        this.§4!]§();
                        if(this.§^![§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§4!]§();
                     }
                     if(this.§^![§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§4!]§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§^![§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §4"1§() : void
      {
         while(this.§1"4§(this.§^![§))
         {
            this.§4!]§();
         }
      }
      
      private function §1"4§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§%Y§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §""A§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §;8§(param1:String) : Boolean
      {
         return this.§""A§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§`#-§,this.jsonString);
      }
   }
}
