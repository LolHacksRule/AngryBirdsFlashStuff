package
{
   import §-'§.§ i§;
   import §2!s§.§!e§;
   import §2!s§.§0l§;
   import §8+§.§0"$§;
   import §8+§.§2>§;
   import §8+§.§5"-§;
   import flash.geom.Point;
   
   public class §[d§
   {
      
      public static const §"7§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §&!x§:Number = 0;
      
      protected var §4!H§:Number = -8;
      
      protected var §,"&§:Number = 0.0;
      
      protected var §2"3§:Vector.<§5"-§> = null;
      
      protected var §--§:Vector.<§0"$§> = null;
      
      protected var §46§:Vector.<§2>§> = null;
      
      protected var §=!b§:Vector.<§3!?§> = null;
      
      public var §[Z§:Number = 0;
      
      public var §@c§:Boolean = false;
      
      protected var §9p§:int = 0;
      
      protected var §<b§:int = 0;
      
      protected var § U§:int = 0;
      
      protected var §?!b§:String = null;
      
      protected var mName:String = null;
      
      public function §[d§()
      {
         super();
         this.§=!b§ = new Vector.<§3!?§>();
         this.§2"3§ = new Vector.<§5"-§>();
         this.§--§ = new Vector.<§0"$§>();
         this.§46§ = new Vector.<§2>§>();
         this.§?!b§ = §"7§;
      }
      
      public static function §7!C§(param1:String) : §[d§
      {
         var _loc2_:§[d§ = new §[d§();
         _loc2_.§?!H§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§!e§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §!!i§(param1:String) : §[d§
      {
         var _loc2_:§[d§ = §7!C§(param1);
         _loc2_.§&!x§ = _loc2_.§--§[0].x;
         _loc2_.§4!H§ = _loc2_.§--§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§2"3§.length)
         {
            _loc2_.§2"3§[_loc3_].angle = _loc2_.§2"3§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§2"3§.length;
      }
      
      public function get §`!!§() : int
      {
         return this.§46§.length;
      }
      
      public function get §=m§() : int
      {
         return this.§--§.length;
      }
      
      public function get §[!V§() : int
      {
         return this.§=!b§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§<b§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§<b§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§ U§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§ U§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§&!x§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§&!x§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§4!H§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§4!H§ = param1;
      }
      
      public function get §7"1§() : Number
      {
         return this.§,"&§;
      }
      
      public function set §7"1§(param1:Number) : void
      {
         this.§,"&§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §"!Z§() : Boolean
      {
         return true;
      }
      
      public function get §&!y§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§?!b§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§?!b§ = param1;
      }
      
      public function getEagleScore(param1:§0l§, param2:int) : int
      {
         var _loc3_:int = this.§"@§(param1,param2);
         var _loc4_:int = this.§[",§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§9p§)
         {
            return _loc5_;
         }
         if(this.§9p§ == 0)
         {
            return _loc5_;
         }
         return this.§9p§;
      }
      
      public function § W§(param1:int, param2:§0l§, param3:int) : void
      {
         var _loc4_:int = this.§"@§(param2,param3);
         var _loc5_:int = this.§[",§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§9p§ = param1;
      }
      
      public function §?!H§(param1:String) : void
      {
         var _loc4_:§3!?§ = null;
         var _loc5_:Object = null;
         var _loc6_:§0"$§ = null;
         var _loc7_:Object = null;
         var _loc8_:§5"-§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§[Z§ = _loc2_.LevelExtension;
         this.§@c§ = false;
         this.§ U§ = _loc2_.scoreSilver;
         this.§<b§ = _loc2_.scoreGold;
         this.§9p§ = _loc2_.scoreEagle;
         this.§?!b§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§46§ = this.§&!T§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§=!b§ = new Vector.<§3!?§>();
         this.§--§ = new Vector.<§0"$§>();
         this.§2"3§ = new Vector.<§5"-§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §3!?§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§=!b§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §0"$§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§--§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §5"-§()).x = _loc7_.x;
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
            this.§2"3§.push(_loc8_);
            _loc3_++;
         }
         this.§&!x§ = _loc2_.slingshotX;
         this.§4!H§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§[Z§;
         _loc1_.scoreSilver = this.§ U§;
         _loc1_.scoreGold = this.§<b§;
         _loc1_.scoreEagle = this.§9p§;
         _loc1_.theme = this.§?!b§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§=!b§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§--§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§--§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2"3§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§2"3§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§46§.length)
         {
            _loc3_ = this.§46§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§+'§(_loc3_.index1);
            _loc3_.index2 = this.§+'§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§2"3§.length;
         _loc1_.counts.birds = this.§--§.length;
         _loc1_.counts.joints = this.§46§.length;
         _loc1_.slingshotX = this.§&!x§;
         _loc1_.slingshotY = this.§4!H§;
         return _loc1_;
      }
      
      protected function §+'§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2"3§.length)
         {
            if(this.§2"3§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §+!s§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §&!T§(param1:int, param2:Object) : Vector.<§2>§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§2>§ = null;
         var _loc3_:Vector.<§2>§> = new Vector.<§2>§>();
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
               if(_loc5_.type == §2>§.§!!H§ || _loc5_.type == §2>§.§>!E§)
               {
                  _loc10_ = new §2>§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                  if(_loc5_.type == §2>§.§>!E§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §2>§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
               }
               if(_loc5_.type == §2>§.§%"#§)
               {
                  _loc10_.annihilationTime = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc10_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §"@§(param1:§0l§, param2:int) : int
      {
         var _loc4_:§5"-§ = null;
         var _loc5_:String = null;
         var _loc6_:§!e§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§2"3§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.§-!X§(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.§-!X§(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§^!B§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §^!B§(param1:§0l§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §[",§() : int
      {
         if(this.§--§)
         {
            return this.§--§.length * this.§5K§();
         }
         return 0;
      }
      
      public function §5K§() : int
      {
         return 10000;
      }
      
      public function §#!E§() : XML
      {
         var _loc2_:§3!?§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§[Z§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§@c§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§ U§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§<b§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§=!b§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + § i§.§%"3§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§--§[0].x + "\" y=\"" + (this.§--§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§--§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§--§[_loc3_].type + "\" x=\"" + this.§--§[_loc3_].x + "\" y=\"" + this.§--§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§2"3§.length)
         {
            _loc1_ += "<Item id=\"" + this.§2"3§[_loc3_].type + "\" x=\"" + this.§2"3§[_loc3_].x + "\" y=\"" + this.§2"3§[_loc3_].y + "\" rotation=\"" + this.§2"3§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §5"-§
      {
         return this.§2"3§[param1];
      }
      
      public function §'!%§(param1:§5"-§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§2"3§.push(param1);
      }
      
      public function §+g§(param1:int) : §2>§
      {
         return this.§46§[param1];
      }
      
      public function §=!9§(param1:§2>§) : void
      {
         this.§46§.push(param1);
      }
      
      public function §4t§(param1:int) : §0"$§
      {
         return this.§--§[param1];
      }
      
      public function §`"#§(param1:§0"$§) : void
      {
         this.§--§.push(param1);
      }
      
      public function §-![§() : void
      {
         this.§=!b§ = new Vector.<§3!?§>();
      }
      
      public function §;u§() : void
      {
         this.§--§ = new Vector.<§0"$§>();
      }
      
      public function §6!U§(param1:int) : §3!?§
      {
         return this.§=!b§[param1];
      }
      
      public function §`k§(param1:§3!?§) : void
      {
         this.§=!b§.push(param1);
      }
   }
}
