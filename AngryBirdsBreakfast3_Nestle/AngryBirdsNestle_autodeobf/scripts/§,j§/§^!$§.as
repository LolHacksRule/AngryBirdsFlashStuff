package §,j§
{
   public class §^!$§
   {
       
      
      private var §1!g§:Boolean;
      
      private var §"!?§:Object;
      
      private var jsonString:String;
      
      private var §#!>§:int;
      
      private var §<F§:String;
      
      private var §<!W§:RegExp;
      
      public function §^!$§(param1:String, param2:Boolean)
      {
         this.§<!W§ = /[\x00-\x1F]/;
         super();
         this.jsonString = param1;
         this.§1!g§ = param2;
         this.§#!>§ = 0;
         this.§"!t§();
      }
      
      public function §8j§() : § "0§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§ "0§ = new § "0§();
         this.§7a§();
         switch(this.§<F§)
         {
            case "{":
               _loc1_.type = §8_§.§ ""§;
               _loc1_.value = "{";
               this.§"!t§();
               break;
            case "}":
               _loc1_.type = §8_§.§6!S§;
               _loc1_.value = "}";
               this.§"!t§();
               break;
            case "[":
               _loc1_.type = §8_§.§0l§;
               _loc1_.value = "[";
               this.§"!t§();
               break;
            case "]":
               _loc1_.type = §8_§.§&!R§;
               _loc1_.value = "]";
               this.§"!t§();
               break;
            case ",":
               _loc1_.type = §8_§.§0!n§;
               _loc1_.value = ",";
               this.§"!t§();
               break;
            case ":":
               _loc1_.type = §8_§.§5!`§;
               _loc1_.value = ":";
               this.§"!t§();
               break;
            case "t":
               _loc2_ = "t" + this.§"!t§() + this.§"!t§() + this.§"!t§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §8_§.TRUE;
                  _loc1_.value = true;
                  this.§"!t§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§"!t§() + this.§"!t§() + this.§"!t§() + this.§"!t§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §8_§.FALSE;
                  _loc1_.value = false;
                  this.§"!t§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§"!t§() + this.§"!t§() + this.§"!t§()) == "null")
               {
                  _loc1_.type = §8_§.NULL;
                  _loc1_.value = null;
                  this.§"!t§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§"!t§() + this.§"!t§()) == "NaN")
               {
                  _loc1_.type = §8_§.§[d§;
                  _loc1_.value = NaN;
                  this.§"!t§();
               }
               else
               {
                  this.parseError("Expecting \'NaN\' but found " + _loc5_);
               }
               break;
            case "\"":
               _loc1_ = this.§=!+§();
               break;
            default:
               if(this.§6S§(this.§<F§) || this.§<F§ == "-")
               {
                  _loc1_ = this.§!!E§();
               }
               else
               {
                  if(this.§<F§ == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.§<F§ + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §=!+§() : § "0§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§#!>§;
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
         var _loc2_:§ "0§ = new § "0§();
         _loc2_.type = §8_§.§4!T§;
         _loc2_.value = this.§"8§(this.jsonString.substr(this.§#!>§,_loc1_ - this.§#!>§));
         this.§#!>§ = _loc1_ + 1;
         this.§"!t§();
         return _loc2_;
      }
      
      public function §"8§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§1!g§ && this.§<!W§.test(param1))
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
                     if(!this.§5U§(_loc10_))
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
      
      private function §!!E§() : § "0§
      {
         var _loc3_:§ "0§ = null;
         var _loc1_:* = "";
         if(this.§<F§ == "-")
         {
            _loc1_ += "-";
            this.§"!t§();
         }
         if(!this.§6S§(this.§<F§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§<F§ == "0")
         {
            _loc1_ += this.§<F§;
            this.§"!t§();
            if(this.§6S§(this.§<F§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§1!g§ && this.§<F§ == "x")
            {
               _loc1_ += this.§<F§;
               this.§"!t§();
               if(this.§5U§(this.§<F§))
               {
                  _loc1_ += this.§<F§;
                  this.§"!t§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§5U§(this.§<F§))
               {
                  _loc1_ += this.§<F§;
                  this.§"!t§();
               }
            }
         }
         else
         {
            while(this.§6S§(this.§<F§))
            {
               _loc1_ += this.§<F§;
               this.§"!t§();
            }
         }
         if(this.§<F§ == ".")
         {
            _loc1_ += ".";
            this.§"!t§();
            if(!this.§6S§(this.§<F§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§6S§(this.§<F§))
            {
               _loc1_ += this.§<F§;
               this.§"!t§();
            }
         }
         if(this.§<F§ == "e" || this.§<F§ == "E")
         {
            _loc1_ += "e";
            this.§"!t§();
            if(this.§<F§ == "+" || this.§<F§ == "-")
            {
               _loc1_ += this.§<F§;
               this.§"!t§();
            }
            if(!this.§6S§(this.§<F§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§6S§(this.§<F§))
            {
               _loc1_ += this.§<F§;
               this.§"!t§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new § "0§();
            _loc3_.type = §8_§.§+""§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §"!t§() : String
      {
         return this.§<F§ = this.jsonString.charAt(this.§#!>§++);
      }
      
      private function §7a§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§#!>§;
            this.§1!o§();
            this.§;!^§();
         }
         while(_loc1_ != this.§#!>§);
         
      }
      
      private function §;!^§() : void
      {
         if(this.§<F§ == "/")
         {
            this.§"!t§();
            switch(this.§<F§)
            {
               case "/":
                  do
                  {
                     this.§"!t§();
                  }
                  while(this.§<F§ != "\n" && this.§<F§ != "");
                  
                  this.§"!t§();
                  break;
               case "*":
                  this.§"!t§();
                  while(true)
                  {
                     if(this.§<F§ == "*")
                     {
                        this.§"!t§();
                        if(this.§<F§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§"!t§();
                     }
                     if(this.§<F§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§"!t§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§<F§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §1!o§() : void
      {
         while(this.§2!M§(this.§<F§))
         {
            this.§"!t§();
         }
      }
      
      private function §2!M§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§1!g§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §6S§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §5U§(param1:String) : Boolean
      {
         return this.§6S§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§#!>§,this.jsonString);
      }
   }
}
