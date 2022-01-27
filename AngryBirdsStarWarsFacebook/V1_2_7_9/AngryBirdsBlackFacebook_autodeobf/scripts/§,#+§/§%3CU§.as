package §,#+§
{
   import §4"F§.§["N§;
   import §4"F§.§^d§;
   import §4"F§.§var §;
   import §5i§.§+M§;
   import §>P§.§!!O§;
   import §>P§.§=!,§;
   import flash.geom.Point;
   
   public class §<U§
   {
      
      public static const §[q§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §6"q§:Number = 0;
      
      protected var §>!9§:Number = -8;
      
      protected var §;![§:Number = 0.0;
      
      protected var §,z§:Vector.<§^d§> = null;
      
      protected var §1#!§:Vector.<§var §> = null;
      
      protected var §%#-§:Vector.<§["N§> = null;
      
      protected var §"<§:Vector.<§6G§> = null;
      
      public var §&!L§:Number = 0;
      
      public var § !z§:Boolean = false;
      
      protected var §2q§:int = 0;
      
      protected var §1"f§:int = 0;
      
      protected var §%!i§:int = 0;
      
      protected var §<!h§:String = null;
      
      protected var mName:String = null;
      
      public function §<U§()
      {
         super();
         this.§"<§ = new Vector.<§6G§>();
         this.§,z§ = new Vector.<§^d§>();
         this.§1#!§ = new Vector.<§var §>();
         this.§%#-§ = new Vector.<§["N§>();
         this.§<!h§ = §[q§;
      }
      
      public static function §&!K§(param1:String) : §<U§
      {
         var _loc2_:§<U§ = new §<U§();
         _loc2_.§>d§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§=!,§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function § !d§(param1:String) : §<U§
      {
         var _loc2_:§<U§ = §&!K§(param1);
         _loc2_.§6"q§ = _loc2_.§1#!§[0].x;
         _loc2_.§>!9§ = _loc2_.§1#!§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§,z§.length)
         {
            _loc2_.§,z§[_loc3_].angle = _loc2_.§,z§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§,z§.length;
      }
      
      public function get §&_§() : int
      {
         return this.§%#-§.length;
      }
      
      public function get §[!a§() : int
      {
         return this.§1#!§.length;
      }
      
      public function get §`!>§() : int
      {
         return this.§"<§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§1"f§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§1"f§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§%!i§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§%!i§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§6"q§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§6"q§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§>!9§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§>!9§ = param1;
      }
      
      public function get §4d§() : Number
      {
         return this.§;![§;
      }
      
      public function set §4d§(param1:Number) : void
      {
         this.§;![§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get hasGround() : Boolean
      {
         return true;
      }
      
      public function get worldGravity() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§<!h§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§<!h§ = param1;
      }
      
      public function getEagleScore(param1:§!!O§, param2:int) : int
      {
         var _loc3_:int = this.§0V§(param1,param2);
         var _loc4_:int = this.§@"h§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§2q§)
         {
            return _loc5_;
         }
         if(this.§2q§ == 0)
         {
            return _loc5_;
         }
         return this.§2q§;
      }
      
      public function §%!K§(param1:int, param2:§!!O§, param3:int) : void
      {
         var _loc4_:int = this.§0V§(param2,param3);
         var _loc5_:int = this.§@"h§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§2q§ = param1;
      }
      
      public function §>d§(param1:String) : void
      {
         var _loc4_:§6G§ = null;
         var _loc5_:Object = null;
         var _loc6_:§var § = null;
         var _loc7_:Object = null;
         var _loc8_:§^d§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§&!L§ = _loc2_.LevelExtension;
         this.§ !z§ = false;
         this.§%!i§ = _loc2_.scoreSilver;
         this.§1"f§ = _loc2_.scoreGold;
         this.§2q§ = _loc2_.scoreEagle;
         this.§<!h§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§%#-§ = this.§3!]§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§"<§ = new Vector.<§6G§>();
         this.§1#!§ = new Vector.<§var §>();
         this.§,z§ = new Vector.<§^d§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §6G§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§"<§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §var §()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§1#!§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §^d§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.type = _loc7_.id;
            _loc8_.id = _loc3_ - 1;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            if(_loc8_.type == null)
            {
               throw new Error("Item type can\'t be null.");
            }
            this.§,z§.push(_loc8_);
            _loc3_++;
         }
         this.§6"q§ = _loc2_.slingshotX;
         this.§>!9§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§&!L§;
         _loc1_.scoreSilver = this.§%!i§;
         _loc1_.scoreGold = this.§1"f§;
         _loc1_.scoreEagle = this.§2q§;
         _loc1_.theme = this.§<!h§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§"<§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§1#!§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§1#!§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,z§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§,z§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%#-§.length)
         {
            _loc3_ = this.§%#-§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§[!n§(_loc3_.index1);
            _loc3_.index2 = this.§[!n§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§,z§.length;
         _loc1_.counts.birds = this.§1#!§.length;
         _loc1_.counts.joints = this.§%#-§.length;
         _loc1_.slingshotX = this.§6"q§;
         _loc1_.slingshotY = this.§>!9§;
         return _loc1_;
      }
      
      protected function §[!n§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,z§.length)
         {
            if(this.§,z§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §;#'§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §3!]§(param1:int, param2:Object) : Vector.<§["N§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§["N§ = null;
         var _loc3_:Vector.<§["N§> = new Vector.<§["N§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = _loc5_.index1;
               _loc9_ = _loc5_.index2;
               _loc10_ = null;
               if(_loc5_.type == §["N§.§^!N§ || _loc5_.type == §["N§.§>!Z§)
               {
                  _loc10_ = new §["N§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                  if(_loc5_.type == §["N§.§>!Z§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §["N§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
               }
               if(_loc5_.type == §["N§.§@"#§)
               {
                  _loc10_.annihilationTime = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc10_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §0V§(param1:§!!O§, param2:int) : int
      {
         var _loc4_:§^d§ = null;
         var _loc5_:String = null;
         var _loc6_:§=!,§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§,z§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.getItem(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.getItem(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§>@§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §>@§(param1:§!!O§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §@"h§() : int
      {
         if(this.§1#!§)
         {
            return this.§1#!§.length * this.§9"d§();
         }
         return 0;
      }
      
      public function §9"d§() : int
      {
         return 10000;
      }
      
      public function §1"W§() : XML
      {
         var _loc2_:§6G§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§&!L§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§ !z§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§%!i§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§1"f§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§"<§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §+M§.§9"6§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§1#!§[0].x + "\" y=\"" + (this.§1#!§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§1#!§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§1#!§[_loc3_].type + "\" x=\"" + this.§1#!§[_loc3_].x + "\" y=\"" + this.§1#!§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§,z§.length)
         {
            _loc1_ += "<Item id=\"" + this.§,z§[_loc3_].type + "\" x=\"" + this.§,z§[_loc3_].x + "\" y=\"" + this.§,z§[_loc3_].y + "\" rotation=\"" + this.§,z§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §^d§
      {
         return this.§,z§[param1];
      }
      
      public function addObject(param1:§^d§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§,z§.push(param1);
      }
      
      public function §""U§(param1:int) : §["N§
      {
         return this.§%#-§[param1];
      }
      
      public function §+"#§(param1:§["N§) : void
      {
         this.§%#-§.push(param1);
      }
      
      public function §?"H§(param1:int) : §var §
      {
         return this.§1#!§[param1];
      }
      
      public function §^"F§(param1:§var §) : void
      {
         this.§1#!§.push(param1);
      }
      
      public function §2!]§() : void
      {
         this.§"<§ = new Vector.<§6G§>();
      }
      
      public function §1!§() : void
      {
         this.§1#!§ = new Vector.<§var §>();
      }
      
      public function §8! §(param1:int) : §6G§
      {
         return this.§"<§[param1];
      }
      
      public function §5Q§(param1:§6G§) : void
      {
         this.§"<§.push(param1);
      }
   }
}
