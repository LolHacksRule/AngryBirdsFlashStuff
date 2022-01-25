package §86§
{
   import §1q§.§2W§;
   import §4A§.§&_§;
   import §<!M§.*;
   import §^p§.§'!D§;
   import §^p§.§[!P§;
   import §`!C§.§%@§;
   import §`!C§.§2!K§;
   import §`!C§.§8!9§;
   import flash.geom.Point;
   
   public class §9]§
   {
      
      public static const §8m§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §'`§:Number = 0;
      
      public var §1b§:Number = -8;
      
      private var §1!M§:Vector.<§8!9§> = null;
      
      private var §^!P§:Vector.<§%@§> = null;
      
      private var §8o§:Vector.<§2!K§> = null;
      
      private var §0e§:Vector.<§<!X§> = null;
      
      public var §8!F§:Number = 0;
      
      public var §0V§:Boolean = false;
      
      public var § !`§:int = 0;
      
      public var §,2§:int = 0;
      
      private var §-H§:int = 0;
      
      private var §]^§:String = null;
      
      public var mName:String = null;
      
      public function §9]§()
      {
         super();
         this.§0e§ = new Vector.<§<!X§>();
         this.§1!M§ = new Vector.<§8!9§>();
         this.§^!P§ = new Vector.<§%@§>();
         this.§8o§ = new Vector.<§2!K§>();
         this.§]^§ = §8m§;
      }
      
      public static function §19§(param1:String) : §9]§
      {
         var _loc2_:§9]§ = new §9]§();
         _loc2_.§7o§(param1);
         return _loc2_;
      }
      
      public static function §'!-§(param1:§'!D§) : Boolean
      {
         if(param1.§[w§ == §'!D§.§5[§ || param1.§[w§ == §'!D§.§?!C§ || param1.§[w§ == §'!D§.§&!>§)
         {
            return true;
         }
         return false;
      }
      
      public static function §]!2§(param1:String) : §9]§
      {
         var _loc2_:§9]§ = §19§(param1);
         _loc2_.§'`§ = _loc2_.§^!P§[0].x;
         _loc2_.§1b§ = _loc2_.§^!P§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§1!M§.length)
         {
            _loc2_.§1!M§[_loc3_].angle = 360 - _loc2_.§1!M§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §7Q§(param1:int, param2:Object) : Vector.<§2!K§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§2!K§ = null;
         var _loc3_:Vector.<§2!K§> = new Vector.<§2!K§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §2!K§.§!!6§ || _loc5_.type == §2!K§.§^!`§)
               {
                  _loc8_ = new §2!K§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §2!K§.§^!`§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §2!K§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §2!K§.§6m§)
               {
                  _loc8_.§`y§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §;r§() : int
      {
         return this.§1!M§.length;
      }
      
      public function get §4]§() : int
      {
         return this.§8o§.length;
      }
      
      public function get §^g§() : int
      {
         return this.§^!P§.length;
      }
      
      public function get §+a§() : int
      {
         return this.§0e§.length;
      }
      
      public function get theme() : String
      {
         return this.§]^§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§]^§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§`q§();
         if(_loc1_ > 0 && _loc1_ < this.§-H§)
         {
            return _loc1_;
         }
         if(this.§-H§ == 0)
         {
            return _loc1_;
         }
         return this.§-H§;
      }
      
      public function §2!-§(param1:int) : void
      {
         var _loc2_:int = this.§`q§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§-H§ = param1;
      }
      
      public function §7o§(param1:String) : void
      {
         var _loc4_:§<!X§ = null;
         var _loc5_:Object = null;
         var _loc6_:§%@§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§8!9§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§8!F§ = _loc2_.LevelExtension;
         this.§0V§ = false;
         this.§ !`§ = _loc2_.scoreSilver;
         this.§,2§ = _loc2_.scoreGold;
         this.§-H§ = _loc2_.scoreEagle;
         this.§]^§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§8o§ = §7Q§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§0e§ = new Vector.<§<!X§>();
         this.§^!P§ = new Vector.<§%@§>();
         this.§1!M§ = new Vector.<§8!9§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §<!X§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§0e§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §%@§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§^!P§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §8!9§()).x = _loc8_.x;
            _loc9_.y = _loc8_.y;
            _loc9_.id = _loc8_.id;
            if(_loc8_.uniqueID)
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
            this.§1!M§.push(_loc9_);
            _loc3_++;
         }
         this.§'`§ = _loc2_.slingshotX;
         this.§1b§ = _loc2_.slingshotY;
      }
      
      public function §,f§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§8!F§;
         _loc1_.scoreSilver = this.§ !`§;
         _loc1_.scoreGold = this.§,2§;
         _loc1_.scoreEagle = this.§-H§;
         _loc1_.theme = this.§]^§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§0e§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§^!P§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§^!P§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1!M§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§1!M§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§8o§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§8o§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§1!M§.length;
         _loc1_.counts.birds = this.§^!P§.length;
         _loc1_.counts.joints = this.§8o§.length;
         _loc1_.slingshotX = this.§'`§;
         _loc1_.slingshotY = this.§1b§;
         return _loc1_;
      }
      
      public function § ^§() : String
      {
         return JSON.stringify(this.§,f§());
      }
      
      public function §`q§() : int
      {
         var _loc2_:§8!9§ = null;
         var _loc3_:String = null;
         var _loc4_:§'!D§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!M§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §[!P§.§!I§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §[!P§.§!I§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§'!-§(_loc4_))
               {
                  _loc1_ += _loc4_.§?L§ * §&_§.§<!'§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §'a§() : XML
      {
         var _loc2_:§<!X§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§8!F§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§0V§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§ !`§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§,2§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§0e§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §2W§.§1f§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§^!P§[0].x + "\" y=\"" + (this.§^!P§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§^!P§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§^!P§[_loc3_].id + "\" x=\"" + this.§^!P§[_loc3_].x + "\" y=\"" + this.§^!P§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§1!M§.length)
         {
            _loc1_ += "<Item id=\"" + this.§1!M§[_loc3_].id + "\" x=\"" + this.§1!M§[_loc3_].x + "\" y=\"" + this.§1!M§[_loc3_].y + "\" rotation=\"" + this.§1!M§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §&!+§(param1:int) : §8!9§
      {
         return this.§1!M§[param1];
      }
      
      public function §,j§(param1:§8!9§) : void
      {
         this.§1!M§.push(param1);
      }
      
      public function §+W§(param1:int) : §2!K§
      {
         return this.§8o§[param1];
      }
      
      public function §8`§(param1:§2!K§) : void
      {
         this.§8o§.push(param1);
      }
      
      public function §7!W§(param1:int) : §%@§
      {
         return this.§^!P§[param1];
      }
      
      public function §%R§(param1:§%@§) : void
      {
         this.§^!P§.push(param1);
      }
      
      public function §6!N§() : void
      {
         this.§0e§ = new Vector.<§<!X§>();
      }
      
      public function §-k§() : void
      {
         this.§^!P§ = new Vector.<§%@§>();
      }
      
      public function §[!!§(param1:int) : §<!X§
      {
         return this.§0e§[param1];
      }
      
      public function §#H§(param1:§<!X§) : void
      {
         this.§0e§.push(param1);
      }
   }
}
