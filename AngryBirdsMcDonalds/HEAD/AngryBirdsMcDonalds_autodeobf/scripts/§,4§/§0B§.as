package §,4§
{
   import § !J§.§%M§;
   import §2!5§.*;
   import §9!§.§,!l§;
   import §9!§.§?g§;
   import §=!9§.§"!f§;
   import §=!9§.§=g§;
   import §=!9§.§?4§;
   import §?!d§.§-E§;
   import flash.geom.Point;
   
   public class §0B§
   {
      
      public static const §'Z§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §]H§:Number = 0;
      
      public var §0!L§:Number = -8;
      
      private var §@!g§:Vector.<§?4§> = null;
      
      private var §<!f§:Vector.<§"!f§> = null;
      
      private var §5q§:Vector.<§=g§> = null;
      
      private var §'1§:Vector.<§<f§> = null;
      
      public var §8P§:Number = 0;
      
      public var §&M§:Boolean = false;
      
      public var §-b§:int = 0;
      
      public var §+!Z§:int = 0;
      
      private var §"!#§:int = 0;
      
      private var §">§:String = null;
      
      public var mName:String = null;
      
      public function §0B§()
      {
         super();
         this.§'1§ = new Vector.<§<f§>();
         this.§@!g§ = new Vector.<§?4§>();
         this.§<!f§ = new Vector.<§"!f§>();
         this.§5q§ = new Vector.<§=g§>();
         this.§">§ = §'Z§;
      }
      
      public static function §,!]§(param1:String) : §0B§
      {
         var _loc2_:§0B§ = new §0B§();
         _loc2_.§`!4§(param1);
         return _loc2_;
      }
      
      public static function §2!S§(param1:§?g§) : Boolean
      {
         if(param1.§^!U§ == §?g§.§7n§ || param1.§^!U§ == §?g§.§ L§ || param1.§^!U§ == §?g§.§+H§)
         {
            return true;
         }
         return false;
      }
      
      public static function §1N§(param1:String) : §0B§
      {
         var _loc2_:§0B§ = §,!]§(param1);
         _loc2_.§]H§ = _loc2_.§<!f§[0].x;
         _loc2_.§0!L§ = _loc2_.§<!f§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@!g§.length)
         {
            _loc2_.§@!g§[_loc3_].angle = 360 - _loc2_.§@!g§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §9§(param1:int, param2:Object) : Vector.<§=g§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§=g§ = null;
         var _loc3_:Vector.<§=g§> = new Vector.<§=g§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §=g§.§@<§ || _loc5_.type == §=g§.§0!Q§)
               {
                  _loc8_ = new §=g§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §=g§.§0!Q§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §=g§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §=g§.§ ![§)
               {
                  _loc8_.§>!B§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §%b§() : int
      {
         return this.§@!g§.length;
      }
      
      public function get §^$§() : int
      {
         return this.§5q§.length;
      }
      
      public function get §![§() : int
      {
         return this.§<!f§.length;
      }
      
      public function get §0?§() : int
      {
         return this.§'1§.length;
      }
      
      public function get theme() : String
      {
         return this.§">§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§">§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§9Q§();
         if(_loc1_ > 0 && _loc1_ < this.§"!#§)
         {
            return _loc1_;
         }
         if(this.§"!#§ == 0)
         {
            return _loc1_;
         }
         return this.§"!#§;
      }
      
      public function §2<§(param1:int) : void
      {
         var _loc2_:int = this.§9Q§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§"!#§ = param1;
      }
      
      public function §`!4§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§<f§ = null;
         var _loc9_:Object = null;
         var _loc10_:§"!f§ = null;
         var _loc11_:§?4§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§8P§ = _loc2_.LevelExtension;
         this.§&M§ = false;
         this.§-b§ = _loc2_.scoreSilver;
         this.§+!Z§ = _loc2_.scoreGold;
         this.§"!#§ = _loc2_.scoreEagle;
         this.§">§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§5q§ = §9§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§'1§ = new Vector.<§<f§>();
         this.§<!f§ = new Vector.<§"!f§>();
         this.§@!g§ = new Vector.<§?4§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §<f§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§'1§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §"!f§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§<!f§.push(_loc10_);
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
            (_loc11_ = new §?4§()).x = _loc5_.x;
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
            this.§@!g§.push(_loc11_);
            _loc3_++;
         }
         this.§]H§ = _loc2_.slingshotX;
         this.§0!L§ = _loc2_.slingshotY;
      }
      
      public function §?J§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§8P§;
         _loc1_.scoreSilver = this.§-b§;
         _loc1_.scoreGold = this.§+!Z§;
         _loc1_.scoreEagle = this.§"!#§;
         _loc1_.theme = this.§">§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§'1§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§<!f§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§<!f§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@!g§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§@!g§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§5q§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§5q§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§@!g§.length;
         _loc1_.counts.birds = this.§<!f§.length;
         _loc1_.counts.joints = this.§5q§.length;
         _loc1_.slingshotX = this.§]H§;
         _loc1_.slingshotY = this.§0!L§;
         return _loc1_;
      }
      
      public function §7!P§() : String
      {
         return JSON.stringify(this.§?J§());
      }
      
      public function §9Q§() : int
      {
         var _loc2_:§?4§ = null;
         var _loc3_:String = null;
         var _loc4_:§?g§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!g§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §,!l§.§<!<§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §,!l§.§<!<§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§2!S§(_loc4_))
               {
                  _loc1_ += _loc4_.§%!^§ * §%M§.§#!N§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §+!f§() : XML
      {
         var _loc2_:§<f§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§8P§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§&M§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§-b§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§+!Z§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§'1§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §-E§.§4!f§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§<!f§[0].x + "\" y=\"" + (this.§<!f§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§<!f§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§<!f§[_loc3_].id + "\" x=\"" + this.§<!f§[_loc3_].x + "\" y=\"" + this.§<!f§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§@!g§.length)
         {
            _loc1_ += "<Item id=\"" + this.§@!g§[_loc3_].id + "\" x=\"" + this.§@!g§[_loc3_].x + "\" y=\"" + this.§@!g§[_loc3_].y + "\" rotation=\"" + this.§@!g§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §=!&§(param1:int) : §?4§
      {
         return this.§@!g§[param1];
      }
      
      public function §+"§(param1:§?4§) : void
      {
         this.§@!g§.push(param1);
      }
      
      public function §%!m§(param1:int) : §=g§
      {
         return this.§5q§[param1];
      }
      
      public function §5i§(param1:§=g§) : void
      {
         this.§5q§.push(param1);
      }
      
      public function §+]§(param1:int) : §"!f§
      {
         return this.§<!f§[param1];
      }
      
      public function §7!k§(param1:§"!f§) : void
      {
         this.§<!f§.push(param1);
      }
      
      public function §@!&§() : void
      {
         this.§'1§ = new Vector.<§<f§>();
      }
      
      public function §3!H§() : void
      {
         this.§<!f§ = new Vector.<§"!f§>();
      }
      
      public function §=+§(param1:int) : §<f§
      {
         return this.§'1§[param1];
      }
      
      public function §+4§(param1:§<f§) : void
      {
         this.§'1§.push(param1);
      }
   }
}
