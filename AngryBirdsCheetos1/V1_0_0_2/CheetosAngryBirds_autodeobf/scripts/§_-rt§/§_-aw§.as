package §_-rt§
{
   public class §_-aw§
   {
       
      
      private var §_-Nm§:Boolean;
      
      private var obj:Object;
      
      private var §_-cv§:String;
      
      private var §_-lV§:int;
      
      private var §_-5T§:String;
      
      private var §_-Dv§:RegExp;
      
      public function §_-aw§(param1:String, param2:Boolean)
      {
         this.§_-Dv§ = /[\x00-\x1F]/;
         super();
         this.§_-cv§ = param1;
         this.§_-Nm§ = param2;
         this.§_-lV§ = 0;
         this.§_-Vy§();
      }
      
      public function §_-Ds§() : §_-SN§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-SN§ = new §_-SN§();
         this.§import§();
         switch(this.§_-5T§)
         {
            case "{":
               _loc1_.type = §_-kx§.§_-cV§;
               _loc1_.value = "{";
               this.§_-Vy§();
               break;
            case "}":
               _loc1_.type = §_-kx§.§_-44§;
               _loc1_.value = "}";
               this.§_-Vy§();
               break;
            case "[":
               _loc1_.type = §_-kx§.§_-n§;
               _loc1_.value = "[";
               this.§_-Vy§();
               break;
            case "]":
               _loc1_.type = §_-kx§.§_-eD§;
               _loc1_.value = "]";
               this.§_-Vy§();
               break;
            case ",":
               _loc1_.type = §_-kx§.§_-005§;
               _loc1_.value = ",";
               this.§_-Vy§();
               break;
            case ":":
               _loc1_.type = §_-kx§.§_-IK§;
               _loc1_.value = ":";
               this.§_-Vy§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-Vy§() + this.§_-Vy§() + this.§_-Vy§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-kx§.TRUE;
                  _loc1_.value = true;
                  this.§_-Vy§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-Vy§() + this.§_-Vy§() + this.§_-Vy§() + this.§_-Vy§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-kx§.FALSE;
                  _loc1_.value = false;
                  this.§_-Vy§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-Vy§() + this.§_-Vy§() + this.§_-Vy§()) == "null")
               {
                  _loc1_.type = §_-kx§.§_-It§;
                  _loc1_.value = null;
                  this.§_-Vy§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-Vy§() + this.§_-Vy§()) == "NaN")
               {
                  _loc1_.type = §_-kx§.§_-TH§;
                  _loc1_.value = NaN;
                  this.§_-Vy§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-0-k§();
               break;
            default:
               if(this.§_-uX§(this.§_-5T§) || this.§_-5T§ == "-")
               {
                  _loc1_ = this.§_-uh§();
                  break;
               }
               if(this.§_-5T§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-5T§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-0-k§() : §_-SN§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-lV§;
         while(true)
         {
            _loc1_ = this.§_-cv§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-cv§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-SN§ = new §_-SN§();
         _loc2_.type = §_-kx§.§_-d2§;
         _loc2_.value = this.§_-gz§(this.§_-cv§.substr(this.§_-lV§,_loc1_ - this.§_-lV§));
         this.§_-lV§ = _loc1_ + 1;
         this.§_-Vy§();
         return _loc2_;
      }
      
      public function §_-gz§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-Nm§ && this.§_-Dv§.test(param1))
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
                     if(!this.§_-Sz§(_loc10_))
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
      
      private function §_-uh§() : §_-SN§
      {
         var _loc3_:§_-SN§ = null;
         var _loc1_:* = "";
         if(this.§_-5T§ == "-")
         {
            _loc1_ += "-";
            this.§_-Vy§();
         }
         if(!this.§_-uX§(this.§_-5T§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-5T§ == "0")
         {
            _loc1_ += this.§_-5T§;
            this.§_-Vy§();
            if(this.§_-uX§(this.§_-5T§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-Nm§ && this.§_-5T§ == "x")
            {
               _loc1_ += this.§_-5T§;
               this.§_-Vy§();
               if(this.§_-Sz§(this.§_-5T§))
               {
                  _loc1_ += this.§_-5T§;
                  this.§_-Vy§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-Sz§(this.§_-5T§))
               {
                  _loc1_ += this.§_-5T§;
                  this.§_-Vy§();
               }
            }
         }
         else
         {
            while(this.§_-uX§(this.§_-5T§))
            {
               _loc1_ += this.§_-5T§;
               this.§_-Vy§();
            }
         }
         if(this.§_-5T§ == ".")
         {
            _loc1_ += ".";
            this.§_-Vy§();
            if(!this.§_-uX§(this.§_-5T§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-uX§(this.§_-5T§))
            {
               _loc1_ += this.§_-5T§;
               this.§_-Vy§();
            }
         }
         if(this.§_-5T§ == "e" || this.§_-5T§ == "E")
         {
            _loc1_ += "e";
            this.§_-Vy§();
            if(this.§_-5T§ == "+" || this.§_-5T§ == "-")
            {
               _loc1_ += this.§_-5T§;
               this.§_-Vy§();
            }
            if(!this.§_-uX§(this.§_-5T§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-uX§(this.§_-5T§))
            {
               _loc1_ += this.§_-5T§;
               this.§_-Vy§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-SN§();
            _loc3_.type = §_-kx§.§_-pJ§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-Vy§() : String
      {
         return this.§_-5T§ = this.§_-cv§.charAt(this.§_-lV§++);
      }
      
      private function §import§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-lV§;
            this.§_-jI§();
            this.§_-oi§();
         }
         while(_loc1_ != this.§_-lV§);
         
      }
      
      private function §_-oi§() : void
      {
         if(this.§_-5T§ == "/")
         {
            this.§_-Vy§();
            switch(this.§_-5T§)
            {
               case "/":
                  do
                  {
                     this.§_-Vy§();
                  }
                  while(this.§_-5T§ != "\n" && this.§_-5T§ != "");
                  
                  this.§_-Vy§();
                  break;
               case "*":
                  this.§_-Vy§();
                  while(true)
                  {
                     if(this.§_-5T§ == "*")
                     {
                        this.§_-Vy§();
                        if(this.§_-5T§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-Vy§();
                     }
                     if(this.§_-5T§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-Vy§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-5T§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-jI§() : void
      {
         while(this.§_-9B§(this.§_-5T§))
         {
            this.§_-Vy§();
         }
      }
      
      private function §_-9B§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-Nm§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-uX§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-Sz§(param1:String) : Boolean
      {
         return this.§_-uX§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-lV§,this.§_-cv§);
      }
   }
}
