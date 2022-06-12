package §9!n§
{
   import §!!=§.§"l§;
   import §%!g§.*;
   import §-f§.§8!<§;
   import §-f§.§9L§;
   import §4!<§.§'!S§;
   import flash.geom.Point;
   import §super§.§>y§;
   import §super§.§?!F§;
   import §super§.§^m§;
   
   public class §0"T§
   {
      
      public static const §=!p§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §7x§:Number = 0;
      
      public var §;"H§:Number = -8;
      
      protected var §+?§:Vector.<§>y§> = null;
      
      protected var §9!L§:Vector.<§^m§> = null;
      
      protected var §>F§:Vector.<§?!F§> = null;
      
      protected var §<!$§:Vector.<§1S§> = null;
      
      public var §;!?§:int = 0;
      
      public var §8"G§:int = 0;
      
      private var §2!"§:int = 0;
      
      protected var §&!M§:String = null;
      
      public var mName:String = null;
      
      public function §0"T§()
      {
         super();
         this.§<!$§ = new Vector.<§1S§>();
         this.§+?§ = new Vector.<§>y§>();
         this.§9!L§ = new Vector.<§^m§>();
         this.§>F§ = new Vector.<§?!F§>();
         this.§&!M§ = §=!p§;
      }
      
      public static function §&"%§(param1:String) : §0"T§
      {
         var _loc2_:§0"T§ = new §0"T§();
         _loc2_.§]z§(param1);
         return _loc2_;
      }
      
      public static function §`"4§(param1:§9L§) : Boolean
      {
         if(param1.§<!G§ == §9L§.§["-§ || param1.§<!G§ == §9L§.§'!8§ || param1.§<!G§ == §9L§.§+"W§)
         {
            return true;
         }
         return false;
      }
      
      public static function §7"K§(param1:String) : §0"T§
      {
         var _loc2_:§0"T§ = §&"%§(param1);
         _loc2_.§7x§ = _loc2_.§9!L§[0].x;
         _loc2_.§;"H§ = _loc2_.§9!L§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§+?§.length)
         {
            _loc2_.§+?§[_loc3_].angle = 360 - _loc2_.§+?§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §>!0§(param1:int, param2:Object) : Vector.<§?!F§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§?!F§ = null;
         var _loc3_:Vector.<§?!F§> = new Vector.<§?!F§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §?!F§.§?<§ || _loc5_.type == §?!F§.§5!b§)
               {
                  _loc8_ = new §?!F§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §?!F§.§5!b§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §?!F§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §?!F§.§8!B§)
               {
                  _loc8_.§<3§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §-;§() : int
      {
         return this.§+?§.length;
      }
      
      public function get §"2§() : int
      {
         return this.§>F§.length;
      }
      
      public function get §9X§() : int
      {
         return this.§9!L§.length;
      }
      
      public function get § H§() : int
      {
         return this.§<!$§.length;
      }
      
      public function get theme() : String
      {
         return this.§&!M§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§&!M§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§@Z§();
         if(_loc1_ > 0 && _loc1_ < this.§2!"§)
         {
            return _loc1_;
         }
         if(this.§2!"§ == 0)
         {
            return _loc1_;
         }
         return this.§2!"§;
      }
      
      public function §>!g§(param1:int) : void
      {
         var _loc2_:int = this.§@Z§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§2!"§ = param1;
      }
      
      public function §]z§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§1S§ = null;
         var _loc9_:Object = null;
         var _loc10_:§^m§ = null;
         var _loc11_:§>y§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§;!?§ = _loc2_.scoreSilver;
         this.§8"G§ = _loc2_.scoreGold;
         this.§2!"§ = _loc2_.scoreEagle;
         this.§&!M§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§>F§ = §>!0§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§<!$§ = new Vector.<§1S§>();
         this.§9!L§ = new Vector.<§^m§>();
         this.§+?§ = new Vector.<§>y§>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §1S§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§<!$§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §^m§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§9!L§.push(_loc10_);
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
            (_loc11_ = new §>y§()).x = _loc5_.x;
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
            this.§+?§.push(_loc11_);
            _loc3_++;
         }
         this.§7x§ = _loc2_.slingshotX;
         this.§;"H§ = _loc2_.slingshotY;
      }
      
      public function §;!C§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§;!?§;
         _loc1_.scoreGold = this.§8"G§;
         _loc1_.scoreEagle = this.§2!"§;
         _loc1_.theme = this.§&!M§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§<!$§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§9!L§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§9!L§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§+?§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§+?§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§>F§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§>F§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§+?§.length;
         _loc1_.counts.birds = this.§9!L§.length;
         _loc1_.counts.joints = this.§>F§.length;
         _loc1_.slingshotX = this.§7x§;
         _loc1_.slingshotY = this.§;"H§;
         return _loc1_;
      }
      
      public function §8z§() : String
      {
         return JSON.stringify(this.§;!C§());
      }
      
      public function §@Z§() : int
      {
         var _loc2_:§>y§ = null;
         var _loc3_:String = null;
         var _loc4_:§9L§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+?§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §8!<§.§3"[§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §8!<§.§3"[§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§`"4§(_loc4_))
               {
                  _loc1_ += _loc4_.§^!2§ * §'!S§.§3"2§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §>!F§() : XML
      {
         var _loc2_:§1S§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§;!?§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§8"G§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§<!$§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §"l§.§,",§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§9!L§[0].x + "\" y=\"" + (this.§9!L§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§9!L§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§9!L§[_loc3_].id + "\" x=\"" + this.§9!L§[_loc3_].x + "\" y=\"" + this.§9!L§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§+?§.length)
         {
            _loc1_ += "<Item id=\"" + this.§+?§[_loc3_].id + "\" x=\"" + this.§+?§[_loc3_].x + "\" y=\"" + this.§+?§[_loc3_].y + "\" rotation=\"" + this.§+?§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §,!§(param1:int) : §>y§
      {
         return this.§+?§[param1];
      }
      
      public function addObject(param1:§>y§) : void
      {
         this.§+?§.push(param1);
      }
      
      public function §^"4§(param1:int) : §?!F§
      {
         return this.§>F§[param1];
      }
      
      public function §%!>§(param1:§?!F§) : void
      {
         this.§>F§.push(param1);
      }
      
      public function §1!e§(param1:int) : §^m§
      {
         return this.§9!L§[param1];
      }
      
      public function §78§(param1:§^m§) : void
      {
         this.§9!L§.push(param1);
      }
      
      public function §0"[§() : void
      {
         this.§<!$§ = new Vector.<§1S§>();
      }
      
      public function §`f§() : void
      {
         this.§9!L§ = new Vector.<§^m§>();
      }
      
      public function §8!D§(param1:int) : §1S§
      {
         return this.§<!$§[param1];
      }
      
      public function §9"Q§(param1:§1S§) : void
      {
         this.§<!$§.push(param1);
      }
   }
}
