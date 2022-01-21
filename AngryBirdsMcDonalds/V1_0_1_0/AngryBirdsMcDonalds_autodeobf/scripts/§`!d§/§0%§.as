package §`!d§
{
   import §!!e§.§<!S§;
   import §!!e§.§`!S§;
   import §!!g§.§8d§;
   import §,0§.*;
   import §@!b§.§@!k§;
   import flash.geom.Point;
   import §for §.§"E§;
   import §for §.§-"§;
   import §for §.§^x§;
   
   public class §0%§
   {
      
      public static const §'M§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §^!5§:Number = 0;
      
      public var §@Y§:Number = -8;
      
      private var §]_§:Vector.<§-"§> = null;
      
      private var § N§:Vector.<§"E§> = null;
      
      private var §-U§:Vector.<§^x§> = null;
      
      private var §3!3§:Vector.<§[!h§> = null;
      
      public var §83§:Number = 0;
      
      public var §?'§:Boolean = false;
      
      public var §,z§:int = 0;
      
      public var §-X§:int = 0;
      
      private var §<Y§:int = 0;
      
      private var §7r§:String = null;
      
      public var mName:String = null;
      
      public function §0%§()
      {
         super();
         this.§3!3§ = new Vector.<§[!h§>();
         this.§]_§ = new Vector.<§-"§>();
         this.§ N§ = new Vector.<§"E§>();
         this.§-U§ = new Vector.<§^x§>();
         this.§7r§ = §'M§;
      }
      
      public static function §3!;§(param1:String) : §0%§
      {
         var _loc2_:§0%§ = new §0%§();
         _loc2_.§-i§(param1);
         return _loc2_;
      }
      
      public static function §`!e§(param1:§`!S§) : Boolean
      {
         if(param1.§]b§ == §`!S§.§@Q§ || param1.§]b§ == §`!S§.§3o§ || param1.§]b§ == §`!S§.§?I§)
         {
            return true;
         }
         return false;
      }
      
      public static function § j§(param1:String) : §0%§
      {
         var _loc2_:§0%§ = §3!;§(param1);
         _loc2_.§^!5§ = _loc2_.§ N§[0].x;
         _loc2_.§@Y§ = _loc2_.§ N§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§]_§.length)
         {
            _loc2_.§]_§[_loc3_].angle = 360 - _loc2_.§]_§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §!!`§(param1:int, param2:Object) : Vector.<§^x§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§^x§ = null;
         var _loc3_:Vector.<§^x§> = new Vector.<§^x§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §^x§.§@!C§ || _loc5_.type == §^x§.§,!h§)
               {
                  _loc8_ = new §^x§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §^x§.§,!h§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §^x§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §^x§.§^U§)
               {
                  _loc8_.§>'§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §4!?§() : int
      {
         return this.§]_§.length;
      }
      
      public function get §>w§() : int
      {
         return this.§-U§.length;
      }
      
      public function get §7!5§() : int
      {
         return this.§ N§.length;
      }
      
      public function get §2!&§() : int
      {
         return this.§3!3§.length;
      }
      
      public function get theme() : String
      {
         return this.§7r§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§7r§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§4!C§();
         if(_loc1_ > 0 && _loc1_ < this.§<Y§)
         {
            return _loc1_;
         }
         if(this.§<Y§ == 0)
         {
            return _loc1_;
         }
         return this.§<Y§;
      }
      
      public function §1!§(param1:int) : void
      {
         var _loc2_:int = this.§4!C§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§<Y§ = param1;
      }
      
      public function §-i§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc8_:§[!h§ = null;
         var _loc9_:Object = null;
         var _loc10_:§"E§ = null;
         var _loc11_:§-"§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§83§ = _loc2_.LevelExtension;
         this.§?'§ = false;
         this.§,z§ = _loc2_.scoreSilver;
         this.§-X§ = _loc2_.scoreGold;
         this.§<Y§ = _loc2_.scoreEagle;
         this.§7r§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§-U§ = §!!`§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§3!3§ = new Vector.<§[!h§>();
         this.§ N§ = new Vector.<§"E§>();
         this.§]_§ = new Vector.<§-"§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc8_ = new §[!h§()).x = _loc2_.camera[_loc3_].x;
            _loc8_.y = _loc2_.camera[_loc3_].y;
            _loc8_.left = _loc2_.camera[_loc3_].left;
            _loc8_.right = _loc2_.camera[_loc3_].right;
            _loc8_.top = _loc2_.camera[_loc3_].top;
            _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc8_.id = _loc2_.camera[_loc3_].id;
            this.§3!3§.push(_loc8_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc9_ = _loc2_.world["bird_" + _loc3_];
            (_loc10_ = new §"E§()).x = _loc9_.x;
            _loc10_.y = _loc9_.y;
            _loc10_.id = _loc9_.id;
            this.§ N§.push(_loc10_);
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
            (_loc11_ = new §-"§()).x = _loc5_.x;
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
            this.§]_§.push(_loc11_);
            _loc3_++;
         }
         this.§^!5§ = _loc2_.slingshotX;
         this.§@Y§ = _loc2_.slingshotY;
      }
      
      public function §"!c§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§83§;
         _loc1_.scoreSilver = this.§,z§;
         _loc1_.scoreGold = this.§-X§;
         _loc1_.scoreEagle = this.§<Y§;
         _loc1_.theme = this.§7r§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§3!3§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§ N§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§ N§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§]_§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§]_§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-U§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§-U§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§]_§.length;
         _loc1_.counts.birds = this.§ N§.length;
         _loc1_.counts.joints = this.§-U§.length;
         _loc1_.slingshotX = this.§^!5§;
         _loc1_.slingshotY = this.§@Y§;
         return _loc1_;
      }
      
      public function §6!=§() : String
      {
         return JSON.stringify(this.§"!c§());
      }
      
      public function §4!C§() : int
      {
         var _loc2_:§-"§ = null;
         var _loc3_:String = null;
         var _loc4_:§`!S§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]_§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §<!S§.§<!l§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §<!S§.§<!l§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§`!e§(_loc4_))
               {
                  _loc1_ += _loc4_.§#!2§ * §@!k§.§]!^§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §-Y§() : XML
      {
         var _loc2_:§[!h§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§83§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§?'§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§,z§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§-X§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§3!3§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §8d§.§2!f§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§ N§[0].x + "\" y=\"" + (this.§ N§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§ N§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§ N§[_loc3_].id + "\" x=\"" + this.§ N§[_loc3_].x + "\" y=\"" + this.§ N§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§]_§.length)
         {
            _loc1_ += "<Item id=\"" + this.§]_§[_loc3_].id + "\" x=\"" + this.§]_§[_loc3_].x + "\" y=\"" + this.§]_§[_loc3_].y + "\" rotation=\"" + this.§]_§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §'r§(param1:int) : §-"§
      {
         return this.§]_§[param1];
      }
      
      public function §[E§(param1:§-"§) : void
      {
         this.§]_§.push(param1);
      }
      
      public function §4!G§(param1:int) : §^x§
      {
         return this.§-U§[param1];
      }
      
      public function §8&§(param1:§^x§) : void
      {
         this.§-U§.push(param1);
      }
      
      public function §4L§(param1:int) : §"E§
      {
         return this.§ N§[param1];
      }
      
      public function §'q§(param1:§"E§) : void
      {
         this.§ N§.push(param1);
      }
      
      public function §]D§() : void
      {
         this.§3!3§ = new Vector.<§[!h§>();
      }
      
      public function §<!M§() : void
      {
         this.§ N§ = new Vector.<§"E§>();
      }
      
      public function §!!,§(param1:int) : §[!h§
      {
         return this.§3!3§[param1];
      }
      
      public function §<!W§(param1:§[!h§) : void
      {
         this.§3!3§.push(param1);
      }
   }
}
