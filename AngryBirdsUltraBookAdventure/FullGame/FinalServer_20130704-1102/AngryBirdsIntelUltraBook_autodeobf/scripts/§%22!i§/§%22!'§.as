package §"!i§
{
   import §0S§.§4K§;
   import §0S§.§7!Z§;
   import §40§.§5G§;
   import §5<§.§#c§;
   import §5<§.§-H§;
   import §5<§.§<n§;
   import §=!A§.*;
   import §`!M§.§%X§;
   import flash.geom.Point;
   
   public class §"!'§
   {
      
      public static const §0D§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §`!P§:Number = 0;
      
      public var §=!M§:Number = -8;
      
      protected var §&O§:Vector.<§<n§> = null;
      
      protected var § Y§:Vector.<§#c§> = null;
      
      protected var §"!§:Vector.<§-H§> = null;
      
      protected var §5z§:Vector.<§8z§> = null;
      
      public var §2!m§:int = 0;
      
      public var §;"$§:int = 0;
      
      private var §&P§:int = 0;
      
      protected var §<H§:String = null;
      
      public var mName:String = null;
      
      public function §"!'§()
      {
         super();
         this.§5z§ = new Vector.<§8z§>();
         this.§&O§ = new Vector.<§<n§>();
         this.§ Y§ = new Vector.<§#c§>();
         this.§"!§ = new Vector.<§-H§>();
         this.§<H§ = §0D§;
      }
      
      public static function §1" §(param1:String) : §"!'§
      {
         var _loc2_:§"!'§ = new §"!'§();
         _loc2_.§"!O§(param1);
         return _loc2_;
      }
      
      public static function §2b§(param1:§4K§) : Boolean
      {
         if(param1.§-!o§ == §4K§.§8!J§ || param1.§-!o§ == §4K§.§^!Q§ || param1.§-!o§ == §4K§.§!!U§)
         {
            return true;
         }
         return false;
      }
      
      public static function §'O§(param1:String) : §"!'§
      {
         var _loc2_:§"!'§ = §1" §(param1);
         _loc2_.§`!P§ = _loc2_.§ Y§[0].x;
         _loc2_.§=!M§ = _loc2_.§ Y§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§&O§.length)
         {
            _loc2_.§&O§[_loc3_].angle = 360 - _loc2_.§&O§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §'F§(param1:int, param2:Object) : Vector.<§-H§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-H§ = null;
         var _loc3_:Vector.<§-H§> = new Vector.<§-H§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §-H§.§2h§ || _loc5_.type == §-H§.§'"#§)
               {
                  _loc8_ = new §-H§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §-H§.§'"#§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §-H§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §-H§.§1!4§)
               {
                  _loc8_.§2,§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §^!b§() : int
      {
         return this.§&O§.length;
      }
      
      public function get §5!R§() : int
      {
         return this.§"!§.length;
      }
      
      public function get §[i§() : int
      {
         return this.§ Y§.length;
      }
      
      public function get §?!M§() : int
      {
         return this.§5z§.length;
      }
      
      public function get theme() : String
      {
         return this.§<H§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§<H§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§+!u§();
         if(_loc1_ > 0 && _loc1_ < this.§&P§)
         {
            return _loc1_;
         }
         if(this.§&P§ == 0)
         {
            return _loc1_;
         }
         return this.§&P§;
      }
      
      public function §^!j§(param1:int) : void
      {
         var _loc2_:int = this.§+!u§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§&P§ = param1;
      }
      
      public function §"!O§(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§8z§ = null;
         var _loc9_:Object = null;
         var _loc10_:§#c§ = null;
         var _loc11_:§<n§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§2!m§ = _loc2_.scoreSilver;
         this.§;"$§ = _loc2_.scoreGold;
         this.§&P§ = _loc2_.scoreEagle;
         this.§<H§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§"!§ = §'F§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§5z§ = new Vector.<§8z§>();
         this.§ Y§ = new Vector.<§#c§>();
         this.§&O§ = new Vector.<§<n§>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §8z§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§5z§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §#c§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§ Y§.push(_loc10_);
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
            (_loc11_ = new §<n§()).x = _loc5_.x;
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
            this.§&O§.push(_loc11_);
            _loc3_++;
         }
         this.§`!P§ = _loc2_.slingshotX;
         this.§=!M§ = _loc2_.slingshotY;
      }
      
      public function §<>§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§2!m§;
         _loc1_.scoreGold = this.§;"$§;
         _loc1_.scoreEagle = this.§&P§;
         _loc1_.theme = this.§<H§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§5z§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§ Y§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§ Y§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&O§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§&O§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§"!§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§"!§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§&O§.length;
         _loc1_.counts.birds = this.§ Y§.length;
         _loc1_.counts.joints = this.§"!§.length;
         _loc1_.slingshotX = this.§`!P§;
         _loc1_.slingshotY = this.§=!M§;
         return _loc1_;
      }
      
      public function §-?§() : String
      {
         return JSON.stringify(this.§<>§());
      }
      
      public function §+!u§() : int
      {
         var _loc2_:§<n§ = null;
         var _loc3_:String = null;
         var _loc4_:§4K§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&O§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §7!Z§.§`!H§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §7!Z§.§`!H§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§2b§(_loc4_))
               {
                  _loc1_ += _loc4_.§]!3§ * §5G§.§'!4§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §9!I§() : XML
      {
         var _loc2_:§8z§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§2!m§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§;"$§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§5z§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §%X§.§8!@§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§ Y§[0].x + "\" y=\"" + (this.§ Y§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§ Y§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§ Y§[_loc3_].id + "\" x=\"" + this.§ Y§[_loc3_].x + "\" y=\"" + this.§ Y§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§&O§.length)
         {
            _loc1_ += "<Item id=\"" + this.§&O§[_loc3_].id + "\" x=\"" + this.§&O§[_loc3_].x + "\" y=\"" + this.§&O§[_loc3_].y + "\" rotation=\"" + this.§&O§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function § !X§(param1:int) : §<n§
      {
         return this.§&O§[param1];
      }
      
      public function addObject(param1:§<n§) : void
      {
         this.§&O§.push(param1);
      }
      
      public function §8[§(param1:int) : §-H§
      {
         return this.§"!§[param1];
      }
      
      public function §6!H§(param1:§-H§) : void
      {
         this.§"!§.push(param1);
      }
      
      public function §^!V§(param1:int) : §#c§
      {
         return this.§ Y§[param1];
      }
      
      public function §]Z§(param1:§#c§) : void
      {
         this.§ Y§.push(param1);
      }
      
      public function §&!Z§() : void
      {
         this.§5z§ = new Vector.<§8z§>();
      }
      
      public function §!!d§() : void
      {
         this.§ Y§ = new Vector.<§#c§>();
      }
      
      public function §#M§(param1:int) : §8z§
      {
         return this.§5z§[param1];
      }
      
      public function §7!x§(param1:§8z§) : void
      {
         this.§5z§.push(param1);
      }
   }
}
