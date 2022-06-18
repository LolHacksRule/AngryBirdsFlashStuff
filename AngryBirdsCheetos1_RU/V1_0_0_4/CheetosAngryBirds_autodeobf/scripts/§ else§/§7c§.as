package § else§
{
   public class §7c§
   {
       
      
      private var §?!7§:Boolean;
      
      private var obj:Object;
      
      private var §`d§:String;
      
      private var §<"§:int;
      
      private var §[h§:String;
      
      private var §^u§:RegExp;
      
      public function §7c§(param1:String, param2:Boolean)
      {
         this.§^u§ = /[\x00-\x1F]/;
         super();
         this.§`d§ = param1;
         this.§?!7§ = param2;
         this.§<"§ = 0;
         this.§`!]§();
      }
      
      public function §>!>§() : §"U§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§"U§ = new §"U§();
         this.§]!3§();
         switch(this.§[h§)
         {
            case "{":
               _loc1_.type = §`!1§.§]U§;
               _loc1_.value = "{";
               this.§`!]§();
               break;
            case "}":
               _loc1_.type = §`!1§.§2d§;
               _loc1_.value = "}";
               this.§`!]§();
               break;
            case "[":
               _loc1_.type = §`!1§.§`9§;
               _loc1_.value = "[";
               this.§`!]§();
               break;
            case "]":
               _loc1_.type = §`!1§.§2&§;
               _loc1_.value = "]";
               this.§`!]§();
               break;
            case ",":
               _loc1_.type = §`!1§.§7!Q§;
               _loc1_.value = ",";
               this.§`!]§();
               break;
            case ":":
               _loc1_.type = §`!1§.§"§;
               _loc1_.value = ":";
               this.§`!]§();
               break;
            case "t":
               _loc2_ = "t" + this.§`!]§() + this.§`!]§() + this.§`!]§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §`!1§.TRUE;
                  _loc1_.value = true;
                  this.§`!]§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§`!]§() + this.§`!]§() + this.§`!]§() + this.§`!]§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §`!1§.FALSE;
                  _loc1_.value = false;
                  this.§`!]§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§`!]§() + this.§`!]§() + this.§`!]§()) == "null")
               {
                  _loc1_.type = §`!1§.§3Q§;
                  _loc1_.value = null;
                  this.§`!]§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§`!]§() + this.§`!]§()) == "NaN")
               {
                  _loc1_.type = §`!1§.§7<§;
                  _loc1_.value = NaN;
                  this.§`!]§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§6!9§();
               break;
            default:
               if(this.§ !M§(this.§[h§) || this.§[h§ == "-")
               {
                  _loc1_ = this.§>b§();
                  break;
               }
               if(this.§[h§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§[h§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §6!9§() : §"U§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§<"§;
         while(true)
         {
            _loc1_ = this.§`d§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§`d§.charAt(_loc4_) == "\\")
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
         var _loc2_:§"U§ = new §"U§();
         _loc2_.type = §`!1§.§<E§;
         _loc2_.value = this.§ w§(this.§`d§.substr(this.§<"§,_loc1_ - this.§<"§));
         this.§<"§ = _loc1_ + 1;
         this.§`!]§();
         return _loc2_;
      }
      
      public function § w§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§?!7§ && this.§^u§.test(param1))
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
                     if(!this.§]O§(_loc10_))
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
      
      private function §>b§() : §"U§
      {
         var _loc3_:§"U§ = null;
         var _loc1_:* = "";
         if(this.§[h§ == "-")
         {
            _loc1_ += "-";
            this.§`!]§();
         }
         if(!this.§ !M§(this.§[h§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§[h§ == "0")
         {
            _loc1_ += this.§[h§;
            this.§`!]§();
            if(this.§ !M§(this.§[h§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§?!7§ && this.§[h§ == "x")
            {
               _loc1_ += this.§[h§;
               this.§`!]§();
               if(this.§]O§(this.§[h§))
               {
                  _loc1_ += this.§[h§;
                  this.§`!]§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§]O§(this.§[h§))
               {
                  _loc1_ += this.§[h§;
                  this.§`!]§();
               }
            }
         }
         else
         {
            while(this.§ !M§(this.§[h§))
            {
               _loc1_ += this.§[h§;
               this.§`!]§();
            }
         }
         if(this.§[h§ == ".")
         {
            _loc1_ += ".";
            this.§`!]§();
            if(!this.§ !M§(this.§[h§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§ !M§(this.§[h§))
            {
               _loc1_ += this.§[h§;
               this.§`!]§();
            }
         }
         if(this.§[h§ == "e" || this.§[h§ == "E")
         {
            _loc1_ += "e";
            this.§`!]§();
            if(this.§[h§ == "+" || this.§[h§ == "-")
            {
               _loc1_ += this.§[h§;
               this.§`!]§();
            }
            if(!this.§ !M§(this.§[h§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§ !M§(this.§[h§))
            {
               _loc1_ += this.§[h§;
               this.§`!]§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §"U§();
            _loc3_.type = §`!1§.§]!<§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §`!]§() : String
      {
         return this.§[h§ = this.§`d§.charAt(this.§<"§++);
      }
      
      private function §]!3§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§<"§;
            this.§6C§();
            this.§2!"§();
         }
         while(_loc1_ != this.§<"§);
         
      }
      
      private function §2!"§() : void
      {
         if(this.§[h§ == "/")
         {
            this.§`!]§();
            switch(this.§[h§)
            {
               case "/":
                  do
                  {
                     this.§`!]§();
                  }
                  while(this.§[h§ != "\n" && this.§[h§ != "");
                  
                  this.§`!]§();
                  break;
               case "*":
                  this.§`!]§();
                  while(true)
                  {
                     if(this.§[h§ == "*")
                     {
                        this.§`!]§();
                        if(this.§[h§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§`!]§();
                     }
                     if(this.§[h§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§`!]§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§[h§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §6C§() : void
      {
         while(this.§?j§(this.§[h§))
         {
            this.§`!]§();
         }
      }
      
      private function §?j§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§?!7§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function § !M§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §]O§(param1:String) : Boolean
      {
         return this.§ !M§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§<"§,this.§`d§);
      }
   }
}
