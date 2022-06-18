package §^9§
{
   import §'G§.§1n§;
   import §'G§.§6!]§;
   import §1V§.*;
   import §9T§.§=!^§;
   import §=!,§.§9![§;
   import §>!H§.§+c§;
   import §>!H§.§7D§;
   import §>!H§.§^!<§;
   import flash.geom.Point;
   
   public class §3A§
   {
      
      public static const §7_§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §[§:Number = 0;
      
      public var §[T§:Number = -8;
      
      private var §!x§:Vector.<§^!<§> = null;
      
      private var §2!R§:Vector.<§+c§> = null;
      
      private var §<Y§:Vector.<§7D§> = null;
      
      private var §#!%§:Vector.<§!K§> = null;
      
      public var § V§:Number = 0;
      
      public var §4!9§:Boolean = false;
      
      public var §9N§:int = 0;
      
      public var §8!I§:int = 0;
      
      private var §8!G§:int = 0;
      
      private var §@0§:String = null;
      
      public var mName:String = null;
      
      public function §3A§()
      {
         super();
         this.§#!%§ = new Vector.<§!K§>();
         this.§!x§ = new Vector.<§^!<§>();
         this.§2!R§ = new Vector.<§+c§>();
         this.§<Y§ = new Vector.<§7D§>();
         this.§@0§ = §7_§;
      }
      
      public static function §6!W§(param1:String) : §3A§
      {
         var _loc2_:§3A§ = new §3A§();
         _loc2_.§[!P§(param1);
         return _loc2_;
      }
      
      public static function § f§(param1:§1n§) : Boolean
      {
         if(param1.§!!&§ == §1n§.§!!S§ || param1.§!!&§ == §1n§.§1w§ || param1.§!!&§ == §1n§.§;!H§)
         {
            return true;
         }
         return false;
      }
      
      public static function §0Y§(param1:String) : §3A§
      {
         var _loc2_:§3A§ = §6!W§(param1);
         _loc2_.§[§ = _loc2_.§2!R§[0].x;
         _loc2_.§[T§ = _loc2_.§2!R§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§!x§.length)
         {
            _loc2_.§!x§[_loc3_].angle = 360 - _loc2_.§!x§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §%P§(param1:int, param2:Object) : Vector.<§7D§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§7D§ = null;
         var _loc3_:Vector.<§7D§> = new Vector.<§7D§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §7D§.§-O§ || _loc5_.type == §7D§.§#V§)
               {
                  _loc8_ = new §7D§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §7D§.§#V§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §7D§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §7D§.§8!E§)
               {
                  _loc8_.§ S§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §3!N§() : int
      {
         return this.§!x§.length;
      }
      
      public function get §&!B§() : int
      {
         return this.§<Y§.length;
      }
      
      public function get §85§() : int
      {
         return this.§2!R§.length;
      }
      
      public function get §7!W§() : int
      {
         return this.§#!%§.length;
      }
      
      public function get theme() : String
      {
         return this.§@0§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§@0§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§,!1§();
         if(_loc1_ > 0 && _loc1_ < this.§8!G§)
         {
            return _loc1_;
         }
         if(this.§8!G§ == 0)
         {
            return _loc1_;
         }
         return this.§8!G§;
      }
      
      public function §-@§(param1:int) : void
      {
         var _loc2_:int = this.§,!1§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§8!G§ = param1;
      }
      
      public function §[!P§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§!K§ = null;
         var _loc9_:Object = null;
         var _loc10_:§+c§ = null;
         var _loc11_:§^!<§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§ V§ = _loc2_.LevelExtension;
         this.§4!9§ = false;
         this.§9N§ = _loc2_.scoreSilver;
         this.§8!I§ = _loc2_.scoreGold;
         this.§8!G§ = _loc2_.scoreEagle;
         this.§@0§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§<Y§ = §%P§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§#!%§ = new Vector.<§!K§>();
         this.§2!R§ = new Vector.<§+c§>();
         this.§!x§ = new Vector.<§^!<§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §!K§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§#!%§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §+c§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§2!R§.push(_loc10_);
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
            (_loc11_ = new §^!<§()).x = _loc5_.x;
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
            this.§!x§.push(_loc11_);
            _loc3_++;
         }
         this.§[§ = _loc2_.slingshotX;
         this.§[T§ = _loc2_.slingshotY;
      }
      
      public function §1!;§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§ V§;
         _loc1_.scoreSilver = this.§9N§;
         _loc1_.scoreGold = this.§8!I§;
         _loc1_.scoreEagle = this.§8!G§;
         _loc1_.theme = this.§@0§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§#!%§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§2!R§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§2!R§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!x§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§!x§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§<Y§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§<Y§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§!x§.length;
         _loc1_.counts.birds = this.§2!R§.length;
         _loc1_.counts.joints = this.§<Y§.length;
         _loc1_.slingshotX = this.§[§;
         _loc1_.slingshotY = this.§[T§;
         return _loc1_;
      }
      
      public function §%J§() : String
      {
         return JSON.stringify(this.§1!;§());
      }
      
      public function §,!1§() : int
      {
         var _loc2_:§^!<§ = null;
         var _loc3_:String = null;
         var _loc4_:§1n§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!x§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §6!]§.§'!Q§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §6!]§.§'!Q§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§ f§(_loc4_))
               {
                  _loc1_ += _loc4_.§6!_§ * §=!^§.§=;§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §#8§() : XML
      {
         var _loc2_:§!K§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§ V§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§4!9§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§9N§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§8!I§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§#!%§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §9![§.§>0§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§2!R§[0].x + "\" y=\"" + (this.§2!R§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§2!R§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§2!R§[_loc3_].id + "\" x=\"" + this.§2!R§[_loc3_].x + "\" y=\"" + this.§2!R§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§!x§.length)
         {
            _loc1_ += "<Item id=\"" + this.§!x§[_loc3_].id + "\" x=\"" + this.§!x§[_loc3_].x + "\" y=\"" + this.§!x§[_loc3_].y + "\" rotation=\"" + this.§!x§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §+D§(param1:int) : §^!<§
      {
         return this.§!x§[param1];
      }
      
      public function addObject(param1:§^!<§) : void
      {
         this.§!x§.push(param1);
      }
      
      public function §#X§(param1:int) : §7D§
      {
         return this.§<Y§[param1];
      }
      
      public function §7!X§(param1:§7D§) : void
      {
         this.§<Y§.push(param1);
      }
      
      public function §+!P§(param1:int) : §+c§
      {
         return this.§2!R§[param1];
      }
      
      public function §;!!§(param1:§+c§) : void
      {
         this.§2!R§.push(param1);
      }
      
      public function §8L§() : void
      {
         this.§#!%§ = new Vector.<§!K§>();
      }
      
      public function §7@§() : void
      {
         this.§2!R§ = new Vector.<§+c§>();
      }
      
      public function §<L§(param1:int) : §!K§
      {
         return this.§#!%§[param1];
      }
      
      public function §01§(param1:§!K§) : void
      {
         this.§#!%§.push(param1);
      }
   }
}
