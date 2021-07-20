package §>o§
{
   public class §;!3§
   {
       
      
      private var §<g§:Boolean;
      
      private var obj:Object;
      
      private var §[!=§:String;
      
      private var §!!3§:int;
      
      private var §3!J§:String;
      
      private var §]!Q§:RegExp;
      
      public function §;!3§(param1:String, param2:Boolean)
      {
         this.§]!Q§ = /[\x00-\x1F]/;
         super();
         this.§[!=§ = param1;
         this.§<g§ = param2;
         this.§!!3§ = 0;
         this.§?_§();
      }
      
      public function §;!e§() : §8!8§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§8!8§ = new §8!8§();
         this.§]z§();
         switch(this.§3!J§)
         {
            case "{":
               _loc1_.type = §4!D§.§0j§;
               _loc1_.value = "{";
               this.§?_§();
               break;
            case "}":
               _loc1_.type = §4!D§.§8c§;
               _loc1_.value = "}";
               this.§?_§();
               break;
            case "[":
               _loc1_.type = §4!D§.§]!j§;
               _loc1_.value = "[";
               this.§?_§();
               break;
            case "]":
               _loc1_.type = §4!D§.§8!Z§;
               _loc1_.value = "]";
               this.§?_§();
               break;
            case ",":
               _loc1_.type = §4!D§.§[!P§;
               _loc1_.value = ",";
               this.§?_§();
               break;
            case ":":
               _loc1_.type = §4!D§.§+<§;
               _loc1_.value = ":";
               this.§?_§();
               break;
            case "t":
               _loc2_ = "t" + this.§?_§() + this.§?_§() + this.§?_§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §4!D§.TRUE;
                  _loc1_.value = true;
                  this.§?_§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§?_§() + this.§?_§() + this.§?_§() + this.§?_§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §4!D§.FALSE;
                  _loc1_.value = false;
                  this.§?_§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               _loc4_ = "n" + this.§?_§() + this.§?_§() + this.§?_§();
               if(_loc4_ == "null")
               {
                  _loc1_.type = §4!D§.NULL;
                  _loc1_.value = null;
                  this.§?_§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               _loc5_ = "N" + this.§?_§() + this.§?_§();
               if(_loc5_ == "NaN")
               {
                  _loc1_.type = §4!D§.§,o§;
                  _loc1_.value = NaN;
                  this.§?_§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§7E§();
               break;
            default:
               if(this.§?!N§(this.§3!J§) || this.§3!J§ == "-")
               {
                  _loc1_ = this.§>!j§();
               }
               else
               {
                  if(this.§3!J§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§3!J§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §7E§() : §8!8§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§!!3§;
         while(true)
         {
            _loc1_ = this.§[!=§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§[!=§.charAt(_loc4_) == "\\")
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
         var _loc2_:§8!8§ = new §8!8§();
         _loc2_.type = §4!D§.§+L§;
         _loc2_.value = this.§#!G§(this.§[!=§.substr(this.§!!3§,_loc1_ - this.§!!3§));
         this.§!!3§ = _loc1_ + 1;
         this.§?_§();
         return _loc2_;
      }
      
      public function §#!G§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§<g§ && this.§]!Q§.test(param1))
         {
            this.parseError("String contains unescaped control character (0x00-0x1F)");
         }
         var _loc2_:String = "";
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
                     if(!this.§>U§(_loc10_))
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
      
      private function §>!j§() : §8!8§
      {
         var _loc3_:§8!8§ = null;
         var _loc1_:String = "";
         if(this.§3!J§ == "-")
         {
            _loc1_ += "-";
            this.§?_§();
         }
         if(!this.§?!N§(this.§3!J§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§3!J§ == "0")
         {
            _loc1_ += this.§3!J§;
            this.§?_§();
            if(this.§?!N§(this.§3!J§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§<g§ && this.§3!J§ == "x")
            {
               _loc1_ += this.§3!J§;
               this.§?_§();
               if(this.§>U§(this.§3!J§))
               {
                  _loc1_ += this.§3!J§;
                  this.§?_§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§>U§(this.§3!J§))
               {
                  _loc1_ += this.§3!J§;
                  this.§?_§();
               }
            }
         }
         else
         {
            while(this.§?!N§(this.§3!J§))
            {
               _loc1_ += this.§3!J§;
               this.§?_§();
            }
         }
         if(this.§3!J§ == ".")
         {
            _loc1_ += ".";
            this.§?_§();
            if(!this.§?!N§(this.§3!J§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§?!N§(this.§3!J§))
            {
               _loc1_ += this.§3!J§;
               this.§?_§();
            }
         }
         if(this.§3!J§ == "e" || this.§3!J§ == "E")
         {
            _loc1_ += "e";
            this.§?_§();
            if(this.§3!J§ == "+" || this.§3!J§ == "-")
            {
               _loc1_ += this.§3!J§;
               this.§?_§();
            }
            if(!this.§?!N§(this.§3!J§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§?!N§(this.§3!J§))
            {
               _loc1_ += this.§3!J§;
               this.§?_§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §8!8§();
            _loc3_.type = §4!D§.§93§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §?_§() : String
      {
         return this.§3!J§ = this.§[!=§.charAt(this.§!!3§++);
      }
      
      private function §]z§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§!!3§;
            this.§!N§();
            this.§#!`§();
         }
         while(_loc1_ != this.§!!3§);
         
      }
      
      private function §#!`§() : void
      {
         if(this.§3!J§ == "/")
         {
            this.§?_§();
            switch(this.§3!J§)
            {
               case "/":
                  do
                  {
                     this.§?_§();
                  }
                  while(this.§3!J§ != "\n" && this.§3!J§ != "");
                  
                  this.§?_§();
                  break;
               case "*":
                  this.§?_§();
                  while(true)
                  {
                     if(this.§3!J§ == "*")
                     {
                        this.§?_§();
                        if(this.§3!J§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§?_§();
                     }
                     if(this.§3!J§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§?_§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§3!J§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §!N§() : void
      {
         while(this.§=!O§(this.§3!J§))
         {
            this.§?_§();
         }
      }
      
      private function §=!O§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§<g§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §?!N§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §>U§(param1:String) : Boolean
      {
         return this.§?!N§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§!!3§,this.§[!=§);
      }
   }
}
