package §8!K§
{
   import §&v§.§#!R§;
   import §&v§.§9B§;
   import §+!!§.§5"+§;
   import §?s§.§%!%§;
   import §?s§.§8K§;
   import §?s§.§^!n§;
   import flash.geom.Point;
   
   public class §5!0§
   {
      
      public static const §`<§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §0!u§:Number = 0;
      
      protected var §%k§:Number = -8;
      
      protected var §!#§:Number = 0.0;
      
      protected var §2!z§:Vector.<§8K§> = null;
      
      protected var §06§:Vector.<§^!n§> = null;
      
      protected var §+!y§:Vector.<§%!%§> = null;
      
      protected var §9! §:Vector.<§1!R§> = null;
      
      public var §8!i§:Number = 0;
      
      public var §%""§:Boolean = false;
      
      protected var §5![§:int = 0;
      
      protected var §91§:int = 0;
      
      protected var §8!z§:int = 0;
      
      protected var §^",§:String = null;
      
      protected var mName:String = null;
      
      public function §5!0§()
      {
         super();
         this.§9! § = new Vector.<§1!R§>();
         this.§2!z§ = new Vector.<§8K§>();
         this.§06§ = new Vector.<§^!n§>();
         this.§+!y§ = new Vector.<§%!%§>();
         this.§^",§ = §`<§;
      }
      
      public static function §6k§(param1:String) : §5!0§
      {
         var _loc2_:§5!0§ = new §5!0§();
         _loc2_.§[U§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§9B§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §'!&§(param1:String) : §5!0§
      {
         var _loc2_:§5!0§ = §6k§(param1);
         _loc2_.§0!u§ = _loc2_.§06§[0].x;
         _loc2_.§%k§ = _loc2_.§06§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§2!z§.length)
         {
            _loc2_.§2!z§[_loc3_].angle = _loc2_.§2!z§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§2!z§.length;
      }
      
      public function get §use§() : int
      {
         return this.§+!y§.length;
      }
      
      public function get §1t§() : int
      {
         return this.§06§.length;
      }
      
      public function get §^!U§() : int
      {
         return this.§9! §.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§91§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§91§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§8!z§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§8!z§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§0!u§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§0!u§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§%k§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§%k§ = param1;
      }
      
      public function get §6C§() : Number
      {
         return this.§!#§;
      }
      
      public function set §6C§(param1:Number) : void
      {
         this.§!#§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §0!E§() : Boolean
      {
         return true;
      }
      
      public function get §2!@§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§^",§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§^",§ = param1;
      }
      
      public function getEagleScore(param1:§#!R§, param2:int) : int
      {
         var _loc3_:int = this.§&!2§(param1,param2);
         var _loc4_:int = this.§8!q§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§5![§)
         {
            return _loc5_;
         }
         if(this.§5![§ == 0)
         {
            return _loc5_;
         }
         return this.§5![§;
      }
      
      public function §]!]§(param1:int, param2:§#!R§, param3:int) : void
      {
         var _loc4_:int = this.§&!2§(param2,param3);
         var _loc5_:int = this.§8!q§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§5![§ = param1;
      }
      
      public function §[U§(param1:String) : void
      {
         var _loc4_:§1!R§ = null;
         var _loc5_:Object = null;
         var _loc6_:§^!n§ = null;
         var _loc7_:Object = null;
         var _loc8_:§8K§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§8!i§ = _loc2_.LevelExtension;
         this.§%""§ = false;
         this.§8!z§ = _loc2_.scoreSilver;
         this.§91§ = _loc2_.scoreGold;
         this.§5![§ = _loc2_.scoreEagle;
         this.§^",§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§+!y§ = this.§`v§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§9! § = new Vector.<§1!R§>();
         this.§06§ = new Vector.<§^!n§>();
         this.§2!z§ = new Vector.<§8K§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §1!R§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§9! §.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §^!n§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§06§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §8K§()).x = _loc7_.x;
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
            this.§2!z§.push(_loc8_);
            _loc3_++;
         }
         this.§0!u§ = _loc2_.slingshotX;
         this.§%k§ = _loc2_.slingshotY;
      }
      
      public function §1!I§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§8!i§;
         _loc1_.scoreSilver = this.§8!z§;
         _loc1_.scoreGold = this.§91§;
         _loc1_.scoreEagle = this.§5![§;
         _loc1_.theme = this.§^",§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§9! §;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§06§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§06§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2!z§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§2!z§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§+!y§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§+!y§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§2!z§.length;
         _loc1_.counts.birds = this.§06§.length;
         _loc1_.counts.joints = this.§+!y§.length;
         _loc1_.slingshotX = this.§0!u§;
         _loc1_.slingshotY = this.§%k§;
         return _loc1_;
      }
      
      public function §6z§() : String
      {
         return JSON.stringify(this.§1!I§());
      }
      
      protected function §`v§(param1:int, param2:Object) : Vector.<§%!%§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§%!%§ = null;
         var _loc3_:Vector.<§%!%§> = new Vector.<§%!%§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §%!%§.§!!C§ || _loc5_.type == §%!%§.§^§)
               {
                  _loc8_ = new §%!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                  if(_loc5_.type == §%!%§.§^§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §%!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
               }
               if(_loc5_.type == §%!%§.§`!b§)
               {
                  _loc8_.§03§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §&!2§(param1:§#!R§, param2:int) : int
      {
         var _loc4_:§8K§ = null;
         var _loc5_:String = null;
         var _loc6_:§9B§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§2!z§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.§"!?§(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.§"!?§(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§8y§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §8y§(param1:§#!R§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §8!q§() : int
      {
         if(this.§06§)
         {
            return this.§06§.length * this.§9g§();
         }
         return 0;
      }
      
      public function §9g§() : int
      {
         return 10000;
      }
      
      public function §4G§() : XML
      {
         var _loc2_:§1!R§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§8!i§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§%""§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§8!z§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§91§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§9! §)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §5"+§.§<!V§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§06§[0].x + "\" y=\"" + (this.§06§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§06§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§06§[_loc3_].type + "\" x=\"" + this.§06§[_loc3_].x + "\" y=\"" + this.§06§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§2!z§.length)
         {
            _loc1_ += "<Item id=\"" + this.§2!z§[_loc3_].type + "\" x=\"" + this.§2!z§[_loc3_].x + "\" y=\"" + this.§2!z§[_loc3_].y + "\" rotation=\"" + this.§2!z§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §8K§
      {
         return this.§2!z§[param1];
      }
      
      public function §,]§(param1:§8K§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§2!z§.push(param1);
      }
      
      public function §%!m§(param1:int) : §%!%§
      {
         return this.§+!y§[param1];
      }
      
      public function §[!7§(param1:§%!%§) : void
      {
         this.§+!y§.push(param1);
      }
      
      public function §-!Y§(param1:int) : §^!n§
      {
         return this.§06§[param1];
      }
      
      public function §44§(param1:§^!n§) : void
      {
         this.§06§.push(param1);
      }
      
      public function §'!1§() : void
      {
         this.§9! § = new Vector.<§1!R§>();
      }
      
      public function §`"&§() : void
      {
         this.§06§ = new Vector.<§^!n§>();
      }
      
      public function §8!W§(param1:int) : §1!R§
      {
         return this.§9! §[param1];
      }
      
      public function §7!x§(param1:§1!R§) : void
      {
         this.§9! §.push(param1);
      }
   }
}
