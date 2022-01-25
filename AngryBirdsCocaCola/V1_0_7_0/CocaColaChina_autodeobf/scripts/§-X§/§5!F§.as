package §-X§
{
   import §#m§.§34§;
   import §#m§.§3T§;
   import §1q§.§2W§;
   import §2o§.§'%§;
   import §2o§.§2!Z§;
   import §2o§.§3l§;
   import §4A§.§&_§;
   import §[!'§.*;
   import flash.geom.Point;
   
   public class §5!F§
   {
      
      public static const §%R§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §-!6§:Number = 0;
      
      public var §;e§:Number = -8;
      
      private var § 7§:Vector.<§2!Z§> = null;
      
      private var §6e§:Vector.<§'%§> = null;
      
      private var §9`§:Vector.<§3l§> = null;
      
      private var §9]§:Vector.<§8m§> = null;
      
      public var §'`§:Number = 0;
      
      public var §1b§:Boolean = false;
      
      public var §1!M§:int = 0;
      
      public var §8o§:int = 0;
      
      private var §0e§:int = 0;
      
      private var §8!F§:String = null;
      
      public var mName:String = null;
      
      public function §5!F§()
      {
         super();
         this.§9]§ = new Vector.<§8m§>();
         this.§ 7§ = new Vector.<§2!Z§>();
         this.§6e§ = new Vector.<§'%§>();
         this.§9`§ = new Vector.<§3l§>();
         this.§8!F§ = §%R§;
      }
      
      public static function §6!N§(param1:String) : §5!F§
      {
         var _loc2_:§5!F§ = new §5!F§();
         _loc2_.§;r§(param1);
         return _loc2_;
      }
      
      public static function §-k§(param1:§34§) : Boolean
      {
         if(param1.§#r§ == §34§.§^c§ || param1.§#r§ == §34§.§^[§ || param1.§#r§ == §34§.§&!'§)
         {
            return true;
         }
         return false;
      }
      
      public static function §[!!§(param1:String) : §5!F§
      {
         var _loc2_:§5!F§ = §6!N§(param1);
         _loc2_.§-!6§ = _loc2_.§6e§[0].x;
         _loc2_.§;e§ = _loc2_.§6e§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§ 7§.length)
         {
            _loc2_.§ 7§[_loc3_].angle = 360 - _loc2_.§ 7§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §#H§(param1:int, param2:Object) : Vector.<§3l§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§3l§ = null;
         var _loc3_:Vector.<§3l§> = new Vector.<§3l§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §3l§.§;!7§ || _loc5_.type == §3l§.§6;§)
               {
                  _loc8_ = new §3l§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §3l§.§6;§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §3l§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §3l§.§`y§)
               {
                  _loc8_.§8!N§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §0V§() : int
      {
         return this.§ 7§.length;
      }
      
      public function get § !`§() : int
      {
         return this.§9`§.length;
      }
      
      public function get §,2§() : int
      {
         return this.§6e§.length;
      }
      
      public function get §-H§() : int
      {
         return this.§9]§.length;
      }
      
      public function get theme() : String
      {
         return this.§8!F§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§8!F§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§=m§();
         if(_loc1_ > 0 && _loc1_ < this.§0e§)
         {
            return _loc1_;
         }
         if(this.§0e§ == 0)
         {
            return _loc1_;
         }
         return this.§0e§;
      }
      
      public function §]^§(param1:int) : void
      {
         var _loc2_:int = this.§=m§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§0e§ = param1;
      }
      
      public function §;r§(param1:String) : void
      {
         var _loc4_:§8m§ = null;
         var _loc5_:Object = null;
         var _loc6_:§'%§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§2!Z§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§'`§ = _loc2_.LevelExtension;
         this.§1b§ = false;
         this.§1!M§ = _loc2_.scoreSilver;
         this.§8o§ = _loc2_.scoreGold;
         this.§0e§ = _loc2_.scoreEagle;
         this.§8!F§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§9`§ = §#H§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§9]§ = new Vector.<§8m§>();
         this.§6e§ = new Vector.<§'%§>();
         this.§ 7§ = new Vector.<§2!Z§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §8m§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§9]§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §'%§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§6e§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §2!Z§()).x = _loc8_.x;
            _loc9_.y = _loc8_.y;
            _loc9_.id = _loc8_.id;
            if(_loc8_.uniqueID && _loc8_.uniqueID.length > 0)
            {
               _loc9_.uniqueID = _loc8_.uniqueID;
            }
            else
            {
               _loc9_.uniqueID = _loc7_;
            }
            if(_loc8_.front)
            {
               _loc9_.front = _loc8_.front;
            }
            _loc9_.angle = _loc8_.angle;
            this.§ 7§.push(_loc9_);
            _loc3_++;
         }
         this.§-!6§ = _loc2_.slingshotX;
         this.§;e§ = _loc2_.slingshotY;
      }
      
      public function §4]§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§'`§;
         _loc1_.scoreSilver = this.§1!M§;
         _loc1_.scoreGold = this.§8o§;
         _loc1_.scoreEagle = this.§0e§;
         _loc1_.theme = this.§8!F§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§9]§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§6e§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§6e§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ 7§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§ 7§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§9`§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§9`§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§ 7§.length;
         _loc1_.counts.birds = this.§6e§.length;
         _loc1_.counts.joints = this.§9`§.length;
         _loc1_.slingshotX = this.§-!6§;
         _loc1_.slingshotY = this.§;e§;
         return _loc1_;
      }
      
      public function §^g§() : String
      {
         return JSON.stringify(this.§4]§());
      }
      
      public function §=m§() : int
      {
         var _loc2_:§2!Z§ = null;
         var _loc3_:String = null;
         var _loc4_:§34§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ 7§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §3T§.§,!G§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §3T§.§,!G§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§-k§(_loc4_))
               {
                  _loc1_ += _loc4_.§&=§ * §&_§.§<!'§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §+a§() : XML
      {
         var _loc2_:§8m§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§'`§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§1b§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§1!M§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§8o§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§9]§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §2W§.§1f§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§6e§[0].x + "\" y=\"" + (this.§6e§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§6e§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§6e§[_loc3_].id + "\" x=\"" + this.§6e§[_loc3_].x + "\" y=\"" + this.§6e§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§ 7§.length)
         {
            _loc1_ += "<Item id=\"" + this.§ 7§[_loc3_].id + "\" x=\"" + this.§ 7§[_loc3_].x + "\" y=\"" + this.§ 7§[_loc3_].y + "\" rotation=\"" + this.§ 7§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §2!-§(param1:int) : §2!Z§
      {
         return this.§ 7§[param1];
      }
      
      public function §7o§(param1:§2!Z§) : void
      {
         this.§ 7§.push(param1);
      }
      
      public function §,f§(param1:int) : §3l§
      {
         return this.§9`§[param1];
      }
      
      public function § ^§(param1:§3l§) : void
      {
         this.§9`§.push(param1);
      }
      
      public function §'a§(param1:int) : §'%§
      {
         return this.§6e§[param1];
      }
      
      public function §&!+§(param1:§'%§) : void
      {
         this.§6e§.push(param1);
      }
      
      public function §,j§() : void
      {
         this.§9]§ = new Vector.<§8m§>();
      }
      
      public function §+W§() : void
      {
         this.§6e§ = new Vector.<§'%§>();
      }
      
      public function §8`§(param1:int) : §8m§
      {
         return this.§9]§[param1];
      }
      
      public function §7!W§(param1:§8m§) : void
      {
         this.§9]§.push(param1);
      }
   }
}
