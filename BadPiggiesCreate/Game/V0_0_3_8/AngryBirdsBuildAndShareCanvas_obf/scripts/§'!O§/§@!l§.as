package §'!O§
{
   import §%!<§.§,6§;
   import §%!<§.§7V§;
   import §%h§.§5X§;
   import §&"+§.§!!P§;
   import §&"+§.§7D§;
   import §&"+§.§>@§;
   import §>!0§.*;
   import §>0§.§'L§;
   import flash.geom.Point;
   
   public class §@!l§
   {
      
      public static const §1q§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §^m§:Number = 0;
      
      public var §%<§:Number = -8;
      
      private var §%`§:Vector.<§>@§> = null;
      
      private var mBirds:Vector.<§!!P§> = null;
      
      private var §%j§:Vector.<§7D§> = null;
      
      private var §?§:Vector.<§+!V§> = null;
      
      public var §>!x§:Number = 0;
      
      public var §`!2§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var §9!$§:int = 0;
      
      private var §;&§:String = null;
      
      public var mName:String = null;
      
      public function §@!l§()
      {
         super();
         this.§?§ = new Vector.<§+!V§>();
         this.§%`§ = new Vector.<§>@§>();
         this.mBirds = new Vector.<§!!P§>();
         this.§%j§ = new Vector.<§7D§>();
         this.§;&§ = §1q§;
      }
      
      public static function §?D§(param1:String) : §@!l§
      {
         var _loc2_:§@!l§ = new §@!l§();
         _loc2_.§<!C§(param1);
         return _loc2_;
      }
      
      public static function §'!X§(param1:§,6§) : Boolean
      {
         if(param1.§9E§ == §,6§.§-"#§ || param1.§9E§ == §,6§.§[K§ || param1.§9E§ == §,6§.§<!m§)
         {
            return true;
         }
         return false;
      }
      
      public static function §9!<§(param1:String) : §@!l§
      {
         var _loc2_:§@!l§ = §?D§(param1);
         _loc2_.§^m§ = _loc2_.mBirds[0].x;
         _loc2_.§%<§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§%`§.length)
         {
            _loc2_.§%`§[_loc3_].angle = 360 - _loc2_.§%`§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §'F§(param1:int, param2:Object) : Vector.<§7D§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§7D§ = null;
         var _loc3_:Vector.<§7D§> = new Vector.<§7D§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §7D§.§&$§ || _loc5_.type == §7D§.§#K§)
               {
                  _loc8_ = new §7D§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §7D§.§#K§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §7D§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §7D§.§]'§)
               {
                  _loc8_.§-l§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §%!D§() : int
      {
         return this.§%`§.length;
      }
      
      public function get §^!i§() : int
      {
         return this.§%j§.length;
      }
      
      public function get §`!x§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §#""§() : int
      {
         return this.§?§.length;
      }
      
      public function get theme() : String
      {
         return this.§;&§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§;&§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§>9§();
         if(_loc1_ > 0 && _loc1_ < this.§9!$§)
         {
            return _loc1_;
         }
         if(this.§9!$§ == 0)
         {
            return _loc1_;
         }
         return this.§9!$§;
      }
      
      public function §4"§(param1:int) : void
      {
         var _loc2_:int = this.§>9§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§9!$§ = param1;
      }
      
      public function §<!C§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§+!V§ = null;
         var _loc9_:Object = null;
         var _loc10_:§!!P§ = null;
         var _loc11_:§>@§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§>!x§ = _loc2_.LevelExtension;
         this.§`!2§ = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.§9!$§ = _loc2_.scoreEagle;
         this.§;&§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§%j§ = §'F§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§?§ = new Vector.<§+!V§>();
         this.mBirds = new Vector.<§!!P§>();
         this.§%`§ = new Vector.<§>@§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §+!V§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§?§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §!!P§()).x = _loc9_.x;
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
            (_loc11_ = new §>@§()).x = _loc5_.x;
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
            this.§%`§.push(_loc11_);
            _loc3_++;
         }
         this.§^m§ = _loc2_.slingshotX;
         this.§%<§ = _loc2_.slingshotY;
      }
      
      public function §'D§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§>!x§;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.§9!$§;
         _loc1_.theme = this.§;&§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§?§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%`§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§%`§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%j§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§%j§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§%`§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§%j§.length;
         _loc1_.slingshotX = this.§^m§;
         _loc1_.slingshotY = this.§%<§;
         return _loc1_;
      }
      
      public function § "3§() : String
      {
         return JSON.stringify(this.§'D§());
      }
      
      public function §>9§() : int
      {
         var _loc2_:§>@§ = null;
         var _loc3_:String = null;
         var _loc4_:§,6§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§%`§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §7V§.§"!E§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §7V§.§"!E§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§'!X§(_loc4_))
               {
                  _loc1_ += _loc4_.§?!`§ * §5X§.§9!g§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §2i§() : XML
      {
         var _loc2_:§+!V§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§>!x§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§`!2§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§?§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §'L§.SCREEN_HEIGHT_B2) + "\"></Camera>";
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
         while(_loc3_ < this.§%`§.length)
         {
            _loc1_ += "<Item id=\"" + this.§%`§[_loc3_].id + "\" x=\"" + this.§%`§[_loc3_].x + "\" y=\"" + this.§%`§[_loc3_].y + "\" rotation=\"" + this.§%`§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §>@§
      {
         return this.§%`§[param1];
      }
      
      public function addObject(param1:§>@§) : void
      {
         this.§%`§.push(param1);
      }
      
      public function §'"%§(param1:int) : §7D§
      {
         return this.§%j§[param1];
      }
      
      public function §+A§(param1:§7D§) : void
      {
         this.§%j§.push(param1);
      }
      
      public function §=4§(param1:int) : §!!P§
      {
         return this.mBirds[param1];
      }
      
      public function §1W§(param1:§!!P§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §7f§() : void
      {
         this.§?§ = new Vector.<§+!V§>();
      }
      
      public function § !P§() : void
      {
         this.mBirds = new Vector.<§!!P§>();
      }
      
      public function §2l§(param1:int) : §+!V§
      {
         return this.§?§[param1];
      }
      
      public function §3$§(param1:§+!V§) : void
      {
         this.§?§.push(param1);
      }
   }
}
