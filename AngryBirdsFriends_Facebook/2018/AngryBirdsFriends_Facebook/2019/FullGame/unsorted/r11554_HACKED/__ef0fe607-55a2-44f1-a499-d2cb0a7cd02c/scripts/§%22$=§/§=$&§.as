package §"$=§
{
   import §%_§.§;l§;
   import §-!!§.§8"J§;
   import §-"i§.§+!7§;
   import §9$+§.§5t§;
   import §9$+§.§9"4§;
   import §9$+§.§<$<§;
   import §9$+§.§=!E§;
   import §?§.§,Y§;
   import §?§.§<"J§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §=$&§
   {
      
      public static const §2"f§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §#!,§:Number = 0;
      
      protected var §0##§:Number = -8;
      
      protected var §<l§:Number = 0.0;
      
      protected var §3#$§:Vector.<§9"4§> = null;
      
      protected var mBirds:Vector.<§=!E§> = null;
      
      protected var § t§:Vector.<§5t§> = null;
      
      protected var §3#L§:Vector.<§5#v§> = null;
      
      public var §1#n§:Number = 0;
      
      public var §!$8§:Boolean = false;
      
      protected var §]#R§:int = 0;
      
      protected var §`a§:int = 0;
      
      protected var §4"N§:int = 0;
      
      protected var §0#@§:int = 90;
      
      protected var §3A§:String = null;
      
      protected var §-!O§:String = null;
      
      protected var §,#J§:Number = 20;
      
      protected var §[#f§:Number;
      
      protected var §^!i§:Number;
      
      protected var §4!3§:Number;
      
      protected var §0"[§:Number;
      
      public function §=$&§()
      {
         super();
         this.§3#L§ = new Vector.<§5#v§>();
         this.§3#$§ = new Vector.<§9"4§>();
         this.mBirds = new Vector.<§=!E§>();
         this.§ t§ = new Vector.<§5t§>();
         this.§3A§ = §2"f§;
      }
      
      public static function §,#2§(param1:String) : §=$&§
      {
         var _loc2_:§=$&§ = new §=$&§();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §4g§(param1:String) : §=$&§
      {
         var _loc2_:§=$&§ = §,#2§(param1);
         if(isNaN(_loc2_.§#!,§) && isNaN(_loc2_.§0##§))
         {
            _loc2_.§#!,§ = _loc2_.mBirds[0].x;
            _loc2_.§0##§ = _loc2_.mBirds[0].y - 8.5;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§3#$§.length)
         {
            _loc2_.§3#$§[_loc3_].angle = _loc2_.§3#$§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§3#$§.length;
      }
      
      public function get §try§() : int
      {
         return this.§ t§.length;
      }
      
      public function get §0?§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §^l§() : int
      {
         return this.§3#L§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§`a§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§`a§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§4"N§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§4"N§ = param1;
      }
      
      public function get scoreEagle() : int
      {
         return this.§]#R§;
      }
      
      public function set scoreEagle(param1:int) : void
      {
         this.§]#R§ = param1;
      }
      
      public function get blockDestructionScorePercentage() : int
      {
         return this.§0#@§;
      }
      
      public function set blockDestructionScorePercentage(param1:int) : void
      {
         this.§0#@§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§#!,§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§#!,§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§0##§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§0##§ = param1;
      }
      
      public function get §+7§() : Number
      {
         return this.§<l§;
      }
      
      public function set §+7§(param1:Number) : void
      {
         this.§<l§ = param1;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function set name(param1:String) : void
      {
         this.§-!O§ = param1;
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return this.§,#J§;
      }
      
      public function set worldGravity(param1:Number) : void
      {
         this.§,#J§ = param1;
      }
      
      public function get theme() : String
      {
         return this.§3A§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§3A§ = param1;
      }
      
      public function readDataFromJSON(param1:String) : void
      {
         var _loc4_:§5#v§ = null;
         var _loc5_:Object = null;
         var _loc6_:§=!E§ = null;
         var _loc7_:Object = null;
         var _loc8_:§9"4§ = null;
         var _loc9_:Vector.<§<$<§> = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:Vector.<§+!7§> = null;
         var _loc13_:int = 0;
         var _loc14_:Object = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§1#n§ = _loc2_.LevelExtension;
         this.§!$8§ = false;
         this.scoreSilver = _loc2_.scoreSilver;
         this.scoreGold = _loc2_.scoreGold;
         this.scoreEagle = _loc2_.scoreEagle;
         if(_loc2_.blockDestructionScorePercentage)
         {
            this.blockDestructionScorePercentage = _loc2_.blockDestructionScorePercentage;
         }
         this.§3A§ = _loc2_.theme;
         this.§-!O§ = _loc2_.id;
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
            this.§ t§ = this.§&k§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§3#L§ = new Vector.<§5#v§>();
         this.mBirds = new Vector.<§=!E§>();
         this.§3#$§ = new Vector.<§9"4§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §5#v§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§3#L§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §=!E§()).x = _loc5_.x;
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
            (_loc8_ = new §9"4§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            if(_loc7_.z)
            {
               _loc8_.z = _loc7_.z;
            }
            else
            {
               _loc8_.z = §8"J§.§9$9§;
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
               _loc9_ = new Vector.<§<$<§>();
               _loc10_ = 0;
               while(_loc10_ < _loc7_.behaviors.length)
               {
                  _loc11_ = _loc7_.behaviors[_loc10_];
                  _loc9_.push(new §<$<§(_loc11_.type,_loc11_.name,_loc11_.event));
                  _loc10_++;
               }
               _loc8_.§-#P§(_loc9_);
            }
            if(_loc7_.events)
            {
               _loc12_ = new Vector.<§+!7§>();
               _loc13_ = 0;
               while(_loc13_ < _loc7_.events.length)
               {
                  _loc14_ = _loc7_.events[_loc13_];
                  _loc12_.push(new §+!7§(_loc14_.name,_loc14_.parameters,_loc14_.trigger));
                  _loc13_++;
               }
               _loc8_.§!8§(_loc12_);
            }
            _loc8_.awake = _loc7_.awake;
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.§3#$§.push(_loc8_);
            _loc3_++;
         }
         this.§#!,§ = _loc2_.slingshotX;
         this.§0##§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§1#n§;
         _loc1_.scoreSilver = this.scoreSilver;
         _loc1_.scoreGold = this.scoreGold;
         _loc1_.scoreEagle = this.scoreEagle;
         _loc1_.worldGravity = this.worldGravity;
         _loc1_.borderTop = this.borderTop;
         _loc1_.borderGround = this.borderGround;
         _loc1_.borderLeft = this.borderLeft;
         _loc1_.borderRight = this.borderRight;
         _loc1_.theme = this.§3A§;
         _loc1_.name = this.§-!O§;
         _loc1_.blockDestructionScorePercentage = this.blockDestructionScorePercentage;
         _loc1_.camera = this.§3#L§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§3#$§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§3#$§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ t§.length)
         {
            _loc3_ = this.§ t§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§,#e§(_loc3_.index1);
            _loc3_.index2 = this.§,#e§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§3#$§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§ t§.length;
         _loc1_.slingshotX = this.§#!,§;
         _loc1_.slingshotY = this.§0##§;
         return _loc1_;
      }
      
      protected function §,#e§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3#$§.length)
         {
            if(this.§3#$§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §6!N§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §&k§(param1:int, param2:Object) : Vector.<§5t§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§5t§ = null;
         var _loc3_:Vector.<§5t§> = new Vector.<§5t§>();
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
               if(_loc5_.type == §5t§.§0#i§ || _loc5_.type == §5t§.§<#b§)
               {
                  _loc10_ = new §5t§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
                  if(_loc5_.type == §5t§.§<#b§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §5t§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
               }
               if(_loc5_.type == §5t§.§;!H§)
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
      
      public function §"",§(param1:§<"J§) : int
      {
         var _loc3_:§9"4§ = null;
         var _loc4_:String = null;
         var _loc5_:§,Y§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§3#$§)
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
      
      public function §-!f§(param1:§<"J§) : int
      {
         var _loc3_:§9"4§ = null;
         var _loc4_:String = null;
         var _loc5_:§,Y§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§3#$§)
         {
            _loc4_ = _loc3_.type;
            if(!((_loc5_ = param1.getItem(_loc4_)) == null || _loc5_.itemType == §,Y§.§^O§))
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
      
      public function §0"1§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§##k§();
         }
         return 0;
      }
      
      private function §##k§() : int
      {
         return 10000;
      }
      
      public function §=o§() : XML
      {
         var _loc2_:§5#v§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§1#n§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§!$8§ + "\"";
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
         for each(_loc2_ in this.§3#L§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §;l§.§;#2§) + "\"></Camera>";
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
         while(_loc3_ < this.§3#$§.length)
         {
            _loc1_ += "<Item id=\"" + this.§3#$§[_loc3_].type + "\" x=\"" + this.§3#$§[_loc3_].x + "\" y=\"" + this.§3#$§[_loc3_].y + "\" z=\"" + this.§3#$§[_loc3_].z + "\" rotation=\"" + this.§3#$§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §9"4§
      {
         return this.§3#$§[param1];
      }
      
      public function addObject(param1:§9"4§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§3#$§.push(param1);
      }
      
      public function §=-§(param1:int) : §5t§
      {
         return this.§ t§[param1];
      }
      
      public function §="<§(param1:§5t§) : void
      {
         this.§ t§.push(param1);
      }
      
      public function §,0§(param1:int) : §=!E§
      {
         return this.mBirds[param1];
      }
      
      public function §-P§(param1:§=!E§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §@"s§() : void
      {
         this.§3#L§ = new Vector.<§5#v§>();
      }
      
      public function §5#0§() : void
      {
         this.mBirds = new Vector.<§=!E§>();
      }
      
      public function §3#@§(param1:int) : §5#v§
      {
         return this.§3#L§[param1];
      }
      
      public function §'§(param1:§5#v§) : void
      {
         this.§3#L§.push(param1);
      }
      
      public function get borderTop() : Number
      {
         return this.§[#f§;
      }
      
      public function set borderTop(param1:Number) : void
      {
         this.§[#f§ = param1;
      }
      
      public function get borderGround() : Number
      {
         return this.§^!i§;
      }
      
      public function set borderGround(param1:Number) : void
      {
         this.§^!i§ = param1;
      }
      
      public function get borderLeft() : Number
      {
         return this.§4!3§;
      }
      
      public function set borderLeft(param1:Number) : void
      {
         this.§4!3§ = param1;
      }
      
      public function get borderRight() : Number
      {
         return this.§0"[§;
      }
      
      public function set borderRight(param1:Number) : void
      {
         this.§0"[§ = param1;
      }
   }
}
