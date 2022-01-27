package §1z§
{
   import §3>§.§-"8§;
   import §3>§.§]!N§;
   import §3h§.§'`§;
   import §="+§.§&!i§;
   import §="+§.§0E§;
   import §="+§.§]"-§;
   import flash.geom.Point;
   
   public class §2#§
   {
      
      public static const §89§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §9"<§:Number = 0;
      
      protected var §8!r§:Number = -8;
      
      protected var §0!U§:Number = 0.0;
      
      protected var §9!S§:Vector.<§&!i§> = null;
      
      protected var mBirds:Vector.<§]"-§> = null;
      
      protected var §1b§:Vector.<§0E§> = null;
      
      protected var §=N§:Vector.<§5!R§> = null;
      
      public var §!#§:Number = 0;
      
      public var § !b§:Boolean = false;
      
      protected var §3!#§:int = 0;
      
      protected var §2h§:int = 0;
      
      protected var §+"&§:int = 0;
      
      protected var §-9§:String = null;
      
      protected var mName:String = null;
      
      public function §2#§()
      {
         super();
         this.§=N§ = new Vector.<§5!R§>();
         this.§9!S§ = new Vector.<§&!i§>();
         this.mBirds = new Vector.<§]"-§>();
         this.§1b§ = new Vector.<§0E§>();
         this.§-9§ = §89§;
      }
      
      public static function §7!c§(param1:String) : §2#§
      {
         var _loc2_:§2#§ = new §2#§();
         _loc2_.§`"!§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§-"8§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §+3§(param1:String) : §2#§
      {
         var _loc2_:§2#§ = §7!c§(param1);
         _loc2_.§9"<§ = _loc2_.mBirds[0].x;
         _loc2_.§8!r§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§9!S§.length)
         {
            _loc2_.§9!S§[_loc3_].angle = _loc2_.§9!S§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§9!S§.length;
      }
      
      public function get §if §() : int
      {
         return this.§1b§.length;
      }
      
      public function get §7h§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §%e§() : int
      {
         return this.§=N§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§2h§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§2h§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§+"&§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§+"&§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§9"<§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§9"<§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§8!r§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§8!r§ = param1;
      }
      
      public function get §+-§() : Number
      {
         return this.§0!U§;
      }
      
      public function set §+-§(param1:Number) : void
      {
         this.§0!U§ = param1;
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
         return this.§-9§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§-9§ = param1;
      }
      
      public function getEagleScore(param1:§]!N§, param2:int) : int
      {
         var _loc3_:int = this.§8e§(param1,param2);
         var _loc4_:int = this.§,?§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§3!#§)
         {
            return _loc5_;
         }
         if(this.§3!#§ == 0)
         {
            return _loc5_;
         }
         return this.§3!#§;
      }
      
      public function §&!`§(param1:int, param2:§]!N§, param3:int) : void
      {
         var _loc4_:int = this.§8e§(param2,param3);
         var _loc5_:int = this.§,?§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§3!#§ = param1;
      }
      
      public function §`"!§(param1:String) : void
      {
         var _loc4_:§5!R§ = null;
         var _loc5_:Object = null;
         var _loc6_:§]"-§ = null;
         var _loc7_:Object = null;
         var _loc8_:§&!i§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§!#§ = _loc2_.LevelExtension;
         this.§ !b§ = false;
         this.§+"&§ = _loc2_.scoreSilver;
         this.§2h§ = _loc2_.scoreGold;
         this.§3!#§ = _loc2_.scoreEagle;
         this.§-9§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§1b§ = this.§7!s§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§=N§ = new Vector.<§5!R§>();
         this.mBirds = new Vector.<§]"-§>();
         this.§9!S§ = new Vector.<§&!i§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §5!R§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§=N§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §]"-§()).x = _loc5_.x;
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
            (_loc8_ = new §&!i§()).x = _loc7_.x;
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
            this.§9!S§.push(_loc8_);
            _loc3_++;
         }
         this.§9"<§ = _loc2_.slingshotX;
         this.§8!r§ = _loc2_.slingshotY;
      }
      
      public function §0"7§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§!#§;
         _loc1_.scoreSilver = this.§+"&§;
         _loc1_.scoreGold = this.§2h§;
         _loc1_.scoreEagle = this.§3!#§;
         _loc1_.theme = this.§-9§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§=N§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§9!S§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§9!S§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1b§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§1b§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§9!S§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§1b§.length;
         _loc1_.slingshotX = this.§9"<§;
         _loc1_.slingshotY = this.§8!r§;
         return _loc1_;
      }
      
      public function §&!2§() : String
      {
         return JSON.stringify(this.§0"7§());
      }
      
      protected function §7!s§(param1:int, param2:Object) : Vector.<§0E§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§0E§ = null;
         var _loc3_:Vector.<§0E§> = new Vector.<§0E§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §0E§.§?!R§ || _loc5_.type == §0E§.§]!9§)
               {
                  _loc8_ = new §0E§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §0E§.§]!9§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §0E§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §0E§.§^"?§)
               {
                  _loc8_.§#!#§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §8e§(param1:§]!N§, param2:int) : int
      {
         var _loc4_:§&!i§ = null;
         var _loc5_:String = null;
         var _loc6_:§-"8§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§9!S§)
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
      
      protected function calculateSpawnedObjectScores(param1:§]!N§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §,?§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§+! §();
         }
         return 0;
      }
      
      public function §+! §() : int
      {
         return 10000;
      }
      
      public function §&!%§() : XML
      {
         var _loc2_:§5!R§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§!#§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§ !b§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§+"&§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§2h§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§=N§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §'`§.§return§) + "\"></Camera>";
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
         while(_loc3_ < this.§9!S§.length)
         {
            _loc1_ += "<Item id=\"" + this.§9!S§[_loc3_].type + "\" x=\"" + this.§9!S§[_loc3_].x + "\" y=\"" + this.§9!S§[_loc3_].y + "\" rotation=\"" + this.§9!S§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §&!i§
      {
         return this.§9!S§[param1];
      }
      
      public function addObject(param1:§&!i§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§9!S§.push(param1);
      }
      
      public function §[#§(param1:int) : §0E§
      {
         return this.§1b§[param1];
      }
      
      public function §+W§(param1:§0E§) : void
      {
         this.§1b§.push(param1);
      }
      
      public function §<"+§(param1:int) : §]"-§
      {
         return this.mBirds[param1];
      }
      
      public function §="&§(param1:§]"-§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §>"4§() : void
      {
         this.§=N§ = new Vector.<§5!R§>();
      }
      
      public function §@!_§() : void
      {
         this.mBirds = new Vector.<§]"-§>();
      }
      
      public function § !Z§(param1:int) : §5!R§
      {
         return this.§=N§[param1];
      }
      
      public function §case§(param1:§5!R§) : void
      {
         this.§=N§.push(param1);
      }
   }
}
