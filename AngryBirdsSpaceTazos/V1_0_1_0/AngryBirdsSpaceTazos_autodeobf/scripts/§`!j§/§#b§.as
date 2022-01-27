package §`!j§
{
   import §"!&§.§-!M§;
   import §"!&§.§8X§;
   import §9!w§.§9!,§;
   import §@w§.§%![§;
   import §@w§.§1o§;
   import §@w§.§`a§;
   import flash.geom.Point;
   
   public class §#b§
   {
      
      public static const §`!0§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §4,§:Number = 0;
      
      protected var §^!b§:Number = -8;
      
      protected var §9!o§:Number = 0.0;
      
      protected var §-`§:Vector.<§`a§> = null;
      
      protected var mBirds:Vector.<§%![§> = null;
      
      protected var § !B§:Vector.<§1o§> = null;
      
      protected var §>"8§:Vector.<§1U§> = null;
      
      public var §;8§:Number = 0;
      
      public var § !1§:Boolean = false;
      
      protected var §9'§:int = 0;
      
      protected var §=!,§:int = 0;
      
      protected var §>4§:int = 0;
      
      protected var §;!2§:String = null;
      
      protected var mName:String = null;
      
      public function §#b§()
      {
         super();
         this.§>"8§ = new Vector.<§1U§>();
         this.§-`§ = new Vector.<§`a§>();
         this.mBirds = new Vector.<§%![§>();
         this.§ !B§ = new Vector.<§1o§>();
         this.§;!2§ = §`!0§;
      }
      
      public static function §="B§(param1:String) : §#b§
      {
         var _loc2_:§#b§ = new §#b§();
         _loc2_.§#"<§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§8X§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §5D§(param1:String) : §#b§
      {
         var _loc2_:§#b§ = §="B§(param1);
         _loc2_.§4,§ = _loc2_.mBirds[0].x;
         _loc2_.§^!b§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§-`§.length)
         {
            _loc2_.§-`§[_loc3_].angle = _loc2_.§-`§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§-`§.length;
      }
      
      public function get §continue§() : int
      {
         return this.§ !B§.length;
      }
      
      public function get §2&§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §'!Y§() : int
      {
         return this.§>"8§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§=!,§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§=!,§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§>4§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§>4§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§4,§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§4,§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§^!b§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§^!b§ = param1;
      }
      
      public function get §^!=§() : Number
      {
         return this.§9!o§;
      }
      
      public function set §^!=§(param1:Number) : void
      {
         this.§9!o§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§;!2§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§;!2§ = param1;
      }
      
      public function getEagleScore(param1:§-!M§, param2:int) : int
      {
         var _loc3_:int = this.§@![§(param1,param2);
         var _loc4_:int = this.§`1§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§9'§)
         {
            return _loc5_;
         }
         if(this.§9'§ == 0)
         {
            return _loc5_;
         }
         return this.§9'§;
      }
      
      public function §4"'§(param1:int, param2:§-!M§, param3:int) : void
      {
         var _loc4_:int = this.§@![§(param2,param3);
         var _loc5_:int = this.§`1§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§9'§ = param1;
      }
      
      public function §#"<§(param1:String) : void
      {
         var _loc4_:§1U§ = null;
         var _loc5_:Object = null;
         var _loc6_:§%![§ = null;
         var _loc7_:Object = null;
         var _loc8_:§`a§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§;8§ = _loc2_.LevelExtension;
         this.§ !1§ = false;
         this.§>4§ = _loc2_.scoreSilver;
         this.§=!,§ = _loc2_.scoreGold;
         this.§9'§ = _loc2_.scoreEagle;
         this.§;!2§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§ !B§ = this.§2!-§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§>"8§ = new Vector.<§1U§>();
         this.mBirds = new Vector.<§%![§>();
         this.§-`§ = new Vector.<§`a§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §1U§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§>"8§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §%![§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.mBirds.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §`a§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.type = _loc7_.id;
            _loc8_.id = _loc3_ - 1;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.§-`§.push(_loc8_);
            _loc3_++;
         }
         this.§4,§ = _loc2_.slingshotX;
         this.§^!b§ = _loc2_.slingshotY;
      }
      
      public function §,!e§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§;8§;
         _loc1_.scoreSilver = this.§>4§;
         _loc1_.scoreGold = this.§=!,§;
         _loc1_.scoreEagle = this.§9'§;
         _loc1_.theme = this.§;!2§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§>"8§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-`§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§-`§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ !B§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§ !B§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§-`§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§ !B§.length;
         _loc1_.slingshotX = this.§4,§;
         _loc1_.slingshotY = this.§^!b§;
         return _loc1_;
      }
      
      public function § %§() : String
      {
         return JSON.stringify(this.§,!e§());
      }
      
      protected function §2!-§(param1:int, param2:Object) : Vector.<§1o§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§1o§ = null;
         var _loc3_:Vector.<§1o§> = new Vector.<§1o§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §1o§.§4<§ || _loc5_.type == §1o§.§="'§)
               {
                  _loc8_ = new §1o§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §1o§.§="'§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §1o§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §1o§.§`!T§)
               {
                  _loc8_.§%?§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §@![§(param1:§-!M§, param2:int) : int
      {
         var _loc4_:§`a§ = null;
         var _loc5_:String = null;
         var _loc6_:§8X§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§-`§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.getItem(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.getItem(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.calculateSpawnedObjectScores(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function calculateSpawnedObjectScores(param1:§-!M§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §`1§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§,!S§();
         }
         return 0;
      }
      
      public function §,!S§() : int
      {
         return 10000;
      }
      
      public function §>G§() : XML
      {
         var _loc2_:§1U§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§;8§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§ !1§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§>4§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§=!,§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§>"8§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §9!,§.§-!?§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.mBirds[0].x + "\" y=\"" + (this.mBirds[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.mBirds.length)
         {
            _loc1_ += "  <Bird id=\"" + this.mBirds[_loc3_].type + "\" x=\"" + this.mBirds[_loc3_].x + "\" y=\"" + this.mBirds[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§-`§.length)
         {
            _loc1_ += "<Item id=\"" + this.§-`§[_loc3_].type + "\" x=\"" + this.§-`§[_loc3_].x + "\" y=\"" + this.§-`§[_loc3_].y + "\" rotation=\"" + this.§-`§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §`a§
      {
         return this.§-`§[param1];
      }
      
      public function addObject(param1:§`a§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§-`§.push(param1);
      }
      
      public function §2x§(param1:int) : §1o§
      {
         return this.§ !B§[param1];
      }
      
      public function § !R§(param1:§1o§) : void
      {
         this.§ !B§.push(param1);
      }
      
      public function §#!`§(param1:int) : §%![§
      {
         return this.mBirds[param1];
      }
      
      public function §?J§(param1:§%![§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §%7§() : void
      {
         this.§>"8§ = new Vector.<§1U§>();
      }
      
      public function § "=§() : void
      {
         this.mBirds = new Vector.<§%![§>();
      }
      
      public function §>2§(param1:int) : §1U§
      {
         return this.§>"8§[param1];
      }
      
      public function §,!Z§(param1:§1U§) : void
      {
         this.§>"8§.push(param1);
      }
   }
}
