package §finally§
{
   import § !o§.*;
   import §"$§.§ !,§;
   import §"$§.§!t§;
   import §"$§.§-o§;
   import §%!n§.§"+§;
   import §%!n§.§7!+§;
   import §3!@§.§ s§;
   import §^U§.§3$§;
   import flash.geom.Point;
   
   public class §@z§
   {
      
      public static const §4d§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §?s§:Number = 0;
      
      public var §52§:Number = -8;
      
      private var §,]§:Vector.<§ !,§> = null;
      
      private var §0n§:Vector.<§-o§> = null;
      
      private var §1`§:Vector.<§!t§> = null;
      
      private var §`!0§:Vector.<§`!h§> = null;
      
      public var § &§:Number = 0;
      
      public var §`!?§:Boolean = false;
      
      public var §"!M§:int = 0;
      
      public var §4h§:int = 0;
      
      private var §=!Q§:int = 0;
      
      private var §>!`§:String = null;
      
      public var mName:String = null;
      
      public function §@z§()
      {
         super();
         this.§`!0§ = new Vector.<§`!h§>();
         this.§,]§ = new Vector.<§ !,§>();
         this.§0n§ = new Vector.<§-o§>();
         this.§1`§ = new Vector.<§!t§>();
         this.§>!`§ = §4d§;
      }
      
      public static function §8U§(param1:String) : §@z§
      {
         var _loc2_:§@z§ = new §@z§();
         _loc2_.§9Z§(param1);
         return _loc2_;
      }
      
      public static function §@e§(param1:§7!+§) : Boolean
      {
         if(param1.§&F§ == §7!+§.§6!n§ || param1.§&F§ == §7!+§.§&!f§ || param1.§&F§ == §7!+§.§2g§)
         {
            return true;
         }
         return false;
      }
      
      public static function §6!"§(param1:String) : §@z§
      {
         var _loc2_:§@z§ = §8U§(param1);
         _loc2_.§?s§ = _loc2_.§0n§[0].x;
         _loc2_.§52§ = _loc2_.§0n§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§,]§.length)
         {
            _loc2_.§,]§[_loc3_].angle = 360 - _loc2_.§,]§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §^r§(param1:int, param2:Object) : Vector.<§!t§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§!t§ = null;
         var _loc3_:Vector.<§!t§> = new Vector.<§!t§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §!t§.§-'§ || _loc5_.type == §!t§.§!J§)
               {
                  _loc8_ = new §!t§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §!t§.§!J§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §!t§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §!t§.§;!H§)
               {
                  _loc8_.§5m§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §]4§() : int
      {
         return this.§,]§.length;
      }
      
      public function get §@!U§() : int
      {
         return this.§1`§.length;
      }
      
      public function get §>5§() : int
      {
         return this.§0n§.length;
      }
      
      public function get §'!k§() : int
      {
         return this.§`!0§.length;
      }
      
      public function get theme() : String
      {
         return this.§>!`§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§>!`§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§^!V§();
         if(_loc1_ > 0 && _loc1_ < this.§=!Q§)
         {
            return _loc1_;
         }
         if(this.§=!Q§ == 0)
         {
            return _loc1_;
         }
         return this.§=!Q§;
      }
      
      public function §2§(param1:int) : void
      {
         var _loc2_:int = this.§^!V§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§=!Q§ = param1;
      }
      
      public function §9Z§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§`!h§ = null;
         var _loc9_:Object = null;
         var _loc10_:§-o§ = null;
         var _loc11_:§ !,§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§ &§ = _loc2_.LevelExtension;
         this.§`!?§ = false;
         this.§"!M§ = _loc2_.scoreSilver;
         this.§4h§ = _loc2_.scoreGold;
         this.§=!Q§ = _loc2_.scoreEagle;
         this.§>!`§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§1`§ = §^r§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§`!0§ = new Vector.<§`!h§>();
         this.§0n§ = new Vector.<§-o§>();
         this.§,]§ = new Vector.<§ !,§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §`!h§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§`!0§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §-o§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§0n§.push(_loc10_);
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
            (_loc11_ = new § !,§()).x = _loc5_.x;
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
            this.§,]§.push(_loc11_);
            _loc3_++;
         }
         this.§?s§ = _loc2_.slingshotX;
         this.§52§ = _loc2_.slingshotY;
      }
      
      public function §13§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§ &§;
         _loc1_.scoreSilver = this.§"!M§;
         _loc1_.scoreGold = this.§4h§;
         _loc1_.scoreEagle = this.§=!Q§;
         _loc1_.theme = this.§>!`§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§`!0§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§0n§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§0n§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,]§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§,]§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1`§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§1`§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§,]§.length;
         _loc1_.counts.birds = this.§0n§.length;
         _loc1_.counts.joints = this.§1`§.length;
         _loc1_.slingshotX = this.§?s§;
         _loc1_.slingshotY = this.§52§;
         return _loc1_;
      }
      
      public function §[q§() : String
      {
         return JSON.stringify(this.§13§());
      }
      
      public function §^!V§() : int
      {
         var _loc2_:§ !,§ = null;
         var _loc3_:String = null;
         var _loc4_:§7!+§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,]§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §"+§.§9Q§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §"+§.§9Q§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§@e§(_loc4_))
               {
                  _loc1_ += _loc4_.§5!]§ * § s§.§9!b§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §'z§() : XML
      {
         var _loc2_:§`!h§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§ &§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§`!?§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§"!M§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§4h§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§`!0§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §3$§.§6W§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§0n§[0].x + "\" y=\"" + (this.§0n§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§0n§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§0n§[_loc3_].id + "\" x=\"" + this.§0n§[_loc3_].x + "\" y=\"" + this.§0n§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§,]§.length)
         {
            _loc1_ += "<Item id=\"" + this.§,]§[_loc3_].id + "\" x=\"" + this.§,]§[_loc3_].x + "\" y=\"" + this.§,]§[_loc3_].y + "\" rotation=\"" + this.§,]§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §2h§(param1:int) : § !,§
      {
         return this.§,]§[param1];
      }
      
      public function §else §(param1:§ !,§) : void
      {
         this.§,]§.push(param1);
      }
      
      public function §"8§(param1:int) : §!t§
      {
         return this.§1`§[param1];
      }
      
      public function §`!]§(param1:§!t§) : void
      {
         this.§1`§.push(param1);
      }
      
      public function §%d§(param1:int) : §-o§
      {
         return this.§0n§[param1];
      }
      
      public function §0B§(param1:§-o§) : void
      {
         this.§0n§.push(param1);
      }
      
      public function §1!Z§() : void
      {
         this.§`!0§ = new Vector.<§`!h§>();
      }
      
      public function §0N§() : void
      {
         this.§0n§ = new Vector.<§-o§>();
      }
      
      public function §,n§(param1:int) : §`!h§
      {
         return this.§`!0§[param1];
      }
      
      public function §+r§(param1:§`!h§) : void
      {
         this.§`!0§.push(param1);
      }
   }
}
