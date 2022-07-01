package §+%§
{
   import §1!v§.§@%§;
   import §1"3§.§`"0§;
   import §8q§.§6n§;
   import §8q§.§@§;
   import §[n§.*;
   import §]!!§.§"d§;
   import §]!!§.§]"%§;
   import §]!!§.§^s§;
   import flash.geom.Point;
   
   public class §5!F§
   {
      
      public static const § true§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §7e§:Number = 0;
      
      public var §!P§:Number = -8;
      
      private var §`6§:Vector.<§"d§> = null;
      
      private var mBirds:Vector.<§]"%§> = null;
      
      private var §"!S§:Vector.<§^s§> = null;
      
      private var §4u§:Vector.<§+D§> = null;
      
      public var §`!?§:Number = 0;
      
      public var §@!V§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var §4c§:int = 0;
      
      private var §2!h§:String = null;
      
      public var mName:String = null;
      
      public function §5!F§()
      {
         super();
         this.§4u§ = new Vector.<§+D§>();
         this.§`6§ = new Vector.<§"d§>();
         this.mBirds = new Vector.<§]"%§>();
         this.§"!S§ = new Vector.<§^s§>();
         this.§2!h§ = § true§;
      }
      
      public static function §+!R§(param1:String) : §5!F§
      {
         var _loc2_:§5!F§ = new §5!F§();
         _loc2_.§`L§(param1);
         return _loc2_;
      }
      
      public static function § 2§(param1:§6n§) : Boolean
      {
         if(param1.§"W§ == §6n§.§@z§ || param1.§"W§ == §6n§.§3x§ || param1.§"W§ == §6n§.§9]§)
         {
            return true;
         }
         return false;
      }
      
      public static function §42§(param1:String) : §5!F§
      {
         var _loc2_:§5!F§ = §+!R§(param1);
         _loc2_.§7e§ = _loc2_.mBirds[0].x;
         _loc2_.§!P§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§`6§.length)
         {
            _loc2_.§`6§[_loc3_].angle = 360 - _loc2_.§`6§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §3!3§(param1:int, param2:Object) : Vector.<§^s§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§^s§ = null;
         var _loc3_:Vector.<§^s§> = new Vector.<§^s§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §^s§.§=4§ || _loc5_.type == §^s§.§7!b§)
               {
                  _loc8_ = new §^s§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §^s§.§7!b§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §^s§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §^s§.§6Y§)
               {
                  _loc8_.§8!R§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §!!T§() : int
      {
         return this.§`6§.length;
      }
      
      public function get §]!k§() : int
      {
         return this.§"!S§.length;
      }
      
      public function get §%+§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §#!n§() : int
      {
         return this.§4u§.length;
      }
      
      public function get theme() : String
      {
         return this.§2!h§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§2!h§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§6-§();
         if(_loc1_ > 0 && _loc1_ < this.§4c§)
         {
            return _loc1_;
         }
         if(this.§4c§ == 0)
         {
            return _loc1_;
         }
         return this.§4c§;
      }
      
      public function §?!$§(param1:int) : void
      {
         var _loc2_:int = this.§6-§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§4c§ = param1;
      }
      
      public function §`L§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§+D§ = null;
         var _loc9_:Object = null;
         var _loc10_:§]"%§ = null;
         var _loc11_:§"d§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§`!?§ = _loc2_.LevelExtension;
         this.§@!V§ = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.§4c§ = _loc2_.scoreEagle;
         this.§2!h§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§"!S§ = §3!3§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§4u§ = new Vector.<§+D§>();
         this.mBirds = new Vector.<§]"%§>();
         this.§`6§ = new Vector.<§"d§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §+D§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§4u§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §]"%§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.mBirds.push(_loc10_);
            _loc3_++;
         }
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc7_:int = 1;
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            if((_loc5_ = _loc2_.world[_loc6_]).uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc4_.push(_loc5_.uniqueID);
            }
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc6_ = "block_" + _loc3_;
            _loc5_ = _loc2_.world[_loc6_];
            (_loc11_ = new §"d§()).x = _loc5_.x;
            _loc11_.y = _loc5_.y;
            _loc11_.id = _loc5_.id;
            if(_loc5_.uniqueID && _loc5_.uniqueID.length > 0)
            {
               _loc11_.uniqueID = _loc5_.uniqueID;
            }
            else
            {
               while(_loc4_.indexOf(_loc7_) >= 0)
               {
                  _loc7_++;
               }
               _loc11_.uniqueID = _loc7_.toString();
               _loc4_.push(_loc7_);
            }
            if(_loc5_.front)
            {
               _loc11_.front = _loc5_.front;
            }
            _loc11_.angle = _loc5_.angle;
            this.§`6§.push(_loc11_);
            _loc3_++;
         }
         this.§7e§ = _loc2_.slingshotX;
         this.§!P§ = _loc2_.slingshotY;
      }
      
      public function §;`§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§`!?§;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.§4c§;
         _loc1_.theme = this.§2!h§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§4u§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§`6§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§`6§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§"!S§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§"!S§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§`6§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§"!S§.length;
         _loc1_.slingshotX = this.§7e§;
         _loc1_.slingshotY = this.§!P§;
         return _loc1_;
      }
      
      public function §^![§() : String
      {
         return JSON.stringify(this.§;`§());
      }
      
      public function §6-§() : int
      {
         var _loc2_:§"d§ = null;
         var _loc3_:String = null;
         var _loc4_:§6n§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§`6§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §@§.§4"#§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §@§.§4"#§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§ 2§(_loc4_))
               {
                  _loc1_ += _loc4_.§,!f§ * §@%§.§+-§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §!4§() : XML
      {
         var _loc2_:§+D§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§`!?§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§@!V§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§4u§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §`"0§.SCREEN_HEIGHT_B2) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.mBirds[0].x + "\" y=\"" + (this.mBirds[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.mBirds.length)
         {
            _loc1_ += "  <Bird id=\"" + this.mBirds[_loc3_].id + "\" x=\"" + this.mBirds[_loc3_].x + "\" y=\"" + this.mBirds[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§`6§.length)
         {
            _loc1_ += "<Item id=\"" + this.§`6§[_loc3_].id + "\" x=\"" + this.§`6§[_loc3_].x + "\" y=\"" + this.§`6§[_loc3_].y + "\" rotation=\"" + this.§`6§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §"d§
      {
         return this.§`6§[param1];
      }
      
      public function addObject(param1:§"d§) : void
      {
         this.§`6§.push(param1);
      }
      
      public function §"§(param1:int) : §^s§
      {
         return this.§"!S§[param1];
      }
      
      public function § @§(param1:§^s§) : void
      {
         this.§"!S§.push(param1);
      }
      
      public function §^!>§(param1:int) : §]"%§
      {
         return this.mBirds[param1];
      }
      
      public function §5!m§(param1:§]"%§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §"!t§() : void
      {
         this.§4u§ = new Vector.<§+D§>();
      }
      
      public function §;"1§() : void
      {
         this.mBirds = new Vector.<§]"%§>();
      }
      
      public function §>!n§(param1:int) : §+D§
      {
         return this.§4u§[param1];
      }
      
      public function §?!P§(param1:§+D§) : void
      {
         this.§4u§.push(param1);
      }
   }
}
