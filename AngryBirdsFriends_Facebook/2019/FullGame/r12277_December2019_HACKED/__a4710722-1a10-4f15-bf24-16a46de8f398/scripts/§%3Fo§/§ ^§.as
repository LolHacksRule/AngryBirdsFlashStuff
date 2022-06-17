package §?o§
{
   import §-!j§.§#"+§;
   import §-!j§.§-"8§;
   import §0#I§.§3s§;
   import §6!R§.b2Vec2;
   import §@"v§.§0$=§;
   import §@"v§.§;"U§;
   import §@"v§.§@$<§;
   import §@"v§.§^"B§;
   import §^0§.§=Q§;
   import §`$=§.§5$E§;
   import flash.geom.Point;
   
   public class § ^§
   {
      
      public static const §,!t§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §@F§:Number = 0;
      
      protected var §!#R§:Number = -8;
      
      protected var §5T§:Number = 0.0;
      
      protected var §!#4§:Vector.<§@$<§> = null;
      
      protected var mBirds:Vector.<§;"U§> = null;
      
      protected var §&$D§:Vector.<§0$=§> = null;
      
      protected var §8!u§:Vector.<§"!6§> = null;
      
      public var §;#N§:Number = 0;
      
      public var §2c§:Boolean = false;
      
      protected var §&M§:int = 0;
      
      protected var §8"A§:int = 0;
      
      protected var §0"_§:int = 0;
      
      protected var §#1§:int = 90;
      
      protected var §0f§:String = null;
      
      protected var §-#3§:String = null;
      
      protected var §%!i§:Number = 20;
      
      protected var §;#Z§:Number;
      
      protected var §][§:Number;
      
      protected var §3"C§:Number;
      
      protected var §`5§:Number;
      
      public function § ^§()
      {
         super();
         this.§8!u§ = new Vector.<§"!6§>();
         this.§!#4§ = new Vector.<§@$<§>();
         this.mBirds = new Vector.<§;"U§>();
         this.§&$D§ = new Vector.<§0$=§>();
         this.§0f§ = §,!t§;
      }
      
      public static function §@#@§(param1:String) : § ^§
      {
         var _loc2_:§ ^§ = new § ^§();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §7m§(param1:String) : § ^§
      {
         var _loc2_:§ ^§ = §@#@§(param1);
         if(isNaN(_loc2_.§@F§) && isNaN(_loc2_.§!#R§))
         {
            _loc2_.§@F§ = _loc2_.mBirds[0].x;
            _loc2_.§!#R§ = _loc2_.mBirds[0].y - 8.5;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§!#4§.length)
         {
            _loc2_.§!#4§[_loc3_].angle = _loc2_.§!#4§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§!#4§.length;
      }
      
      public function get §7#e§() : int
      {
         return this.§&$D§.length;
      }
      
      public function get §7v§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §0#7§() : int
      {
         return this.§8!u§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§8"A§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§8"A§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§0"_§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§0"_§ = param1;
      }
      
      public function get scoreEagle() : int
      {
         return this.§&M§;
      }
      
      public function set scoreEagle(param1:int) : void
      {
         this.§&M§ = param1;
      }
      
      public function get blockDestructionScorePercentage() : int
      {
         return this.§#1§;
      }
      
      public function set blockDestructionScorePercentage(param1:int) : void
      {
         this.§#1§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§@F§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§@F§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§!#R§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§!#R§ = param1;
      }
      
      public function get §"y§() : Number
      {
         return this.§5T§;
      }
      
      public function set §"y§(param1:Number) : void
      {
         this.§5T§ = param1;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function set name(param1:String) : void
      {
         this.§-#3§ = param1;
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return this.§%!i§;
      }
      
      public function set worldGravity(param1:Number) : void
      {
         this.§%!i§ = param1;
      }
      
      public function get theme() : String
      {
         return this.§0f§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§0f§ = param1;
      }
      
      public function readDataFromJSON(param1:String) : void
      {
         var _loc4_:§"!6§ = null;
         var _loc5_:Object = null;
         var _loc6_:§;"U§ = null;
         var _loc7_:Object = null;
         var _loc8_:§@$<§ = null;
         var _loc9_:Vector.<§^"B§> = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:Vector.<§3s§> = null;
         var _loc13_:int = 0;
         var _loc14_:Object = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§;#N§ = _loc2_.LevelExtension;
         this.§2c§ = false;
         this.scoreSilver = _loc2_.scoreSilver;
         this.scoreGold = _loc2_.scoreGold;
         this.scoreEagle = _loc2_.scoreEagle;
         if(_loc2_.blockDestructionScorePercentage)
         {
            this.blockDestructionScorePercentage = _loc2_.blockDestructionScorePercentage;
         }
         this.§0f§ = _loc2_.theme;
         this.§-#3§ = _loc2_.id;
         if(_loc2_.borderTop)
         {
            this.borderTop = _loc2_.borderTop;
         }
         if(_loc2_.borderGround)
         {
            this.borderGround = _loc2_.borderGround;
         }
         if(_loc2_.borderLeft)
         {
            this.borderLeft = _loc2_.borderLeft;
         }
         if(_loc2_.borderRight)
         {
            this.borderRight = _loc2_.borderRight;
         }
         if(_loc2_.counts.joints)
         {
            this.§&$D§ = this.§;6§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§8!u§ = new Vector.<§"!6§>();
         this.mBirds = new Vector.<§;"U§>();
         this.§!#4§ = new Vector.<§@$<§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §"!6§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§8!u§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §;"U§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.mBirds.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §@$<§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            if(_loc7_.z)
            {
               _loc8_.z = _loc7_.z;
            }
            else
            {
               _loc8_.z = §=Q§.§-!g§;
            }
            _loc8_.type = _loc7_.id;
            _loc8_.id = _loc3_ - 1;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            if(_loc7_.angularVelocity)
            {
               _loc8_.angularVelocity = _loc7_.angularVelocity;
            }
            if(_loc7_.hasOwnProperty("forceX") || _loc7_.hasOwnProperty("forceY"))
            {
               _loc8_.linearForce = new b2Vec2(_loc7_.forceX,_loc7_.forceY);
            }
            if(_loc7_.behaviors)
            {
               _loc9_ = new Vector.<§^"B§>();
               _loc10_ = 0;
               while(_loc10_ < _loc7_.behaviors.length)
               {
                  _loc11_ = _loc7_.behaviors[_loc10_];
                  _loc9_.push(new §^"B§(_loc11_.type,_loc11_.name,_loc11_.event));
                  _loc10_++;
               }
               _loc8_.§ 9§(_loc9_);
            }
            if(_loc7_.events)
            {
               _loc12_ = new Vector.<§3s§>();
               _loc13_ = 0;
               while(_loc13_ < _loc7_.events.length)
               {
                  _loc14_ = _loc7_.events[_loc13_];
                  _loc12_.push(new §3s§(_loc14_.name,_loc14_.parameters,_loc14_.trigger));
                  _loc13_++;
               }
               _loc8_.§9"-§(_loc12_);
            }
            _loc8_.awake = _loc7_.awake;
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.§!#4§.push(_loc8_);
            _loc3_++;
         }
         this.§@F§ = _loc2_.slingshotX;
         this.§!#R§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§;#N§;
         _loc1_.scoreSilver = this.scoreSilver;
         _loc1_.scoreGold = this.scoreGold;
         _loc1_.scoreEagle = this.scoreEagle;
         _loc1_.worldGravity = this.worldGravity;
         _loc1_.borderTop = this.borderTop;
         _loc1_.borderGround = this.borderGround;
         _loc1_.borderLeft = this.borderLeft;
         _loc1_.borderRight = this.borderRight;
         _loc1_.theme = this.§0f§;
         _loc1_.name = this.§-#3§;
         _loc1_.blockDestructionScorePercentage = this.blockDestructionScorePercentage;
         _loc1_.camera = this.§8!u§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!#4§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§!#4§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&$D§.length)
         {
            _loc3_ = this.§&$D§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§?#$§(_loc3_.index1);
            _loc3_.index2 = this.§?#$§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§!#4§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§&$D§.length;
         _loc1_.slingshotX = this.§@F§;
         _loc1_.slingshotY = this.§!#R§;
         return _loc1_;
      }
      
      protected function §?#$§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!#4§.length)
         {
            if(this.§!#4§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §=$4§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §;6§(param1:int, param2:Object) : Vector.<§0$=§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§0$=§ = null;
         var _loc3_:Vector.<§0$=§> = new Vector.<§0$=§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = _loc5_.index1;
               _loc9_ = _loc5_.index2;
               _loc10_ = null;
               if(_loc5_.type == §0$=§.§%!A§ || _loc5_.type == §0$=§.§<"'§)
               {
                  _loc10_ = new §0$=§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
                  if(_loc5_.type == §0$=§.§<"'§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §0$=§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
               }
               if(_loc5_.type == §0$=§.§6$7§)
               {
                  _loc10_.annihilationTime = Number(_loc5_.destroyTimer) || Number(_loc5_.annihilationTime) || Number(0);
                  _loc10_.distanceToDestroyChild = Number(_loc5_.distanceToDestroyChild) || Number(0);
               }
               _loc10_.destroyChild = _loc5_.destroyChild;
               _loc3_.push(_loc10_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §5@§(param1:§#"+§) : int
      {
         var _loc3_:§@$<§ = null;
         var _loc4_:String = null;
         var _loc5_:§-"8§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§!#4§)
         {
            _loc4_ = _loc3_.type;
            if((_loc5_ = param1.getItem(_loc4_)) == null && _loc4_.indexOf("MISC_") == 0)
            {
               _loc4_ = "MISC_FOOD_" + _loc4_.substring(5);
               _loc5_ = param1.getItem(_loc4_);
            }
            if(_loc5_)
            {
               _loc2_ += _loc5_.destroyedScoreInc;
               if(_loc5_.isDamageAwardingScore())
               {
                  _loc2_ += _loc5_.damageScore;
               }
            }
         }
         return _loc2_;
      }
      
      public function §"#w§(param1:§#"+§) : int
      {
         var _loc3_:§@$<§ = null;
         var _loc4_:String = null;
         var _loc5_:§-"8§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§!#4§)
         {
            _loc4_ = _loc3_.type;
            if(!((_loc5_ = param1.getItem(_loc4_)) == null || _loc5_.itemType == §-"8§.§3"J§))
            {
               if(_loc5_ == null && _loc4_.indexOf("MISC_") == 0)
               {
                  _loc4_ = "MISC_FOOD_" + _loc4_.substring(5);
                  _loc5_ = param1.getItem(_loc4_);
               }
               if(_loc5_)
               {
                  _loc2_ += _loc5_.destroyedScoreInc;
                  if(_loc5_.isDamageAwardingScore())
                  {
                     _loc2_ += _loc5_.damageScore;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function §-l§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§5";§();
         }
         return 0;
      }
      
      private function §5";§() : int
      {
         return 10000;
      }
      
      public function §>!a§() : XML
      {
         var _loc2_:§"!6§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§;#N§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§2c§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.scoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.scoreGold + "\"";
         _loc1_ += " scoreEagle=\"" + this.scoreEagle + "\"";
         _loc1_ += " blockDestructionScorePercentage=\"" + this.blockDestructionScorePercentage + "\"";
         _loc1_ += " worldGravity=\"" + this.worldGravity + "\"";
         _loc1_ += " topBorder=\"" + this.borderTop + "\"";
         _loc1_ += " groundBorder=\"" + this.borderGround + "\"";
         _loc1_ += " leftBorder=\"" + this.borderLeft + "\"";
         _loc1_ += " rightBorder=\"" + this.borderRight + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§8!u§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §5$E§.§4$B§) + "\"></Camera>";
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
         while(_loc3_ < this.§!#4§.length)
         {
            _loc1_ += "<Item id=\"" + this.§!#4§[_loc3_].type + "\" x=\"" + this.§!#4§[_loc3_].x + "\" y=\"" + this.§!#4§[_loc3_].y + "\" z=\"" + this.§!#4§[_loc3_].z + "\" rotation=\"" + this.§!#4§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §@$<§
      {
         return this.§!#4§[param1];
      }
      
      public function addObject(param1:§@$<§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§!#4§.push(param1);
      }
      
      public function §1!6§(param1:int) : §0$=§
      {
         return this.§&$D§[param1];
      }
      
      public function §%=§(param1:§0$=§) : void
      {
         this.§&$D§.push(param1);
      }
      
      public function §1#!§(param1:int) : §;"U§
      {
         return this.mBirds[param1];
      }
      
      public function §&!D§(param1:§;"U§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §==§() : void
      {
         this.§8!u§ = new Vector.<§"!6§>();
      }
      
      public function §%"M§() : void
      {
         this.mBirds = new Vector.<§;"U§>();
      }
      
      public function §]"S§(param1:int) : §"!6§
      {
         return this.§8!u§[param1];
      }
      
      public function §<L§(param1:§"!6§) : void
      {
         this.§8!u§.push(param1);
      }
      
      public function get borderTop() : Number
      {
         return this.§;#Z§;
      }
      
      public function set borderTop(param1:Number) : void
      {
         this.§;#Z§ = param1;
      }
      
      public function get borderGround() : Number
      {
         return this.§][§;
      }
      
      public function set borderGround(param1:Number) : void
      {
         this.§][§ = param1;
      }
      
      public function get borderLeft() : Number
      {
         return this.§3"C§;
      }
      
      public function set borderLeft(param1:Number) : void
      {
         this.§3"C§ = param1;
      }
      
      public function get borderRight() : Number
      {
         return this.§`5§;
      }
      
      public function set borderRight(param1:Number) : void
      {
         this.§`5§ = param1;
      }
   }
}
