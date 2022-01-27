package §4",§
{
   import §&!3§.§0!W§;
   import §5!<§.§0"!§;
   import §5!<§.§2"%§;
   import §5!<§.§5!l§;
   import §6!M§.§8"3§;
   import §6!M§.§<!r§;
   import flash.geom.Point;
   
   public class §3v§
   {
      
      public static const §8",§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §0^§:Number = 0;
      
      protected var §#"7§:Number = -8;
      
      protected var §]!'§:Number = 0.0;
      
      protected var §%!§:Vector.<§5!l§> = null;
      
      protected var mBirds:Vector.<§2"%§> = null;
      
      protected var §9!2§:Vector.<§0"!§> = null;
      
      protected var §>J§:Vector.<§8"6§> = null;
      
      public var §>"F§:Number = 0;
      
      public var §+!4§:Boolean = false;
      
      protected var §7A§:int = 0;
      
      protected var §-!v§:int = 0;
      
      protected var §0!x§:int = 0;
      
      protected var §7"<§:String = null;
      
      protected var mName:String = null;
      
      public function §3v§()
      {
         super();
         this.§>J§ = new Vector.<§8"6§>();
         this.§%!§ = new Vector.<§5!l§>();
         this.mBirds = new Vector.<§2"%§>();
         this.§9!2§ = new Vector.<§0"!§>();
         this.§7"<§ = §8",§;
      }
      
      public static function § !B§(param1:String) : §3v§
      {
         var _loc2_:§3v§ = new §3v§();
         _loc2_.§04§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§<!r§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §!!E§(param1:String) : §3v§
      {
         var _loc2_:§3v§ = § !B§(param1);
         _loc2_.§0^§ = _loc2_.mBirds[0].x;
         _loc2_.§#"7§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§%!§.length)
         {
            _loc2_.§%!§[_loc3_].angle = _loc2_.§%!§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§%!§.length;
      }
      
      public function get §1"9§() : int
      {
         return this.§9!2§.length;
      }
      
      public function get §?!a§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §#!I§() : int
      {
         return this.§>J§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§-!v§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§-!v§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§0!x§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§0!x§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§0^§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§0^§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§#"7§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§#"7§ = param1;
      }
      
      public function get §>!h§() : Number
      {
         return this.§]!'§;
      }
      
      public function set §>!h§(param1:Number) : void
      {
         this.§]!'§ = param1;
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
         return this.§7"<§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§7"<§ = param1;
      }
      
      public function getEagleScore(param1:§8"3§, param2:int) : int
      {
         var _loc3_:int = this.§=!q§(param1,param2);
         var _loc4_:int = this.§&!>§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§7A§)
         {
            return _loc5_;
         }
         if(this.§7A§ == 0)
         {
            return _loc5_;
         }
         return this.§7A§;
      }
      
      public function § '§(param1:int, param2:§8"3§, param3:int) : void
      {
         var _loc4_:int = this.§=!q§(param2,param3);
         var _loc5_:int = this.§&!>§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§7A§ = param1;
      }
      
      public function §04§(param1:String) : void
      {
         var _loc4_:§8"6§ = null;
         var _loc5_:Object = null;
         var _loc6_:§2"%§ = null;
         var _loc7_:Object = null;
         var _loc8_:§5!l§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§>"F§ = _loc2_.LevelExtension;
         this.§+!4§ = false;
         this.§0!x§ = _loc2_.scoreSilver;
         this.§-!v§ = _loc2_.scoreGold;
         this.§7A§ = _loc2_.scoreEagle;
         this.§7"<§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§9!2§ = this.§6!N§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§>J§ = new Vector.<§8"6§>();
         this.mBirds = new Vector.<§2"%§>();
         this.§%!§ = new Vector.<§5!l§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §8"6§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§>J§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §2"%§()).x = _loc5_.x;
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
            (_loc8_ = new §5!l§()).x = _loc7_.x;
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
            this.§%!§.push(_loc8_);
            _loc3_++;
         }
         this.§0^§ = _loc2_.slingshotX;
         this.§#"7§ = _loc2_.slingshotY;
      }
      
      public function §0!+§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§>"F§;
         _loc1_.scoreSilver = this.§0!x§;
         _loc1_.scoreGold = this.§-!v§;
         _loc1_.scoreEagle = this.§7A§;
         _loc1_.theme = this.§7"<§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§>J§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%!§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§%!§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§9!2§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§9!2§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§%!§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§9!2§.length;
         _loc1_.slingshotX = this.§0^§;
         _loc1_.slingshotY = this.§#"7§;
         return _loc1_;
      }
      
      public function §^!S§() : String
      {
         return JSON.stringify(this.§0!+§());
      }
      
      protected function §6!N§(param1:int, param2:Object) : Vector.<§0"!§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§0"!§ = null;
         var _loc3_:Vector.<§0"!§> = new Vector.<§0"!§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §0"!§.§3!'§ || _loc5_.type == §0"!§.§2J§)
               {
                  _loc8_ = new §0"!§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §0"!§.§2J§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §0"!§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §0"!§.§3!]§)
               {
                  _loc8_.§4!N§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §=!q§(param1:§8"3§, param2:int) : int
      {
         var _loc4_:§5!l§ = null;
         var _loc5_:String = null;
         var _loc6_:§<!r§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§%!§)
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
      
      protected function calculateSpawnedObjectScores(param1:§8"3§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §&!>§() : int
      {
         if(this.mBirds)
         {
            return this.mBirds.length * this.§!!c§();
         }
         return 0;
      }
      
      public function §!!c§() : int
      {
         return 10000;
      }
      
      public function §3n§() : XML
      {
         var _loc2_:§8"6§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§>"F§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§+!4§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§0!x§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§-!v§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§>J§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §0!W§.§,M§) + "\"></Camera>";
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
         while(_loc3_ < this.§%!§.length)
         {
            _loc1_ += "<Item id=\"" + this.§%!§[_loc3_].type + "\" x=\"" + this.§%!§[_loc3_].x + "\" y=\"" + this.§%!§[_loc3_].y + "\" rotation=\"" + this.§%!§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §5!l§
      {
         return this.§%!§[param1];
      }
      
      public function addObject(param1:§5!l§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§%!§.push(param1);
      }
      
      public function §7!&§(param1:int) : §0"!§
      {
         return this.§9!2§[param1];
      }
      
      public function §&"#§(param1:§0"!§) : void
      {
         this.§9!2§.push(param1);
      }
      
      public function §2"!§(param1:int) : §2"%§
      {
         return this.mBirds[param1];
      }
      
      public function §>!0§(param1:§2"%§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §<"1§() : void
      {
         this.§>J§ = new Vector.<§8"6§>();
      }
      
      public function §@"%§() : void
      {
         this.mBirds = new Vector.<§2"%§>();
      }
      
      public function §&$§(param1:int) : §8"6§
      {
         return this.§>J§[param1];
      }
      
      public function §#!f§(param1:§8"6§) : void
      {
         this.§>J§.push(param1);
      }
   }
}
