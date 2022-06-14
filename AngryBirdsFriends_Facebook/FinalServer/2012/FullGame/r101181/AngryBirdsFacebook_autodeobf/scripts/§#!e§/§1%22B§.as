package §#!e§
{
   import §%Q§.§4u§;
   import §%Q§.§6G§;
   import §3"7§.*;
   import §8g§.§"!e§;
   import §8g§.§3"6§;
   import §8g§.§?!V§;
   import §9"!§.§9"3§;
   import §[!"§.§&0§;
   import flash.geom.Point;
   
   public class §1"B§
   {
      
      public static const §5!5§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §'!e§:Number = 0;
      
      public var §!f§:Number = -8;
      
      private var §&!Z§:Vector.<§3"6§> = null;
      
      private var § L§:Vector.<§"!e§> = null;
      
      private var §6'§:Vector.<§?!V§> = null;
      
      private var §#"F§:Vector.<§2!L§> = null;
      
      public var §>"@§:Number = 0;
      
      public var §6!v§:Boolean = false;
      
      public var §4Z§:int = 0;
      
      public var §-z§:int = 0;
      
      private var §[!;§:int = 0;
      
      private var §8!i§:String = null;
      
      public var mName:String = null;
      
      public function §1"B§()
      {
         super();
         this.§#"F§ = new Vector.<§2!L§>();
         this.§&!Z§ = new Vector.<§3"6§>();
         this.§ L§ = new Vector.<§"!e§>();
         this.§6'§ = new Vector.<§?!V§>();
         this.§8!i§ = §5!5§;
      }
      
      public static function §3q§(param1:String) : §1"B§
      {
         var _loc2_:§1"B§ = new §1"B§();
         _loc2_.§0S§(param1);
         return _loc2_;
      }
      
      public static function §<! §(param1:§4u§) : Boolean
      {
         if(param1.§7[§ == §4u§.§0!q§ || param1.§7[§ == §4u§.§[!`§ || param1.§7[§ == §4u§.§<!q§)
         {
            return true;
         }
         return false;
      }
      
      public static function §2!5§(param1:String) : §1"B§
      {
         var _loc2_:§1"B§ = §3q§(param1);
         _loc2_.§'!e§ = _loc2_.§ L§[0].x;
         _loc2_.§!f§ = _loc2_.§ L§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§&!Z§.length)
         {
            _loc2_.§&!Z§[_loc3_].angle = 360 - _loc2_.§&!Z§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §=!§(param1:int, param2:Object) : Vector.<§?!V§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§?!V§ = null;
         var _loc3_:Vector.<§?!V§> = new Vector.<§?!V§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §?!V§.§#!g§ || _loc5_.type == §?!V§.§+&§)
               {
                  _loc8_ = new §?!V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §?!V§.§+&§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §?!V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §?!V§.§3!x§)
               {
                  _loc8_.§]A§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §-!e§() : int
      {
         return this.§&!Z§.length;
      }
      
      public function get §2D§() : int
      {
         return this.§6'§.length;
      }
      
      public function get §#"=§() : int
      {
         return this.§ L§.length;
      }
      
      public function get §6X§() : int
      {
         return this.§#"F§.length;
      }
      
      public function get theme() : String
      {
         return this.§8!i§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§8!i§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§@!F§();
         if(_loc1_ > 0 && _loc1_ < this.§[!;§)
         {
            return _loc1_;
         }
         if(this.§[!;§ == 0)
         {
            return _loc1_;
         }
         return this.§[!;§;
      }
      
      public function § E§(param1:int) : void
      {
         var _loc2_:int = this.§@!F§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§[!;§ = param1;
      }
      
      public function §0S§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§2!L§ = null;
         var _loc9_:Object = null;
         var _loc10_:§"!e§ = null;
         var _loc11_:§3"6§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§>"@§ = _loc2_.LevelExtension;
         this.§6!v§ = false;
         this.§4Z§ = _loc2_.scoreSilver;
         this.§-z§ = _loc2_.scoreGold;
         this.§[!;§ = _loc2_.scoreEagle;
         this.§8!i§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§6'§ = §=!§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§#"F§ = new Vector.<§2!L§>();
         this.§ L§ = new Vector.<§"!e§>();
         this.§&!Z§ = new Vector.<§3"6§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §2!L§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§#"F§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §"!e§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§ L§.push(_loc10_);
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
            (_loc11_ = new §3"6§()).x = _loc5_.x;
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
            this.§&!Z§.push(_loc11_);
            _loc3_++;
         }
         this.§'!e§ = _loc2_.slingshotX;
         this.§!f§ = _loc2_.slingshotY;
      }
      
      public function §]!F§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§>"@§;
         _loc1_.scoreSilver = this.§4Z§;
         _loc1_.scoreGold = this.§-z§;
         _loc1_.scoreEagle = this.§[!;§;
         _loc1_.theme = this.§8!i§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§#"F§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§ L§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§ L§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&!Z§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§&!Z§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§6'§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§6'§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§&!Z§.length;
         _loc1_.counts.birds = this.§ L§.length;
         _loc1_.counts.joints = this.§6'§.length;
         _loc1_.slingshotX = this.§'!e§;
         _loc1_.slingshotY = this.§!f§;
         return _loc1_;
      }
      
      public function §1§() : String
      {
         return JSON.stringify(this.§]!F§());
      }
      
      public function §@!F§() : int
      {
         var _loc2_:§3"6§ = null;
         var _loc3_:String = null;
         var _loc4_:§4u§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!Z§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §6G§.§1!P§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §6G§.§1!P§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§<! §(_loc4_))
               {
                  _loc1_ += _loc4_.§@!h§ * §9"3§.§0!Q§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §;,§() : XML
      {
         var _loc2_:§2!L§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§>"@§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§6!v§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§4Z§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§-z§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§#"F§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §&0§.§'v§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§ L§[0].x + "\" y=\"" + (this.§ L§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§ L§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§ L§[_loc3_].id + "\" x=\"" + this.§ L§[_loc3_].x + "\" y=\"" + this.§ L§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§&!Z§.length)
         {
            _loc1_ += "<Item id=\"" + this.§&!Z§[_loc3_].id + "\" x=\"" + this.§&!Z§[_loc3_].x + "\" y=\"" + this.§&!Z§[_loc3_].y + "\" rotation=\"" + this.§&!Z§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §!!A§(param1:int) : §3"6§
      {
         return this.§&!Z§[param1];
      }
      
      public function addObject(param1:§3"6§) : void
      {
         this.§&!Z§.push(param1);
      }
      
      public function §#f§(param1:int) : §?!V§
      {
         return this.§6'§[param1];
      }
      
      public function §#v§(param1:§?!V§) : void
      {
         this.§6'§.push(param1);
      }
      
      public function § !V§(param1:int) : §"!e§
      {
         return this.§ L§[param1];
      }
      
      public function §#I§(param1:§"!e§) : void
      {
         this.§ L§.push(param1);
      }
      
      public function §]!m§() : void
      {
         this.§#"F§ = new Vector.<§2!L§>();
      }
      
      public function §]!§() : void
      {
         this.§ L§ = new Vector.<§"!e§>();
      }
      
      public function §[W§(param1:int) : §2!L§
      {
         return this.§#"F§[param1];
      }
      
      public function §%!Y§(param1:§2!L§) : void
      {
         this.§#"F§.push(param1);
      }
   }
}
