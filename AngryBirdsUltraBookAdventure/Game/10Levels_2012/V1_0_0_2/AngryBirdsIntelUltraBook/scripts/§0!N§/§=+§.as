package §0!N§
{
   import § use§.§'!]§;
   import § use§.§+N§;
   import § use§.§0!D§;
   import §,!5§.§^g§;
   import §2!R§.§#C§;
   import §<!1§.§9B§;
   import §<!1§.§<F§;
   import §?!G§.*;
   import flash.geom.Point;
   
   public class §=+§
   {
      
      public static const §'!M§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §6y§:Number = 0;
      
      public var §8!r§:Number = -8;
      
      private var §>!!§:Vector.<§0!D§> = null;
      
      private var §?$§:Vector.<§'!]§> = null;
      
      private var §4a§:Vector.<§+N§> = null;
      
      private var §3t§:Vector.<§4!=§> = null;
      
      public var §&!O§:Number = 0;
      
      public var §?s§:Boolean = false;
      
      public var §8!l§:int = 0;
      
      public var §>!o§:int = 0;
      
      private var §2!y§:int = 0;
      
      private var §+!m§:String = null;
      
      public var mName:String = null;
      
      public function §=+§()
      {
         super();
         this.§3t§ = new Vector.<§4!=§>();
         this.§>!!§ = new Vector.<§0!D§>();
         this.§?$§ = new Vector.<§'!]§>();
         this.§4a§ = new Vector.<§+N§>();
         this.§+!m§ = §'!M§;
      }
      
      public static function §@^§(param1:String) : §=+§
      {
         var _loc2_:§=+§ = new §=+§();
         _loc2_.§0!Z§(param1);
         return _loc2_;
      }
      
      public static function §,!R§(param1:§9B§) : Boolean
      {
         if(param1.§6K§ == §9B§.§#!s§ || param1.§6K§ == §9B§.§=!%§ || param1.§6K§ == §9B§.§4x§)
         {
            return true;
         }
         return false;
      }
      
      public static function §"M§(param1:String) : §=+§
      {
         var _loc2_:§=+§ = §@^§(param1);
         _loc2_.§6y§ = _loc2_.§?$§[0].x;
         _loc2_.§8!r§ = _loc2_.§?$§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§>!!§.length)
         {
            _loc2_.§>!!§[_loc3_].angle = 360 - _loc2_.§>!!§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §4m§(param1:int, param2:Object) : Vector.<§+N§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§+N§ = null;
         var _loc3_:Vector.<§+N§> = new Vector.<§+N§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §+N§.§!p§ || _loc5_.type == §+N§.§0!'§)
               {
                  _loc8_ = new §+N§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §+N§.§0!'§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §+N§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §+N§.§3!!§)
               {
                  _loc8_.§5l§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get § %§() : int
      {
         return this.§>!!§.length;
      }
      
      public function get §^!"§() : int
      {
         return this.§4a§.length;
      }
      
      public function get §]U§() : int
      {
         return this.§?$§.length;
      }
      
      public function get §-!"§() : int
      {
         return this.§3t§.length;
      }
      
      public function get theme() : String
      {
         return this.§+!m§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§+!m§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§^!v§();
         if(_loc1_ > 0 && _loc1_ < this.§2!y§)
         {
            return _loc1_;
         }
         if(this.§2!y§ == 0)
         {
            return _loc1_;
         }
         return this.§2!y§;
      }
      
      public function § !M§(param1:int) : void
      {
         var _loc2_:int = this.§^!v§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§2!y§ = param1;
      }
      
      public function §0!Z§(param1:String) : void
      {
         var _loc4_:§4!=§ = null;
         var _loc5_:Object = null;
         var _loc6_:§'!]§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§0!D§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§&!O§ = _loc2_.LevelExtension;
         this.§?s§ = false;
         this.§8!l§ = _loc2_.scoreSilver;
         this.§>!o§ = _loc2_.scoreGold;
         this.§2!y§ = _loc2_.scoreEagle;
         this.§+!m§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§4a§ = §4m§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§3t§ = new Vector.<§4!=§>();
         this.§?$§ = new Vector.<§'!]§>();
         this.§>!!§ = new Vector.<§0!D§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §4!=§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§3t§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §'!]§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§?$§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §0!D§()).x = _loc8_.x;
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
            this.§>!!§.push(_loc9_);
            _loc3_++;
         }
         this.§6y§ = _loc2_.slingshotX;
         this.§8!r§ = _loc2_.slingshotY;
      }
      
      public function §&!6§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§&!O§;
         _loc1_.scoreSilver = this.§8!l§;
         _loc1_.scoreGold = this.§>!o§;
         _loc1_.scoreEagle = this.§2!y§;
         _loc1_.theme = this.§+!m§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§3t§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§?$§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§?$§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§>!!§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§>!!§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§4a§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§4a§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§>!!§.length;
         _loc1_.counts.birds = this.§?$§.length;
         _loc1_.counts.joints = this.§4a§.length;
         _loc1_.slingshotX = this.§6y§;
         _loc1_.slingshotY = this.§8!r§;
         return _loc1_;
      }
      
      public function §>>§() : String
      {
         return JSON.stringify(this.§&!6§());
      }
      
      public function §^!v§() : int
      {
         var _loc2_:§0!D§ = null;
         var _loc3_:String = null;
         var _loc4_:§9B§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§>!!§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §<F§.§1]§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §<F§.§1]§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§,!R§(_loc4_))
               {
                  _loc1_ += _loc4_.§-!!§ * §^g§.§>p§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §`F§() : XML
      {
         var _loc2_:§4!=§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§&!O§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§?s§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§8!l§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§>!o§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§3t§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §#C§.§&R§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§?$§[0].x + "\" y=\"" + (this.§?$§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§?$§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§?$§[_loc3_].id + "\" x=\"" + this.§?$§[_loc3_].x + "\" y=\"" + this.§?$§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§>!!§.length)
         {
            _loc1_ += "<Item id=\"" + this.§>!!§[_loc3_].id + "\" x=\"" + this.§>!!§[_loc3_].x + "\" y=\"" + this.§>!!§[_loc3_].y + "\" rotation=\"" + this.§>!!§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §8!3§(param1:int) : §0!D§
      {
         return this.§>!!§[param1];
      }
      
      public function addObject(param1:§0!D§) : void
      {
         this.§>!!§.push(param1);
      }
      
      public function §!y§(param1:int) : §+N§
      {
         return this.§4a§[param1];
      }
      
      public function §"!K§(param1:§+N§) : void
      {
         this.§4a§.push(param1);
      }
      
      public function §0J§(param1:int) : §'!]§
      {
         return this.§?$§[param1];
      }
      
      public function §-T§(param1:§'!]§) : void
      {
         this.§?$§.push(param1);
      }
      
      public function §4!"§() : void
      {
         this.§3t§ = new Vector.<§4!=§>();
      }
      
      public function §7s§() : void
      {
         this.§?$§ = new Vector.<§'!]§>();
      }
      
      public function §6!L§(param1:int) : §4!=§
      {
         return this.§3t§[param1];
      }
      
      public function §&!=§(param1:§4!=§) : void
      {
         this.§3t§.push(param1);
      }
   }
}
