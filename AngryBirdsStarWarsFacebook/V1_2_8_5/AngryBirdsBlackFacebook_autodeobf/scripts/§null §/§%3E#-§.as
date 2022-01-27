package §null §
{
   import §#g§.§2"m§;
   import §#g§.§["%§;
   import §7§.§8[§;
   import §=G§.§9v§;
   import §=G§.§<5§;
   import §=G§.§=u§;
   import flash.geom.Point;
   
   public class §>#-§
   {
      
      public static const §"!i§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §7!4§:Number = 0;
      
      protected var §`!,§:Number = -8;
      
      protected var §#"$§:Number = 0.0;
      
      protected var §7"q§:Vector.<§9v§> = null;
      
      protected var §&"P§:Vector.<§<5§> = null;
      
      protected var §2"?§:Vector.<§=u§> = null;
      
      protected var §>!T§:Vector.<§ case§> = null;
      
      public var §=J§:Number = 0;
      
      public var §%!d§:Boolean = false;
      
      protected var §'"L§:int = 0;
      
      protected var §-!#§:int = 0;
      
      protected var §;"L§:int = 0;
      
      protected var §#P§:String = null;
      
      protected var mName:String = null;
      
      public function §>#-§()
      {
         super();
         this.§>!T§ = new Vector.<§ case§>();
         this.§7"q§ = new Vector.<§9v§>();
         this.§&"P§ = new Vector.<§<5§>();
         this.§2"?§ = new Vector.<§=u§>();
         this.§#P§ = §"!i§;
      }
      
      public static function §""u§(param1:String) : §>#-§
      {
         var _loc2_:§>#-§ = new §>#-§();
         _loc2_.§+%§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§["%§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §'"R§(param1:String) : §>#-§
      {
         var _loc2_:§>#-§ = §""u§(param1);
         _loc2_.§7!4§ = _loc2_.§&"P§[0].x;
         _loc2_.§`!,§ = _loc2_.§&"P§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§7"q§.length)
         {
            _loc2_.§7"q§[_loc3_].angle = _loc2_.§7"q§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§7"q§.length;
      }
      
      public function get §8!;§() : int
      {
         return this.§2"?§.length;
      }
      
      public function get §]#4§() : int
      {
         return this.§&"P§.length;
      }
      
      public function get §[!%§() : int
      {
         return this.§>!T§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§-!#§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§-!#§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§;"L§;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§;"L§ = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§7!4§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§7!4§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§`!,§;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§`!,§ = param1;
      }
      
      public function get §#!'§() : Number
      {
         return this.§#"$§;
      }
      
      public function set §#!'§(param1:Number) : void
      {
         this.§#"$§ = param1;
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
         return this.§#P§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§#P§ = param1;
      }
      
      public function getEagleScore(param1:§2"m§, param2:int) : int
      {
         var _loc3_:int = this.§!"T§(param1,param2);
         var _loc4_:int = this.§`!y§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§'"L§)
         {
            return _loc5_;
         }
         if(this.§'"L§ == 0)
         {
            return _loc5_;
         }
         return this.§'"L§;
      }
      
      public function §!!D§(param1:int, param2:§2"m§, param3:int) : void
      {
         var _loc4_:int = this.§!"T§(param2,param3);
         var _loc5_:int = this.§`!y§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§'"L§ = param1;
      }
      
      public function §+%§(param1:String) : void
      {
         var _loc4_:§ case§ = null;
         var _loc5_:Object = null;
         var _loc6_:§<5§ = null;
         var _loc7_:Object = null;
         var _loc8_:§9v§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§=J§ = _loc2_.LevelExtension;
         this.§%!d§ = false;
         this.§;"L§ = _loc2_.scoreSilver;
         this.§-!#§ = _loc2_.scoreGold;
         this.§'"L§ = _loc2_.scoreEagle;
         this.§#P§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§2"?§ = this.§6#"§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§>!T§ = new Vector.<§ case§>();
         this.§&"P§ = new Vector.<§<5§>();
         this.§7"q§ = new Vector.<§9v§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new § case§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            _loc4_.scale = Number(_loc2_.camera[_loc3_].scale) || Number(0);
            this.§>!T§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §<5§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§&"P§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §9v§()).x = _loc7_.x;
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
            this.§7"q§.push(_loc8_);
            _loc3_++;
         }
         this.§7!4§ = _loc2_.slingshotX;
         this.§`!,§ = _loc2_.slingshotY;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§=J§;
         _loc1_.scoreSilver = this.§;"L§;
         _loc1_.scoreGold = this.§-!#§;
         _loc1_.scoreEagle = this.§'"L§;
         _loc1_.theme = this.§#P§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§>!T§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§&"P§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§&"P§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7"q§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§7"q§[_loc2_].getAsSerializableObject();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2"?§.length)
         {
            _loc3_ = this.§2"?§[_loc2_].getAsSerializableObject();
            _loc3_.index1 = this.§,l§(_loc3_.index1);
            _loc3_.index2 = this.§,l§(_loc3_.index2);
            _loc1_.world["joint_" + (_loc2_ + 1)] = _loc3_;
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§7"q§.length;
         _loc1_.counts.birds = this.§&"P§.length;
         _loc1_.counts.joints = this.§2"?§.length;
         _loc1_.slingshotX = this.§7!4§;
         _loc1_.slingshotY = this.§`!,§;
         return _loc1_;
      }
      
      protected function §,l§(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7"q§.length)
         {
            if(this.§7"q§[_loc2_].id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §2i§() : String
      {
         return JSON.stringify(this.getAsSerializableObject());
      }
      
      protected function §6#"§(param1:int, param2:Object) : Vector.<§=u§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§=u§ = null;
         var _loc3_:Vector.<§=u§> = new Vector.<§=u§>();
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
               if(_loc5_.type == §=u§.§3"S§ || _loc5_.type == §=u§.§##%§)
               {
                  _loc10_ = new §=u§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                  if(_loc5_.type == §=u§.§##%§)
                  {
                     _loc10_.axisX = _loc5_.axisX;
                     _loc10_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc10_ = new §=u§(_loc5_.type,_loc8_,_loc9_,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
               }
               if(_loc5_.type == §=u§.§ !+§)
               {
                  _loc10_.annihilationTime = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc10_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §!"T§(param1:§2"m§, param2:int) : int
      {
         var _loc4_:§9v§ = null;
         var _loc5_:String = null;
         var _loc6_:§["%§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§7"q§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.getItem(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.getItem(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§@!4§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §@!4§(param1:§2"m§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function §`!y§() : int
      {
         if(this.§&"P§)
         {
            return this.§&"P§.length * this.§="n§();
         }
         return 0;
      }
      
      public function §="n§() : int
      {
         return 10000;
      }
      
      public function §]"I§() : XML
      {
         var _loc2_:§ case§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§=J§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§%!d§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§;"L§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§-!#§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§>!T§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §8[§.§=b§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§&"P§[0].x + "\" y=\"" + (this.§&"P§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§&"P§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§&"P§[_loc3_].type + "\" x=\"" + this.§&"P§[_loc3_].x + "\" y=\"" + this.§&"P§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§7"q§.length)
         {
            _loc1_ += "<Item id=\"" + this.§7"q§[_loc3_].type + "\" x=\"" + this.§7"q§[_loc3_].x + "\" y=\"" + this.§7"q§[_loc3_].y + "\" rotation=\"" + this.§7"q§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §9v§
      {
         return this.§7"q§[param1];
      }
      
      public function addObject(param1:§9v§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§7"q§.push(param1);
      }
      
      public function §2"D§(param1:int) : §=u§
      {
         return this.§2"?§[param1];
      }
      
      public function §3!^§(param1:§=u§) : void
      {
         this.§2"?§.push(param1);
      }
      
      public function §+"F§(param1:int) : §<5§
      {
         return this.§&"P§[param1];
      }
      
      public function §[7§(param1:§<5§) : void
      {
         this.§&"P§.push(param1);
      }
      
      public function §36§() : void
      {
         this.§>!T§ = new Vector.<§ case§>();
      }
      
      public function §,"^§() : void
      {
         this.§&"P§ = new Vector.<§<5§>();
      }
      
      public function §7"d§(param1:int) : § case§
      {
         return this.§>!T§[param1];
      }
      
      public function §@0§(param1:§ case§) : void
      {
         this.§>!T§.push(param1);
      }
   }
}
