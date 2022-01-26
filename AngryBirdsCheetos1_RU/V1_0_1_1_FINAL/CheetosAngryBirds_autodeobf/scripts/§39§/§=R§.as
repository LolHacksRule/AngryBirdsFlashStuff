package §39§
{
   import §!2§.*;
   import §&C§.§3!!§;
   import §&C§.§[b§;
   import §0V§.§`!O§;
   import §8-§.§,!P§;
   import §=?§.§'n§;
   import §=?§.§-u§;
   import §=?§.§>?§;
   import flash.geom.Point;
   
   public class §=R§
   {
      
      public static const §%!#§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §37§:Number = 0;
      
      public var §`!§:Number = -8;
      
      private var §<G§:Vector.<§>?§> = null;
      
      private var §0#§:Vector.<§'n§> = null;
      
      private var §1!%§:Vector.<§-u§> = null;
      
      private var §?Q§:Vector.<§2e§> = null;
      
      public var §5!V§:Number = 0;
      
      public var §35§:Boolean = false;
      
      public var §5+§:int = 0;
      
      public var §2m§:int = 0;
      
      private var §>!_§:int = 0;
      
      private var §;!%§:String = null;
      
      public var mName:String = null;
      
      public function §=R§()
      {
         super();
         this.§?Q§ = new Vector.<§2e§>();
         this.§<G§ = new Vector.<§>?§>();
         this.§0#§ = new Vector.<§'n§>();
         this.§1!%§ = new Vector.<§-u§>();
         this.§;!%§ = §%!#§;
      }
      
      public static function §2!?§(param1:String) : §=R§
      {
         var _loc2_:§=R§ = new §=R§();
         _loc2_.§<2§(param1);
         return _loc2_;
      }
      
      public static function §[!,§(param1:§3!!§) : Boolean
      {
         if(param1.§,$§ == §3!!§.§^!4§ || param1.§,$§ == §3!!§.§'2§ || param1.§,$§ == §3!!§.§,M§)
         {
            return true;
         }
         return false;
      }
      
      public static function §2!P§(param1:String) : §=R§
      {
         var _loc2_:§=R§ = §2!?§(param1);
         _loc2_.§37§ = _loc2_.§0#§[0].x;
         _loc2_.§`!§ = _loc2_.§0#§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§<G§.length)
         {
            _loc2_.§<G§[_loc3_].angle = 360 - _loc2_.§<G§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §!G§(param1:int, param2:Object) : Vector.<§-u§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-u§ = null;
         var _loc3_:Vector.<§-u§> = new Vector.<§-u§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §-u§.§4!H§ || _loc5_.type == §-u§.§@1§)
               {
                  _loc8_ = new §-u§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §-u§.§@1§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §-u§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §-u§.§'D§)
               {
                  _loc8_.§;;§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §-5§() : int
      {
         return this.§<G§.length;
      }
      
      public function get §;6§() : int
      {
         return this.§1!%§.length;
      }
      
      public function get §>!>§() : int
      {
         return this.§0#§.length;
      }
      
      public function get § V§() : int
      {
         return this.§?Q§.length;
      }
      
      public function get theme() : String
      {
         return this.§;!%§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§;!%§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§^!&§();
         if(_loc1_ > 0 && _loc1_ < this.§>!_§)
         {
            return _loc1_;
         }
         if(this.§>!_§ == 0)
         {
            return _loc1_;
         }
         return this.§>!_§;
      }
      
      public function §49§(param1:int) : void
      {
         var _loc2_:int = this.§^!&§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§>!_§ = param1;
      }
      
      public function §<2§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§2e§ = null;
         var _loc9_:Object = null;
         var _loc10_:§'n§ = null;
         var _loc11_:§>?§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§5!V§ = _loc2_.LevelExtension;
         this.§35§ = false;
         this.§5+§ = _loc2_.scoreSilver;
         this.§2m§ = _loc2_.scoreGold;
         this.§>!_§ = _loc2_.scoreEagle;
         this.§;!%§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§1!%§ = §!G§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§?Q§ = new Vector.<§2e§>();
         this.§0#§ = new Vector.<§'n§>();
         this.§<G§ = new Vector.<§>?§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §2e§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§?Q§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §'n§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§0#§.push(_loc10_);
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
            (_loc11_ = new §>?§()).x = _loc5_.x;
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
            this.§<G§.push(_loc11_);
            _loc3_++;
         }
         this.§37§ = _loc2_.slingshotX;
         this.§`!§ = _loc2_.slingshotY;
      }
      
      public function §8&§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§5!V§;
         _loc1_.scoreSilver = this.§5+§;
         _loc1_.scoreGold = this.§2m§;
         _loc1_.scoreEagle = this.§>!_§;
         _loc1_.theme = this.§;!%§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§?Q§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§0#§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§0#§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§<G§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§<G§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1!%§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§1!%§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§<G§.length;
         _loc1_.counts.birds = this.§0#§.length;
         _loc1_.counts.joints = this.§1!%§.length;
         _loc1_.slingshotX = this.§37§;
         _loc1_.slingshotY = this.§`!§;
         return _loc1_;
      }
      
      public function §5r§() : String
      {
         return JSON.stringify(this.§8&§());
      }
      
      public function §^!&§() : int
      {
         var _loc2_:§>?§ = null;
         var _loc3_:String = null;
         var _loc4_:§3!!§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<G§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §[b§.§9R§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §[b§.§9R§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§[!,§(_loc4_))
               {
                  _loc1_ += _loc4_.§,!,§ * §`!O§.§50§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §&!6§() : XML
      {
         var _loc2_:§2e§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§5!V§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§35§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§5+§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§2m§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§?Q§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §,!P§.§^h§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§0#§[0].x + "\" y=\"" + (this.§0#§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§0#§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§0#§[_loc3_].id + "\" x=\"" + this.§0#§[_loc3_].x + "\" y=\"" + this.§0#§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§<G§.length)
         {
            _loc1_ += "<Item id=\"" + this.§<G§[_loc3_].id + "\" x=\"" + this.§<G§[_loc3_].x + "\" y=\"" + this.§<G§[_loc3_].y + "\" rotation=\"" + this.§<G§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §^i§(param1:int) : §>?§
      {
         return this.§<G§[param1];
      }
      
      public function addObject(param1:§>?§) : void
      {
         this.§<G§.push(param1);
      }
      
      public function §6!C§(param1:int) : §-u§
      {
         return this.§1!%§[param1];
      }
      
      public function §7C§(param1:§-u§) : void
      {
         this.§1!%§.push(param1);
      }
      
      public function §0!N§(param1:int) : §'n§
      {
         return this.§0#§[param1];
      }
      
      public function §package§(param1:§'n§) : void
      {
         this.§0#§.push(param1);
      }
      
      public function §>![§() : void
      {
         this.§?Q§ = new Vector.<§2e§>();
      }
      
      public function §]E§() : void
      {
         this.§0#§ = new Vector.<§'n§>();
      }
      
      public function §3!_§(param1:int) : §2e§
      {
         return this.§?Q§[param1];
      }
      
      public function §^7§(param1:§2e§) : void
      {
         this.§?Q§.push(param1);
      }
   }
}
