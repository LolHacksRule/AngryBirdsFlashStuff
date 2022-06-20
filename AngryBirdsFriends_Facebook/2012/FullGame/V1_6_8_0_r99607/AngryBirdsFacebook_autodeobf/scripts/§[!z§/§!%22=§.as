package §[!z§
{
   import §'!>§.*;
   import §3,§.§[!;§;
   import §9!H§.§,!%§;
   import §9!H§.§,;§;
   import §9!H§.§<!s§;
   import §<%§.§%;§;
   import §<%§.§<`§;
   import §^6§.§0!w§;
   import flash.geom.Point;
   
   public class §!"=§
   {
      
      public static const §7!s§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §9"4§:Number = 0;
      
      public var §<C§:Number = -8;
      
      private var §8%§:Vector.<§<!s§> = null;
      
      private var §&!L§:Vector.<§,!%§> = null;
      
      private var §!§:Vector.<§,;§> = null;
      
      private var §,!&§:Vector.<§7;§> = null;
      
      public var §#!B§:Number = 0;
      
      public var §'!#§:Boolean = false;
      
      public var §5!V§:int = 0;
      
      public var § "3§:int = 0;
      
      private var §@B§:int = 0;
      
      private var §^!g§:String = null;
      
      public var mName:String = null;
      
      public function §!"=§()
      {
         super();
         this.§,!&§ = new Vector.<§7;§>();
         this.§8%§ = new Vector.<§<!s§>();
         this.§&!L§ = new Vector.<§,!%§>();
         this.§!§ = new Vector.<§,;§>();
         this.§^!g§ = §7!s§;
      }
      
      public static function §&"3§(param1:String) : §!"=§
      {
         var _loc2_:§!"=§ = new §!"=§();
         _loc2_.§0"?§(param1);
         return _loc2_;
      }
      
      public static function §try§(param1:§<`§) : Boolean
      {
         if(param1.§;!D§ == §<`§.§,"+§ || param1.§;!D§ == §<`§.§+!l§ || param1.§;!D§ == §<`§.§+!E§)
         {
            return true;
         }
         return false;
      }
      
      public static function §&!U§(param1:String) : §!"=§
      {
         var _loc2_:§!"=§ = §&"3§(param1);
         _loc2_.§9"4§ = _loc2_.§&!L§[0].x;
         _loc2_.§<C§ = _loc2_.§&!L§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§8%§.length)
         {
            _loc2_.§8%§[_loc3_].angle = 360 - _loc2_.§8%§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §01§(param1:int, param2:Object) : Vector.<§,;§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§,;§ = null;
         var _loc3_:Vector.<§,;§> = new Vector.<§,;§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §,;§.§,!r§ || _loc5_.type == §,;§.§!<§)
               {
                  _loc8_ = new §,;§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §,;§.§!<§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §,;§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §,;§.§4f§)
               {
                  _loc8_.§2o§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §%!o§() : int
      {
         return this.§8%§.length;
      }
      
      public function get §,"4§() : int
      {
         return this.§!§.length;
      }
      
      public function get §1!p§() : int
      {
         return this.§&!L§.length;
      }
      
      public function get §#"'§() : int
      {
         return this.§,!&§.length;
      }
      
      public function get theme() : String
      {
         return this.§^!g§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§^!g§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§ J§();
         if(_loc1_ > 0 && _loc1_ < this.§@B§)
         {
            return _loc1_;
         }
         if(this.§@B§ == 0)
         {
            return _loc1_;
         }
         return this.§@B§;
      }
      
      public function §>q§(param1:int) : void
      {
         var _loc2_:int = this.§ J§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§@B§ = param1;
      }
      
      public function §0"?§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§7;§ = null;
         var _loc9_:Object = null;
         var _loc10_:§,!%§ = null;
         var _loc11_:§<!s§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§#!B§ = _loc2_.LevelExtension;
         this.§'!#§ = false;
         this.§5!V§ = _loc2_.scoreSilver;
         this.§ "3§ = _loc2_.scoreGold;
         this.§@B§ = _loc2_.scoreEagle;
         this.§^!g§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§!§ = §01§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§,!&§ = new Vector.<§7;§>();
         this.§&!L§ = new Vector.<§,!%§>();
         this.§8%§ = new Vector.<§<!s§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §7;§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§,!&§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §,!%§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§&!L§.push(_loc10_);
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
            (_loc11_ = new §<!s§()).x = _loc5_.x;
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
            this.§8%§.push(_loc11_);
            _loc3_++;
         }
         this.§9"4§ = _loc2_.slingshotX;
         this.§<C§ = _loc2_.slingshotY;
      }
      
      public function §"j§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§#!B§;
         _loc1_.scoreSilver = this.§5!V§;
         _loc1_.scoreGold = this.§ "3§;
         _loc1_.scoreEagle = this.§@B§;
         _loc1_.theme = this.§^!g§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§,!&§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§&!L§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§&!L§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§8%§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§8%§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§!§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§8%§.length;
         _loc1_.counts.birds = this.§&!L§.length;
         _loc1_.counts.joints = this.§!§.length;
         _loc1_.slingshotX = this.§9"4§;
         _loc1_.slingshotY = this.§<C§;
         return _loc1_;
      }
      
      public function §0!;§() : String
      {
         return JSON.stringify(this.§"j§());
      }
      
      public function § J§() : int
      {
         var _loc2_:§<!s§ = null;
         var _loc3_:String = null;
         var _loc4_:§<`§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§8%§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §%;§.§8!]§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §%;§.§8!]§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§try§(_loc4_))
               {
                  _loc1_ += _loc4_.§ i§ * §[!;§.§%"§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §+[§() : XML
      {
         var _loc2_:§7;§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§#!B§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§'!#§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§5!V§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§ "3§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§,!&§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §0!w§.§"!B§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§&!L§[0].x + "\" y=\"" + (this.§&!L§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§&!L§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§&!L§[_loc3_].id + "\" x=\"" + this.§&!L§[_loc3_].x + "\" y=\"" + this.§&!L§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§8%§.length)
         {
            _loc1_ += "<Item id=\"" + this.§8%§[_loc3_].id + "\" x=\"" + this.§8%§[_loc3_].x + "\" y=\"" + this.§8%§[_loc3_].y + "\" rotation=\"" + this.§8%§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §&J§(param1:int) : §<!s§
      {
         return this.§8%§[param1];
      }
      
      public function addObject(param1:§<!s§) : void
      {
         this.§8%§.push(param1);
      }
      
      public function §"";§(param1:int) : §,;§
      {
         return this.§!§[param1];
      }
      
      public function §=!=§(param1:§,;§) : void
      {
         this.§!§.push(param1);
      }
      
      public function §7!u§(param1:int) : §,!%§
      {
         return this.§&!L§[param1];
      }
      
      public function §9!Q§(param1:§,!%§) : void
      {
         this.§&!L§.push(param1);
      }
      
      public function §&!+§() : void
      {
         this.§,!&§ = new Vector.<§7;§>();
      }
      
      public function §8!X§() : void
      {
         this.§&!L§ = new Vector.<§,!%§>();
      }
      
      public function §,!'§(param1:int) : §7;§
      {
         return this.§,!&§[param1];
      }
      
      public function §@!G§(param1:§7;§) : void
      {
         this.§,!&§.push(param1);
      }
   }
}
