package §?m§
{
   import §-!_§.§,#Q§;
   import §2"Y§.§"t§;
   import §2"Y§.§,§;
   import §<"B§.§-#'§;
   import §<"B§.§5y§;
   import §<"B§.§94§;
   import flash.geom.Point;
   
   public class §8!B§
   {
      
      public static const §7#M§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §7M§:Number = 0;
      
      protected var §=!F§:Number = -8;
      
      protected var §[9§:Number = 0.0;
      
      protected var §1!b§:Vector.<§94§> = null;
      
      protected var §,!?§:Vector.<§5y§> = null;
      
      protected var §6!Z§:Vector.<§-#'§> = null;
      
      protected var §5#U§:Vector.<§0!§> = null;
      
      public var §+#%§:Number = 0;
      
      public var §^#3§:Boolean = false;
      
      protected var §"H§:int = 0;
      
      protected var §5!?§:int = 0;
      
      protected var § !f§:int = 0;
      
      protected var §"!n§:String = null;
      
      protected var mName:String = null;
      
      public function §8!B§()
      {
         super();
         this.§5#U§ = new Vector.<§0!§>();
         this.§1!b§ = new Vector.<§94§>();
         this.§,!?§ = new Vector.<§5y§>();
         this.§6!Z§ = new Vector.<§-#'§>();
         this.§"!n§ = §7#M§;
      }
      
      public static function §`"e§(param1:String) : §8!B§
      {
         var _loc2_:§8!B§ = new §8!B§();
         _loc2_.§+!B§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§"t§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §]c§(param1:String) : §8!B§
      {
         var _loc2_:§8!B§ = §`"e§(param1);
         _loc2_.§7M§ = _loc2_.§,!?§[0].x;
         _loc2_.§=!F§ = _loc2_.§,!?§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§1!b§.length)
         {
            _loc2_.§1!b§[_loc3_].angle = _loc2_.§1!b§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§1!b§.length;
      }
      
      public function get §&"+§() : int
      {
         return this.§6!Z§.length;
      }
      
      public function get §'o§() : int
      {
         return this.§,!?§.length;
      }
      
      public function get §<#I§() : int
      {
         return this.§5#U§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§5!?§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§5!?§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§ !f§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§ !f§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§7M§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§7M§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§=!F§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§=!F§ = param1;
      }
      
      public function get §0"r§() : Number
      {
         return this.§[9§;
      }
      
      public function set §0"r§(param1:Number) : void
      {
         this.§[9§ = param1;
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
         return this.§"!n§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§"!n§ = param1;
      }
      
      public function getEagleScore(param1:§,#5§, param2:int) : int
      {
         var _loc3_:int = this.§#"+§(param1,param2);
         var _loc4_:int = this.§`b§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§"H§)
         {
            return _loc5_;
         }
         if(this.§"H§ == 0)
         {
            return _loc5_;
         }
         return this.§"H§;
      }
      
      public function §%#S§(param1:int, param2:§,#5§, param3:int) : void
      {
         var _loc4_:int = this.§#"+§(param2,param3);
         var _loc5_:int = this.§`b§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§"H§ = param1;
      }
      
      public function §+!B§(param1:String) : void
      {
         var _loc4_:§0!§ = null;
         var _loc5_:Object = null;
         var _loc6_:§5y§ = null;
         var _loc7_:Object = null;
         var _loc8_:§94§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§+#%§ = _loc2_.LevelExtension;
         this.§^#3§ = false;
         this.§ !f§ = _loc2_.scoreSilver;
         this.§5!?§ = _loc2_.scoreGold;
         this.§"H§ = _loc2_.scoreEagle;
         this.§"!n§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§6!Z§ = this.§["M§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§5#U§ = new Vector.<§0!§>();
         this.§,!?§ = new Vector.<§5y§>();
         this.§1!b§ = new Vector.<§94§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §0!§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§5#U§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §5y§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§,!?§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §94§()).x = _loc7_.x;
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
            this.§1!b§.push(_loc8_);
            _loc3_++;
         }
         this.§7M§ = _loc2_.slingshotX;
         this.§=!F§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§+#%§;
         _loc1_.scoreSilver = this.§ !f§;
         _loc1_.scoreGold = this.§5!?§;
         _loc1_.scoreEagle = this.§"H§;
         _loc1_.theme = this.§"!n§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§5#U§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§,!?§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§,!?§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1!b§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§1!b§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§6!Z§.length)
         {
            _loc3_ = this.§6!Z§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§@!r§(_loc3_.index1);
            _loc3_.index2 = this.§@!r§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§1!b§.length;
         _loc1_.counts.birds = this.§,!?§.length;
         _loc1_.counts.joints = this.§6!Z§.length;
         _loc1_.slingshotX = this.§7M§;
         _loc1_.slingshotY = this.§=!F§;
         return _loc1_;
      }
      
      protected function §@!r§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!b§.length)
         {
            if(this.§1!b§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §&"d§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §["M§(param1:int, param2:Object) : Vector.<§-#'§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§-#'§ = null;
         var _loc3_:Vector.<§-#'§> = new Vector.<§-#'§>();
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
               if(_loc5_.type == §-#'§.§>"z§ || _loc5_.type == §-#'§.§,"?§)
               {
                  _loc10_ = new §-#'§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                  if(_loc5_.type == §-#'§.§,"?§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §-#'§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
               }
               if(_loc5_.type == §-#'§.§use §)
               {
                  _loc10_.annihilationTime = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc10_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §#"+§(param1:§,#5§, param2:int) : int
      {
         var _loc4_:§94§ = null;
         var _loc5_:String = null;
         var _loc6_:§"t§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§1!b§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.getItem(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.getItem(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§^"$§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §^"$§(param1:§,#5§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §`b§() : int
      {
         if(this.§,!?§)
         {
            return this.§,!?§.length * this.§@!C§();
         }
         return 0;
      }
      
      public function §@!C§() : int
      {
         return 10000;
      }
      
      public function §]#N§() : XML
      {
         var _loc2_:§0!§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§+#%§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§^#3§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§ !f§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§5!?§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§5#U§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §,#Q§.§`"!§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§,!?§[0].x + "\" y=\"" + (this.§,!?§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§,!?§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§,!?§[_loc3_].type + "\" x=\"" + this.§,!?§[_loc3_].x + "\" y=\"" + this.§,!?§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§1!b§.length)
         {
            _loc1_ += "<Item id=\"" + this.§1!b§[_loc3_].type + "\" x=\"" + this.§1!b§[_loc3_].x + "\" y=\"" + this.§1!b§[_loc3_].y + "\" rotation=\"" + this.§1!b§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §94§
      {
         return this.§1!b§[param1];
      }
      
      public function addObject(param1:§94§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§1!b§.push(param1);
      }
      
      public function §0#V§(param1:int) : §-#'§
      {
         return this.§6!Z§[param1];
      }
      
      public function §@"_§(param1:§-#'§) : void
      {
         this.§6!Z§.push(param1);
      }
      
      public function §+§(param1:int) : §5y§
      {
         return this.§,!?§[param1];
      }
      
      public function §0#T§(param1:§5y§) : void
      {
         this.§,!?§.push(param1);
      }
      
      public function §[!=§() : void
      {
         this.§5#U§ = new Vector.<§0!§>();
      }
      
      public function §=F§() : void
      {
         this.§,!?§ = new Vector.<§5y§>();
      }
      
      public function §^#'§(param1:int) : §0!§
      {
         return this.§5#U§[param1];
      }
      
      public function §'!h§(param1:§0!§) : void
      {
         this.§5#U§.push(param1);
      }
   }
}
