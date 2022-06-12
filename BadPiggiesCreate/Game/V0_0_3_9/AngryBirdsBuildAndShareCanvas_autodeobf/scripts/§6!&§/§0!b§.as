package §6!&§
{
   import §%!t§.*;
   import §1'§.§%u§;
   import §1'§.§]"!§;
   import §1'§.§`!J§;
   import §3>§.§=!f§;
   import §3>§.§["!§;
   import §=b§.§-!K§;
   import §@!N§.§2i§;
   import flash.geom.Point;
   
   public class §0!b§
   {
      
      public static const §30§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §0@§:Number = 0;
      
      public var §,!E§:Number = -8;
      
      private var §7!z§:Vector.<§]"!§> = null;
      
      private var mBirds:Vector.<§%u§> = null;
      
      private var §6!§:Vector.<§`!J§> = null;
      
      private var §@!p§:Vector.<§2!O§> = null;
      
      public var §1!Z§:Number = 0;
      
      public var §0G§:Boolean = false;
      
      public var mScoreSilver:int = 0;
      
      public var mScoreGold:int = 0;
      
      private var §"!-§:int = 0;
      
      private var §8!'§:String = null;
      
      public var mName:String = null;
      
      public function §0!b§()
      {
         super();
         this.§@!p§ = new Vector.<§2!O§>();
         this.§7!z§ = new Vector.<§]"!§>();
         this.mBirds = new Vector.<§%u§>();
         this.§6!§ = new Vector.<§`!J§>();
         this.§8!'§ = §30§;
      }
      
      public static function §4!S§(param1:String) : §0!b§
      {
         var _loc2_:§0!b§ = new §0!b§();
         _loc2_.§93§(param1);
         return _loc2_;
      }
      
      public static function §+m§(param1:§=!f§) : Boolean
      {
         if(param1.§4!J§ == §=!f§.§0-§ || param1.§4!J§ == §=!f§.§;n§ || param1.§4!J§ == §=!f§.§[Y§)
         {
            return true;
         }
         return false;
      }
      
      public static function §#!s§(param1:String) : §0!b§
      {
         var _loc2_:§0!b§ = §4!S§(param1);
         _loc2_.§0@§ = _loc2_.mBirds[0].x;
         _loc2_.§,!E§ = _loc2_.mBirds[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§7!z§.length)
         {
            _loc2_.§7!z§[_loc3_].angle = 360 - _loc2_.§7!z§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §"Y§(param1:int, param2:Object) : Vector.<§`!J§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§`!J§ = null;
         var _loc3_:Vector.<§`!J§> = new Vector.<§`!J§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §`!J§.§#l§ || _loc5_.type == §`!J§.§="#§)
               {
                  _loc8_ = new §`!J§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §`!J§.§="#§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §`!J§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §`!J§.§6Q§)
               {
                  _loc8_.§9"%§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §%!2§() : int
      {
         return this.§7!z§.length;
      }
      
      public function get §<!1§() : int
      {
         return this.§6!§.length;
      }
      
      public function get §&9§() : int
      {
         return this.mBirds.length;
      }
      
      public function get §?!%§() : int
      {
         return this.§@!p§.length;
      }
      
      public function get theme() : String
      {
         return this.§8!'§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§8!'§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§%!E§();
         if(_loc1_ > 0 && _loc1_ < this.§"!-§)
         {
            return _loc1_;
         }
         if(this.§"!-§ == 0)
         {
            return _loc1_;
         }
         return this.§"!-§;
      }
      
      public function §]Q§(param1:int) : void
      {
         var _loc2_:int = this.§%!E§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§"!-§ = param1;
      }
      
      public function §93§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§2!O§ = null;
         var _loc9_:Object = null;
         var _loc10_:§%u§ = null;
         var _loc11_:§]"!§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§1!Z§ = _loc2_.LevelExtension;
         this.§0G§ = false;
         this.mScoreSilver = _loc2_.scoreSilver;
         this.mScoreGold = _loc2_.scoreGold;
         this.§"!-§ = _loc2_.scoreEagle;
         this.§8!'§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§6!§ = §"Y§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§@!p§ = new Vector.<§2!O§>();
         this.mBirds = new Vector.<§%u§>();
         this.§7!z§ = new Vector.<§]"!§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §2!O§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§@!p§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §%u§()).x = _loc9_.x;
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
            (_loc11_ = new §]"!§()).x = _loc5_.x;
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
            this.§7!z§.push(_loc11_);
            _loc3_++;
         }
         this.§0@§ = _loc2_.slingshotX;
         this.§,!E§ = _loc2_.slingshotY;
      }
      
      public function §=!I§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§1!Z§;
         _loc1_.scoreSilver = this.mScoreSilver;
         _loc1_.scoreGold = this.mScoreGold;
         _loc1_.scoreEagle = this.§"!-§;
         _loc1_.theme = this.§8!'§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§@!p§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.mBirds[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7!z§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§7!z§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§6!§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§6!§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§7!z§.length;
         _loc1_.counts.birds = this.mBirds.length;
         _loc1_.counts.joints = this.§6!§.length;
         _loc1_.slingshotX = this.§0@§;
         _loc1_.slingshotY = this.§,!E§;
         return _loc1_;
      }
      
      public function §%!§() : String
      {
         return JSON.stringify(this.§=!I§());
      }
      
      public function §%!E§() : int
      {
         var _loc2_:§]"!§ = null;
         var _loc3_:String = null;
         var _loc4_:§=!f§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7!z§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §["!§.§+!s§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §["!§.§+!s§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§+m§(_loc4_))
               {
                  _loc1_ += _loc4_.§@!#§ * §-!K§.§,j§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §"!#§() : XML
      {
         var _loc2_:§2!O§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§1!Z§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§0G§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.mScoreSilver + "\"";
         _loc1_ += " scoreGold=\"" + this.mScoreGold + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§@!p§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §2i§.SCREEN_HEIGHT_B2) + "\"></Camera>";
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
         while(_loc3_ < this.§7!z§.length)
         {
            _loc1_ += "<Item id=\"" + this.§7!z§[_loc3_].id + "\" x=\"" + this.§7!z§[_loc3_].x + "\" y=\"" + this.§7!z§[_loc3_].y + "\" rotation=\"" + this.§7!z§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §]"!§
      {
         return this.§7!z§[param1];
      }
      
      public function addObject(param1:§]"!§) : void
      {
         this.§7!z§.push(param1);
      }
      
      public function §2I§(param1:int) : §`!J§
      {
         return this.§6!§[param1];
      }
      
      public function §-!§(param1:§`!J§) : void
      {
         this.§6!§.push(param1);
      }
      
      public function §-!_§(param1:int) : §%u§
      {
         return this.mBirds[param1];
      }
      
      public function §#!N§(param1:§%u§) : void
      {
         this.mBirds.push(param1);
      }
      
      public function §-!o§() : void
      {
         this.§@!p§ = new Vector.<§2!O§>();
      }
      
      public function §5'§() : void
      {
         this.mBirds = new Vector.<§%u§>();
      }
      
      public function §8!x§(param1:int) : §2!O§
      {
         return this.§@!p§[param1];
      }
      
      public function §%5§(param1:§2!O§) : void
      {
         this.§@!p§.push(param1);
      }
   }
}
