package §%!B§
{
   import §#!I§.§0k§;
   import §%8§.§4O§;
   import §%8§.§@-§;
   import §0N§.§ i§;
   import §0N§.§,!A§;
   import §0N§.§-C§;
   import flash.geom.Point;
   
   public class §5L§
   {
      
      public static const §<!U§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §4]§:Number = 0;
      
      protected var §;!f§:Number = -8;
      
      protected var §<;§:Number = 0.0;
      
      protected var §-"2§:Vector.<§,!A§> = null;
      
      protected var §&]§:Vector.<§ i§> = null;
      
      protected var §>]§:Vector.<§-C§> = null;
      
      protected var §9S§:Vector.<§9"2§> = null;
      
      public var §5!r§:Number = 0;
      
      public var §+"-§:Boolean = false;
      
      protected var §1!2§:int = 0;
      
      protected var §3!L§:int = 0;
      
      protected var §,b§:int = 0;
      
      protected var §3?§:String = null;
      
      protected var mName:String = null;
      
      public function §5L§()
      {
         super();
         this.§9S§ = new Vector.<§9"2§>();
         this.§-"2§ = new Vector.<§,!A§>();
         this.§&]§ = new Vector.<§ i§>();
         this.§>]§ = new Vector.<§-C§>();
         this.§3?§ = §<!U§;
      }
      
      public static function §&!3§(param1:String) : §5L§
      {
         var _loc2_:§5L§ = new §5L§();
         _loc2_.§&!s§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§@-§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §""4§(param1:String) : §5L§
      {
         var _loc2_:§5L§ = §&!3§(param1);
         _loc2_.§4]§ = _loc2_.§&]§[0].x;
         _loc2_.§;!f§ = _loc2_.§&]§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§-"2§.length)
         {
            _loc2_.§-"2§[_loc3_].angle = _loc2_.§-"2§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§-"2§.length;
      }
      
      public function get §7!f§() : int
      {
         return this.§>]§.length;
      }
      
      public function get §>s§() : int
      {
         return this.§&]§.length;
      }
      
      public function get §5!i§() : int
      {
         return this.§9S§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§3!L§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§3!L§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§,b§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§,b§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§4]§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§4]§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§;!f§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§;!f§ = param1;
      }
      
      public function get set() : Number
      {
         return this.§<;§;
      }
      
      public function set set(param1:Number) : void
      {
         this.§<;§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §7!H§() : Boolean
      {
         return true;
      }
      
      public function get §@[§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§3?§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§3?§ = param1;
      }
      
      public function getEagleScore(param1:§4O§, param2:int) : int
      {
         var _loc3_:int = this.§=U§(param1,param2);
         var _loc4_:int = this.§+!0§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§1!2§)
         {
            return _loc5_;
         }
         if(this.§1!2§ == 0)
         {
            return _loc5_;
         }
         return this.§1!2§;
      }
      
      public function §7"0§(param1:int, param2:§4O§, param3:int) : void
      {
         var _loc4_:int = this.§=U§(param2,param3);
         var _loc5_:int = this.§+!0§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§1!2§ = param1;
      }
      
      public function §&!s§(param1:String) : void
      {
         var _loc4_:§9"2§ = null;
         var _loc5_:Object = null;
         var _loc6_:§ i§ = null;
         var _loc7_:Object = null;
         var _loc8_:§,!A§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§5!r§ = _loc2_.LevelExtension;
         this.§+"-§ = false;
         this.§,b§ = _loc2_.scoreSilver;
         this.§3!L§ = _loc2_.scoreGold;
         this.§1!2§ = _loc2_.scoreEagle;
         this.§3?§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§>]§ = this.§[""§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§9S§ = new Vector.<§9"2§>();
         this.§&]§ = new Vector.<§ i§>();
         this.§-"2§ = new Vector.<§,!A§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §9"2§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§9S§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new § i§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§&]§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §,!A§()).x = _loc7_.x;
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
            this.§-"2§.push(_loc8_);
            _loc3_++;
         }
         this.§4]§ = _loc2_.slingshotX;
         this.§;!f§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§5!r§;
         _loc1_.scoreSilver = this.§,b§;
         _loc1_.scoreGold = this.§3!L§;
         _loc1_.scoreEagle = this.§1!2§;
         _loc1_.theme = this.§3?§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§9S§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§&]§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§&]§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-"2§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§-"2§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§>]§.length)
         {
            _loc3_ = this.§>]§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§;!5§(_loc3_.index1);
            _loc3_.index2 = this.§;!5§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§-"2§.length;
         _loc1_.counts.birds = this.§&]§.length;
         _loc1_.counts.joints = this.§>]§.length;
         _loc1_.slingshotX = this.§4]§;
         _loc1_.slingshotY = this.§;!f§;
         return _loc1_;
      }
      
      protected function §;!5§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-"2§.length)
         {
            if(this.§-"2§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §5V§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §[""§(param1:int, param2:Object) : Vector.<§-C§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§-C§ = null;
         var _loc3_:Vector.<§-C§> = new Vector.<§-C§>();
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
               if(_loc5_.type == §-C§.§6`§ || _loc5_.type == §-C§.§0g§)
               {
                  _loc10_ = new §-C§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                  if(_loc5_.type == §-C§.§0g§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §-C§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
               }
               if(_loc5_.type == §-C§.§-!R§)
               {
                  _loc10_.annihilationTime = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc10_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §=U§(param1:§4O§, param2:int) : int
      {
         var _loc4_:§,!A§ = null;
         var _loc5_:String = null;
         var _loc6_:§@-§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§-"2§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.§1!e§(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.§1!e§(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§#"-§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §#"-§(param1:§4O§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §+!0§() : int
      {
         if(this.§&]§)
         {
            return this.§&]§.length * this.§^D§();
         }
         return 0;
      }
      
      public function §^D§() : int
      {
         return 10000;
      }
      
      public function §<^§() : XML
      {
         var _loc2_:§9"2§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§5!r§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§+"-§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§,b§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§3!L§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§9S§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §0k§.§,s§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§&]§[0].x + "\" y=\"" + (this.§&]§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§&]§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§&]§[_loc3_].type + "\" x=\"" + this.§&]§[_loc3_].x + "\" y=\"" + this.§&]§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§-"2§.length)
         {
            _loc1_ += "<Item id=\"" + this.§-"2§[_loc3_].type + "\" x=\"" + this.§-"2§[_loc3_].x + "\" y=\"" + this.§-"2§[_loc3_].y + "\" rotation=\"" + this.§-"2§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §,!A§
      {
         return this.§-"2§[param1];
      }
      
      public function §&w§(param1:§,!A§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§-"2§.push(param1);
      }
      
      public function §-"1§(param1:int) : §-C§
      {
         return this.§>]§[param1];
      }
      
      public function §?!w§(param1:§-C§) : void
      {
         this.§>]§.push(param1);
      }
      
      public function §`!^§(param1:int) : § i§
      {
         return this.§&]§[param1];
      }
      
      public function §'"&§(param1:§ i§) : void
      {
         this.§&]§.push(param1);
      }
      
      public function §;!x§() : void
      {
         this.§9S§ = new Vector.<§9"2§>();
      }
      
      public function §5>§() : void
      {
         this.§&]§ = new Vector.<§ i§>();
      }
      
      public function §@"!§(param1:int) : §9"2§
      {
         return this.§9S§[param1];
      }
      
      public function § !O§(param1:§9"2§) : void
      {
         this.§9S§.push(param1);
      }
   }
}
