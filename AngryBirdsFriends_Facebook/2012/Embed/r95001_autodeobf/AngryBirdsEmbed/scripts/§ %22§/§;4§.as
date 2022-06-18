package § "§
{
   import §!T§.§2!!§;
   import §!T§.§9n§;
   import §9!?§.§^]§;
   import §[+§.§'!6§;
   import §]7§.§#G§;
   import §]7§.§3V§;
   import §]7§.§8!7§;
   import §`4§.*;
   import flash.geom.Point;
   
   public class §;4§
   {
      
      public static const § if§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §]!§:Number = 0;
      
      public var §%q§:Number = -8;
      
      private var §2J§:Vector.<§#G§> = null;
      
      private var §0r§:Vector.<§8!7§> = null;
      
      private var §9!F§:Vector.<§3V§> = null;
      
      private var §@Y§:Vector.<§91§> = null;
      
      public var §@D§:Number = 0;
      
      public var §7!'§:Boolean = false;
      
      public var §]N§:int = 0;
      
      public var §%!!§:int = 0;
      
      private var §"8§:int = 0;
      
      private var §5e§:String = null;
      
      public var mName:String = null;
      
      public function §;4§()
      {
         super();
         this.§@Y§ = new Vector.<§91§>();
         this.§2J§ = new Vector.<§#G§>();
         this.§0r§ = new Vector.<§8!7§>();
         this.§9!F§ = new Vector.<§3V§>();
         this.§5e§ = § if§;
      }
      
      public static function §6%§(param1:String) : §;4§
      {
         var _loc2_:§;4§ = new §;4§();
         _loc2_.§""§(param1);
         return _loc2_;
      }
      
      public static function § +§(param1:§9n§) : Boolean
      {
         if(param1.§8V§ == §9n§.§<d§ || param1.§8V§ == §9n§.§[P§ || param1.§8V§ == §9n§.§`!&§)
         {
            return true;
         }
         return false;
      }
      
      public static function §@S§(param1:String) : §;4§
      {
         var _loc2_:§;4§ = §6%§(param1);
         _loc2_.§]!§ = _loc2_.§0r§[0].x;
         _loc2_.§%q§ = _loc2_.§0r§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§2J§.length)
         {
            _loc2_.§2J§[_loc3_].angle = 360 - _loc2_.§2J§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §^k§(param1:int, param2:Object) : Vector.<§3V§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§3V§ = null;
         var _loc3_:Vector.<§3V§> = new Vector.<§3V§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §3V§.§?&§)
               {
                  _loc8_ = new §3V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
               }
               else
               {
                  _loc8_ = new §3V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §+N§() : int
      {
         return this.§2J§.length;
      }
      
      public function get §'!>§() : int
      {
         return this.§9!F§.length;
      }
      
      public function get §0!;§() : int
      {
         return this.§0r§.length;
      }
      
      public function get §7W§() : int
      {
         return this.§@Y§.length;
      }
      
      public function get theme() : String
      {
         return this.§5e§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§5e§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§2r§();
         if(_loc1_ > 0 && _loc1_ < this.§"8§)
         {
            return _loc1_;
         }
         if(this.§"8§ == 0)
         {
            return _loc1_;
         }
         return this.§"8§;
      }
      
      public function §3!F§(param1:int) : void
      {
         var _loc2_:int = this.§2r§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§"8§ = param1;
      }
      
      public function §""§(param1:String) : void
      {
         var _loc4_:§91§ = null;
         var _loc5_:Object = null;
         var _loc6_:§8!7§ = null;
         var _loc7_:Object = null;
         var _loc8_:§#G§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§@D§ = _loc2_.LevelExtension;
         this.§7!'§ = false;
         this.§]N§ = _loc2_.scoreSilver;
         this.§%!!§ = _loc2_.scoreGold;
         this.§"8§ = _loc2_.scoreEagle;
         this.§5e§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§9!F§ = §^k§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§@Y§ = new Vector.<§91§>();
         this.§0r§ = new Vector.<§8!7§>();
         this.§2J§ = new Vector.<§#G§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §91§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§@Y§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §8!7§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§0r§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §#G§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§2J§.push(_loc8_);
            _loc3_++;
         }
         this.§]!§ = _loc2_.slingshotX;
         this.§%q§ = _loc2_.slingshotY;
      }
      
      public function §,D§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§@D§;
         _loc1_.scoreSilver = this.§]N§;
         _loc1_.scoreGold = this.§%!!§;
         _loc1_.scoreEagle = this.§"8§;
         _loc1_.theme = this.§5e§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§@Y§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§0r§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§0r§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2J§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§2J§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§9!F§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§9!F§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§2J§.length;
         _loc1_.counts.birds = this.§0r§.length;
         _loc1_.counts.joints = this.§9!F§.length;
         _loc1_.slingshotX = this.§]!§;
         _loc1_.slingshotY = this.§%q§;
         return _loc1_;
      }
      
      public function § ]§() : String
      {
         return JSON.stringify(this.§,D§());
      }
      
      public function §2r§() : int
      {
         var _loc2_:§#G§ = null;
         var _loc3_:String = null;
         var _loc4_:§9n§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2J§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §2!!§.§2V§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §2!!§.§2V§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§ +§(_loc4_))
               {
                  _loc1_ += _loc4_.§'R§ * §^]§.§><§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §<?§() : XML
      {
         var _loc2_:§91§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§@D§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§7!'§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§]N§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§%!!§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§@Y§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §'!6§.§9J§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§0r§[0].x + "\" y=\"" + (this.§0r§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§0r§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§0r§[_loc3_].id + "\" x=\"" + this.§0r§[_loc3_].x + "\" y=\"" + this.§0r§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§2J§.length)
         {
            _loc1_ += "<Item id=\"" + this.§2J§[_loc3_].id + "\" x=\"" + this.§2J§[_loc3_].x + "\" y=\"" + this.§2J§[_loc3_].y + "\" rotation=\"" + this.§2J§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §7!6§(param1:int) : §#G§
      {
         return this.§2J§[param1];
      }
      
      public function addObject(param1:§#G§) : void
      {
         this.§2J§.push(param1);
      }
      
      public function §with§(param1:int) : §3V§
      {
         return this.§9!F§[param1];
      }
      
      public function §^L§(param1:§3V§) : void
      {
         this.§9!F§.push(param1);
      }
      
      public function §]^§(param1:int) : §8!7§
      {
         return this.§0r§[param1];
      }
      
      public function §3Z§(param1:§8!7§) : void
      {
         this.§0r§.push(param1);
      }
      
      public function §<W§() : void
      {
         while(this.§@Y§.length > 0)
         {
            this.§@Y§.pop();
         }
      }
      
      public function §-v§(param1:int) : §91§
      {
         return this.§@Y§[param1];
      }
      
      public function §&!@§(param1:§91§) : void
      {
         this.§@Y§.push(param1);
      }
   }
}
