package §0s§
{
   import § ""§.§4!n§;
   import § ""§.§]k§;
   import §0I§.§%5§;
   import §0I§.§5!%§;
   import §0I§.§continue§;
   import §2b§.§"" §;
   import §8!E§.§?!X§;
   import §>0§.*;
   import flash.geom.Point;
   
   public class §];§
   {
      
      public static const §!!H§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §73§:Number = 0;
      
      public var §=!w§:Number = -8;
      
      private var §[!P§:Vector.<§continue§> = null;
      
      private var mBirds:Vector.<§%5§> = null;
      
      private var §"!7§:Vector.<§5!%§> = null;
      
      private var §^G§:Vector.<§8!e§> = null;
      
      public var §,s§:Number = 0;
      
      public var §[!J§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var §@!k§:int = 0;
      
      private var §3!V§:String = null;
      
      public var mName:String = null;
      
      public function §];§()
      {
         super();
         this.§^G§ = new Vector.<§8!e§>();
         this.§[!P§ = new Vector.<§continue§>();
         this.mBirds = new Vector.<§%5§>();
         this.§"!7§ = new Vector.<§5!%§>();
         this.§3!V§ = §!!H§;
      }
      
      public static function §>I§(param1:String) : §];§
      {
         var _loc2_:§];§ = new §];§();
         _loc2_.§4"2§(param1);
         return _loc2_;
      }
      
      public static function §'W§(param1:§]k§) : Boolean
      {
         if(param1.§!"3§ == §]k§.§'!o§ || param1.§!"3§ == §]k§.§8"$§ || param1.§!"3§ == §]k§.§%!A§)
         {
            return true;
         }
         return false;
      }
      
      public static function §8k§(param1:String) : §];§
      {
         var _loc2_:§];§ = §>I§(param1);
         _loc2_.§73§ = _loc2_.mBirds[0].x;
         _loc2_.§=!w§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§[!P§.length)
         {
            _loc2_.§[!P§[_loc3_].angle = 360 - _loc2_.§[!P§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §+";§(param1:int, param2:Object) : Vector.<§5!%§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§5!%§ = null;
         var _loc3_:Vector.<§5!%§> = new Vector.<§5!%§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §5!%§.§-!%§ || _loc5_.type == §5!%§.§%U§)
               {
                  _loc8_ = new §5!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §5!%§.§%U§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §5!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §5!%§.§=$§)
               {
                  _loc8_.§^_§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §1"8§() : int
      {
         return this.§[!P§.length;
      }
      
      public function get §-!P§() : int
      {
         return this.§"!7§.length;
      }
      
      public function get §<[§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §0!x§() : int
      {
         return this.§^G§.length;
      }
      
      public function get theme() : String
      {
         return this.§3!V§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§3!V§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§?!^§();
         if(_loc1_ > 0 && _loc1_ < this.§@!k§)
         {
            return _loc1_;
         }
         if(this.§@!k§ == 0)
         {
            return _loc1_;
         }
         return this.§@!k§;
      }
      
      public function §'C§(param1:int) : void
      {
         var _loc2_:int = this.§?!^§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§@!k§ = param1;
      }
      
      public function §4"2§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§8!e§ = null;
         var _loc9_:Object = null;
         var _loc10_:§%5§ = null;
         var _loc11_:§continue§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§,s§ = _loc2_.LevelExtension;
         this.§[!J§ = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.§@!k§ = _loc2_.scoreEagle;
         this.§3!V§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§"!7§ = §+";§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§^G§ = new Vector.<§8!e§>();
         this.mBirds = new Vector.<§%5§>();
         this.§[!P§ = new Vector.<§continue§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §8!e§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§^G§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §%5§()).x = _loc9_.x;
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
            (_loc11_ = new §continue§()).x = _loc5_.x;
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
            this.§[!P§.push(_loc11_);
            _loc3_++;
         }
         this.§73§ = _loc2_.slingshotX;
         this.§=!w§ = _loc2_.slingshotY;
      }
      
      public function §+T§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§,s§;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.§@!k§;
         _loc1_.theme = this.§3!V§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§^G§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[!P§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§[!P§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§"!7§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§"!7§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§[!P§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§"!7§.length;
         _loc1_.slingshotX = this.§73§;
         _loc1_.slingshotY = this.§=!w§;
         return _loc1_;
      }
      
      public function §'!`§() : String
      {
         return JSON.stringify(this.§+T§());
      }
      
      public function §?!^§() : int
      {
         var _loc2_:§continue§ = null;
         var _loc3_:String = null;
         var _loc4_:§]k§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[!P§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §4!n§.§]4§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §4!n§.§]4§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§'W§(_loc4_))
               {
                  _loc1_ += _loc4_.§&<§ * §?!X§.§%!O§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §1]§() : XML
      {
         var _loc2_:§8!e§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§,s§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§[!J§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§^G§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §"" §.SCREEN_HEIGHT_B2) + "\"></Camera>";
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
         while(_loc3_ < this.§[!P§.length)
         {
            _loc1_ += "<Item id=\"" + this.§[!P§[_loc3_].id + "\" x=\"" + this.§[!P§[_loc3_].x + "\" y=\"" + this.§[!P§[_loc3_].y + "\" rotation=\"" + this.§[!P§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §continue§
      {
         return this.§[!P§[param1];
      }
      
      public function addObject(param1:§continue§) : void
      {
         this.§[!P§.push(param1);
      }
      
      public function §9+§(param1:int) : §5!%§
      {
         return this.§"!7§[param1];
      }
      
      public function §=!'§(param1:§5!%§) : void
      {
         this.§"!7§.push(param1);
      }
      
      public function §;d§(param1:int) : §%5§
      {
         return this.mBirds[param1];
      }
      
      public function §^?§(param1:§%5§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §5!&§() : void
      {
         this.§^G§ = new Vector.<§8!e§>();
      }
      
      public function §-'§() : void
      {
         this.mBirds = new Vector.<§%5§>();
      }
      
      public function §1!B§(param1:int) : §8!e§
      {
         return this.§^G§[param1];
      }
      
      public function §&e§(param1:§8!e§) : void
      {
         this.§^G§.push(param1);
      }
   }
}
