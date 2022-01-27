package §?!;§
{
   import §%"§.§ do§;
   import §'D§.§3h§;
   import §'v§.*;
   import §3M§.§-!?§;
   import §3M§.§;-§;
   import §3M§.§;v§;
   import §`=§.§"R§;
   import §`=§.§%!'§;
   import flash.geom.Point;
   
   public class §;!,§
   {
      
      public static const §,&§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §&9§:Number = 0;
      
      public var §`K§:Number = -8;
      
      private var §=!L§:Vector.<§;v§> = null;
      
      private var §4D§:Vector.<§;-§> = null;
      
      private var §0T§:Vector.<§-!?§> = null;
      
      private var §"!J§:Vector.<§>w§> = null;
      
      public var §#!7§:Number = 0;
      
      public var §@!B§:Boolean = false;
      
      public var §<!,§:int = 0;
      
      public var §-!K§:int = 0;
      
      private var §3!"§:int = 0;
      
      private var §#6§:String = null;
      
      public var mName:String = null;
      
      public function §;!,§()
      {
         super();
         this.§"!J§ = new Vector.<§>w§>();
         this.§=!L§ = new Vector.<§;v§>();
         this.§4D§ = new Vector.<§;-§>();
         this.§0T§ = new Vector.<§-!?§>();
         this.§#6§ = §,&§;
      }
      
      public static function §3Y§(param1:String) : §;!,§
      {
         var _loc2_:§;!,§ = new §;!,§();
         _loc2_.§>B§(param1);
         return _loc2_;
      }
      
      public static function §&P§(param1:§%!'§) : Boolean
      {
         if(param1.§>!L§ == §%!'§.§-J§ || param1.§>!L§ == §%!'§.§`!4§ || param1.§>!L§ == §%!'§.§=4§)
         {
            return true;
         }
         return false;
      }
      
      public static function §1G§(param1:String) : §;!,§
      {
         var _loc2_:§;!,§ = §3Y§(param1);
         _loc2_.§&9§ = _loc2_.§4D§[0].x;
         _loc2_.§`K§ = _loc2_.§4D§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§=!L§.length)
         {
            _loc2_.§=!L§[_loc3_].angle = 360 - _loc2_.§=!L§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §#F§(param1:int, param2:Object) : Vector.<§-!?§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-!?§ = null;
         var _loc3_:Vector.<§-!?§> = new Vector.<§-!?§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §-!?§.§@!;§ || _loc5_.type == §-!?§.§+!5§)
               {
                  _loc8_ = new §-!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §-!?§.§+!5§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §-!?§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §-!?§.§,K§)
               {
                  _loc8_.§19§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §>&§() : int
      {
         return this.§=!L§.length;
      }
      
      public function get §+k§() : int
      {
         return this.§0T§.length;
      }
      
      public function get §-!+§() : int
      {
         return this.§4D§.length;
      }
      
      public function get §3D§() : int
      {
         return this.§"!J§.length;
      }
      
      public function get theme() : String
      {
         return this.§#6§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§#6§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§?§();
         if(_loc1_ > 0 && _loc1_ < this.§3!"§)
         {
            return _loc1_;
         }
         if(this.§3!"§ == 0)
         {
            return _loc1_;
         }
         return this.§3!"§;
      }
      
      public function §<!A§(param1:int) : void
      {
         var _loc2_:int = this.§?§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§3!"§ = param1;
      }
      
      public function §>B§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§>w§ = null;
         var _loc9_:Object = null;
         var _loc10_:§;-§ = null;
         var _loc11_:§;v§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§#!7§ = _loc2_.LevelExtension;
         this.§@!B§ = false;
         this.§<!,§ = _loc2_.scoreSilver;
         this.§-!K§ = _loc2_.scoreGold;
         this.§3!"§ = _loc2_.scoreEagle;
         this.§#6§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§0T§ = §#F§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§"!J§ = new Vector.<§>w§>();
         this.§4D§ = new Vector.<§;-§>();
         this.§=!L§ = new Vector.<§;v§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §>w§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§"!J§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §;-§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§4D§.push(_loc10_);
            _loc3_++;
         }
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc7_:int = 1;
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            if((_loc5_ = _loc2_.world[_loc6_]).uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc4_.push(_loc5_.uniqueID);
            }
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            _loc5_ = _loc2_.world[_loc6_];
            (_loc11_ = new §;v§()).x = _loc5_.x;
            _loc11_.y = _loc5_.y;
            _loc11_.id = _loc5_.id;
            if(_loc5_.uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc11_.uniqueID = _loc5_.uniqueID;
            }
            else
            {
               while(_loc4_.indexOf(_loc7_) >= 0)
               {
                  _loc7_++;
               }
               _loc11_.uniqueID = _loc7_.toString();
               _loc4_.push(_loc7_);
            }
            if(_loc5_.front)
            {
               _loc11_.front = _loc5_.front;
            }
            _loc11_.angle = _loc5_.angle;
            this.§=!L§.push(_loc11_);
            _loc3_++;
         }
         this.§&9§ = _loc2_.slingshotX;
         this.§`K§ = _loc2_.slingshotY;
      }
      
      public function §9§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§#!7§;
         _loc1_.scoreSilver = this.§<!,§;
         _loc1_.scoreGold = this.§-!K§;
         _loc1_.scoreEagle = this.§3!"§;
         _loc1_.theme = this.§#6§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§"!J§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§4D§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§4D§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§=!L§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§=!L§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0T§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§0T§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§=!L§.length;
         _loc1_.counts.birds = this.§4D§.length;
         _loc1_.counts.joints = this.§0T§.length;
         _loc1_.slingshotX = this.§&9§;
         _loc1_.slingshotY = this.§`K§;
         return _loc1_;
      }
      
      public function §90§() : String
      {
         return JSON.stringify(this.§9§());
      }
      
      public function §?§() : int
      {
         var _loc2_:§;v§ = null;
         var _loc3_:String = null;
         var _loc4_:§%!'§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=!L§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §"R§.§^!'§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §"R§.§^!'§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§&P§(_loc4_))
               {
                  _loc1_ += _loc4_.§`!O§ * § do§.§9b§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §5[§() : XML
      {
         var _loc2_:§>w§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§#!7§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§@!B§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§<!,§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§-!K§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§"!J§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §3h§.§`!'§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§4D§[0].x + "\" y=\"" + (this.§4D§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§4D§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§4D§[_loc3_].id + "\" x=\"" + this.§4D§[_loc3_].x + "\" y=\"" + this.§4D§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§=!L§.length)
         {
            _loc1_ += "<Item id=\"" + this.§=!L§[_loc3_].id + "\" x=\"" + this.§=!L§[_loc3_].x + "\" y=\"" + this.§=!L§[_loc3_].y + "\" rotation=\"" + this.§=!L§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §99§(param1:int) : §;v§
      {
         return this.§=!L§[param1];
      }
      
      public function addObject(param1:§;v§) : void
      {
         this.§=!L§.push(param1);
      }
      
      public function §!!3§(param1:int) : §-!?§
      {
         return this.§0T§[param1];
      }
      
      public function §=9§(param1:§-!?§) : void
      {
         this.§0T§.push(param1);
      }
      
      public function § !B§(param1:int) : §;-§
      {
         return this.§4D§[param1];
      }
      
      public function § use§(param1:§;-§) : void
      {
         this.§4D§.push(param1);
      }
      
      public function §-y§() : void
      {
         this.§"!J§ = new Vector.<§>w§>();
      }
      
      public function § Y§() : void
      {
         this.§4D§ = new Vector.<§;-§>();
      }
      
      public function §,f§(param1:int) : §>w§
      {
         return this.§"!J§[param1];
      }
      
      public function §-!M§(param1:§>w§) : void
      {
         this.§"!J§.push(param1);
      }
   }
}
