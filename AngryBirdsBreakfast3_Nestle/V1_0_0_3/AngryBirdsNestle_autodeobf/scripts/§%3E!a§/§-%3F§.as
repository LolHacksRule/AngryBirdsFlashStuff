package §>!a§
{
   import §!!<§.§-"4§;
   import §!!<§.§>"4§;
   import §'w§.§ !7§;
   import §<!A§.§=!s§;
   import §<!A§.§=Q§;
   import §<!A§.§false§;
   import flash.geom.Point;
   
   public class §-?§
   {
      
      public static const §5!L§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §7!;§:Number = 0;
      
      protected var §7!g§:Number = -8;
      
      protected var §]"2§:Number = 0.0;
      
      protected var §&!B§:Vector.<§false§> = null;
      
      protected var §1%§:Vector.<§=Q§> = null;
      
      protected var §&!R§:Vector.<§=!s§> = null;
      
      protected var §@G§:Vector.<§0!t§> = null;
      
      protected var §1!m§:int = 0;
      
      protected var §2!W§:int = 0;
      
      protected var §#!y§:int = 0;
      
      protected var §"!_§:String = null;
      
      protected var mName:String = null;
      
      public function §-?§()
      {
         super();
         this.§@G§ = new Vector.<§0!t§>();
         this.§&!B§ = new Vector.<§false§>();
         this.§1%§ = new Vector.<§=Q§>();
         this.§&!R§ = new Vector.<§=!s§>();
         this.§"!_§ = §5!L§;
      }
      
      public static function §9!h§(param1:String) : §-?§
      {
         var _loc2_:§-?§ = new §-?§();
         _loc2_.§]A§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§>"4§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §6! §(param1:String) : §-?§
      {
         var _loc2_:§-?§ = §9!h§(param1);
         _loc2_.§7!;§ = _loc2_.§1%§[0].x;
         _loc2_.§7!g§ = _loc2_.§1%§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§&!B§.length)
         {
            _loc2_.§&!B§[_loc3_].angle = _loc2_.§&!B§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§&!B§.length;
      }
      
      public function get §2y§() : int
      {
         return this.§&!R§.length;
      }
      
      public function get §"!<§() : int
      {
         return this.§1%§.length;
      }
      
      public function get §""#§() : int
      {
         return this.§@G§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§2!W§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§2!W§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§#!y§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§#!y§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§7!;§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§7!;§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§7!g§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§7!g§ = param1;
      }
      
      public function get §>!^§() : Number
      {
         return this.§]"2§;
      }
      
      public function set §>!^§(param1:Number) : void
      {
         this.§]"2§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §-X§() : Boolean
      {
         return true;
      }
      
      public function get §=V§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§"!_§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§"!_§ = param1;
      }
      
      public function getEagleScore(param1:§-"4§, param2:int) : int
      {
         var _loc3_:int = this.§%7§(param1,param2);
         var _loc4_:int = this.§1!1§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§1!m§)
         {
            return _loc5_;
         }
         if(this.§1!m§ == 0)
         {
            return _loc5_;
         }
         return this.§1!m§;
      }
      
      public function §null §(param1:int, param2:§-"4§, param3:int) : void
      {
         var _loc4_:int = this.§%7§(param2,param3);
         var _loc5_:int = this.§1!1§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§1!m§ = param1;
      }
      
      public function §]A§(param1:String) : void
      {
         var _loc4_:§0!t§ = null;
         var _loc5_:Object = null;
         var _loc6_:§=Q§ = null;
         var _loc7_:Object = null;
         var _loc8_:§false§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§#!y§ = _loc2_.scoreSilver;
         this.§2!W§ = _loc2_.scoreGold;
         this.§1!m§ = _loc2_.scoreEagle;
         this.§"!_§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§&!R§ = this.§-"&§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§@G§ = new Vector.<§0!t§>();
         this.§1%§ = new Vector.<§=Q§>();
         this.§&!B§ = new Vector.<§false§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §0!t§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§@G§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §=Q§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§1%§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §false§()).x = _loc7_.x;
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
            this.§&!B§.push(_loc8_);
            _loc3_++;
         }
         this.§7!;§ = _loc2_.slingshotX;
         this.§7!g§ = _loc2_.slingshotY;
      }
      
      public function §"![§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§#!y§;
         _loc1_.scoreGold = this.§2!W§;
         _loc1_.scoreEagle = this.§1!m§;
         _loc1_.theme = this.§"!_§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§@G§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§1%§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§1%§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&!B§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§&!B§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&!R§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§&!R§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§&!B§.length;
         _loc1_.counts.birds = this.§1%§.length;
         _loc1_.counts.joints = this.§&!R§.length;
         _loc1_.slingshotX = this.§7!;§;
         _loc1_.slingshotY = this.§7!g§;
         return _loc1_;
      }
      
      public function §=!F§() : String
      {
         return JSON.stringify(this.§"![§());
      }
      
      protected function §-"&§(param1:int, param2:Object) : Vector.<§=!s§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§=!s§ = null;
         var _loc3_:Vector.<§=!s§> = new Vector.<§=!s§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §=!s§.§set § || _loc5_.type == §=!s§.§#!T§)
               {
                  _loc8_ = new §=!s§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §=!s§.§#!T§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §=!s§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §=!s§.§]"0§)
               {
                  _loc8_.§%g§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §%7§(param1:§-"4§, param2:int) : int
      {
         var _loc4_:§false§ = null;
         var _loc5_:String = null;
         var _loc6_:§>"4§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§&!B§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.§7`§(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.§7`§(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§^M§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §^M§(param1:§-"4§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §1!1§() : int
      {
         if(this.§1%§)
         {
            return this.§1%§.length * this.§6S§();
         }
         return 0;
      }
      
      public function §6S§() : int
      {
         return 10000;
      }
      
      public function §70§() : XML
      {
         var _loc2_:§0!t§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§#!y§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§2!W§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§@G§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + § !7§.§3P§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§1%§[0].x + "\" y=\"" + (this.§1%§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§1%§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§1%§[_loc3_].type + "\" x=\"" + this.§1%§[_loc3_].x + "\" y=\"" + this.§1%§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§&!B§.length)
         {
            _loc1_ += "<Item id=\"" + this.§&!B§[_loc3_].type + "\" x=\"" + this.§&!B§[_loc3_].x + "\" y=\"" + this.§&!B§[_loc3_].y + "\" rotation=\"" + this.§&!B§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §false§
      {
         return this.§&!B§[param1];
      }
      
      public function §&0§(param1:§false§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§&!B§.push(param1);
      }
      
      public function §8" §(param1:int) : §=!s§
      {
         return this.§&!R§[param1];
      }
      
      public function §3Q§(param1:§=!s§) : void
      {
         this.§&!R§.push(param1);
      }
      
      public function §;r§(param1:int) : §=Q§
      {
         return this.§1%§[param1];
      }
      
      public function §4!S§(param1:§=Q§) : void
      {
         this.§1%§.push(param1);
      }
      
      public function §@!k§() : void
      {
         this.§@G§ = new Vector.<§0!t§>();
      }
      
      public function §=!d§() : void
      {
         this.§1%§ = new Vector.<§=Q§>();
      }
      
      public function §4![§(param1:int) : §0!t§
      {
         return this.§@G§[param1];
      }
      
      public function §=!1§(param1:§0!t§) : void
      {
         this.§@G§.push(param1);
      }
   }
}
