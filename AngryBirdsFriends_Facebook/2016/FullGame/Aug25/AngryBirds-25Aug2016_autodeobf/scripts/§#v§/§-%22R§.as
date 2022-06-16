package §#v§
{
   import §,#L§.§!#%§;
   import §,#L§.§8"y§;
   import §,#L§.§?W§;
   import §,#L§.§[g§;
   import §0m§.b2Vec2;
   import §6§.§,"s§;
   import §["Q§.§0$,§;
   import §[#a§.§="@§;
   import §`#C§.§8K§;
   import §`#C§.§9#s§;
   import flash.geom.Point;
   
   public class §-"R§
   {
      
      public static const §?! §:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §3"b§:Number = 0;
      
      protected var §4+§:Number = -8;
      
      protected var §-#v§:Number = 0.0;
      
      protected var §3!2§:Vector.<§!#%§> = null;
      
      protected var mBirds:Vector.<§[g§> = null;
      
      protected var §#$2§:Vector.<§8"y§> = null;
      
      protected var §=?§:Vector.<§8i§> = null;
      
      public var §%"-§:Number = 0;
      
      public var §6e§:Boolean = false;
      
      protected var §7!o§:int = 0;
      
      protected var §?'§:int = 0;
      
      protected var §7"w§:int = 0;
      
      protected var §,#Q§:int = 90;
      
      protected var §`",§:String = null;
      
      protected var §2!4§:String = null;
      
      protected var §'b§:Number = 20;
      
      protected var §%! §:Number;
      
      protected var §5o§:Number;
      
      protected var §=!F§:Number;
      
      protected var §%"X§:Number;
      
      public function §-"R§()
      {
         super();
         this.§=?§ = new Vector.<§8i§>();
         this.§3!2§ = new Vector.<§!#%§>();
         this.mBirds = new Vector.<§[g§>();
         this.§#$2§ = new Vector.<§8"y§>();
         this.§`",§ = §?! §;
      }
      
      public static function §=#?§(param1:String) : §-"R§
      {
         var _loc2_:§-"R§ = new §-"R§();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §7#r§(param1:String) : §-"R§
      {
         var _loc2_:§-"R§ = §=#?§(param1);
         _loc2_.§3"b§ = _loc2_.mBirds[0].x;
         _loc2_.§4+§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§3!2§.length)
         {
            _loc2_.§3!2§[_loc3_].angle = _loc2_.§3!2§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§3!2§.length;
      }
      
      public function get §-#r§() : int
      {
         return this.§#$2§.length;
      }
      
      public function get §;#w§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §@"+§() : int
      {
         return this.§=?§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§?'§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§?'§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§7"w§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§7"w§ = param1;
      }
      
      public function get scoreEagle() : int
      {
         return this.§7!o§;
      }
      
      public function set scoreEagle(param1:int) : void
      {
         this.§7!o§ = param1;
      }
      
      public function get blockDestructionScorePercentage() : int
      {
         return this.§,#Q§;
      }
      
      public function set blockDestructionScorePercentage(param1:int) : void
      {
         this.§,#Q§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§3"b§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§3"b§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§4+§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§4+§ = param1;
      }
      
      public function get §#$6§() : Number
      {
         return this.§-#v§;
      }
      
      public function set §#$6§(param1:Number) : void
      {
         this.§-#v§ = param1;
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function set name(param1:String) : void
      {
         this.§2!4§ = param1;
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return this.§'b§;
      }
      
      public function set worldGravity(param1:Number) : void
      {
         this.§'b§ = param1;
      }
      
      public function get theme() : String
      {
         return this.§`",§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§`",§ = param1;
      }
      
      public function readDataFromJSON(param1:String) : void
      {
         var _loc4_:§8i§ = null;
         var _loc5_:Object = null;
         var _loc6_:§[g§ = null;
         var _loc7_:Object = null;
         var _loc8_:§!#%§ = null;
         var _loc9_:Vector.<§?W§> = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:Vector.<§,"s§> = null;
         var _loc13_:int = 0;
         var _loc14_:Object = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§%"-§ = _loc2_.LevelExtension;
         this.§6e§ = false;
         this.scoreSilver = _loc2_.scoreSilver;
         this.scoreGold = _loc2_.scoreGold;
         this.scoreEagle = _loc2_.scoreEagle;
         if(_loc2_.blockDestructionScorePercentage)
         {
            this.blockDestructionScorePercentage = _loc2_.blockDestructionScorePercentage;
         }
         this.§`",§ = _loc2_.theme;
         this.§2!4§ = _loc2_.id;
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
            this.§#$2§ = this.§ "p§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§=?§ = new Vector.<§8i§>();
         this.mBirds = new Vector.<§[g§>();
         this.§3!2§ = new Vector.<§!#%§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §8i§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§=?§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §[g§()).x = _loc5_.x;
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
            (_loc8_ = new §!#%§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            if(_loc7_.z)
            {
               _loc8_.z = _loc7_.z;
            }
            else
            {
               _loc8_.z = §="@§.§-!C§;
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
            if(_loc7_.forceX || _loc7_.forceY)
            {
               _loc8_.linearForce = new b2Vec2(!!_loc7_.forceX ? Number(_loc7_.forceX) : Number(0),!!_loc7_.forceY ? Number(_loc7_.forceY) : Number(0));
            }
            if(_loc7_.behaviors)
            {
               _loc9_ = new Vector.<§?W§>();
               _loc10_ = 0;
               while(_loc10_ < _loc7_.behaviors.length)
               {
                  _loc11_ = _loc7_.behaviors[_loc10_];
                  _loc9_.push(new §?W§(_loc11_.type,_loc11_.name,_loc11_.event));
                  _loc10_++;
               }
               _loc8_.§%$#§(_loc9_);
            }
            if(_loc7_.events)
            {
               _loc12_ = new Vector.<§,"s§>();
               _loc13_ = 0;
               while(_loc13_ < _loc7_.events.length)
               {
                  _loc14_ = _loc7_.events[_loc13_];
                  _loc12_.push(new §,"s§(_loc14_.name,_loc14_.parameters,_loc14_.trigger));
                  _loc13_++;
               }
               _loc8_.§6Y§(_loc12_);
            }
            _loc8_.awake = _loc7_.awake;
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.§3!2§.push(_loc8_);
            _loc3_++;
         }
         this.§3"b§ = _loc2_.slingshotX;
         this.§4+§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§%"-§;
         _loc1_.scoreSilver = this.scoreSilver;
         _loc1_.scoreGold = this.scoreGold;
         _loc1_.scoreEagle = this.scoreEagle;
         _loc1_.worldGravity = this.worldGravity;
         _loc1_.borderTop = this.borderTop;
         _loc1_.borderGround = this.borderGround;
         _loc1_.borderLeft = this.borderLeft;
         _loc1_.borderRight = this.borderRight;
         _loc1_.theme = this.§`",§;
         _loc1_.name = this.§2!4§;
         _loc1_.blockDestructionScorePercentage = this.blockDestructionScorePercentage;
         _loc1_.camera = this.§=?§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§3!2§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§3!2§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§#$2§.length)
         {
            _loc3_ = this.§#$2§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§'!y§(_loc3_.index1);
            _loc3_.index2 = this.§'!y§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§3!2§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§#$2§.length;
         _loc1_.slingshotX = this.§3"b§;
         _loc1_.slingshotY = this.§4+§;
         return _loc1_;
      }
      
      protected function §'!y§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!2§.length)
         {
            if(this.§3!2§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §6"e§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function § "p§(param1:int, param2:Object) : Vector.<§8"y§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§8"y§ = null;
         var _loc3_:Vector.<§8"y§> = new Vector.<§8"y§>();
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
               if(_loc5_.type == §8"y§.§6#N§ || _loc5_.type == §8"y§.§?#§)
               {
                  _loc10_ = new §8"y§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
                  if(_loc5_.type == §8"y§.§?#§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §8"y§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
               }
               if(_loc5_.type == §8"y§.§[!J§)
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
      
      public function §="a§(param1:§9#s§) : int
      {
         var _loc3_:§!#%§ = null;
         var _loc4_:String = null;
         var _loc5_:§8K§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§3!2§)
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
      
      public function §8"b§(param1:§9#s§) : int
      {
         var _loc3_:§!#%§ = null;
         var _loc4_:String = null;
         var _loc5_:§8K§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§3!2§)
         {
            _loc4_ = _loc3_.type;
            if(!((_loc5_ = param1.getItem(_loc4_)) == null || _loc5_.itemType == §8K§.§=l§))
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
      
      public function §-!4§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§`w§();
         }
         return 0;
      }
      
      private function §`w§() : int
      {
         return 10000;
      }
      
      public function §5"r§() : XML
      {
         var _loc2_:§8i§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§%"-§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§6e§ + "\"";
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
         for each(_loc2_ in this.§=?§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §0$,§.§'!@§) + "\"></Camera>";
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
         while(_loc3_ < this.§3!2§.length)
         {
            _loc1_ += "<Item id=\"" + this.§3!2§[_loc3_].type + "\" x=\"" + this.§3!2§[_loc3_].x + "\" y=\"" + this.§3!2§[_loc3_].y + "\" z=\"" + this.§3!2§[_loc3_].z + "\" rotation=\"" + this.§3!2§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §!#%§
      {
         return this.§3!2§[param1];
      }
      
      public function addObject(param1:§!#%§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§3!2§.push(param1);
      }
      
      public function §^#J§(param1:int) : §8"y§
      {
         return this.§#$2§[param1];
      }
      
      public function § !L§(param1:§8"y§) : void
      {
         this.§#$2§.push(param1);
      }
      
      public function §%#i§(param1:int) : §[g§
      {
         return this.mBirds[param1];
      }
      
      public function §,!y§(param1:§[g§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §0![§() : void
      {
         this.§=?§ = new Vector.<§8i§>();
      }
      
      public function §!#Z§() : void
      {
         this.mBirds = new Vector.<§[g§>();
      }
      
      public function §7!Q§(param1:int) : §8i§
      {
         return this.§=?§[param1];
      }
      
      public function §2#]§(param1:§8i§) : void
      {
         this.§=?§.push(param1);
      }
      
      public function get borderTop() : Number
      {
         return this.§%! §;
      }
      
      public function set borderTop(param1:Number) : void
      {
         this.§%! § = param1;
      }
      
      public function get borderGround() : Number
      {
         return this.§5o§;
      }
      
      public function set borderGround(param1:Number) : void
      {
         this.§5o§ = param1;
      }
      
      public function get borderLeft() : Number
      {
         return this.§=!F§;
      }
      
      public function set borderLeft(param1:Number) : void
      {
         this.§=!F§ = param1;
      }
      
      public function get borderRight() : Number
      {
         return this.§%"X§;
      }
      
      public function set borderRight(param1:Number) : void
      {
         this.§%"X§ = param1;
      }
   }
}
