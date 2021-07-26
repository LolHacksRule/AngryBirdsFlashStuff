package §7#$§
{
   import § !N§.§2m§;
   import § !N§.§5"?§;
   import § !N§.§8!U§;
   import § !N§.§>!L§;
   import §,0§.§0"0§;
   import §04§.b2Vec2;
   import §4§.§`3§;
   import §8#K§.§&2§;
   import §8#K§.§2§;
   import §;!=§.§>"G§;
   import flash.geom.Point;
   
   public class §?# §
   {
      
      public static const §8#v§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §&!w§:Number = 0;
      
      protected var §'#d§:Number = -8;
      
      protected var §@!o§:Number = 0.0;
      
      protected var §1#s§:Vector.<§5"?§> = null;
      
      protected var mBirds:Vector.<§>!L§> = null;
      
      protected var §5!-§:Vector.<§2m§> = null;
      
      protected var §]"W§:Vector.<§5#-§> = null;
      
      public var §[#d§:Number = 0;
      
      public var §!#p§:Boolean = false;
      
      protected var §]]§:int = 0;
      
      protected var §=!=§:int = 0;
      
      protected var § #T§:int = 0;
      
      protected var §]#8§:int = 90;
      
      protected var §%$@§:String = null;
      
      protected var §&$"§:String = null;
      
      protected var §3"]§:Number = 20;
      
      protected var § #e§:Number;
      
      protected var §;E§:Number;
      
      protected var §%!D§:Number;
      
      protected var §8"e§:Number;
      
      public function §?# §()
      {
         super();
         this.§]"W§ = new Vector.<§5#-§>();
         this.§1#s§ = new Vector.<§5"?§>();
         this.mBirds = new Vector.<§>!L§>();
         this.§5!-§ = new Vector.<§2m§>();
         this.§%$@§ = §8#v§;
      }
      
      public static function §94§(param1:String) : §?# §
      {
         var _loc2_:§?# § = new §?# §();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §^4§(param1:String) : §?# §
      {
         var _loc2_:§?# § = §94§(param1);
         if(isNaN(_loc2_.§&!w§) && isNaN(_loc2_.§'#d§))
         {
            _loc2_.§&!w§ = _loc2_.mBirds[0].x;
            _loc2_.§'#d§ = _loc2_.mBirds[0].y - 8.5;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§1#s§.length)
         {
            _loc2_.§1#s§[_loc3_].angle = _loc2_.§1#s§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§1#s§.length;
      }
      
      public function get §[#@§() : int
      {
         return this.§5!-§.length;
      }
      
      public function get §;M§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §##f§() : int
      {
         return this.§]"W§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§=!=§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§=!=§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§ #T§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§ #T§ = param1;
      }
      
      public function get scoreEagle() : int
      {
         return this.§]]§;
      }
      
      public function set scoreEagle(param1:int) : void
      {
         this.§]]§ = param1;
      }
      
      public function get blockDestructionScorePercentage() : int
      {
         return this.§]#8§;
      }
      
      public function set blockDestructionScorePercentage(param1:int) : void
      {
         this.§]#8§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§&!w§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§&!w§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§'#d§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§'#d§ = param1;
      }
      
      public function get §=f§() : Number
      {
         return this.§@!o§;
      }
      
      public function set §=f§(param1:Number) : void
      {
         this.§@!o§ = param1;
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function set name(param1:String) : void
      {
         this.§&$"§ = param1;
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return this.§3"]§;
      }
      
      public function set worldGravity(param1:Number) : void
      {
         this.§3"]§ = param1;
      }
      
      public function get theme() : String
      {
         return this.§%$@§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§%$@§ = param1;
      }
      
      public function readDataFromJSON(param1:String) : void
      {
         var _loc4_:§5#-§ = null;
         var _loc5_:Object = null;
         var _loc6_:§>!L§ = null;
         var _loc7_:Object = null;
         var _loc8_:§5"?§ = null;
         var _loc9_:Vector.<§8!U§> = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:Vector.<§0"0§> = null;
         var _loc13_:int = 0;
         var _loc14_:Object = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§[#d§ = _loc2_.LevelExtension;
         this.§!#p§ = false;
         this.scoreSilver = _loc2_.scoreSilver;
         this.scoreGold = _loc2_.scoreGold;
         this.scoreEagle = _loc2_.scoreEagle;
         if(_loc2_.blockDestructionScorePercentage)
         {
            this.blockDestructionScorePercentage = _loc2_.blockDestructionScorePercentage;
         }
         this.§%$@§ = _loc2_.theme;
         this.§&$"§ = _loc2_.id;
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
            this.§5!-§ = this.§+$4§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§]"W§ = new Vector.<§5#-§>();
         this.mBirds = new Vector.<§>!L§>();
         this.§1#s§ = new Vector.<§5"?§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §5#-§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§]"W§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §>!L§()).x = _loc5_.x;
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
            (_loc8_ = new §5"?§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            if(_loc7_.z)
            {
               _loc8_.z = _loc7_.z;
            }
            else
            {
               _loc8_.z = §>"G§.§-$"§;
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
               _loc9_ = new Vector.<§8!U§>();
               _loc10_ = 0;
               while(_loc10_ < _loc7_.behaviors.length)
               {
                  _loc11_ = _loc7_.behaviors[_loc10_];
                  _loc9_.push(new §8!U§(_loc11_.type,_loc11_.name,_loc11_.event));
                  _loc10_++;
               }
               _loc8_.§15§(_loc9_);
            }
            if(_loc7_.events)
            {
               _loc12_ = new Vector.<§0"0§>();
               _loc13_ = 0;
               while(_loc13_ < _loc7_.events.length)
               {
                  _loc14_ = _loc7_.events[_loc13_];
                  _loc12_.push(new §0"0§(_loc14_.name,_loc14_.parameters,_loc14_.trigger));
                  _loc13_++;
               }
               _loc8_.§6"w§(_loc12_);
            }
            _loc8_.awake = _loc7_.awake;
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.§1#s§.push(_loc8_);
            _loc3_++;
         }
         this.§&!w§ = _loc2_.slingshotX;
         this.§'#d§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§[#d§;
         _loc1_.scoreSilver = this.scoreSilver;
         _loc1_.scoreGold = this.scoreGold;
         _loc1_.scoreEagle = this.scoreEagle;
         _loc1_.worldGravity = this.worldGravity;
         _loc1_.borderTop = this.borderTop;
         _loc1_.borderGround = this.borderGround;
         _loc1_.borderLeft = this.borderLeft;
         _loc1_.borderRight = this.borderRight;
         _loc1_.theme = this.§%$@§;
         _loc1_.name = this.§&$"§;
         _loc1_.blockDestructionScorePercentage = this.blockDestructionScorePercentage;
         _loc1_.camera = this.§]"W§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1#s§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§1#s§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§5!-§.length)
         {
            _loc3_ = this.§5!-§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§3"^§(_loc3_.index1);
            _loc3_.index2 = this.§3"^§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§1#s§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§5!-§.length;
         _loc1_.slingshotX = this.§&!w§;
         _loc1_.slingshotY = this.§'#d§;
         return _loc1_;
      }
      
      protected function §3"^§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1#s§.length)
         {
            if(this.§1#s§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §8!0§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §+$4§(param1:int, param2:Object) : Vector.<§2m§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§2m§ = null;
         var _loc3_:Vector.<§2m§> = new Vector.<§2m§>();
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
               if(_loc5_.type == §2m§.§@!I§ || _loc5_.type == §2m§.§ $$§)
               {
                  _loc10_ = new §2m§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
                  if(_loc5_.type == §2m§.§ $$§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §2m§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
               }
               if(_loc5_.type == §2m§.§8!_§)
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
      
      public function §2$C§(param1:§2#3§) : int
      {
         var _loc3_:§5"?§ = null;
         var _loc4_:String = null;
         var _loc5_:§&2§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§1#s§)
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
      
      public function §[$B§(param1:§2#3§) : int
      {
         var _loc3_:§5"?§ = null;
         var _loc4_:String = null;
         var _loc5_:§&2§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§1#s§)
         {
            _loc4_ = _loc3_.type;
            if(!((_loc5_ = param1.getItem(_loc4_)) == null || _loc5_.itemType == §&2§.§0!D§))
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
      
      public function §7A§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§!$,§();
         }
         return 0;
      }
      
      private function §!$,§() : int
      {
         return 10000;
      }
      
      public function §0"Q§() : XML
      {
         var _loc2_:§5#-§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§[#d§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§!#p§ + "\"";
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
         for each(_loc2_ in this.§]"W§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §`3§.§ 3§) + "\"></Camera>";
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
         while(_loc3_ < this.§1#s§.length)
         {
            _loc1_ += "<Item id=\"" + this.§1#s§[_loc3_].type + "\" x=\"" + this.§1#s§[_loc3_].x + "\" y=\"" + this.§1#s§[_loc3_].y + "\" z=\"" + this.§1#s§[_loc3_].z + "\" rotation=\"" + this.§1#s§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §5"?§
      {
         return this.§1#s§[param1];
      }
      
      public function addObject(param1:§5"?§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§1#s§.push(param1);
      }
      
      public function § #2§(param1:int) : §2m§
      {
         return this.§5!-§[param1];
      }
      
      public function §3#h§(param1:§2m§) : void
      {
         this.§5!-§.push(param1);
      }
      
      public function §8"y§(param1:int) : §>!L§
      {
         return this.mBirds[param1];
      }
      
      public function §"#j§(param1:§>!L§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §+!R§() : void
      {
         this.§]"W§ = new Vector.<§5#-§>();
      }
      
      public function §^P§() : void
      {
         this.mBirds = new Vector.<§>!L§>();
      }
      
      public function §,#v§(param1:int) : §5#-§
      {
         return this.§]"W§[param1];
      }
      
      public function §%"%§(param1:§5#-§) : void
      {
         this.§]"W§.push(param1);
      }
      
      public function get borderTop() : Number
      {
         return this.§ #e§;
      }
      
      public function set borderTop(param1:Number) : void
      {
         this.§ #e§ = param1;
      }
      
      public function get borderGround() : Number
      {
         return this.§;E§;
      }
      
      public function set borderGround(param1:Number) : void
      {
         this.§;E§ = param1;
      }
      
      public function get borderLeft() : Number
      {
         return this.§%!D§;
      }
      
      public function set borderLeft(param1:Number) : void
      {
         this.§%!D§ = param1;
      }
      
      public function get borderRight() : Number
      {
         return this.§8"e§;
      }
      
      public function set borderRight(param1:Number) : void
      {
         this.§8"e§ = param1;
      }
   }
}
