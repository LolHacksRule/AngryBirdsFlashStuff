package §!e§
{
   public class §1a§
   {
       
      
      private var §1!;§:Boolean;
      
      private var obj:Object;
      
      private var get:String;
      
      private var §5!n§:int;
      
      private var §6!X§:String;
      
      private var §2!>§:RegExp;
      
      public function §1a§(param1:String, param2:Boolean)
      {
         this.§2!>§ = /[\x00-\x1F]/;
         super();
         this.get = param1;
         this.§1!;§ = param2;
         this.§5!n§ = 0;
         this.§&!1§();
      }
      
      public function §6!2§() : §]!W§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§]!W§ = new §]!W§();
         this.§9!R§();
         switch(this.§6!X§)
         {
            case "{":
               _loc1_.type = §]!E§.§#x§;
               _loc1_.value = "{";
               this.§&!1§();
               break;
            case "}":
               _loc1_.type = §]!E§.§]!n§;
               _loc1_.value = "}";
               this.§&!1§();
               break;
            case "[":
               _loc1_.type = §]!E§.§7P§;
               _loc1_.value = "[";
               this.§&!1§();
               break;
            case "]":
               _loc1_.type = §]!E§.§-!z§;
               _loc1_.value = "]";
               this.§&!1§();
               break;
            case ",":
               _loc1_.type = §]!E§.§#!E§;
               _loc1_.value = ",";
               this.§&!1§();
               break;
            case ":":
               _loc1_.type = §]!E§.§?!D§;
               _loc1_.value = ":";
               this.§&!1§();
               break;
            case "t":
               _loc2_ = "t" + this.§&!1§() + this.§&!1§() + this.§&!1§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §]!E§.TRUE;
                  _loc1_.value = true;
                  this.§&!1§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§&!1§() + this.§&!1§() + this.§&!1§() + this.§&!1§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §]!E§.FALSE;
                  _loc1_.value = false;
                  this.§&!1§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               if((_loc4_ = "n" + this.§&!1§() + this.§&!1§() + this.§&!1§()) == "null")
               {
                  _loc1_.type = §]!E§.NULL;
                  _loc1_.value = null;
                  this.§&!1§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "N":
               if((_loc5_ = "N" + this.§&!1§() + this.§&!1§()) == "NaN")
               {
                  _loc1_.type = §]!E§.§2l§;
                  _loc1_.value = NaN;
                  this.§&!1§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§7r§();
               break;
            default:
               if(this.§2g§(this.§6!X§) || this.§6!X§ == "-")
               {
                  _loc1_ = this.§5!E§();
                  break;
               }
               if(this.§6!X§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§6!X§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §7r§() : §]!W§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§5!n§;
         while(true)
         {
            _loc1_ = this.get.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.get.charAt(_loc4_) == "\\")
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
         var _loc2_:§]!W§ = new §]!W§();
         _loc2_.type = §]!E§.§+`§;
         _loc2_.value = this.§"!7§(this.get.substr(this.§5!n§,_loc1_ - this.§5!n§));
         this.§5!n§ = _loc1_ + 1;
         this.§&!1§();
         return _loc2_;
      }
      
      public function §"!7§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§1!;§ && this.§2!>§.test(param1))
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
                     if(!this.§1!y§(_loc10_))
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
      
      private function §5!E§() : §]!W§
      {
         var _loc3_:§]!W§ = null;
         var _loc1_:* = "";
         if(this.§6!X§ == "-")
         {
            _loc1_ += "-";
            this.§&!1§();
         }
         if(!this.§2g§(this.§6!X§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§6!X§ == "0")
         {
            _loc1_ += this.§6!X§;
            this.§&!1§();
            if(this.§2g§(this.§6!X§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§1!;§ && this.§6!X§ == "x")
            {
               _loc1_ += this.§6!X§;
               this.§&!1§();
               if(this.§1!y§(this.§6!X§))
               {
                  _loc1_ += this.§6!X§;
                  this.§&!1§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§1!y§(this.§6!X§))
               {
                  _loc1_ += this.§6!X§;
                  this.§&!1§();
               }
            }
         }
         else
         {
            while(this.§2g§(this.§6!X§))
            {
               _loc1_ += this.§6!X§;
               this.§&!1§();
            }
         }
         if(this.§6!X§ == ".")
         {
            _loc1_ += ".";
            this.§&!1§();
            if(!this.§2g§(this.§6!X§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§2g§(this.§6!X§))
            {
               _loc1_ += this.§6!X§;
               this.§&!1§();
            }
         }
         if(this.§6!X§ == "e" || this.§6!X§ == "E")
         {
            _loc1_ += "e";
            this.§&!1§();
            if(this.§6!X§ == "+" || this.§6!X§ == "-")
            {
               _loc1_ += this.§6!X§;
               this.§&!1§();
            }
            if(!this.§2g§(this.§6!X§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§2g§(this.§6!X§))
            {
               _loc1_ += this.§6!X§;
               this.§&!1§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §]!W§();
            _loc3_.type = §]!E§.§%!x§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §&!1§() : String
      {
         return this.§6!X§ = this.get.charAt(this.§5!n§++);
      }
      
      private function §9!R§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§5!n§;
            this.§?!m§();
            this.§>!%§();
         }
         while(_loc1_ != this.§5!n§);
         
      }
      
      private function §>!%§() : void
      {
         if(this.§6!X§ == "/")
         {
            this.§&!1§();
            switch(this.§6!X§)
            {
               case "/":
                  do
                  {
                     this.§&!1§();
                  }
                  while(this.§6!X§ != "\n" && this.§6!X§ != "");
                  
                  this.§&!1§();
                  break;
               case "*":
                  this.§&!1§();
                  while(true)
                  {
                     if(this.§6!X§ == "*")
                     {
                        this.§&!1§();
                        if(this.§6!X§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§&!1§();
                     }
                     if(this.§6!X§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§&!1§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§6!X§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §?!m§() : void
      {
         while(this.§>%§(this.§6!X§))
         {
            this.§&!1§();
         }
      }
      
      private function §>%§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§1!;§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §2g§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §1!y§(param1:String) : Boolean
      {
         return this.§2g§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§5!n§,this.get);
      }
   }
}
