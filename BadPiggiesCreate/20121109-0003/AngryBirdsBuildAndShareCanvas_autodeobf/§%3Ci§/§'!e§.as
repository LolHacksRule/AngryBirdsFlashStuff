package §<i§
{
   import §%!0§.§,4§;
   import §&z§.*;
   import §,!g§.§"!P§;
   import §[!P§.§"0§;
   import §[!P§.§-2§;
   import §[!P§.§8!z§;
   import §]";§.§!<§;
   import §]";§.§4!p§;
   import flash.geom.Point;
   
   public class §'!e§
   {
      
      public static const §>!=§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §!M§:Number = 0;
      
      public var §finally§:Number = -8;
      
      private var §[z§:Vector.<§"0§> = null;
      
      private var mBirds:Vector.<§-2§> = null;
      
      private var §=!O§:Vector.<§8!z§> = null;
      
      private var §%!i§:Vector.<§+!S§> = null;
      
      public var §#x§:Number = 0;
      
      public var §-!9§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var §7C§:int = 0;
      
      private var §,9§:String = null;
      
      public var mName:String = null;
      
      public function §'!e§()
      {
         super();
         this.§%!i§ = new Vector.<§+!S§>();
         this.§[z§ = new Vector.<§"0§>();
         this.mBirds = new Vector.<§-2§>();
         this.§=!O§ = new Vector.<§8!z§>();
         this.§,9§ = §>!=§;
      }
      
      public static function § !N§(param1:String) : §'!e§
      {
         var _loc2_:§'!e§ = new §'!e§();
         _loc2_.§[""§(param1);
         return _loc2_;
      }
      
      public static function §8N§(param1:§4!p§) : Boolean
      {
         if(param1.§@F§ == §4!p§.§^"0§ || param1.§@F§ == §4!p§.§#!U§ || param1.§@F§ == §4!p§.§+Q§)
         {
            return true;
         }
         return false;
      }
      
      public static function §2!9§(param1:String) : §'!e§
      {
         var _loc2_:§'!e§ = § !N§(param1);
         _loc2_.§!M§ = _loc2_.mBirds[0].x;
         _loc2_.§finally§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§[z§.length)
         {
            _loc2_.§[z§[_loc3_].angle = 360 - _loc2_.§[z§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §%u§(param1:int, param2:Object) : Vector.<§8!z§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§8!z§ = null;
         var _loc3_:Vector.<§8!z§> = new Vector.<§8!z§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §8!z§.§%!^§ || _loc5_.type == §8!z§.§%_§)
               {
                  _loc8_ = new §8!z§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §8!z§.§%_§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §8!z§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §8!z§.§3I§)
               {
                  _loc8_.§%!B§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §8!Y§() : int
      {
         return this.§[z§.length;
      }
      
      public function get §=Y§() : int
      {
         return this.§=!O§.length;
      }
      
      public function get §@!;§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §+!L§() : int
      {
         return this.§%!i§.length;
      }
      
      public function get theme() : String
      {
         return this.§,9§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§,9§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§'i§();
         if(_loc1_ > 0 && _loc1_ < this.§7C§)
         {
            return _loc1_;
         }
         if(this.§7C§ == 0)
         {
            return _loc1_;
         }
         return this.§7C§;
      }
      
      public function §=N§(param1:int) : void
      {
         var _loc2_:int = this.§'i§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§7C§ = param1;
      }
      
      public function §[""§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§+!S§ = null;
         var _loc9_:Object = null;
         var _loc10_:§-2§ = null;
         var _loc11_:§"0§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§#x§ = _loc2_.LevelExtension;
         this.§-!9§ = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.§7C§ = _loc2_.scoreEagle;
         this.§,9§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§=!O§ = §%u§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§%!i§ = new Vector.<§+!S§>();
         this.mBirds = new Vector.<§-2§>();
         this.§[z§ = new Vector.<§"0§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §+!S§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§%!i§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §-2§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.mBirds.push(_loc10_);
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
            (_loc11_ = new §"0§()).x = _loc5_.x;
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
            this.§[z§.push(_loc11_);
            _loc3_++;
         }
         this.§!M§ = _loc2_.slingshotX;
         this.§finally§ = _loc2_.slingshotY;
      }
      
      public function §6" §() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§#x§;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.§7C§;
         _loc1_.theme = this.§,9§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§%!i§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[z§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§[z§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§=!O§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§=!O§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§[z§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§=!O§.length;
         _loc1_.slingshotX = this.§!M§;
         _loc1_.slingshotY = this.§finally§;
         return _loc1_;
      }
      
      public function §]Z§() : String
      {
         return JSON.stringify(this.§6" §());
      }
      
      public function §'i§() : int
      {
         var _loc2_:§"0§ = null;
         var _loc3_:String = null;
         var _loc4_:§4!p§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[z§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §!<§.§[!@§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §!<§.§[!@§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§8N§(_loc4_))
               {
                  _loc1_ += _loc4_.§%5§ * §,4§.§]O§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §02§() : XML
      {
         var _loc2_:§+!S§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§#x§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§-!9§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§%!i§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §"!P§.SCREEN_HEIGHT_B2) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.mBirds[0].x + "\" y=\"" + (this.mBirds[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.mBirds.length)
         {
            _loc1_ += "  <Bird id=\"" + this.mBirds[_loc3_].id + "\" x=\"" + this.mBirds[_loc3_].x + "\" y=\"" + this.mBirds[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§[z§.length)
         {
            _loc1_ += "<Item id=\"" + this.§[z§[_loc3_].id + "\" x=\"" + this.§[z§[_loc3_].x + "\" y=\"" + this.§[z§[_loc3_].y + "\" rotation=\"" + this.§[z§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §"0§
      {
         return this.§[z§[param1];
      }
      
      public function addObject(param1:§"0§) : void
      {
         this.§[z§.push(param1);
      }
      
      public function §`'§(param1:int) : §8!z§
      {
         return this.§=!O§[param1];
      }
      
      public function §@!V§(param1:§8!z§) : void
      {
         this.§=!O§.push(param1);
      }
      
      public function §+,§(param1:int) : §-2§
      {
         return this.mBirds[param1];
      }
      
      public function §=o§(param1:§-2§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §["?§() : void
      {
         this.§%!i§ = new Vector.<§+!S§>();
      }
      
      public function §^!_§() : void
      {
         this.mBirds = new Vector.<§-2§>();
      }
      
      public function §6!§(param1:int) : §+!S§
      {
         return this.§%!i§[param1];
      }
      
      public function § d§(param1:§+!S§) : void
      {
         this.§%!i§.push(param1);
      }
   }
}
