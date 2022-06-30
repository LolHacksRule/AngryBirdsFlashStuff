package §7e§
{
   import § ![§.§#!B§;
   import § A§.§-!E§;
   import § A§.§8z§;
   import §9!'§.§0!%§;
   import §[b§.*;
   import §^!"§.§ >§;
   import §^!"§.§7R§;
   import §^!"§.§@!E§;
   import flash.geom.Point;
   
   public class §8!P§
   {
      
      public static const §7H§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §;d§:Number = 0;
      
      public var §&!_§:Number = -8;
      
      private var §@!F§:Vector.<§ >§> = null;
      
      private var §5&§:Vector.<§7R§> = null;
      
      private var §=!d§:Vector.<§@!E§> = null;
      
      private var §!!X§:Vector.<§;!8§> = null;
      
      public var §<E§:Number = 0;
      
      public var §[!M§:Boolean = false;
      
      public var §7!C§:int = 0;
      
      public var §'c§:int = 0;
      
      private var §?o§:int = 0;
      
      private var §-a§:String = null;
      
      public var mName:String = null;
      
      public function §8!P§()
      {
         super();
         this.§!!X§ = new Vector.<§;!8§>();
         this.§@!F§ = new Vector.<§ >§>();
         this.§5&§ = new Vector.<§7R§>();
         this.§=!d§ = new Vector.<§@!E§>();
         this.§-a§ = §7H§;
      }
      
      public static function §@!!§(param1:String) : §8!P§
      {
         var _loc2_:§8!P§ = new §8!P§();
         _loc2_.§`![§(param1);
         return _loc2_;
      }
      
      public static function §-!]§(param1:§-!E§) : Boolean
      {
         if(param1.§]5§ == §-!E§.§;S§ || param1.§]5§ == §-!E§.§<!G§ || param1.§]5§ == §-!E§.§8<§)
         {
            return true;
         }
         return false;
      }
      
      public static function §]!7§(param1:String) : §8!P§
      {
         var _loc2_:§8!P§ = §@!!§(param1);
         _loc2_.§;d§ = _loc2_.§5&§[0].x;
         _loc2_.§&!_§ = _loc2_.§5&§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§@!F§.length)
         {
            _loc2_.§@!F§[_loc3_].angle = 360 - _loc2_.§@!F§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §>!W§(param1:int, param2:Object) : Vector.<§@!E§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§@!E§ = null;
         var _loc3_:Vector.<§@!E§> = new Vector.<§@!E§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §@!E§.§@g§ || _loc5_.type == §@!E§.§,5§)
               {
                  _loc8_ = new §@!E§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §@!E§.§,5§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §@!E§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §@!E§.§'x§)
               {
                  _loc8_.§=!4§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §+b§() : int
      {
         return this.§@!F§.length;
      }
      
      public function get §%B§() : int
      {
         return this.§=!d§.length;
      }
      
      public function get §,b§() : int
      {
         return this.§5&§.length;
      }
      
      public function get §^!>§() : int
      {
         return this.§!!X§.length;
      }
      
      public function get theme() : String
      {
         return this.§-a§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§-a§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§1]§();
         if(_loc1_ > 0 && _loc1_ < this.§?o§)
         {
            return _loc1_;
         }
         if(this.§?o§ == 0)
         {
            return _loc1_;
         }
         return this.§?o§;
      }
      
      public function §4v§(param1:int) : void
      {
         var _loc2_:int = this.§1]§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§?o§ = param1;
      }
      
      public function §`![§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§;!8§ = null;
         var _loc9_:Object = null;
         var _loc10_:§7R§ = null;
         var _loc11_:§ >§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§<E§ = _loc2_.LevelExtension;
         this.§[!M§ = false;
         this.§7!C§ = _loc2_.scoreSilver;
         this.§'c§ = _loc2_.scoreGold;
         this.§?o§ = _loc2_.scoreEagle;
         this.§-a§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§=!d§ = §>!W§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§!!X§ = new Vector.<§;!8§>();
         this.§5&§ = new Vector.<§7R§>();
         this.§@!F§ = new Vector.<§ >§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §;!8§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§!!X§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §7R§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§5&§.push(_loc10_);
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
            (_loc11_ = new § >§()).x = _loc5_.x;
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
            this.§@!F§.push(_loc11_);
            _loc3_++;
         }
         this.§;d§ = _loc2_.slingshotX;
         this.§&!_§ = _loc2_.slingshotY;
      }
      
      public function §[1§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§<E§;
         _loc1_.scoreSilver = this.§7!C§;
         _loc1_.scoreGold = this.§'c§;
         _loc1_.scoreEagle = this.§?o§;
         _loc1_.theme = this.§-a§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§!!X§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§5&§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§5&§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@!F§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§@!F§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§=!d§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§=!d§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§@!F§.length;
         _loc1_.counts.birds = this.§5&§.length;
         _loc1_.counts.joints = this.§=!d§.length;
         _loc1_.slingshotX = this.§;d§;
         _loc1_.slingshotY = this.§&!_§;
         return _loc1_;
      }
      
      public function §,!]§() : String
      {
         return JSON.stringify(this.§[1§());
      }
      
      public function §1]§() : int
      {
         var _loc2_:§ >§ = null;
         var _loc3_:String = null;
         var _loc4_:§-!E§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!F§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §8z§.§3Z§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §8z§.§3Z§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§-!]§(_loc4_))
               {
                  _loc1_ += _loc4_.§1D§ * §0!%§.§^a§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §+s§() : XML
      {
         var _loc2_:§;!8§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§<E§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§[!M§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§7!C§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§'c§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§!!X§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §#!B§.§`!G§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§5&§[0].x + "\" y=\"" + (this.§5&§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§5&§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§5&§[_loc3_].id + "\" x=\"" + this.§5&§[_loc3_].x + "\" y=\"" + this.§5&§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§@!F§.length)
         {
            _loc1_ += "<Item id=\"" + this.§@!F§[_loc3_].id + "\" x=\"" + this.§@!F§[_loc3_].x + "\" y=\"" + this.§@!F§[_loc3_].y + "\" rotation=\"" + this.§@!F§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §]I§(param1:int) : § >§
      {
         return this.§@!F§[param1];
      }
      
      public function §&H§(param1:§ >§) : void
      {
         this.§@!F§.push(param1);
      }
      
      public function §@!^§(param1:int) : §@!E§
      {
         return this.§=!d§[param1];
      }
      
      public function §1m§(param1:§@!E§) : void
      {
         this.§=!d§.push(param1);
      }
      
      public function §[!W§(param1:int) : §7R§
      {
         return this.§5&§[param1];
      }
      
      public function §"!#§(param1:§7R§) : void
      {
         this.§5&§.push(param1);
      }
      
      public function §"]§() : void
      {
         this.§!!X§ = new Vector.<§;!8§>();
      }
      
      public function §?$§() : void
      {
         this.§5&§ = new Vector.<§7R§>();
      }
      
      public function §-h§(param1:int) : §;!8§
      {
         return this.§!!X§[param1];
      }
      
      public function §0G§(param1:§;!8§) : void
      {
         this.§!!X§.push(param1);
      }
   }
}
