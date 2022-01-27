package §3!%§
{
   import §%y§.§0?§;
   import §%y§.§@Q§;
   import §%y§.§^!D§;
   import §'d§.§,_§;
   import §'d§.§;"§;
   import §,!F§.§#§;
   import §1!'§.*;
   import §[!A§.§+!!§;
   import flash.geom.Point;
   
   public class §#!K§
   {
      
      public static const §6D§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §3'§:Number = 0;
      
      public var §&s§:Number = -8;
      
      private var §@#§:Vector.<§^!D§> = null;
      
      private var §6!$§:Vector.<§0?§> = null;
      
      private var §^!§:Vector.<§@Q§> = null;
      
      private var §%B§:Vector.<§3P§> = null;
      
      public var §-F§:Number = 0;
      
      public var §each §:Boolean = false;
      
      public var §]!H§:int = 0;
      
      public var §+!<§:int = 0;
      
      private var §3!G§:int = 0;
      
      private var §0U§:String = null;
      
      public var mName:String = null;
      
      public function §#!K§()
      {
         super();
         this.§%B§ = new Vector.<§3P§>();
         this.§@#§ = new Vector.<§^!D§>();
         this.§6!$§ = new Vector.<§0?§>();
         this.§^!§ = new Vector.<§@Q§>();
         this.§0U§ = §6D§;
      }
      
      public static function §13§(param1:String) : §#!K§
      {
         var _loc2_:§#!K§ = new §#!K§();
         _loc2_.§7!K§(param1);
         return _loc2_;
      }
      
      public static function §+r§(param1:§;"§) : Boolean
      {
         if(param1.§5a§ == §;"§.§]n§ || param1.§5a§ == §;"§.§9!C§ || param1.§5a§ == §;"§.§78§)
         {
            return true;
         }
         return false;
      }
      
      public static function §!5§(param1:String) : §#!K§
      {
         var _loc2_:§#!K§ = §13§(param1);
         _loc2_.§3'§ = _loc2_.§6!$§[0].x;
         _loc2_.§&s§ = _loc2_.§6!$§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@#§.length)
         {
            _loc2_.§@#§[_loc3_].angle = 360 - _loc2_.§@#§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §9o§(param1:int, param2:Object) : Vector.<§@Q§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§@Q§ = null;
         var _loc3_:Vector.<§@Q§> = new Vector.<§@Q§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §@Q§.§!1§ || _loc5_.type == §@Q§.§+-§)
               {
                  _loc8_ = new §@Q§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §@Q§.§+-§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §@Q§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §@Q§.§57§)
               {
                  _loc8_.§^L§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §`!;§() : int
      {
         return this.§@#§.length;
      }
      
      public function get §&Y§() : int
      {
         return this.§^!§.length;
      }
      
      public function get §'!L§() : int
      {
         return this.§6!$§.length;
      }
      
      public function get §0<§() : int
      {
         return this.§%B§.length;
      }
      
      public function get theme() : String
      {
         return this.§0U§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§0U§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§%!P§();
         if(_loc1_ > 0 && _loc1_ < this.§3!G§)
         {
            return _loc1_;
         }
         if(this.§3!G§ == 0)
         {
            return _loc1_;
         }
         return this.§3!G§;
      }
      
      public function §;b§(param1:int) : void
      {
         var _loc2_:int = this.§%!P§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§3!G§ = param1;
      }
      
      public function §7!K§(param1:String) : void
      {
         var _loc4_:§3P§ = null;
         var _loc5_:Object = null;
         var _loc6_:§0?§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§^!D§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§-F§ = _loc2_.LevelExtension;
         this.§each § = false;
         this.§]!H§ = _loc2_.scoreSilver;
         this.§+!<§ = _loc2_.scoreGold;
         this.§3!G§ = _loc2_.scoreEagle;
         this.§0U§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§^!§ = §9o§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§%B§ = new Vector.<§3P§>();
         this.§6!$§ = new Vector.<§0?§>();
         this.§@#§ = new Vector.<§^!D§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §3P§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§%B§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §0?§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§6!$§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §^!D§()).x = _loc8_.x;
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
            this.§@#§.push(_loc9_);
            _loc3_++;
         }
         this.§3'§ = _loc2_.slingshotX;
         this.§&s§ = _loc2_.slingshotY;
      }
      
      public function §&B§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§-F§;
         _loc1_.scoreSilver = this.§]!H§;
         _loc1_.scoreGold = this.§+!<§;
         _loc1_.scoreEagle = this.§3!G§;
         _loc1_.theme = this.§0U§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§%B§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§6!$§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§6!$§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@#§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§@#§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§^!§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§^!§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§@#§.length;
         _loc1_.counts.birds = this.§6!$§.length;
         _loc1_.counts.joints = this.§^!§.length;
         _loc1_.slingshotX = this.§3'§;
         _loc1_.slingshotY = this.§&s§;
         return _loc1_;
      }
      
      public function §^l§() : String
      {
         return JSON.stringify(this.§&B§());
      }
      
      public function §%!P§() : int
      {
         var _loc2_:§^!D§ = null;
         var _loc3_:String = null;
         var _loc4_:§;"§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@#§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §,_§.§89§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §,_§.§89§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§+r§(_loc4_))
               {
                  _loc1_ += _loc4_.§`t§ * §#§.§'0§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §56§() : XML
      {
         var _loc2_:§3P§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§-F§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§each § + "\"";
         _loc1_ += " scoreSilver=\"" + this.§]!H§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§+!<§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§%B§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §+!!§.§>"§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§6!$§[0].x + "\" y=\"" + (this.§6!$§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§6!$§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§6!$§[_loc3_].id + "\" x=\"" + this.§6!$§[_loc3_].x + "\" y=\"" + this.§6!$§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§@#§.length)
         {
            _loc1_ += "<Item id=\"" + this.§@#§[_loc3_].id + "\" x=\"" + this.§@#§[_loc3_].x + "\" y=\"" + this.§@#§[_loc3_].y + "\" rotation=\"" + this.§@#§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §7r§(param1:int) : §^!D§
      {
         return this.§@#§[param1];
      }
      
      public function addObject(param1:§^!D§) : void
      {
         this.§@#§.push(param1);
      }
      
      public function §[!?§(param1:int) : §@Q§
      {
         return this.§^!§[param1];
      }
      
      public function §9!%§(param1:§@Q§) : void
      {
         this.§^!§.push(param1);
      }
      
      public function §7!L§(param1:int) : §0?§
      {
         return this.§6!$§[param1];
      }
      
      public function §7Z§(param1:§0?§) : void
      {
         this.§6!$§.push(param1);
      }
      
      public function §+!&§() : void
      {
         this.§%B§ = new Vector.<§3P§>();
      }
      
      public function §>J§() : void
      {
         this.§6!$§ = new Vector.<§0?§>();
      }
      
      public function §4!9§(param1:int) : §3P§
      {
         return this.§%B§[param1];
      }
      
      public function §8c§(param1:§3P§) : void
      {
         this.§%B§.push(param1);
      }
   }
}
