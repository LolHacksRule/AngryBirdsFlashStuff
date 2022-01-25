package §-!F§
{
   import §3G§.§!C§;
   import §3G§.§-s§;
   import §4!,§.§+f§;
   import §5!M§.*;
   import §55§.§>![§;
   import §`i§.§0u§;
   import §`i§.§7Y§;
   import §`i§.§[!n§;
   import flash.geom.Point;
   
   public class §`+§
   {
      
      public static const §`!m§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §&l§:Number = 0;
      
      public var §60§:Number = -8;
      
      private var § k§:Vector.<§[!n§> = null;
      
      private var §!!e§:Vector.<§0u§> = null;
      
      private var §72§:Vector.<§7Y§> = null;
      
      private var §!!'§:Vector.<§;!?§> = null;
      
      public var §%E§:Number = 0;
      
      public var §?h§:Boolean = false;
      
      public var §2H§:int = 0;
      
      public var §;k§:int = 0;
      
      private var §1!X§:int = 0;
      
      private var §;!g§:String = null;
      
      public var mName:String = null;
      
      public function §`+§()
      {
         super();
         this.§!!'§ = new Vector.<§;!?§>();
         this.§ k§ = new Vector.<§[!n§>();
         this.§!!e§ = new Vector.<§0u§>();
         this.§72§ = new Vector.<§7Y§>();
         this.§;!g§ = §`!m§;
      }
      
      public static function §[!!§(param1:String) : §`+§
      {
         var _loc2_:§`+§ = new §`+§();
         _loc2_.§>!i§(param1);
         return _loc2_;
      }
      
      public static function §]§(param1:§!C§) : Boolean
      {
         if(param1.§=4§ == §!C§.§^!p§ || param1.§=4§ == §!C§.§ W§ || param1.§=4§ == §!C§.§%!8§)
         {
            return true;
         }
         return false;
      }
      
      public static function §,!5§(param1:String) : §`+§
      {
         var _loc2_:§`+§ = §[!!§(param1);
         _loc2_.§&l§ = _loc2_.§!!e§[0].x;
         _loc2_.§60§ = _loc2_.§!!e§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§ k§.length)
         {
            _loc2_.§ k§[_loc3_].angle = 360 - _loc2_.§ k§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §<T§(param1:int, param2:Object) : Vector.<§7Y§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§7Y§ = null;
         var _loc3_:Vector.<§7Y§> = new Vector.<§7Y§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §7Y§.§6!b§ || _loc5_.type == §7Y§.§"h§)
               {
                  _loc8_ = new §7Y§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §7Y§.§"h§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §7Y§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §7Y§.§=!;§)
               {
                  _loc8_.§+!i§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §?v§() : int
      {
         return this.§ k§.length;
      }
      
      public function get §+!§() : int
      {
         return this.§72§.length;
      }
      
      public function get §4!f§() : int
      {
         return this.§!!e§.length;
      }
      
      public function get §'v§() : int
      {
         return this.§!!'§.length;
      }
      
      public function get theme() : String
      {
         return this.§;!g§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§;!g§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§0!U§();
         if(_loc1_ > 0 && _loc1_ < this.§1!X§)
         {
            return _loc1_;
         }
         if(this.§1!X§ == 0)
         {
            return _loc1_;
         }
         return this.§1!X§;
      }
      
      public function §?n§(param1:int) : void
      {
         var _loc2_:int = this.§0!U§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§1!X§ = param1;
      }
      
      public function §>!i§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§;!?§ = null;
         var _loc9_:Object = null;
         var _loc10_:§0u§ = null;
         var _loc11_:§[!n§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§%E§ = _loc2_.LevelExtension;
         this.§?h§ = false;
         this.§2H§ = _loc2_.scoreSilver;
         this.§;k§ = _loc2_.scoreGold;
         this.§1!X§ = _loc2_.scoreEagle;
         this.§;!g§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§72§ = §<T§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§!!'§ = new Vector.<§;!?§>();
         this.§!!e§ = new Vector.<§0u§>();
         this.§ k§ = new Vector.<§[!n§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §;!?§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§!!'§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §0u§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§!!e§.push(_loc10_);
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
            (_loc11_ = new §[!n§()).x = _loc5_.x;
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
            this.§ k§.push(_loc11_);
            _loc3_++;
         }
         this.§&l§ = _loc2_.slingshotX;
         this.§60§ = _loc2_.slingshotY;
      }
      
      public function §"!i§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§%E§;
         _loc1_.scoreSilver = this.§2H§;
         _loc1_.scoreGold = this.§;k§;
         _loc1_.scoreEagle = this.§1!X§;
         _loc1_.theme = this.§;!g§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§!!'§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§!!e§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§!!e§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ k§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§ k§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§72§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§72§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§ k§.length;
         _loc1_.counts.birds = this.§!!e§.length;
         _loc1_.counts.joints = this.§72§.length;
         _loc1_.slingshotX = this.§&l§;
         _loc1_.slingshotY = this.§60§;
         return _loc1_;
      }
      
      public function §""§() : String
      {
         return JSON.stringify(this.§"!i§());
      }
      
      public function §0!U§() : int
      {
         var _loc2_:§[!n§ = null;
         var _loc3_:String = null;
         var _loc4_:§!C§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ k§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §-s§.§[!G§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §-s§.§[!G§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§]§(_loc4_))
               {
                  _loc1_ += _loc4_.§6w§ * §>![§.§[]§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §=x§() : XML
      {
         var _loc2_:§;!?§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§%E§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§?h§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§2H§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§;k§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§!!'§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §+f§.§5&§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§!!e§[0].x + "\" y=\"" + (this.§!!e§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§!!e§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§!!e§[_loc3_].id + "\" x=\"" + this.§!!e§[_loc3_].x + "\" y=\"" + this.§!!e§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§ k§.length)
         {
            _loc1_ += "<Item id=\"" + this.§ k§[_loc3_].id + "\" x=\"" + this.§ k§[_loc3_].x + "\" y=\"" + this.§ k§[_loc3_].y + "\" rotation=\"" + this.§ k§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §3$§(param1:int) : §[!n§
      {
         return this.§ k§[param1];
      }
      
      public function §]!>§(param1:§[!n§) : void
      {
         this.§ k§.push(param1);
      }
      
      public function §,'§(param1:int) : §7Y§
      {
         return this.§72§[param1];
      }
      
      public function §9i§(param1:§7Y§) : void
      {
         this.§72§.push(param1);
      }
      
      public function §&9§(param1:int) : §0u§
      {
         return this.§!!e§[param1];
      }
      
      public function §3[§(param1:§0u§) : void
      {
         this.§!!e§.push(param1);
      }
      
      public function §6N§() : void
      {
         this.§!!'§ = new Vector.<§;!?§>();
      }
      
      public function §1Z§() : void
      {
         this.§!!e§ = new Vector.<§0u§>();
      }
      
      public function §]5§(param1:int) : §;!?§
      {
         return this.§!!'§[param1];
      }
      
      public function §+F§(param1:§;!?§) : void
      {
         this.§!!'§.push(param1);
      }
   }
}
