package §'<§
{
   import §,"%§.§4!`§;
   import §,"%§.§?r§;
   import §,"%§.§^X§;
   import §5!7§.§3!Y§;
   import §5!7§.§<"2§;
   import §>j§.§`y§;
   import flash.geom.Point;
   
   public class §;r§
   {
      
      public static const §&^§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §>y§:Number = 0;
      
      protected var §+@§:Number = -8;
      
      protected var §2!_§:Number = 0.0;
      
      protected var §,!6§:Vector.<§?r§> = null;
      
      protected var §"7§:Vector.<§4!`§> = null;
      
      protected var §,!m§:Vector.<§^X§> = null;
      
      protected var §+"1§:Vector.<§@!R§> = null;
      
      protected var §'!D§:int = 0;
      
      protected var §9!l§:int = 0;
      
      protected var §"!4§:int = 0;
      
      protected var §7_§:String = null;
      
      protected var mName:String = null;
      
      public function §;r§()
      {
         super();
         this.§+"1§ = new Vector.<§@!R§>();
         this.§,!6§ = new Vector.<§?r§>();
         this.§"7§ = new Vector.<§4!`§>();
         this.§,!m§ = new Vector.<§^X§>();
         this.§7_§ = §&^§;
      }
      
      public static function §5!-§(param1:String) : §;r§
      {
         var _loc2_:§;r§ = new §;r§();
         _loc2_.§6!%§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§3!Y§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §0!V§(param1:String) : §;r§
      {
         var _loc2_:§;r§ = §5!-§(param1);
         _loc2_.§>y§ = _loc2_.§"7§[0].x;
         _loc2_.§+@§ = _loc2_.§"7§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§,!6§.length)
         {
            _loc2_.§,!6§[_loc3_].angle = _loc2_.§,!6§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§,!6§.length;
      }
      
      public function get §`!x§() : int
      {
         return this.§,!m§.length;
      }
      
      public function get §=!k§() : int
      {
         return this.§"7§.length;
      }
      
      public function get §?h§() : int
      {
         return this.§+"1§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§9!l§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§9!l§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§"!4§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§"!4§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§>y§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§>y§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§+@§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§+@§ = param1;
      }
      
      public function get §;!_§() : Number
      {
         return this.§2!_§;
      }
      
      public function set §;!_§(param1:Number) : void
      {
         this.§2!_§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §`! §() : Boolean
      {
         return true;
      }
      
      public function get §]!o§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§7_§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§7_§ = param1;
      }
      
      public function getEagleScore(param1:§<"2§, param2:int) : int
      {
         var _loc3_:int = this.§ B§(param1,param2);
         var _loc4_:int = this.§+"5§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§'!D§)
         {
            return _loc5_;
         }
         if(this.§'!D§ == 0)
         {
            return _loc5_;
         }
         return this.§'!D§;
      }
      
      public function §#!r§(param1:int, param2:§<"2§, param3:int) : void
      {
         var _loc4_:int = this.§ B§(param2,param3);
         var _loc5_:int = this.§+"5§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§'!D§ = param1;
      }
      
      public function §6!%§(param1:String) : void
      {
         var _loc4_:§@!R§ = null;
         var _loc5_:Object = null;
         var _loc6_:§4!`§ = null;
         var _loc7_:Object = null;
         var _loc8_:§?r§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§"!4§ = _loc2_.scoreSilver;
         this.§9!l§ = _loc2_.scoreGold;
         this.§'!D§ = _loc2_.scoreEagle;
         this.§7_§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§,!m§ = this.§9!n§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§+"1§ = new Vector.<§@!R§>();
         this.§"7§ = new Vector.<§4!`§>();
         this.§,!6§ = new Vector.<§?r§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §@!R§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§+"1§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §4!`§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§"7§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §?r§()).x = _loc7_.x;
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
            this.§,!6§.push(_loc8_);
            _loc3_++;
         }
         this.§>y§ = _loc2_.slingshotX;
         this.§+@§ = _loc2_.slingshotY;
      }
      
      public function § do§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.scoreSilver = this.§"!4§;
         _loc1_.scoreGold = this.§9!l§;
         _loc1_.scoreEagle = this.§'!D§;
         _loc1_.theme = this.§7_§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§+"1§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§"7§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§"7§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,!6§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§,!6§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,!m§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§,!m§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§,!6§.length;
         _loc1_.counts.birds = this.§"7§.length;
         _loc1_.counts.joints = this.§,!m§.length;
         _loc1_.slingshotX = this.§>y§;
         _loc1_.slingshotY = this.§+@§;
         return _loc1_;
      }
      
      public function §-+§() : String
      {
         return JSON.stringify(this.§ do§());
      }
      
      protected function §9!n§(param1:int, param2:Object) : Vector.<§^X§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§^X§ = null;
         var _loc3_:Vector.<§^X§> = new Vector.<§^X§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §^X§.§""!§ || _loc5_.type == §^X§.§2I§)
               {
                  _loc8_ = new §^X§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §^X§.§2I§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §^X§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §^X§.§6!e§)
               {
                  _loc8_.§0r§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function § B§(param1:§<"2§, param2:int) : int
      {
         var _loc4_:§?r§ = null;
         var _loc5_:String = null;
         var _loc6_:§3!Y§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§,!6§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.§-!K§(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.§-!K§(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§!"&§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §!"&§(param1:§<"2§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §+"5§() : int
      {
         if(this.§"7§)
         {
            return this.§"7§.length * this.§'!+§();
         }
         return 0;
      }
      
      public function §'!+§() : int
      {
         return 10000;
      }
      
      public function §[!9§() : XML
      {
         var _loc2_:§@!R§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " scoreSilver=\"" + this.§"!4§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§9!l§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§+"1§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §`y§.§%"&§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§"7§[0].x + "\" y=\"" + (this.§"7§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§"7§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§"7§[_loc3_].type + "\" x=\"" + this.§"7§[_loc3_].x + "\" y=\"" + this.§"7§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§,!6§.length)
         {
            _loc1_ += "<Item id=\"" + this.§,!6§[_loc3_].type + "\" x=\"" + this.§,!6§[_loc3_].x + "\" y=\"" + this.§,!6§[_loc3_].y + "\" rotation=\"" + this.§,!6§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §?r§
      {
         return this.§,!6§[param1];
      }
      
      public function §!t§(param1:§?r§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§,!6§.push(param1);
      }
      
      public function §8!5§(param1:int) : §^X§
      {
         return this.§,!m§[param1];
      }
      
      public function §@!e§(param1:§^X§) : void
      {
         this.§,!m§.push(param1);
      }
      
      public function §?!P§(param1:int) : §4!`§
      {
         return this.§"7§[param1];
      }
      
      public function §3!H§(param1:§4!`§) : void
      {
         this.§"7§.push(param1);
      }
      
      public function §@"0§() : void
      {
         this.§+"1§ = new Vector.<§@!R§>();
      }
      
      public function §^'§() : void
      {
         this.§"7§ = new Vector.<§4!`§>();
      }
      
      public function §0g§(param1:int) : §@!R§
      {
         return this.§+"1§[param1];
      }
      
      public function §%![§(param1:§@!R§) : void
      {
         this.§+"1§.push(param1);
      }
   }
}
