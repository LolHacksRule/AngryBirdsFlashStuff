package § L§
{
   public class § !p§
   {
       
      
      private var §'0§:Boolean;
      
      private var obj:Object;
      
      private var § !h§:String;
      
      private var §5w§:int;
      
      private var §<x§:String;
      
      private var §"`§:RegExp;
      
      public function § !p§(param1:String, param2:Boolean)
      {
         this.§"`§ = /[\x00-\x1F]/;
         super();
         this.§ !h§ = param1;
         this.§'0§ = param2;
         this.§5w§ = 0;
         this.§&]§();
      }
      
      public function §6[§() : §`9§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§`9§ = new §`9§();
         this.§!!o§();
         switch(this.§<x§)
         {
            case "{":
               _loc1_.type = §;!c§.§4!A§;
               _loc1_.value = "{";
               this.§&]§();
               break;
            case "}":
               _loc1_.type = §;!c§.§4>§;
               _loc1_.value = "}";
               this.§&]§();
               break;
            case "[":
               _loc1_.type = §;!c§.§4+§;
               _loc1_.value = "[";
               this.§&]§();
               break;
            case "]":
               _loc1_.type = §;!c§.§7!k§;
               _loc1_.value = "]";
               this.§&]§();
               break;
            case ",":
               _loc1_.type = §;!c§.§=P§;
               _loc1_.value = ",";
               this.§&]§();
               break;
            case ":":
               _loc1_.type = §;!c§.§,^§;
               _loc1_.value = ":";
               this.§&]§();
               break;
            case "t":
               _loc2_ = "t" + this.§&]§() + this.§&]§() + this.§&]§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §;!c§.TRUE;
                  _loc1_.value = true;
                  this.§&]§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§&]§() + this.§&]§() + this.§&]§() + this.§&]§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §;!c§.FALSE;
                  _loc1_.value = false;
                  this.§&]§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§&]§() + this.§&]§() + this.§&]§()) == "null")
               {
                  _loc1_.type = §;!c§.NULL;
                  _loc1_.value = null;
                  this.§&]§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§&]§() + this.§&]§()) == "NaN")
               {
                  _loc1_.type = §;!c§.§"!2§;
                  _loc1_.value = NaN;
                  this.§&]§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§^A§();
               break;
            default:
               if(this.§5!V§(this.§<x§) || this.§<x§ == "-")
               {
                  _loc1_ = this.§=Z§();
                  break;
               }
               if(this.§<x§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§<x§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §^A§() : §`9§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§5w§;
         while(true)
         {
            _loc1_ = this.§ !h§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§ !h§.charAt(_loc4_) == "\\")
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
         var _loc2_:§`9§ = new §`9§();
         _loc2_.type = §;!c§.§2!!§;
         _loc2_.value = this.§^'§(this.§ !h§.substr(this.§5w§,_loc1_ - this.§5w§));
         this.§5w§ = _loc1_ + 1;
         this.§&]§();
         return _loc2_;
      }
      
      public function §^'§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§'0§ && this.§"`§.test(param1))
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
                     if(!this.§]h§(_loc10_))
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
      
      private function §=Z§() : §`9§
      {
         var _loc3_:§`9§ = null;
         var _loc1_:* = "";
         if(this.§<x§ == "-")
         {
            _loc1_ += "-";
            this.§&]§();
         }
         if(!this.§5!V§(this.§<x§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§<x§ == "0")
         {
            _loc1_ += this.§<x§;
            this.§&]§();
            if(this.§5!V§(this.§<x§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§'0§ && this.§<x§ == "x")
            {
               _loc1_ += this.§<x§;
               this.§&]§();
               if(this.§]h§(this.§<x§))
               {
                  _loc1_ += this.§<x§;
                  this.§&]§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§]h§(this.§<x§))
               {
                  _loc1_ += this.§<x§;
                  this.§&]§();
               }
            }
         }
         else
         {
            while(this.§5!V§(this.§<x§))
            {
               _loc1_ += this.§<x§;
               this.§&]§();
            }
         }
         if(this.§<x§ == ".")
         {
            _loc1_ += ".";
            this.§&]§();
            if(!this.§5!V§(this.§<x§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§5!V§(this.§<x§))
            {
               _loc1_ += this.§<x§;
               this.§&]§();
            }
         }
         if(this.§<x§ == "e" || this.§<x§ == "E")
         {
            _loc1_ += "e";
            this.§&]§();
            if(this.§<x§ == "+" || this.§<x§ == "-")
            {
               _loc1_ += this.§<x§;
               this.§&]§();
            }
            if(!this.§5!V§(this.§<x§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§5!V§(this.§<x§))
            {
               _loc1_ += this.§<x§;
               this.§&]§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §`9§();
            _loc3_.type = §;!c§.§^!n§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §&]§() : String
      {
         return this.§<x§ = this.§ !h§.charAt(this.§5w§++);
      }
      
      private function §!!o§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§5w§;
            this.§"M§();
            this.§!!%§();
         }
         while(_loc1_ != this.§5w§);
         
      }
      
      private function §!!%§() : void
      {
         if(this.§<x§ == "/")
         {
            this.§&]§();
            switch(this.§<x§)
            {
               case "/":
                  do
                  {
                     this.§&]§();
                  }
                  while(this.§<x§ != "\n" && this.§<x§ != "");
                  
                  this.§&]§();
                  break;
               case "*":
                  this.§&]§();
                  while(true)
                  {
                     if(this.§<x§ == "*")
                     {
                        this.§&]§();
                        if(this.§<x§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§&]§();
                     }
                     if(this.§<x§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§&]§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§<x§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §"M§() : void
      {
         while(this.§4n§(this.§<x§))
         {
            this.§&]§();
         }
      }
      
      private function §4n§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§'0§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §5!V§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §]h§(param1:String) : Boolean
      {
         return this.§5!V§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§5w§,this.§ !h§);
      }
   }
}
