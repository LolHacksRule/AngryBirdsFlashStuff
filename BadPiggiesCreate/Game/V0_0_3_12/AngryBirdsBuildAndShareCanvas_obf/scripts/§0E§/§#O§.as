package §0E§
{
   import §#?§.§%!O§;
   import §#?§.§4">§;
   import §=!E§.*;
   import §?",§.§"!`§;
   import §?",§.§>!l§;
   import §?",§.§]!k§;
   import §@r§.§3!+§;
   import §[B§.§"d§;
   import flash.geom.Point;
   
   public class §#O§
   {
      
      public static const §=O§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §#!!§:Number = 0;
      
      public var §5!9§:Number = -8;
      
      private var §@"9§:Vector.<§]!k§> = null;
      
      private var mBirds:Vector.<§"!`§> = null;
      
      private var §@!#§:Vector.<§>!l§> = null;
      
      private var §89§:Vector.<§9!Y§> = null;
      
      public var §1"'§:Number = 0;
      
      public var §0x§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var §7$§:int = 0;
      
      private var §6d§:String = null;
      
      public var mName:String = null;
      
      public function §#O§()
      {
         super();
         this.§89§ = new Vector.<§9!Y§>();
         this.§@"9§ = new Vector.<§]!k§>();
         this.mBirds = new Vector.<§"!`§>();
         this.§@!#§ = new Vector.<§>!l§>();
         this.§6d§ = §=O§;
      }
      
      public static function §;"7§(param1:String) : §#O§
      {
         var _loc2_:§#O§ = new §#O§();
         _loc2_.§]o§(param1);
         return _loc2_;
      }
      
      public static function §>!m§(param1:§4">§) : Boolean
      {
         if(param1.§#>§ == §4">§.§;!z§ || param1.§#>§ == §4">§.§5>§ || param1.§#>§ == §4">§.§@!X§)
         {
            return true;
         }
         return false;
      }
      
      public static function §-@§(param1:String) : §#O§
      {
         var _loc2_:§#O§ = §;"7§(param1);
         _loc2_.§#!!§ = _loc2_.mBirds[0].x;
         _loc2_.§5!9§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@"9§.length)
         {
            _loc2_.§@"9§[_loc3_].angle = 360 - _loc2_.§@"9§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §!!o§(param1:int, param2:Object) : Vector.<§>!l§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§>!l§ = null;
         var _loc3_:Vector.<§>!l§> = new Vector.<§>!l§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §>!l§.§!^§ || _loc5_.type == §>!l§.§&!#§)
               {
                  _loc8_ = new §>!l§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §>!l§.§&!#§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §>!l§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §>!l§.§3>§)
               {
                  _loc8_.§3Z§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §@!l§() : int
      {
         return this.§@"9§.length;
      }
      
      public function get §if§() : int
      {
         return this.§@!#§.length;
      }
      
      public function get §@-§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §8G§() : int
      {
         return this.§89§.length;
      }
      
      public function get theme() : String
      {
         return this.§6d§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§6d§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§,q§();
         if(_loc1_ > 0 && _loc1_ < this.§7$§)
         {
            return _loc1_;
         }
         if(this.§7$§ == 0)
         {
            return _loc1_;
         }
         return this.§7$§;
      }
      
      public function §""6§(param1:int) : void
      {
         var _loc2_:int = this.§,q§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§7$§ = param1;
      }
      
      public function §]o§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§9!Y§ = null;
         var _loc9_:Object = null;
         var _loc10_:§"!`§ = null;
         var _loc11_:§]!k§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§1"'§ = _loc2_.LevelExtension;
         this.§0x§ = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.§7$§ = _loc2_.scoreEagle;
         this.§6d§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§@!#§ = §!!o§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§89§ = new Vector.<§9!Y§>();
         this.mBirds = new Vector.<§"!`§>();
         this.§@"9§ = new Vector.<§]!k§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §9!Y§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§89§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §"!`§()).x = _loc9_.x;
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
            (_loc11_ = new §]!k§()).x = _loc5_.x;
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
            this.§@"9§.push(_loc11_);
            _loc3_++;
         }
         this.§#!!§ = _loc2_.slingshotX;
         this.§5!9§ = _loc2_.slingshotY;
      }
      
      public function §4!U§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§1"'§;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.§7$§;
         _loc1_.theme = this.§6d§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§89§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@"9§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§@"9§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@!#§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§@!#§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§@"9§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§@!#§.length;
         _loc1_.slingshotX = this.§#!!§;
         _loc1_.slingshotY = this.§5!9§;
         return _loc1_;
      }
      
      public function §5"0§() : String
      {
         return JSON.stringify(this.§4!U§());
      }
      
      public function §,q§() : int
      {
         var _loc2_:§]!k§ = null;
         var _loc3_:String = null;
         var _loc4_:§4">§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@"9§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §%!O§.§2<§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §%!O§.§2<§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§>!m§(_loc4_))
               {
                  _loc1_ += _loc4_.§<e§ * §"d§.§]7§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §?!;§() : XML
      {
         var _loc2_:§9!Y§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§1"'§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§0x§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§89§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §3!+§.SCREEN_HEIGHT_B2) + "\"></Camera>";
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
         while(_loc3_ < this.§@"9§.length)
         {
            _loc1_ += "<Item id=\"" + this.§@"9§[_loc3_].id + "\" x=\"" + this.§@"9§[_loc3_].x + "\" y=\"" + this.§@"9§[_loc3_].y + "\" rotation=\"" + this.§@"9§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §]!k§
      {
         return this.§@"9§[param1];
      }
      
      public function addObject(param1:§]!k§) : void
      {
         this.§@"9§.push(param1);
      }
      
      public function §7!h§(param1:int) : §>!l§
      {
         return this.§@!#§[param1];
      }
      
      public function §!!0§(param1:§>!l§) : void
      {
         this.§@!#§.push(param1);
      }
      
      public function §=!,§(param1:int) : §"!`§
      {
         return this.mBirds[param1];
      }
      
      public function §-;§(param1:§"!`§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §8!e§() : void
      {
         this.§89§ = new Vector.<§9!Y§>();
      }
      
      public function §@!r§() : void
      {
         this.mBirds = new Vector.<§"!`§>();
      }
      
      public function §="2§(param1:int) : §9!Y§
      {
         return this.§89§[param1];
      }
      
      public function §0!7§(param1:§9!Y§) : void
      {
         this.§89§.push(param1);
      }
   }
}
