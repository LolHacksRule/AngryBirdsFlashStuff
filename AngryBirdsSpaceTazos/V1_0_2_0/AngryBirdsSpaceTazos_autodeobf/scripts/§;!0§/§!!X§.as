package §;!0§
{
   import §;"=§.§3"=§;
   import §;"=§.§]"<§;
   import §[!v§.§!e§;
   import §[!v§.§5!-§;
   import §[!v§.§9c§;
   import §[r§.§ use§;
   import flash.geom.Point;
   
   public class §!!X§
   {
      
      public static const §7!y§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §%S§:Number = 0;
      
      protected var §%f§:Number = -8;
      
      protected var §4!F§:Number = 0.0;
      
      protected var §0Y§:Vector.<§!e§> = null;
      
      protected var mBirds:Vector.<§9c§> = null;
      
      protected var §>T§:Vector.<§5!-§> = null;
      
      protected var §-!+§:Vector.<§2!4§> = null;
      
      public var §!@§:Number = 0;
      
      public var §<!p§:Boolean = false;
      
      protected var §8"=§:int = 0;
      
      protected var §2!^§:int = 0;
      
      protected var §-"8§:int = 0;
      
      protected var §`!G§:String = null;
      
      protected var mName:String = null;
      
      public function §!!X§()
      {
         super();
         this.§-!+§ = new Vector.<§2!4§>();
         this.§0Y§ = new Vector.<§!e§>();
         this.mBirds = new Vector.<§9c§>();
         this.§>T§ = new Vector.<§5!-§>();
         this.§`!G§ = §7!y§;
      }
      
      public static function §<I§(param1:String) : §!!X§
      {
         var _loc2_:§!!X§ = new §!!X§();
         _loc2_.§4![§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§]"<§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §+n§(param1:String) : §!!X§
      {
         var _loc2_:§!!X§ = §<I§(param1);
         _loc2_.§%S§ = _loc2_.mBirds[0].x;
         _loc2_.§%f§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§0Y§.length)
         {
            _loc2_.§0Y§[_loc3_].angle = _loc2_.§0Y§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§0Y§.length;
      }
      
      public function get §"!a§() : int
      {
         return this.§>T§.length;
      }
      
      public function get §`C§() : int
      {
         return this.mBirds.length;
      }
      
      public function get § +§() : int
      {
         return this.§-!+§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§2!^§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§2!^§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§-"8§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§-"8§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§%S§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§%S§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§%f§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§%f§ = param1;
      }
      
      public function get §[<§() : Number
      {
         return this.§4!F§;
      }
      
      public function set §[<§(param1:Number) : void
      {
         this.§4!F§ = param1;
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
         return this.§`!G§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§`!G§ = param1;
      }
      
      public function getEagleScore(param1:§3"=§, param2:int) : int
      {
         var _loc3_:int = this.§3!?§(param1,param2);
         var _loc4_:int = this.§5d§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§8"=§)
         {
            return _loc5_;
         }
         if(this.§8"=§ == 0)
         {
            return _loc5_;
         }
         return this.§8"=§;
      }
      
      public function §?"9§(param1:int, param2:§3"=§, param3:int) : void
      {
         var _loc4_:int = this.§3!?§(param2,param3);
         var _loc5_:int = this.§5d§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§8"=§ = param1;
      }
      
      public function §4![§(param1:String) : void
      {
         var _loc4_:§2!4§ = null;
         var _loc5_:Object = null;
         var _loc6_:§9c§ = null;
         var _loc7_:Object = null;
         var _loc8_:§!e§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§!@§ = _loc2_.LevelExtension;
         this.§<!p§ = false;
         this.§-"8§ = _loc2_.scoreSilver;
         this.§2!^§ = _loc2_.scoreGold;
         this.§8"=§ = _loc2_.scoreEagle;
         this.§`!G§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§>T§ = this.§@!3§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§-!+§ = new Vector.<§2!4§>();
         this.mBirds = new Vector.<§9c§>();
         this.§0Y§ = new Vector.<§!e§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §2!4§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§-!+§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §9c§()).x = _loc5_.x;
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
            (_loc8_ = new §!e§()).x = _loc7_.x;
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
            this.§0Y§.push(_loc8_);
            _loc3_++;
         }
         this.§%S§ = _loc2_.slingshotX;
         this.§%f§ = _loc2_.slingshotY;
      }
      
      public function §5!W§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§!@§;
         _loc1_.scoreSilver = this.§-"8§;
         _loc1_.scoreGold = this.§2!^§;
         _loc1_.scoreEagle = this.§8"=§;
         _loc1_.theme = this.§`!G§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§-!+§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0Y§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§0Y§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§>T§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§>T§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§0Y§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§>T§.length;
         _loc1_.slingshotX = this.§%S§;
         _loc1_.slingshotY = this.§%f§;
         return _loc1_;
      }
      
      public function §7!<§() : String
      {
         return JSON.stringify(this.§5!W§());
      }
      
      protected function §@!3§(param1:int, param2:Object) : Vector.<§5!-§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§5!-§ = null;
         var _loc3_:Vector.<§5!-§> = new Vector.<§5!-§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §5!-§.§,V§ || _loc5_.type == §5!-§.§<F§)
               {
                  _loc8_ = new §5!-§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §5!-§.§<F§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §5!-§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §5!-§.§9y§)
               {
                  _loc8_.§?!=§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §3!?§(param1:§3"=§, param2:int) : int
      {
         var _loc4_:§!e§ = null;
         var _loc5_:String = null;
         var _loc6_:§]"<§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§0Y§)
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
      
      protected function calculateSpawnedObjectScores(param1:§3"=§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §5d§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§'!`§();
         }
         return 0;
      }
      
      public function §'!`§() : int
      {
         return 10000;
      }
      
      public function §=!l§() : XML
      {
         var _loc2_:§2!4§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§!@§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§<!p§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§-"8§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§2!^§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§-!+§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + § use§.§2H§) + "\"></Camera>";
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
         while(_loc3_ < this.§0Y§.length)
         {
            _loc1_ += "<Item id=\"" + this.§0Y§[_loc3_].type + "\" x=\"" + this.§0Y§[_loc3_].x + "\" y=\"" + this.§0Y§[_loc3_].y + "\" rotation=\"" + this.§0Y§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §!e§
      {
         return this.§0Y§[param1];
      }
      
      public function addObject(param1:§!e§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§0Y§.push(param1);
      }
      
      public function §1"-§(param1:int) : §5!-§
      {
         return this.§>T§[param1];
      }
      
      public function §5!$§(param1:§5!-§) : void
      {
         this.§>T§.push(param1);
      }
      
      public function §3u§(param1:int) : §9c§
      {
         return this.mBirds[param1];
      }
      
      public function §[!a§(param1:§9c§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §<"$§() : void
      {
         this.§-!+§ = new Vector.<§2!4§>();
      }
      
      public function § !D§() : void
      {
         this.mBirds = new Vector.<§9c§>();
      }
      
      public function §4"!§(param1:int) : §2!4§
      {
         return this.§-!+§[param1];
      }
      
      public function §^!'§(param1:§2!4§) : void
      {
         this.§-!+§.push(param1);
      }
   }
}
