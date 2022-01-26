package §!!7§
{
   public class §`!a§
   {
       
      
      private var §`!=§:Boolean;
      
      private var obj:Object;
      
      private var §&N§:String;
      
      private var §,!f§:int;
      
      private var §2!9§:String;
      
      private var §6!4§:RegExp;
      
      public function §`!a§(param1:String, param2:Boolean)
      {
         this.§6!4§ = /[\x00-\x1F]/;
         super();
         this.§&N§ = param1;
         this.§`!=§ = param2;
         this.§,!f§ = 0;
         this.§5!b§();
      }
      
      public function §3h§() : §"K§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§"K§ = new §"K§();
         this.§0U§();
         switch(this.§2!9§)
         {
            case "{":
               _loc1_.type = §7H§.§2s§;
               _loc1_.value = "{";
               this.§5!b§();
               break;
            case "}":
               _loc1_.type = §7H§.§5!%§;
               _loc1_.value = "}";
               this.§5!b§();
               break;
            case "[":
               _loc1_.type = §7H§.§!u§;
               _loc1_.value = "[";
               this.§5!b§();
               break;
            case "]":
               _loc1_.type = §7H§.§"!<§;
               _loc1_.value = "]";
               this.§5!b§();
               break;
            case ",":
               _loc1_.type = §7H§.§=T§;
               _loc1_.value = ",";
               this.§5!b§();
               break;
            case ":":
               _loc1_.type = §7H§.§-H§;
               _loc1_.value = ":";
               this.§5!b§();
               break;
            case "t":
               _loc2_ = "t" + this.§5!b§() + this.§5!b§() + this.§5!b§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §7H§.TRUE;
                  _loc1_.value = true;
                  this.§5!b§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§5!b§() + this.§5!b§() + this.§5!b§() + this.§5!b§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §7H§.FALSE;
                  _loc1_.value = false;
                  this.§5!b§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§5!b§() + this.§5!b§() + this.§5!b§()) == "null")
               {
                  _loc1_.type = §7H§.§#!S§;
                  _loc1_.value = null;
                  this.§5!b§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§5!b§() + this.§5!b§()) == "NaN")
               {
                  _loc1_.type = §7H§.§1s§;
                  _loc1_.value = NaN;
                  this.§5!b§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§^!7§();
               break;
            default:
               if(this.§9!f§(this.§2!9§) || this.§2!9§ == "-")
               {
                  _loc1_ = this.§&!1§();
                  break;
               }
               if(this.§2!9§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§2!9§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §^!7§() : §"K§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§,!f§;
         while(true)
         {
            _loc1_ = this.§&N§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§&N§.charAt(_loc4_) == "\\")
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
         var _loc2_:§"K§ = new §"K§();
         _loc2_.type = §7H§.§3M§;
         _loc2_.value = this.§+!`§(this.§&N§.substr(this.§,!f§,_loc1_ - this.§,!f§));
         this.§,!f§ = _loc1_ + 1;
         this.§5!b§();
         return _loc2_;
      }
      
      public function §+!`§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§`!=§ && this.§6!4§.test(param1))
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
                     if(!this.§3e§(_loc10_))
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
      
      private function §&!1§() : §"K§
      {
         var _loc3_:§"K§ = null;
         var _loc1_:* = "";
         if(this.§2!9§ == "-")
         {
            _loc1_ += "-";
            this.§5!b§();
         }
         if(!this.§9!f§(this.§2!9§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§2!9§ == "0")
         {
            _loc1_ += this.§2!9§;
            this.§5!b§();
            if(this.§9!f§(this.§2!9§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§`!=§ && this.§2!9§ == "x")
            {
               _loc1_ += this.§2!9§;
               this.§5!b§();
               if(this.§3e§(this.§2!9§))
               {
                  _loc1_ += this.§2!9§;
                  this.§5!b§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§3e§(this.§2!9§))
               {
                  _loc1_ += this.§2!9§;
                  this.§5!b§();
               }
            }
         }
         else
         {
            while(this.§9!f§(this.§2!9§))
            {
               _loc1_ += this.§2!9§;
               this.§5!b§();
            }
         }
         if(this.§2!9§ == ".")
         {
            _loc1_ += ".";
            this.§5!b§();
            if(!this.§9!f§(this.§2!9§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§9!f§(this.§2!9§))
            {
               _loc1_ += this.§2!9§;
               this.§5!b§();
            }
         }
         if(this.§2!9§ == "e" || this.§2!9§ == "E")
         {
            _loc1_ += "e";
            this.§5!b§();
            if(this.§2!9§ == "+" || this.§2!9§ == "-")
            {
               _loc1_ += this.§2!9§;
               this.§5!b§();
            }
            if(!this.§9!f§(this.§2!9§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§9!f§(this.§2!9§))
            {
               _loc1_ += this.§2!9§;
               this.§5!b§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §"K§();
            _loc3_.type = §7H§.§&!V§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §5!b§() : String
      {
         return this.§2!9§ = this.§&N§.charAt(this.§,!f§++);
      }
      
      private function §0U§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§,!f§;
            this.§]G§();
            this.§+#§();
         }
         while(_loc1_ != this.§,!f§);
         
      }
      
      private function §+#§() : void
      {
         if(this.§2!9§ == "/")
         {
            this.§5!b§();
            switch(this.§2!9§)
            {
               case "/":
                  do
                  {
                     this.§5!b§();
                  }
                  while(this.§2!9§ != "\n" && this.§2!9§ != "");
                  
                  this.§5!b§();
                  break;
               case "*":
                  this.§5!b§();
                  while(true)
                  {
                     if(this.§2!9§ == "*")
                     {
                        this.§5!b§();
                        if(this.§2!9§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§5!b§();
                     }
                     if(this.§2!9§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§5!b§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§2!9§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §]G§() : void
      {
         while(this.§<E§(this.§2!9§))
         {
            this.§5!b§();
         }
      }
      
      private function §<E§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§`!=§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §9!f§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §3e§(param1:String) : Boolean
      {
         return this.§9!f§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§,!f§,this.§&N§);
      }
   }
}
