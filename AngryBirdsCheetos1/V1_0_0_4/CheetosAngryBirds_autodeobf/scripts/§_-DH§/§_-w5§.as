package §_-DH§
{
   public class §_-w5§
   {
       
      
      private var §_-zr§:Boolean;
      
      private var obj:Object;
      
      private var §_-0g§:String;
      
      private var §_-AT§:int;
      
      private var §_-4b§:String;
      
      private var §_-PD§:RegExp;
      
      public function §_-w5§(param1:String, param2:Boolean)
      {
         this.§_-PD§ = /[\x00-\x1F]/;
         super();
         this.§_-0g§ = param1;
         this.§_-zr§ = param2;
         this.§_-AT§ = 0;
         this.§_-bh§();
      }
      
      public function §_-II§() : §_-hV§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§_-hV§ = new §_-hV§();
         this.§_-3d§();
         switch(this.§_-4b§)
         {
            case "{":
               _loc1_.type = §_-tf§.§_-zc§;
               _loc1_.value = "{";
               this.§_-bh§();
               break;
            case "}":
               _loc1_.type = §_-tf§.§_-fq§;
               _loc1_.value = "}";
               this.§_-bh§();
               break;
            case "[":
               _loc1_.type = §_-tf§.§_-Ev§;
               _loc1_.value = "[";
               this.§_-bh§();
               break;
            case "]":
               _loc1_.type = §_-tf§.§_-wZ§;
               _loc1_.value = "]";
               this.§_-bh§();
               break;
            case ",":
               _loc1_.type = §_-tf§.§_-VX§;
               _loc1_.value = ",";
               this.§_-bh§();
               break;
            case ":":
               _loc1_.type = §_-tf§.§_-ik§;
               _loc1_.value = ":";
               this.§_-bh§();
               break;
            case "t":
               _loc2_ = "t" + this.§_-bh§() + this.§_-bh§() + this.§_-bh§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §_-tf§.TRUE;
                  _loc1_.value = true;
                  this.§_-bh§();
                  break;
               }
               this.parseError("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§_-bh§() + this.§_-bh§() + this.§_-bh§() + this.§_-bh§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §_-tf§.FALSE;
                  _loc1_.value = false;
                  this.§_-bh§();
                  break;
               }
               this.parseError("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               if((_loc4_ = "n" + this.§_-bh§() + this.§_-bh§() + this.§_-bh§()) == "null")
               {
                  _loc1_.type = §_-tf§.§_-mi§;
                  _loc1_.value = null;
                  this.§_-bh§();
                  break;
               }
               this.parseError("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               if((_loc5_ = "N" + this.§_-bh§() + this.§_-bh§()) == "NaN")
               {
                  _loc1_.type = §_-tf§.§_-N6§;
                  _loc1_.value = NaN;
                  this.§_-bh§();
                  break;
               }
               this.parseError("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.§_-gd§();
               break;
            default:
               if(this.§_-85§(this.§_-4b§) || this.§_-4b§ == "-")
               {
                  _loc1_ = this.§_-Me§();
                  break;
               }
               if(this.§_-4b§ == "")
               {
                  return null;
               }
               this.parseError("Unexpected " + this.§_-4b§ + " encountered");
               break;
         }
         return _loc1_;
      }
      
      private function §_-gd§() : §_-hV§
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§_-AT§;
         while(true)
         {
            _loc1_ = this.§_-0g§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§_-0g§.charAt(_loc4_) == "\\")
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
         var _loc2_:§_-hV§ = new §_-hV§();
         _loc2_.type = §_-tf§.§_-wx§;
         _loc2_.value = this.§_-lv§(this.§_-0g§.substr(this.§_-AT§,_loc1_ - this.§_-AT§));
         this.§_-AT§ = _loc1_ + 1;
         this.§_-bh§();
         return _loc2_;
      }
      
      public function §_-lv§(param1:String) : String
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.§_-zr§ && this.§_-PD§.test(param1))
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
                     if(!this.§_-hj§(_loc10_))
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
      
      private function §_-Me§() : §_-hV§
      {
         var _loc3_:§_-hV§ = null;
         var _loc1_:* = "";
         if(this.§_-4b§ == "-")
         {
            _loc1_ += "-";
            this.§_-bh§();
         }
         if(!this.§_-85§(this.§_-4b§))
         {
            this.parseError("Expecting a digit");
         }
         if(this.§_-4b§ == "0")
         {
            _loc1_ += this.§_-4b§;
            this.§_-bh§();
            if(this.§_-85§(this.§_-4b§))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
            else if(!this.§_-zr§ && this.§_-4b§ == "x")
            {
               _loc1_ += this.§_-4b§;
               this.§_-bh§();
               if(this.§_-hj§(this.§_-4b§))
               {
                  _loc1_ += this.§_-4b§;
                  this.§_-bh§();
               }
               else
               {
                  this.parseError("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§_-hj§(this.§_-4b§))
               {
                  _loc1_ += this.§_-4b§;
                  this.§_-bh§();
               }
            }
         }
         else
         {
            while(this.§_-85§(this.§_-4b§))
            {
               _loc1_ += this.§_-4b§;
               this.§_-bh§();
            }
         }
         if(this.§_-4b§ == ".")
         {
            _loc1_ += ".";
            this.§_-bh§();
            if(!this.§_-85§(this.§_-4b§))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§_-85§(this.§_-4b§))
            {
               _loc1_ += this.§_-4b§;
               this.§_-bh§();
            }
         }
         if(this.§_-4b§ == "e" || this.§_-4b§ == "E")
         {
            _loc1_ += "e";
            this.§_-bh§();
            if(this.§_-4b§ == "+" || this.§_-4b§ == "-")
            {
               _loc1_ += this.§_-4b§;
               this.§_-bh§();
            }
            if(!this.§_-85§(this.§_-4b§))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§_-85§(this.§_-4b§))
            {
               _loc1_ += this.§_-4b§;
               this.§_-bh§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §_-hV§();
            _loc3_.type = §_-tf§.§_-gZ§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.parseError("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      private function §_-bh§() : String
      {
         return this.§_-4b§ = this.§_-0g§.charAt(this.§_-AT§++);
      }
      
      private function §_-3d§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§_-AT§;
            this.§_-uj§();
            this.§_-k1§();
         }
         while(_loc1_ != this.§_-AT§);
         
      }
      
      private function §_-k1§() : void
      {
         if(this.§_-4b§ == "/")
         {
            this.§_-bh§();
            switch(this.§_-4b§)
            {
               case "/":
                  do
                  {
                     this.§_-bh§();
                  }
                  while(this.§_-4b§ != "\n" && this.§_-4b§ != "");
                  
                  this.§_-bh§();
                  break;
               case "*":
                  this.§_-bh§();
                  while(true)
                  {
                     if(this.§_-4b§ == "*")
                     {
                        this.§_-bh§();
                        if(this.§_-4b§ == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§_-bh§();
                     }
                     if(this.§_-4b§ == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§_-bh§();
                  break;
               default:
                  this.parseError("Unexpected " + this.§_-4b§ + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §_-uj§() : void
      {
         while(this.§_-qw§(this.§_-4b§))
         {
            this.§_-bh§();
         }
      }
      
      private function §_-qw§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§_-zr§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      private function §_-85§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §_-hj§(param1:String) : Boolean
      {
         return this.§_-85§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.§_-AT§,this.§_-0g§);
      }
   }
}
