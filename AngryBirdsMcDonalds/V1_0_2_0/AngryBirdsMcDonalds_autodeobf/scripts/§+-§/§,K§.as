package §+-§
{
   import §%!E§.*;
   import §'a§.§0!f§;
   import §4s§.§>!"§;
   import §4s§.§?!O§;
   import §[_§.§2D§;
   import §`!C§.§"!5§;
   import §`!C§.§?0§;
   import §`!C§.§^!B§;
   import flash.geom.Point;
   
   public class §,K§
   {
      
      public static const §9!+§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §3!k§:Number = 0;
      
      public var §"!"§:Number = -8;
      
      private var §17§:Vector.<§?0§> = null;
      
      private var §^!@§:Vector.<§^!B§> = null;
      
      private var §;F§:Vector.<§"!5§> = null;
      
      private var §`!U§:Vector.<§^D§> = null;
      
      public var §5!§:Number = 0;
      
      public var §8!l§:Boolean = false;
      
      public var §9!&§:int = 0;
      
      public var §3!7§:int = 0;
      
      private var §<!#§:int = 0;
      
      private var §>P§:String = null;
      
      public var mName:String = null;
      
      public function §,K§()
      {
         super();
         this.§`!U§ = new Vector.<§^D§>();
         this.§17§ = new Vector.<§?0§>();
         this.§^!@§ = new Vector.<§^!B§>();
         this.§;F§ = new Vector.<§"!5§>();
         this.§>P§ = §9!+§;
      }
      
      public static function §4w§(param1:String) : §,K§
      {
         var _loc2_:§,K§ = new §,K§();
         _loc2_.§]j§(param1);
         return _loc2_;
      }
      
      public static function §`!0§(param1:§?!O§) : Boolean
      {
         if(param1.§=!6§ == §?!O§.§#!4§ || param1.§=!6§ == §?!O§.§`5§ || param1.§=!6§ == §?!O§.§4J§)
         {
            return true;
         }
         return false;
      }
      
      public static function §[Q§(param1:String) : §,K§
      {
         var _loc2_:§,K§ = §4w§(param1);
         _loc2_.§3!k§ = _loc2_.§^!@§[0].x;
         _loc2_.§"!"§ = _loc2_.§^!@§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§17§.length)
         {
            _loc2_.§17§[_loc3_].angle = 360 - _loc2_.§17§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §@v§(param1:int, param2:Object) : Vector.<§"!5§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§"!5§ = null;
         var _loc3_:Vector.<§"!5§> = new Vector.<§"!5§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §"!5§.§=c§ || _loc5_.type == §"!5§.§@3§)
               {
                  _loc8_ = new §"!5§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §"!5§.§@3§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §"!5§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §"!5§.§=a§)
               {
                  _loc8_.§&V§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §2!E§() : int
      {
         return this.§17§.length;
      }
      
      public function get §[!h§() : int
      {
         return this.§;F§.length;
      }
      
      public function get §,!§() : int
      {
         return this.§^!@§.length;
      }
      
      public function get §2y§() : int
      {
         return this.§`!U§.length;
      }
      
      public function get theme() : String
      {
         return this.§>P§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§>P§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§0!n§();
         if(_loc1_ > 0 && _loc1_ < this.§<!#§)
         {
            return _loc1_;
         }
         if(this.§<!#§ == 0)
         {
            return _loc1_;
         }
         return this.§<!#§;
      }
      
      public function §]!N§(param1:int) : void
      {
         var _loc2_:int = this.§0!n§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§<!#§ = param1;
      }
      
      public function §]j§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§^D§ = null;
         var _loc9_:Object = null;
         var _loc10_:§^!B§ = null;
         var _loc11_:§?0§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§5!§ = _loc2_.LevelExtension;
         this.§8!l§ = false;
         this.§9!&§ = _loc2_.scoreSilver;
         this.§3!7§ = _loc2_.scoreGold;
         this.§<!#§ = _loc2_.scoreEagle;
         this.§>P§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§;F§ = §@v§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§`!U§ = new Vector.<§^D§>();
         this.§^!@§ = new Vector.<§^!B§>();
         this.§17§ = new Vector.<§?0§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §^D§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§`!U§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §^!B§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§^!@§.push(_loc10_);
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
            (_loc11_ = new §?0§()).x = _loc5_.x;
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
            this.§17§.push(_loc11_);
            _loc3_++;
         }
         this.§3!k§ = _loc2_.slingshotX;
         this.§"!"§ = _loc2_.slingshotY;
      }
      
      public function §!V§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§5!§;
         _loc1_.scoreSilver = this.§9!&§;
         _loc1_.scoreGold = this.§3!7§;
         _loc1_.scoreEagle = this.§<!#§;
         _loc1_.theme = this.§>P§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§`!U§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§^!@§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§^!@§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§17§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§17§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§;F§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§;F§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§17§.length;
         _loc1_.counts.birds = this.§^!@§.length;
         _loc1_.counts.joints = this.§;F§.length;
         _loc1_.slingshotX = this.§3!k§;
         _loc1_.slingshotY = this.§"!"§;
         return _loc1_;
      }
      
      public function §@M§() : String
      {
         return JSON.stringify(this.§!V§());
      }
      
      public function §0!n§() : int
      {
         var _loc2_:§?0§ = null;
         var _loc3_:String = null;
         var _loc4_:§?!O§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§17§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §>!"§.§??§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §>!"§.§??§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§`!0§(_loc4_))
               {
                  _loc1_ += _loc4_.§"!j§ * §0!f§.§8&§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §3!e§() : XML
      {
         var _loc2_:§^D§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§5!§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§8!l§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§9!&§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§3!7§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§`!U§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §2D§.§@t§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§^!@§[0].x + "\" y=\"" + (this.§^!@§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§^!@§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§^!@§[_loc3_].id + "\" x=\"" + this.§^!@§[_loc3_].x + "\" y=\"" + this.§^!@§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§17§.length)
         {
            _loc1_ += "<Item id=\"" + this.§17§[_loc3_].id + "\" x=\"" + this.§17§[_loc3_].x + "\" y=\"" + this.§17§[_loc3_].y + "\" rotation=\"" + this.§17§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §6!e§(param1:int) : §?0§
      {
         return this.§17§[param1];
      }
      
      public function §1!!§(param1:§?0§) : void
      {
         this.§17§.push(param1);
      }
      
      public function §`!X§(param1:int) : §"!5§
      {
         return this.§;F§[param1];
      }
      
      public function §3y§(param1:§"!5§) : void
      {
         this.§;F§.push(param1);
      }
      
      public function §]!V§(param1:int) : §^!B§
      {
         return this.§^!@§[param1];
      }
      
      public function § for§(param1:§^!B§) : void
      {
         this.§^!@§.push(param1);
      }
      
      public function §"!>§() : void
      {
         this.§`!U§ = new Vector.<§^D§>();
      }
      
      public function §1!d§() : void
      {
         this.§^!@§ = new Vector.<§^!B§>();
      }
      
      public function §-R§(param1:int) : §^D§
      {
         return this.§`!U§[param1];
      }
      
      public function §%U§(param1:§^D§) : void
      {
         this.§`!U§.push(param1);
      }
   }
}
