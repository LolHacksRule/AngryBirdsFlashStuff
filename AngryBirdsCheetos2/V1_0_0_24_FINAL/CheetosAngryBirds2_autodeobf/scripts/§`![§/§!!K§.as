package §`![§
{
   import §!r§.§3!!§;
   import §!r§.§=?§;
   import §,!K§.§[V§;
   import §,§.§ p§;
   import §94§.*;
   import §;A§.§ f§;
   import §;A§.§ l§;
   import §;A§.§]!A§;
   import flash.geom.Point;
   
   public class §!!K§
   {
      
      public static const §,]§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §;!Y§:Number = 0;
      
      public var §'f§:Number = -8;
      
      protected var §[!L§:Vector.<§]!A§> = null;
      
      protected var §0!b§:Vector.<§ l§> = null;
      
      protected var §]N§:Vector.<§ f§> = null;
      
      protected var §7z§:Vector.<§5!b§> = null;
      
      public var §!!<§:int = 0;
      
      public var §8Z§:int = 0;
      
      private var §'!@§:int = 0;
      
      protected var §]f§:String = null;
      
      public var mName:String = null;
      
      public function §!!K§()
      {
         super();
         this.§7z§ = new Vector.<§5!b§>();
         this.§[!L§ = new Vector.<§]!A§>();
         this.§0!b§ = new Vector.<§ l§>();
         this.§]N§ = new Vector.<§ f§>();
         this.§]f§ = §,]§;
      }
      
      public static function §4-§(param1:String) : §!!K§
      {
         var _loc2_:§!!K§ = new §!!K§();
         _loc2_.§@$§(param1);
         return _loc2_;
      }
      
      public static function §6!O§(param1:§=?§) : Boolean
      {
         if(param1.§=J§ == §=?§.§!!"§ || param1.§=J§ == §=?§.§=K§ || param1.§=J§ == §=?§.§<![§)
         {
            return true;
         }
         return false;
      }
      
      public static function §]G§(param1:String) : §!!K§
      {
         var _loc2_:§!!K§ = §4-§(param1);
         _loc2_.§;!Y§ = _loc2_.§0!b§[0].x;
         _loc2_.§'f§ = _loc2_.§0!b§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§[!L§.length)
         {
            _loc2_.§[!L§[_loc3_].angle = 360 - _loc2_.§[!L§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §<-§(param1:int, param2:Object) : Vector.<§ f§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§ f§ = null;
         var _loc3_:Vector.<§ f§> = new Vector.<§ f§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == § f§.§+!J§ || _loc5_.type == § f§.§?x§)
               {
                  _loc8_ = new § f§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == § f§.§?x§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new § f§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == § f§.§+!7§)
               {
                  _loc8_.§^`§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §@!_§() : int
      {
         return this.§[!L§.length;
      }
      
      public function get §85§() : int
      {
         return this.§]N§.length;
      }
      
      public function get §!Z§() : int
      {
         return this.§0!b§.length;
      }
      
      public function get §+![§() : int
      {
         return this.§7z§.length;
      }
      
      public function get theme() : String
      {
         return this.§]f§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§]f§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§@!K§();
         if(_loc1_ > 0 && _loc1_ < this.§'!@§)
         {
            return _loc1_;
         }
         if(this.§'!@§ == 0)
         {
            return _loc1_;
         }
         return this.§'!@§;
      }
      
      public function §;!5§(param1:int) : void
      {
         var _loc2_:int = this.§@!K§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§'!@§ = param1;
      }
      
      public function §@$§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§5!b§ = null;
         var _loc9_:Object = null;
         var _loc10_:§ l§ = null;
         var _loc11_:§]!A§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§!!<§ = _loc2_.scoreSilver;
         this.§8Z§ = _loc2_.scoreGold;
         this.§'!@§ = _loc2_.scoreEagle;
         this.§]f§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§]N§ = §<-§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§7z§ = new Vector.<§5!b§>();
         this.§0!b§ = new Vector.<§ l§>();
         this.§[!L§ = new Vector.<§]!A§>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §5!b§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§7z§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new § l§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§0!b§.push(_loc10_);
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
            (_loc11_ = new §]!A§()).x = _loc5_.x;
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
            this.§[!L§.push(_loc11_);
            _loc3_++;
         }
         this.§;!Y§ = _loc2_.slingshotX;
         this.§'f§ = _loc2_.slingshotY;
      }
      
      public function §=i§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§!!<§;
         _loc1_.scoreGold = this.§8Z§;
         _loc1_.scoreEagle = this.§'!@§;
         _loc1_.theme = this.§]f§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§7z§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§0!b§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§0!b§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[!L§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§[!L§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§]N§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§]N§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§[!L§.length;
         _loc1_.counts.birds = this.§0!b§.length;
         _loc1_.counts.joints = this.§]N§.length;
         _loc1_.slingshotX = this.§;!Y§;
         _loc1_.slingshotY = this.§'f§;
         return _loc1_;
      }
      
      public function §46§() : String
      {
         return JSON.stringify(this.§=i§());
      }
      
      public function §@!K§() : int
      {
         var _loc2_:§]!A§ = null;
         var _loc3_:String = null;
         var _loc4_:§=?§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[!L§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §3!!§.§^!-§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §3!!§.§^!-§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§6!O§(_loc4_))
               {
                  _loc1_ += _loc4_.§ !G§ * § p§.§5k§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §3w§() : XML
      {
         var _loc2_:§5!b§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§!!<§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§8Z§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§7z§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §[V§.§7!T§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§0!b§[0].x + "\" y=\"" + (this.§0!b§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§0!b§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§0!b§[_loc3_].id + "\" x=\"" + this.§0!b§[_loc3_].x + "\" y=\"" + this.§0!b§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§[!L§.length)
         {
            _loc1_ += "<Item id=\"" + this.§[!L§[_loc3_].id + "\" x=\"" + this.§[!L§[_loc3_].x + "\" y=\"" + this.§[!L§[_loc3_].y + "\" rotation=\"" + this.§[!L§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §0;§(param1:int) : §]!A§
      {
         return this.§[!L§[param1];
      }
      
      public function addObject(param1:§]!A§) : void
      {
         this.§[!L§.push(param1);
      }
      
      public function §]R§(param1:int) : § f§
      {
         return this.§]N§[param1];
      }
      
      public function §3!b§(param1:§ f§) : void
      {
         this.§]N§.push(param1);
      }
      
      public function §1&§(param1:int) : § l§
      {
         return this.§0!b§[param1];
      }
      
      public function §1!,§(param1:§ l§) : void
      {
         this.§0!b§.push(param1);
      }
      
      public function §^?§() : void
      {
         this.§7z§ = new Vector.<§5!b§>();
      }
      
      public function §@6§() : void
      {
         this.§0!b§ = new Vector.<§ l§>();
      }
      
      public function §-3§(param1:int) : §5!b§
      {
         return this.§7z§[param1];
      }
      
      public function §1s§(param1:§5!b§) : void
      {
         this.§7z§.push(param1);
      }
   }
}
