package §,"v§
{
   import §-#X§.§,!B§;
   import §-#X§.§-!s§;
   import §-#X§.§0!H§;
   import §-#X§.§2"7§;
   import §1#u§.§;"Q§;
   import §2!l§.§4"3§;
   import §6!3§.§;!U§;
   import §?!C§.b2Vec2;
   import §?$<§.§2#W§;
   import §?$<§.§?$>§;
   import flash.geom.Point;
   
   public class §7!J§
   {
      
      public static const §&[§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §4#o§:Number = 0;
      
      protected var §]!2§:Number = -8;
      
      protected var §-#_§:Number = 0.0;
      
      protected var §,N§:Vector.<§,!B§> = null;
      
      protected var mBirds:Vector.<§-!s§> = null;
      
      protected var §&!y§:Vector.<§0!H§> = null;
      
      protected var §7v§:Vector.<§<x§> = null;
      
      public var §!!m§:Number = 0;
      
      public var §6%§:Boolean = false;
      
      protected var §@"H§:int = 0;
      
      protected var §&"Y§:int = 0;
      
      protected var §0#P§:int = 0;
      
      protected var §9$%§:int = 90;
      
      protected var §,"2§:String = null;
      
      protected var §!I§:String = null;
      
      protected var §?!x§:Number = 20;
      
      protected var §,#y§:Number;
      
      protected var §6!o§:Number;
      
      protected var § z§:Number;
      
      protected var §3$?§:Number;
      
      public function §7!J§()
      {
         super();
         this.§7v§ = new Vector.<§<x§>();
         this.§,N§ = new Vector.<§,!B§>();
         this.mBirds = new Vector.<§-!s§>();
         this.§&!y§ = new Vector.<§0!H§>();
         this.§,"2§ = §&[§;
      }
      
      public static function §<%§(param1:String) : §7!J§
      {
         var _loc2_:§7!J§ = new §7!J§();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §4#§(param1:String) : §7!J§
      {
         var _loc2_:§7!J§ = §<%§(param1);
         if(isNaN(_loc2_.§4#o§) && isNaN(_loc2_.§]!2§))
         {
            _loc2_.§4#o§ = _loc2_.mBirds[0].x;
            _loc2_.§]!2§ = _loc2_.mBirds[0].y - 8.5;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§,N§.length)
         {
            _loc2_.§,N§[_loc3_].angle = _loc2_.§,N§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§,N§.length;
      }
      
      public function get §4!L§() : int
      {
         return this.§&!y§.length;
      }
      
      public function get §7!h§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §"$D§() : int
      {
         return this.§7v§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§&"Y§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§&"Y§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§0#P§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§0#P§ = param1;
      }
      
      public function get scoreEagle() : int
      {
         return this.§@"H§;
      }
      
      public function set scoreEagle(param1:int) : void
      {
         this.§@"H§ = param1;
      }
      
      public function get blockDestructionScorePercentage() : int
      {
         return this.§9$%§;
      }
      
      public function set blockDestructionScorePercentage(param1:int) : void
      {
         this.§9$%§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§4#o§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§4#o§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§]!2§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§]!2§ = param1;
      }
      
      public function get §+"y§() : Number
      {
         return this.§-#_§;
      }
      
      public function set §+"y§(param1:Number) : void
      {
         this.§-#_§ = param1;
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function set name(param1:String) : void
      {
         this.§!I§ = param1;
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return this.§?!x§;
      }
      
      public function set worldGravity(param1:Number) : void
      {
         this.§?!x§ = param1;
      }
      
      public function get theme() : String
      {
         return this.§,"2§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§,"2§ = param1;
      }
      
      public function readDataFromJSON(param1:String) : void
      {
         var _loc4_:§<x§ = null;
         var _loc5_:Object = null;
         var _loc6_:§-!s§ = null;
         var _loc7_:Object = null;
         var _loc8_:§,!B§ = null;
         var _loc9_:Vector.<§2"7§> = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:Vector.<§4"3§> = null;
         var _loc13_:int = 0;
         var _loc14_:Object = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§!!m§ = _loc2_.LevelExtension;
         this.§6%§ = false;
         this.scoreSilver = _loc2_.scoreSilver;
         this.scoreGold = _loc2_.scoreGold;
         this.scoreEagle = _loc2_.scoreEagle;
         if(_loc2_.blockDestructionScorePercentage)
         {
            this.blockDestructionScorePercentage = _loc2_.blockDestructionScorePercentage;
         }
         this.§,"2§ = _loc2_.theme;
         this.§!I§ = _loc2_.id;
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
            this.§&!y§ = this.§6!<§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§7v§ = new Vector.<§<x§>();
         this.mBirds = new Vector.<§-!s§>();
         this.§,N§ = new Vector.<§,!B§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §<x§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§7v§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §-!s§()).x = _loc5_.x;
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
            (_loc8_ = new §,!B§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            if(_loc7_.z)
            {
               _loc8_.z = _loc7_.z;
            }
            else
            {
               _loc8_.z = §;!U§.§@#X§;
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
               _loc9_ = new Vector.<§2"7§>();
               _loc10_ = 0;
               while(_loc10_ < _loc7_.behaviors.length)
               {
                  _loc11_ = _loc7_.behaviors[_loc10_];
                  _loc9_.push(new §2"7§(_loc11_.type,_loc11_.name,_loc11_.event));
                  _loc10_++;
               }
               _loc8_.§9"%§(_loc9_);
            }
            if(_loc7_.events)
            {
               _loc12_ = new Vector.<§4"3§>();
               _loc13_ = 0;
               while(_loc13_ < _loc7_.events.length)
               {
                  _loc14_ = _loc7_.events[_loc13_];
                  _loc12_.push(new §4"3§(_loc14_.name,_loc14_.parameters,_loc14_.trigger));
                  _loc13_++;
               }
               _loc8_.§1"&§(_loc12_);
            }
            _loc8_.awake = _loc7_.awake;
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.§,N§.push(_loc8_);
            _loc3_++;
         }
         this.§4#o§ = _loc2_.slingshotX;
         this.§]!2§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§!!m§;
         _loc1_.scoreSilver = this.scoreSilver;
         _loc1_.scoreGold = this.scoreGold;
         _loc1_.scoreEagle = this.scoreEagle;
         _loc1_.worldGravity = this.worldGravity;
         _loc1_.borderTop = this.borderTop;
         _loc1_.borderGround = this.borderGround;
         _loc1_.borderLeft = this.borderLeft;
         _loc1_.borderRight = this.borderRight;
         _loc1_.theme = this.§,"2§;
         _loc1_.name = this.§!I§;
         _loc1_.blockDestructionScorePercentage = this.blockDestructionScorePercentage;
         _loc1_.camera = this.§7v§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,N§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§,N§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&!y§.length)
         {
            _loc3_ = this.§&!y§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§,V§(_loc3_.index1);
            _loc3_.index2 = this.§,V§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§,N§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§&!y§.length;
         _loc1_.slingshotX = this.§4#o§;
         _loc1_.slingshotY = this.§]!2§;
         return _loc1_;
      }
      
      protected function §,V§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,N§.length)
         {
            if(this.§,N§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §`r§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §6!<§(param1:int, param2:Object) : Vector.<§0!H§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§0!H§ = null;
         var _loc3_:Vector.<§0!H§> = new Vector.<§0!H§>();
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
               if(_loc5_.type == §0!H§.§9"V§ || _loc5_.type == §0!H§.§in§)
               {
                  _loc10_ = new §0!H§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
                  if(_loc5_.type == §0!H§.§in§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §0!H§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce,_loc5_.isOneWayDestroyed);
               }
               if(_loc5_.type == §0!H§.§7$'§)
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
      
      public function §="?§(param1:§2#W§) : int
      {
         var _loc3_:§,!B§ = null;
         var _loc4_:String = null;
         var _loc5_:§?$>§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§,N§)
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
      
      public function §"#y§(param1:§2#W§) : int
      {
         var _loc3_:§,!B§ = null;
         var _loc4_:String = null;
         var _loc5_:§?$>§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in this.§,N§)
         {
            _loc4_ = _loc3_.type;
            if(!((_loc5_ = param1.getItem(_loc4_)) == null || _loc5_.itemType == §?$>§.§1!f§))
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
      
      public function §3!R§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§9b§();
         }
         return 0;
      }
      
      private function §9b§() : int
      {
         return 10000;
      }
      
      public function §]"#§() : XML
      {
         var _loc2_:§<x§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§!!m§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§6%§ + "\"";
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
         for each(_loc2_ in this.§7v§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §;"Q§.§`"N§) + "\"></Camera>";
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
         while(_loc3_ < this.§,N§.length)
         {
            _loc1_ += "<Item id=\"" + this.§,N§[_loc3_].type + "\" x=\"" + this.§,N§[_loc3_].x + "\" y=\"" + this.§,N§[_loc3_].y + "\" z=\"" + this.§,N§[_loc3_].z + "\" rotation=\"" + this.§,N§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §,!B§
      {
         return this.§,N§[param1];
      }
      
      public function addObject(param1:§,!B§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§,N§.push(param1);
      }
      
      public function §;#n§(param1:int) : §0!H§
      {
         return this.§&!y§[param1];
      }
      
      public function §9!2§(param1:§0!H§) : void
      {
         this.§&!y§.push(param1);
      }
      
      public function §-!+§(param1:int) : §-!s§
      {
         return this.mBirds[param1];
      }
      
      public function §&!t§(param1:§-!s§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §'1§() : void
      {
         this.§7v§ = new Vector.<§<x§>();
      }
      
      public function §==§() : void
      {
         this.mBirds = new Vector.<§-!s§>();
      }
      
      public function §1d§(param1:int) : §<x§
      {
         return this.§7v§[param1];
      }
      
      public function §="%§(param1:§<x§) : void
      {
         this.§7v§.push(param1);
      }
      
      public function get borderTop() : Number
      {
         return this.§,#y§;
      }
      
      public function set borderTop(param1:Number) : void
      {
         this.§,#y§ = param1;
      }
      
      public function get borderGround() : Number
      {
         return this.§6!o§;
      }
      
      public function set borderGround(param1:Number) : void
      {
         this.§6!o§ = param1;
      }
      
      public function get borderLeft() : Number
      {
         return this.§ z§;
      }
      
      public function set borderLeft(param1:Number) : void
      {
         this.§ z§ = param1;
      }
      
      public function get borderRight() : Number
      {
         return this.§3$?§;
      }
      
      public function set borderRight(param1:Number) : void
      {
         this.§3$?§ = param1;
      }
   }
}
