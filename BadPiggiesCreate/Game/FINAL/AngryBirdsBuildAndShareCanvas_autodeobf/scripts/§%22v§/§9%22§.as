package §"v§
{
   import §,a§.§<!m§;
   import §,a§.§]!>§;
   import §3"5§.§5!q§;
   import §3"5§.§6O§;
   import §3"5§.§^X§;
   import §5!V§.§!w§;
   import §8g§.*;
   import §=!#§.§`"=§;
   import flash.geom.Point;
   
   public class §9"§
   {
      
      public static const §4!§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §=!?§:Number = 0;
      
      public var §'!`§:Number = -8;
      
      private var §"!_§:Vector.<§5!q§> = null;
      
      private var mBirds:Vector.<§^X§> = null;
      
      private var §2"'§:Vector.<§6O§> = null;
      
      private var §">§:Vector.<§4^§> = null;
      
      public var §!!5§:Number = 0;
      
      public var §2+§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var § !U§:int = 0;
      
      private var §[!i§:String = null;
      
      public var mName:String = null;
      
      public function §9"§()
      {
         super();
         this.§">§ = new Vector.<§4^§>();
         this.§"!_§ = new Vector.<§5!q§>();
         this.mBirds = new Vector.<§^X§>();
         this.§2"'§ = new Vector.<§6O§>();
         this.§[!i§ = §4!§;
      }
      
      public static function §+0§(param1:String) : §9"§
      {
         var _loc2_:§9"§ = new §9"§();
         _loc2_.§1!n§(param1);
         return _loc2_;
      }
      
      public static function §%h§(param1:§]!>§) : Boolean
      {
         if(param1.§,!E§ == §]!>§.§9!K§ || param1.§,!E§ == §]!>§.§-"?§ || param1.§,!E§ == §]!>§.§,"9§)
         {
            return true;
         }
         return false;
      }
      
      public static function §]-§(param1:String) : §9"§
      {
         var _loc2_:§9"§ = §+0§(param1);
         _loc2_.§=!?§ = _loc2_.mBirds[0].x;
         _loc2_.§'!`§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§"!_§.length)
         {
            _loc2_.§"!_§[_loc3_].angle = 360 - _loc2_.§"!_§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §,Z§(param1:int, param2:Object) : Vector.<§6O§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§6O§ = null;
         var _loc3_:Vector.<§6O§> = new Vector.<§6O§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §6O§.§4N§ || _loc5_.type == §6O§.§2!+§)
               {
                  _loc8_ = new §6O§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §6O§.§2!+§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §6O§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §6O§.§]I§)
               {
                  _loc8_.§1!Q§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §'O§() : int
      {
         return this.§"!_§.length;
      }
      
      public function get §-H§() : int
      {
         return this.§2"'§.length;
      }
      
      public function get § "2§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §[l§() : int
      {
         return this.§">§.length;
      }
      
      public function get theme() : String
      {
         return this.§[!i§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§[!i§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§@!b§();
         if(_loc1_ > 0 && _loc1_ < this.§ !U§)
         {
            return _loc1_;
         }
         if(this.§ !U§ == 0)
         {
            return _loc1_;
         }
         return this.§ !U§;
      }
      
      public function §^b§(param1:int) : void
      {
         var _loc2_:int = this.§@!b§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§ !U§ = param1;
      }
      
      public function §1!n§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§4^§ = null;
         var _loc9_:Object = null;
         var _loc10_:§^X§ = null;
         var _loc11_:§5!q§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§!!5§ = _loc2_.LevelExtension;
         this.§2+§ = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.§ !U§ = _loc2_.scoreEagle;
         this.§[!i§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§2"'§ = §,Z§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§">§ = new Vector.<§4^§>();
         this.mBirds = new Vector.<§^X§>();
         this.§"!_§ = new Vector.<§5!q§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §4^§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§">§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §^X§()).x = _loc9_.x;
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
            (_loc11_ = new §5!q§()).x = _loc5_.x;
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
            this.§"!_§.push(_loc11_);
            _loc3_++;
         }
         this.§=!?§ = _loc2_.slingshotX;
         this.§'!`§ = _loc2_.slingshotY;
      }
      
      public function §%4§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§!!5§;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.§ !U§;
         _loc1_.theme = this.§[!i§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§">§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§"!_§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§"!_§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2"'§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§2"'§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§"!_§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§2"'§.length;
         _loc1_.slingshotX = this.§=!?§;
         _loc1_.slingshotY = this.§'!`§;
         return _loc1_;
      }
      
      public function §4U§() : String
      {
         return JSON.stringify(this.§%4§());
      }
      
      public function §@!b§() : int
      {
         var _loc2_:§5!q§ = null;
         var _loc3_:String = null;
         var _loc4_:§]!>§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"!_§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §<!m§.§"!F§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §<!m§.§"!F§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§%h§(_loc4_))
               {
                  _loc1_ += _loc4_.§'">§ * §!w§.§!!l§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §@!S§() : XML
      {
         var _loc2_:§4^§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§!!5§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§2+§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§">§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §`"=§.SCREEN_HEIGHT_B2) + "\"></Camera>";
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
         while(_loc3_ < this.§"!_§.length)
         {
            _loc1_ += "<Item id=\"" + this.§"!_§[_loc3_].id + "\" x=\"" + this.§"!_§[_loc3_].x + "\" y=\"" + this.§"!_§[_loc3_].y + "\" rotation=\"" + this.§"!_§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §5!q§
      {
         return this.§"!_§[param1];
      }
      
      public function addObject(param1:§5!q§) : void
      {
         this.§"!_§.push(param1);
      }
      
      public function §8!P§(param1:int) : §6O§
      {
         return this.§2"'§[param1];
      }
      
      public function §]"=§(param1:§6O§) : void
      {
         this.§2"'§.push(param1);
      }
      
      public function §,;§(param1:int) : §^X§
      {
         return this.mBirds[param1];
      }
      
      public function §"A§(param1:§^X§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §7!k§() : void
      {
         this.§">§ = new Vector.<§4^§>();
      }
      
      public function §3!B§() : void
      {
         this.mBirds = new Vector.<§^X§>();
      }
      
      public function §5!0§(param1:int) : §4^§
      {
         return this.§">§[param1];
      }
      
      public function §="8§(param1:§4^§) : void
      {
         this.§">§.push(param1);
      }
   }
}
