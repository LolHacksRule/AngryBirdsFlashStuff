package §7_§
{
   import §0O§.*;
   import §9§.§67§;
   import §9§.§;!B§;
   import §9§.§`!"§;
   import §<L§.§!!G§;
   import §?!'§.§0!g§;
   import §?!'§.§[!S§;
   import §[!_§.§8U§;
   import flash.geom.Point;
   
   public class §]![§
   {
      
      public static const §>,§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §[w§:Number = 0;
      
      public var §'!S§:Number = -8;
      
      private var §"!<§:Vector.<§`!"§> = null;
      
      private var § &§:Vector.<§;!B§> = null;
      
      private var §5c§:Vector.<§67§> = null;
      
      private var §"j§:Vector.<§>6§> = null;
      
      public var §>7§:Number = 0;
      
      public var §'!Z§:Boolean = false;
      
      public var §>!Y§:int = 0;
      
      public var §&!W§:int = 0;
      
      private var §'§:int = 0;
      
      private var §<G§:String = null;
      
      public var mName:String = null;
      
      public function §]![§()
      {
         super();
         this.§"j§ = new Vector.<§>6§>();
         this.§"!<§ = new Vector.<§`!"§>();
         this.§ &§ = new Vector.<§;!B§>();
         this.§5c§ = new Vector.<§67§>();
         this.§<G§ = §>,§;
      }
      
      public static function §2!Z§(param1:String) : §]![§
      {
         var _loc2_:§]![§ = new §]![§();
         _loc2_.§"!4§(param1);
         return _loc2_;
      }
      
      public static function §<F§(param1:§0!g§) : Boolean
      {
         if(param1.§4x§ == §0!g§.§7-§ || param1.§4x§ == §0!g§.§'0§ || param1.§4x§ == §0!g§.§9!h§)
         {
            return true;
         }
         return false;
      }
      
      public static function §<c§(param1:String) : §]![§
      {
         var _loc2_:§]![§ = §2!Z§(param1);
         _loc2_.§[w§ = _loc2_.§ &§[0].x;
         _loc2_.§'!S§ = _loc2_.§ &§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§"!<§.length)
         {
            _loc2_.§"!<§[_loc3_].angle = 360 - _loc2_.§"!<§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §7%§(param1:int, param2:Object) : Vector.<§67§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§67§ = null;
         var _loc3_:Vector.<§67§> = new Vector.<§67§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §67§.§5'§ || _loc5_.type == §67§.§;!n§)
               {
                  _loc8_ = new §67§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §67§.§;!n§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §67§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §67§.§3!9§)
               {
                  _loc8_.§?!O§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §8s§() : int
      {
         return this.§"!<§.length;
      }
      
      public function get §8>§() : int
      {
         return this.§5c§.length;
      }
      
      public function get §4i§() : int
      {
         return this.§ &§.length;
      }
      
      public function get §0Z§() : int
      {
         return this.§"j§.length;
      }
      
      public function get theme() : String
      {
         return this.§<G§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§<G§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§5![§();
         if(_loc1_ > 0 && _loc1_ < this.§'§)
         {
            return _loc1_;
         }
         if(this.§'§ == 0)
         {
            return _loc1_;
         }
         return this.§'§;
      }
      
      public function §`s§(param1:int) : void
      {
         var _loc2_:int = this.§5![§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§'§ = param1;
      }
      
      public function §"!4§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§>6§ = null;
         var _loc9_:Object = null;
         var _loc10_:§;!B§ = null;
         var _loc11_:§`!"§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§>7§ = _loc2_.LevelExtension;
         this.§'!Z§ = false;
         this.§>!Y§ = _loc2_.scoreSilver;
         this.§&!W§ = _loc2_.scoreGold;
         this.§'§ = _loc2_.scoreEagle;
         this.§<G§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§5c§ = §7%§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§"j§ = new Vector.<§>6§>();
         this.§ &§ = new Vector.<§;!B§>();
         this.§"!<§ = new Vector.<§`!"§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §>6§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§"j§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §;!B§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§ &§.push(_loc10_);
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
            (_loc11_ = new §`!"§()).x = _loc5_.x;
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
            this.§"!<§.push(_loc11_);
            _loc3_++;
         }
         this.§[w§ = _loc2_.slingshotX;
         this.§'!S§ = _loc2_.slingshotY;
      }
      
      public function §0x§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§>7§;
         _loc1_.scoreSilver = this.§>!Y§;
         _loc1_.scoreGold = this.§&!W§;
         _loc1_.scoreEagle = this.§'§;
         _loc1_.theme = this.§<G§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§"j§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§ &§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§ &§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§"!<§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§"!<§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§5c§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§5c§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§"!<§.length;
         _loc1_.counts.birds = this.§ &§.length;
         _loc1_.counts.joints = this.§5c§.length;
         _loc1_.slingshotX = this.§[w§;
         _loc1_.slingshotY = this.§'!S§;
         return _loc1_;
      }
      
      public function §>b§() : String
      {
         return JSON.stringify(this.§0x§());
      }
      
      public function §5![§() : int
      {
         var _loc2_:§`!"§ = null;
         var _loc3_:String = null;
         var _loc4_:§0!g§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§"!<§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §[!S§.§;Z§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §[!S§.§;Z§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§<F§(_loc4_))
               {
                  _loc1_ += _loc4_.§'6§ * §!!G§.§-!b§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §+!M§() : XML
      {
         var _loc2_:§>6§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§>7§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§'!Z§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§>!Y§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§&!W§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§"j§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §8U§.§,T§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§ &§[0].x + "\" y=\"" + (this.§ &§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§ &§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§ &§[_loc3_].id + "\" x=\"" + this.§ &§[_loc3_].x + "\" y=\"" + this.§ &§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§"!<§.length)
         {
            _loc1_ += "<Item id=\"" + this.§"!<§[_loc3_].id + "\" x=\"" + this.§"!<§[_loc3_].x + "\" y=\"" + this.§"!<§[_loc3_].y + "\" rotation=\"" + this.§"!<§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §8K§(param1:int) : §`!"§
      {
         return this.§"!<§[param1];
      }
      
      public function §'e§(param1:§`!"§) : void
      {
         this.§"!<§.push(param1);
      }
      
      public function §8t§(param1:int) : §67§
      {
         return this.§5c§[param1];
      }
      
      public function §;!b§(param1:§67§) : void
      {
         this.§5c§.push(param1);
      }
      
      public function §package§(param1:int) : §;!B§
      {
         return this.§ &§[param1];
      }
      
      public function §7;§(param1:§;!B§) : void
      {
         this.§ &§.push(param1);
      }
      
      public function §2!6§() : void
      {
         this.§"j§ = new Vector.<§>6§>();
      }
      
      public function §>p§() : void
      {
         this.§ &§ = new Vector.<§;!B§>();
      }
      
      public function §5`§(param1:int) : §>6§
      {
         return this.§"j§[param1];
      }
      
      public function §[!B§(param1:§>6§) : void
      {
         this.§"j§.push(param1);
      }
   }
}
