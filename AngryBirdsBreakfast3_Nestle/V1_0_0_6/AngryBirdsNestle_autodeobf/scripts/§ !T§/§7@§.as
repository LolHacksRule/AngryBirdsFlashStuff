package § !T§
{
   import § 8§.§?!9§;
   import §%z§.§9!n§;
   import §%z§.§?8§;
   import §0!s§.§#"%§;
   import §0!s§.§&>§;
   import §0!s§.§5!L§;
   import flash.geom.Point;
   
   public class §7@§
   {
      
      public static const §0P§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §13§:Number = 0;
      
      protected var §&!A§:Number = -8;
      
      protected var §1W§:Number = 0.0;
      
      protected var §!#§:Vector.<§5!L§> = null;
      
      protected var §-!7§:Vector.<§#"%§> = null;
      
      protected var §#r§:Vector.<§&>§> = null;
      
      protected var §'#§:Vector.<§%!D§> = null;
      
      protected var §-!i§:int = 0;
      
      protected var §9!N§:int = 0;
      
      protected var §3!u§:int = 0;
      
      protected var §4!B§:String = null;
      
      protected var mName:String = null;
      
      public function §7@§()
      {
         super();
         this.§'#§ = new Vector.<§%!D§>();
         this.§!#§ = new Vector.<§5!L§>();
         this.§-!7§ = new Vector.<§#"%§>();
         this.§#r§ = new Vector.<§&>§>();
         this.§4!B§ = §0P§;
      }
      
      public static function §8! §(param1:String) : §7@§
      {
         var _loc2_:§7@§ = new §7@§();
         _loc2_.§=!_§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§9!n§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §6"1§(param1:String) : §7@§
      {
         var _loc2_:§7@§ = §8! §(param1);
         _loc2_.§13§ = _loc2_.§-!7§[0].x;
         _loc2_.§&!A§ = _loc2_.§-!7§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§!#§.length)
         {
            _loc2_.§!#§[_loc3_].angle = _loc2_.§!#§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§!#§.length;
      }
      
      public function get §<!P§() : int
      {
         return this.§#r§.length;
      }
      
      public function get §`![§() : int
      {
         return this.§-!7§.length;
      }
      
      public function get §2"!§() : int
      {
         return this.§'#§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§9!N§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§9!N§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§3!u§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§3!u§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§13§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§13§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§&!A§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§&!A§ = param1;
      }
      
      public function get §1""§() : Number
      {
         return this.§1W§;
      }
      
      public function set §1""§(param1:Number) : void
      {
         this.§1W§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §#!,§() : Boolean
      {
         return true;
      }
      
      public function get §,o§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§4!B§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§4!B§ = param1;
      }
      
      public function getEagleScore(param1:§?8§, param2:int) : int
      {
         var _loc3_:int = this.§`"&§(param1,param2);
         var _loc4_:int = this.§<!v§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§-!i§)
         {
            return _loc5_;
         }
         if(this.§-!i§ == 0)
         {
            return _loc5_;
         }
         return this.§-!i§;
      }
      
      public function §1t§(param1:int, param2:§?8§, param3:int) : void
      {
         var _loc4_:int = this.§`"&§(param2,param3);
         var _loc5_:int = this.§<!v§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§-!i§ = param1;
      }
      
      public function §=!_§(param1:String) : void
      {
         var _loc4_:§%!D§ = null;
         var _loc5_:Object = null;
         var _loc6_:§#"%§ = null;
         var _loc7_:Object = null;
         var _loc8_:§5!L§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§3!u§ = _loc2_.scoreSilver;
         this.§9!N§ = _loc2_.scoreGold;
         this.§-!i§ = _loc2_.scoreEagle;
         this.§4!B§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§#r§ = this.§'"$§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§'#§ = new Vector.<§%!D§>();
         this.§-!7§ = new Vector.<§#"%§>();
         this.§!#§ = new Vector.<§5!L§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §%!D§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§'#§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §#"%§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§-!7§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §5!L§()).x = _loc7_.x;
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
            this.§!#§.push(_loc8_);
            _loc3_++;
         }
         this.§13§ = _loc2_.slingshotX;
         this.§&!A§ = _loc2_.slingshotY;
      }
      
      public function §"W§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§3!u§;
         _loc1_.scoreGold = this.§9!N§;
         _loc1_.scoreEagle = this.§-!i§;
         _loc1_.theme = this.§4!B§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§'#§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§-!7§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§-!7§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!#§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§!#§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§#r§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§#r§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§!#§.length;
         _loc1_.counts.birds = this.§-!7§.length;
         _loc1_.counts.joints = this.§#r§.length;
         _loc1_.slingshotX = this.§13§;
         _loc1_.slingshotY = this.§&!A§;
         return _loc1_;
      }
      
      public function §#!G§() : String
      {
         return JSON.stringify(this.§"W§());
      }
      
      protected function §'"$§(param1:int, param2:Object) : Vector.<§&>§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§&>§ = null;
         var _loc3_:Vector.<§&>§> = new Vector.<§&>§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §&>§.§^h§ || _loc5_.type == §&>§.§]!a§)
               {
                  _loc8_ = new §&>§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §&>§.§]!a§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §&>§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §&>§.§7h§)
               {
                  _loc8_.§9" § = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §`"&§(param1:§?8§, param2:int) : int
      {
         var _loc4_:§5!L§ = null;
         var _loc5_:String = null;
         var _loc6_:§9!n§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§!#§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.§4!1§(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.§4!1§(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§!!g§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §!!g§(param1:§?8§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §<!v§() : int
      {
         if(this.§-!7§)
         {
            return this.§-!7§.length * this.§,"$§();
         }
         return 0;
      }
      
      public function §,"$§() : int
      {
         return 10000;
      }
      
      public function §=!f§() : XML
      {
         var _loc2_:§%!D§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§3!u§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§9!N§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§'#§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §?!9§.§,"!§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§-!7§[0].x + "\" y=\"" + (this.§-!7§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§-!7§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§-!7§[_loc3_].type + "\" x=\"" + this.§-!7§[_loc3_].x + "\" y=\"" + this.§-!7§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§!#§.length)
         {
            _loc1_ += "<Item id=\"" + this.§!#§[_loc3_].type + "\" x=\"" + this.§!#§[_loc3_].x + "\" y=\"" + this.§!#§[_loc3_].y + "\" rotation=\"" + this.§!#§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §5!L§
      {
         return this.§!#§[param1];
      }
      
      public function §`!k§(param1:§5!L§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§!#§.push(param1);
      }
      
      public function §^e§(param1:int) : §&>§
      {
         return this.§#r§[param1];
      }
      
      public function §;7§(param1:§&>§) : void
      {
         this.§#r§.push(param1);
      }
      
      public function §'!t§(param1:int) : §#"%§
      {
         return this.§-!7§[param1];
      }
      
      public function §&&§(param1:§#"%§) : void
      {
         this.§-!7§.push(param1);
      }
      
      public function § " §() : void
      {
         this.§'#§ = new Vector.<§%!D§>();
      }
      
      public function §;!Y§() : void
      {
         this.§-!7§ = new Vector.<§#"%§>();
      }
      
      public function §'!;§(param1:int) : §%!D§
      {
         return this.§'#§[param1];
      }
      
      public function §-!O§(param1:§%!D§) : void
      {
         this.§'#§.push(param1);
      }
   }
}
