package §?j§
{
   import §%!E§.§-§;
   import §&`§.*;
   import §2E§.§%-§;
   import §2E§.§]B§;
   import §46§.§+!$§;
   import §46§.§2n§;
   import §46§.§5!N§;
   import §`!4§.§6l§;
   import flash.geom.Point;
   
   public class §9?§
   {
      
      public static const §-k§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §5&§:Number = 0;
      
      public var §?!§:Number = -8;
      
      protected var § else§:Vector.<§5!N§> = null;
      
      protected var §,D§:Vector.<§2n§> = null;
      
      protected var §0=§:Vector.<§+!$§> = null;
      
      protected var §`!9§:Vector.<§`y§> = null;
      
      public var §[p§:int = 0;
      
      public var § get§:int = 0;
      
      private var §2g§:int = 0;
      
      protected var §^!E§:String = null;
      
      public var mName:String = null;
      
      public function §9?§()
      {
         super();
         this.§`!9§ = new Vector.<§`y§>();
         this.§ else§ = new Vector.<§5!N§>();
         this.§,D§ = new Vector.<§2n§>();
         this.§0=§ = new Vector.<§+!$§>();
         this.§^!E§ = §-k§;
      }
      
      public static function §do§(param1:String) : §9?§
      {
         var _loc2_:§9?§ = new §9?§();
         _loc2_.§;J§(param1);
         return _loc2_;
      }
      
      public static function §]!0§(param1:§%-§) : Boolean
      {
         if(param1.§^s§ == §%-§.§&L§ || param1.§^s§ == §%-§.§^!9§ || param1.§^s§ == §%-§.§6!5§)
         {
            return true;
         }
         return false;
      }
      
      public static function §`x§(param1:String) : §9?§
      {
         var _loc2_:§9?§ = §do§(param1);
         _loc2_.§5&§ = _loc2_.§,D§[0].x;
         _loc2_.§?!§ = _loc2_.§,D§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§ else§.length)
         {
            _loc2_.§ else§[_loc3_].angle = 360 - _loc2_.§ else§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §^S§(param1:int, param2:Object) : Vector.<§+!$§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§+!$§ = null;
         var _loc3_:Vector.<§+!$§> = new Vector.<§+!$§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §+!$§.§`!D§ || _loc5_.type == §+!$§.§2$§)
               {
                  _loc8_ = new §+!$§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §+!$§.§2$§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §+!$§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §+!$§.§?!O§)
               {
                  _loc8_.§8X§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §`!5§() : int
      {
         return this.§ else§.length;
      }
      
      public function get §&!K§() : int
      {
         return this.§0=§.length;
      }
      
      public function get § p§() : int
      {
         return this.§,D§.length;
      }
      
      public function get §3!E§() : int
      {
         return this.§`!9§.length;
      }
      
      public function get theme() : String
      {
         return this.§^!E§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§^!E§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§+V§();
         if(_loc1_ > 0 && _loc1_ < this.§2g§)
         {
            return _loc1_;
         }
         if(this.§2g§ == 0)
         {
            return _loc1_;
         }
         return this.§2g§;
      }
      
      public function §@!+§(param1:int) : void
      {
         var _loc2_:int = this.§+V§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§2g§ = param1;
      }
      
      public function §;J§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§`y§ = null;
         var _loc9_:Object = null;
         var _loc10_:§2n§ = null;
         var _loc11_:§5!N§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§[p§ = _loc2_.scoreSilver;
         this.§ get§ = _loc2_.scoreGold;
         this.§2g§ = _loc2_.scoreEagle;
         this.§^!E§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§0=§ = §^S§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§`!9§ = new Vector.<§`y§>();
         this.§,D§ = new Vector.<§2n§>();
         this.§ else§ = new Vector.<§5!N§>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §`y§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§`!9§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §2n§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§,D§.push(_loc10_);
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
            (_loc11_ = new §5!N§()).x = _loc5_.x;
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
            this.§ else§.push(_loc11_);
            _loc3_++;
         }
         this.§5&§ = _loc2_.slingshotX;
         this.§?!§ = _loc2_.slingshotY;
      }
      
      public function § !<§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§[p§;
         _loc1_.scoreGold = this.§ get§;
         _loc1_.scoreEagle = this.§2g§;
         _loc1_.theme = this.§^!E§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§`!9§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§,D§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§,D§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ else§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§ else§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0=§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§0=§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§ else§.length;
         _loc1_.counts.birds = this.§,D§.length;
         _loc1_.counts.joints = this.§0=§.length;
         _loc1_.slingshotX = this.§5&§;
         _loc1_.slingshotY = this.§?!§;
         return _loc1_;
      }
      
      public function §2h§() : String
      {
         return JSON.stringify(this.§ !<§());
      }
      
      public function §+V§() : int
      {
         var _loc2_:§5!N§ = null;
         var _loc3_:String = null;
         var _loc4_:§%-§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ else§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §]B§.§1l§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §]B§.§1l§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§]!0§(_loc4_))
               {
                  _loc1_ += _loc4_.§+D§ * §6l§.§4!!§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §#S§() : XML
      {
         var _loc2_:§`y§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§[p§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§ get§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§`!9§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §-§.§8F§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§,D§[0].x + "\" y=\"" + (this.§,D§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§,D§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§,D§[_loc3_].id + "\" x=\"" + this.§,D§[_loc3_].x + "\" y=\"" + this.§,D§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§ else§.length)
         {
            _loc1_ += "<Item id=\"" + this.§ else§[_loc3_].id + "\" x=\"" + this.§ else§[_loc3_].x + "\" y=\"" + this.§ else§[_loc3_].y + "\" rotation=\"" + this.§ else§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §?!N§(param1:int) : §5!N§
      {
         return this.§ else§[param1];
      }
      
      public function addObject(param1:§5!N§) : void
      {
         this.§ else§.push(param1);
      }
      
      public function §-!!§(param1:int) : §+!$§
      {
         return this.§0=§[param1];
      }
      
      public function §>!,§(param1:§+!$§) : void
      {
         this.§0=§.push(param1);
      }
      
      public function §#!!§(param1:int) : §2n§
      {
         return this.§,D§[param1];
      }
      
      public function §6&§(param1:§2n§) : void
      {
         this.§,D§.push(param1);
      }
      
      public function §?]§() : void
      {
         this.§`!9§ = new Vector.<§`y§>();
      }
      
      public function §#5§() : void
      {
         this.§,D§ = new Vector.<§2n§>();
      }
      
      public function §!X§(param1:int) : §`y§
      {
         return this.§`!9§[param1];
      }
      
      public function §?"§(param1:§`y§) : void
      {
         this.§`!9§.push(param1);
      }
   }
}
