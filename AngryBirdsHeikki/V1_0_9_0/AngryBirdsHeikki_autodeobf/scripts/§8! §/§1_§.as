package §8! §
{
   import § d§.§'!"§;
   import §,z§.*;
   import §@!"§.§"E§;
   import §@!"§.§'!^§;
   import §@!"§.§0!%§;
   import §@!H§.§-f§;
   import §^-§.§4!`§;
   import §^-§.§;!f§;
   import flash.geom.Point;
   
   public class §1_§
   {
      
      public static const §[§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §4z§:Number = 0;
      
      public var §^x§:Number = -8;
      
      private var §'t§:Vector.<§'!^§> = null;
      
      private var §3!R§:Vector.<§"E§> = null;
      
      private var §`e§:Vector.<§0!%§> = null;
      
      private var §#Y§:Vector.<§^!F§> = null;
      
      public var §+$§:Number = 0;
      
      public var §2S§:Boolean = false;
      
      public var §]!@§:int = 0;
      
      public var §?!4§:int = 0;
      
      private var §8"§:int = 0;
      
      private var §3t§:String = null;
      
      public var mName:String = null;
      
      public function §1_§()
      {
         super();
         this.§#Y§ = new Vector.<§^!F§>();
         this.§'t§ = new Vector.<§'!^§>();
         this.§3!R§ = new Vector.<§"E§>();
         this.§`e§ = new Vector.<§0!%§>();
         this.§3t§ = §[§;
      }
      
      public static function §28§(param1:String) : §1_§
      {
         var _loc2_:§1_§ = new §1_§();
         _loc2_.§0!4§(param1);
         return _loc2_;
      }
      
      public static function §8!V§(param1:§4!`§) : Boolean
      {
         if(param1.§`O§ == §4!`§.§8V§ || param1.§`O§ == §4!`§.§?7§ || param1.§`O§ == §4!`§.§&M§)
         {
            return true;
         }
         return false;
      }
      
      public static function §39§(param1:String) : §1_§
      {
         var _loc2_:§1_§ = §28§(param1);
         _loc2_.§4z§ = _loc2_.§3!R§[0].x;
         _loc2_.§^x§ = _loc2_.§3!R§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§'t§.length)
         {
            _loc2_.§'t§[_loc3_].angle = 360 - _loc2_.§'t§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §,u§(param1:int, param2:Object) : Vector.<§0!%§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§0!%§ = null;
         var _loc3_:Vector.<§0!%§> = new Vector.<§0!%§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §0!%§.§'!'§ || _loc5_.type == §0!%§.§'!d§)
               {
                  _loc8_ = new §0!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §0!%§.§'!d§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §0!%§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §0!%§.§[C§)
               {
                  _loc8_.§%L§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §@L§() : int
      {
         return this.§'t§.length;
      }
      
      public function get §#V§() : int
      {
         return this.§`e§.length;
      }
      
      public function get §@!K§() : int
      {
         return this.§3!R§.length;
      }
      
      public function get §4!X§() : int
      {
         return this.§#Y§.length;
      }
      
      public function get theme() : String
      {
         return this.§3t§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§3t§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§'!J§();
         if(_loc1_ > 0 && _loc1_ < this.§8"§)
         {
            return _loc1_;
         }
         if(this.§8"§ == 0)
         {
            return _loc1_;
         }
         return this.§8"§;
      }
      
      public function §]E§(param1:int) : void
      {
         var _loc2_:int = this.§'!J§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§8"§ = param1;
      }
      
      public function §0!4§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§^!F§ = null;
         var _loc9_:Object = null;
         var _loc10_:§"E§ = null;
         var _loc11_:§'!^§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§+$§ = _loc2_.LevelExtension;
         this.§2S§ = false;
         this.§]!@§ = _loc2_.scoreSilver;
         this.§?!4§ = _loc2_.scoreGold;
         this.§8"§ = _loc2_.scoreEagle;
         this.§3t§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§`e§ = §,u§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§#Y§ = new Vector.<§^!F§>();
         this.§3!R§ = new Vector.<§"E§>();
         this.§'t§ = new Vector.<§'!^§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §^!F§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§#Y§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §"E§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§3!R§.push(_loc10_);
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
            (_loc11_ = new §'!^§()).x = _loc5_.x;
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
            this.§'t§.push(_loc11_);
            _loc3_++;
         }
         this.§4z§ = _loc2_.slingshotX;
         this.§^x§ = _loc2_.slingshotY;
      }
      
      public function §=!3§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§+$§;
         _loc1_.scoreSilver = this.§]!@§;
         _loc1_.scoreGold = this.§?!4§;
         _loc1_.scoreEagle = this.§8"§;
         _loc1_.theme = this.§3t§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§#Y§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§3!R§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§3!R§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§'t§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§'t§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§`e§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§`e§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§'t§.length;
         _loc1_.counts.birds = this.§3!R§.length;
         _loc1_.counts.joints = this.§`e§.length;
         _loc1_.slingshotX = this.§4z§;
         _loc1_.slingshotY = this.§^x§;
         return _loc1_;
      }
      
      public function §&!+§() : String
      {
         return JSON.stringify(this.§=!3§());
      }
      
      public function §'!J§() : int
      {
         var _loc2_:§'!^§ = null;
         var _loc3_:String = null;
         var _loc4_:§4!`§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§'t§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §;!f§.§]!L§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §;!f§.§]!L§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§8!V§(_loc4_))
               {
                  _loc1_ += _loc4_.§&J§ * §'!"§.§5H§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §4H§() : XML
      {
         var _loc2_:§^!F§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§+$§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§2S§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§]!@§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§?!4§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§#Y§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §-f§.§9"§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§3!R§[0].x + "\" y=\"" + (this.§3!R§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§3!R§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§3!R§[_loc3_].id + "\" x=\"" + this.§3!R§[_loc3_].x + "\" y=\"" + this.§3!R§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§'t§.length)
         {
            _loc1_ += "<Item id=\"" + this.§'t§[_loc3_].id + "\" x=\"" + this.§'t§[_loc3_].x + "\" y=\"" + this.§'t§[_loc3_].y + "\" rotation=\"" + this.§'t§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §<Q§(param1:int) : §'!^§
      {
         return this.§'t§[param1];
      }
      
      public function §3!1§(param1:§'!^§) : void
      {
         this.§'t§.push(param1);
      }
      
      public function §!M§(param1:int) : §0!%§
      {
         return this.§`e§[param1];
      }
      
      public function §3E§(param1:§0!%§) : void
      {
         this.§`e§.push(param1);
      }
      
      public function §3Q§(param1:int) : §"E§
      {
         return this.§3!R§[param1];
      }
      
      public function §`!L§(param1:§"E§) : void
      {
         this.§3!R§.push(param1);
      }
      
      public function §@G§() : void
      {
         this.§#Y§ = new Vector.<§^!F§>();
      }
      
      public function §[!4§() : void
      {
         this.§3!R§ = new Vector.<§"E§>();
      }
      
      public function §!B§(param1:int) : §^!F§
      {
         return this.§#Y§[param1];
      }
      
      public function §7S§(param1:§^!F§) : void
      {
         this.§#Y§.push(param1);
      }
   }
}
