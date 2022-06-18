package §#b§
{
   import § m§.§ r§;
   import § m§.§#!>§;
   import § m§.§3!B§;
   import §"P§.§9!L§;
   import §"P§.§]5§;
   import §#V§.§,!W§;
   import §-A§.§%9§;
   import §;S§.*;
   import flash.geom.Point;
   
   public class §85§
   {
      
      public static const §,q§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §<i§:Number = 0;
      
      public var §@f§:Number = -8;
      
      private var §!h§:Vector.<§ r§> = null;
      
      private var §3!Q§:Vector.<§3!B§> = null;
      
      private var §6<§:Vector.<§#!>§> = null;
      
      private var §'m§:Vector.<§8j§> = null;
      
      public var §2y§:Number = 0;
      
      public var §7u§:Boolean = false;
      
      public var §96§:int = 0;
      
      public var §[^§:int = 0;
      
      private var §#!B§:int = 0;
      
      private var §@3§:String = null;
      
      public var mName:String = null;
      
      public function §85§()
      {
         super();
         this.§'m§ = new Vector.<§8j§>();
         this.§!h§ = new Vector.<§ r§>();
         this.§3!Q§ = new Vector.<§3!B§>();
         this.§6<§ = new Vector.<§#!>§>();
         this.§@3§ = §,q§;
      }
      
      public static function §#S§(param1:String) : §85§
      {
         var _loc2_:§85§ = new §85§();
         _loc2_.§'f§(param1);
         return _loc2_;
      }
      
      public static function §3!J§(param1:§]5§) : Boolean
      {
         if(param1.§<s§ == §]5§.§[j§ || param1.§<s§ == §]5§.§`1§ || param1.§<s§ == §]5§.§,5§)
         {
            return true;
         }
         return false;
      }
      
      public static function §#d§(param1:String) : §85§
      {
         var _loc2_:§85§ = §#S§(param1);
         _loc2_.§<i§ = _loc2_.§3!Q§[0].x;
         _loc2_.§@f§ = _loc2_.§3!Q§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§!h§.length)
         {
            _loc2_.§!h§[_loc3_].angle = 360 - _loc2_.§!h§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §2!a§(param1:int, param2:Object) : Vector.<§#!>§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§#!>§ = null;
         var _loc3_:Vector.<§#!>§> = new Vector.<§#!>§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §#!>§.§#A§ || _loc5_.type == §#!>§.§,w§)
               {
                  _loc8_ = new §#!>§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §#!>§.§,w§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §#!>§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §#!>§.§ o§)
               {
                  _loc8_.§&e§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §6!8§() : int
      {
         return this.§!h§.length;
      }
      
      public function get §5!9§() : int
      {
         return this.§6<§.length;
      }
      
      public function get §;!8§() : int
      {
         return this.§3!Q§.length;
      }
      
      public function get §4!`§() : int
      {
         return this.§'m§.length;
      }
      
      public function get theme() : String
      {
         return this.§@3§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§@3§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§5C§();
         if(_loc1_ > 0 && _loc1_ < this.§#!B§)
         {
            return _loc1_;
         }
         if(this.§#!B§ == 0)
         {
            return _loc1_;
         }
         return this.§#!B§;
      }
      
      public function §1>§(param1:int) : void
      {
         var _loc2_:int = this.§5C§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§#!B§ = param1;
      }
      
      public function §'f§(param1:String) : void
      {
         var _loc4_:§8j§ = null;
         var _loc5_:Object = null;
         var _loc6_:§3!B§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§ r§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§2y§ = _loc2_.LevelExtension;
         this.§7u§ = false;
         this.§96§ = _loc2_.scoreSilver;
         this.§[^§ = _loc2_.scoreGold;
         this.§#!B§ = _loc2_.scoreEagle;
         this.§@3§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§6<§ = §2!a§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§'m§ = new Vector.<§8j§>();
         this.§3!Q§ = new Vector.<§3!B§>();
         this.§!h§ = new Vector.<§ r§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §8j§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§'m§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §3!B§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§3!Q§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new § r§()).x = _loc8_.x;
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
            this.§!h§.push(_loc9_);
            _loc3_++;
         }
         this.§<i§ = _loc2_.slingshotX;
         this.§@f§ = _loc2_.slingshotY;
      }
      
      public function §"N§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§2y§;
         _loc1_.scoreSilver = this.§96§;
         _loc1_.scoreGold = this.§[^§;
         _loc1_.scoreEagle = this.§#!B§;
         _loc1_.theme = this.§@3§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§'m§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§3!Q§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§3!Q§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!h§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§!h§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§6<§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§6<§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§!h§.length;
         _loc1_.counts.birds = this.§3!Q§.length;
         _loc1_.counts.joints = this.§6<§.length;
         _loc1_.slingshotX = this.§<i§;
         _loc1_.slingshotY = this.§@f§;
         return _loc1_;
      }
      
      public function §;c§() : String
      {
         return JSON.stringify(this.§"N§());
      }
      
      public function §5C§() : int
      {
         var _loc2_:§ r§ = null;
         var _loc3_:String = null;
         var _loc4_:§]5§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!h§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §9!L§.§=C§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §9!L§.§=C§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§3!J§(_loc4_))
               {
                  _loc1_ += _loc4_.§[!,§ * §%9§.§@K§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §<! §() : XML
      {
         var _loc2_:§8j§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§2y§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§7u§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§96§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§[^§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§'m§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §,!W§.§%1§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§3!Q§[0].x + "\" y=\"" + (this.§3!Q§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§3!Q§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§3!Q§[_loc3_].id + "\" x=\"" + this.§3!Q§[_loc3_].x + "\" y=\"" + this.§3!Q§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§!h§.length)
         {
            _loc1_ += "<Item id=\"" + this.§!h§[_loc3_].id + "\" x=\"" + this.§!h§[_loc3_].x + "\" y=\"" + this.§!h§[_loc3_].y + "\" rotation=\"" + this.§!h§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §"!B§(param1:int) : § r§
      {
         return this.§!h§[param1];
      }
      
      public function addObject(param1:§ r§) : void
      {
         this.§!h§.push(param1);
      }
      
      public function §class§(param1:int) : §#!>§
      {
         return this.§6<§[param1];
      }
      
      public function §6!4§(param1:§#!>§) : void
      {
         this.§6<§.push(param1);
      }
      
      public function §]!H§(param1:int) : §3!B§
      {
         return this.§3!Q§[param1];
      }
      
      public function §4!7§(param1:§3!B§) : void
      {
         this.§3!Q§.push(param1);
      }
      
      public function §]v§() : void
      {
         this.§'m§ = new Vector.<§8j§>();
      }
      
      public function §,Z§() : void
      {
         this.§3!Q§ = new Vector.<§3!B§>();
      }
      
      public function §"Z§(param1:int) : §8j§
      {
         return this.§'m§[param1];
      }
      
      public function §0§(param1:§8j§) : void
      {
         this.§'m§.push(param1);
      }
   }
}
