package §8!e§
{
   import §!"+§.§!o§;
   import §!"+§.§2!H§;
   import §0"1§.§ !T§;
   import §0"1§.§#,§;
   import §0"1§.§+!^§;
   import §^!<§.§#t§;
   import flash.geom.Point;
   
   public class §!!E§
   {
      
      public static const §5!u§:String = "BACKGROUND_BLUE_GRASS";
       
      
      protected var §^!,§:Number = 0;
      
      protected var §1! §:Number = -8;
      
      protected var §6t§:Number = 0.0;
      
      protected var §0I§:Vector.<§#,§> = null;
      
      protected var §set §:Vector.<§ !T§> = null;
      
      protected var §,>§:Vector.<§+!^§> = null;
      
      protected var §%!J§:Vector.<§ !z§> = null;
      
      public var §0Q§:Number = 0;
      
      public var §try§:Boolean = false;
      
      protected var §4E§:int = 0;
      
      protected var §5"'§:int = 0;
      
      protected var §2! §:int = 0;
      
      protected var §6]§:String = null;
      
      protected var mName:String = null;
      
      public function §!!E§()
      {
         super();
         this.§%!J§ = new Vector.<§ !z§>();
         this.§0I§ = new Vector.<§#,§>();
         this.§set § = new Vector.<§ !T§>();
         this.§,>§ = new Vector.<§+!^§>();
         this.§6]§ = §5!u§;
      }
      
      public static function §1!k§(param1:String) : §!!E§
      {
         var _loc2_:§!!E§ = new §!!E§();
         _loc2_.§`!Y§(param1);
         return _loc2_;
      }
      
      public static function isDamageAwardingScore(param1:§!o§) : Boolean
      {
         if(param1.healthMax != -1 && param1.score > 0)
         {
            return true;
         }
         return false;
      }
      
      public static function §`"0§(param1:String) : §!!E§
      {
         var _loc2_:§!!E§ = §1!k§(param1);
         _loc2_.§^!,§ = _loc2_.§set §[0].x;
         _loc2_.§1! § = _loc2_.§set §[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§0I§.length)
         {
            _loc2_.§0I§[_loc3_].angle = _loc2_.§0I§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function get objectCount() : int
      {
         return this.§0I§.length;
      }
      
      public function get §0]§() : int
      {
         return this.§,>§.length;
      }
      
      public function get §<w§() : int
      {
         return this.§set §.length;
      }
      
      public function get §8!@§() : int
      {
         return this.§%!J§.length;
      }
      
      public function get scoreGold() : int
      {
         return this.§5"'§;
      }
      
      public function set scoreGold(param1:int) : void
      {
         this.§5"'§ = param1;
      }
      
      public function get scoreSilver() : int
      {
         return this.§2! §;
      }
      
      public function set scoreSilver(param1:int) : void
      {
         this.§2! § = param1;
      }
      
      public function get slingshotX() : Number
      {
         return this.§^!,§;
      }
      
      public function set slingshotX(param1:Number) : void
      {
         this.§^!,§ = param1;
      }
      
      public function get slingshotY() : Number
      {
         return this.§1! §;
      }
      
      public function set slingshotY(param1:Number) : void
      {
         this.§1! § = param1;
      }
      
      public function get §;!Y§() : Number
      {
         return this.§6t§;
      }
      
      public function set §;!Y§(param1:Number) : void
      {
         this.§6t§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §if§() : Boolean
      {
         return true;
      }
      
      public function get §^!3§() : Number
      {
         return 20;
      }
      
      public function get theme() : String
      {
         return this.§6]§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§6]§ = param1;
      }
      
      public function getEagleScore(param1:§2!H§, param2:int) : int
      {
         var _loc3_:int = this.§5B§(param1,param2);
         var _loc4_:int = this.§ A§();
         var _loc5_:int;
         if((_loc5_ = _loc3_ + _loc4_) > 0 && _loc5_ < this.§4E§)
         {
            return _loc5_;
         }
         if(this.§4E§ == 0)
         {
            return _loc5_;
         }
         return this.§4E§;
      }
      
      public function §`!F§(param1:int, param2:§2!H§, param3:int) : void
      {
         var _loc4_:int = this.§5B§(param2,param3);
         var _loc5_:int = this.§ A§();
         var _loc6_:int = _loc4_ + _loc5_;
         if(_loc4_ > 0 && _loc6_ < param1)
         {
            return;
         }
         this.§4E§ = param1;
      }
      
      public function §`!Y§(param1:String) : void
      {
         var _loc4_:§ !z§ = null;
         var _loc5_:Object = null;
         var _loc6_:§ !T§ = null;
         var _loc7_:Object = null;
         var _loc8_:§#,§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§0Q§ = _loc2_.LevelExtension;
         this.§try§ = false;
         this.§2! § = _loc2_.scoreSilver;
         this.§5"'§ = _loc2_.scoreGold;
         this.§4E§ = _loc2_.scoreEagle;
         this.§6]§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§,>§ = this.§&E§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§%!J§ = new Vector.<§ !z§>();
         this.§set § = new Vector.<§ !T§>();
         this.§0I§ = new Vector.<§#,§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new § !z§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§%!J§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new § !T§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.type = _loc5_.id;
            _loc6_.index = _loc3_ - 1;
            this.§set §.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §#,§()).x = _loc7_.x;
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
            this.§0I§.push(_loc8_);
            _loc3_++;
         }
         this.§^!,§ = _loc2_.slingshotX;
         this.§1! § = _loc2_.slingshotY;
      }
      
      public function §5+§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§0Q§;
         _loc1_.scoreSilver = this.§2! §;
         _loc1_.scoreGold = this.§5"'§;
         _loc1_.scoreEagle = this.§4E§;
         _loc1_.theme = this.§6]§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§%!J§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§set §.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§set §[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0I§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§0I§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,>§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§,>§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§0I§.length;
         _loc1_.counts.birds = this.§set §.length;
         _loc1_.counts.joints = this.§,>§.length;
         _loc1_.slingshotX = this.§^!,§;
         _loc1_.slingshotY = this.§1! §;
         return _loc1_;
      }
      
      public function §3Z§() : String
      {
         return JSON.stringify(this.§5+§());
      }
      
      protected function §&E§(param1:int, param2:Object) : Vector.<§+!^§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§+!^§ = null;
         var _loc3_:Vector.<§+!^§> = new Vector.<§+!^§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §+!^§.§"!>§ || _loc5_.type == §+!^§.§>5§)
               {
                  _loc8_ = new §+!^§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque,_loc5_.breakable,_loc5_.breakForce,_loc5_.oneWayDestroy);
                  if(_loc5_.type == §+!^§.§>5§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §+!^§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,false,0,0,false,0,false,0,_loc5_.breakable,_loc5_.breakForce);
               }
               if(_loc5_.type == §+!^§.§6!w§)
               {
                  _loc8_.§'!p§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function §5B§(param1:§2!H§, param2:int) : int
      {
         var _loc4_:§#,§ = null;
         var _loc5_:String = null;
         var _loc6_:§!o§ = null;
         if(!param1)
         {
            return 0;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in this.§0I§)
         {
            _loc5_ = _loc4_.type;
            if((_loc6_ = param1.§8!f§(_loc5_)) == null && _loc5_.indexOf("MISC_") == 0)
            {
               _loc5_ = "MISC_FOOD_" + _loc5_.substring(5);
               _loc6_ = param1.§8!f§(_loc5_);
            }
            if(_loc6_)
            {
               _loc3_ += this.§6"%§(param1,_loc5_,param2);
               _loc3_ += _loc6_.score;
               if(isDamageAwardingScore(_loc6_))
               {
                  _loc3_ += _loc6_.healthMax * param2;
               }
            }
         }
         return _loc3_;
      }
      
      protected function §6"%§(param1:§2!H§, param2:String, param3:int) : int
      {
         return 0;
      }
      
      public function § A§() : int
      {
         if(this.§set §)
         {
            return this.§set §.length * this.§7!x§();
         }
         return 0;
      }
      
      public function §7!x§() : int
      {
         return 10000;
      }
      
      public function §<u§() : XML
      {
         var _loc2_:§ !z§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§0Q§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§try§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§2! § + "\"";
         _loc1_ += " scoreGold=\"" + this.§5"'§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§%!J§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §#t§.§[W§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§set §[0].x + "\" y=\"" + (this.§set §[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§set §.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§set §[_loc3_].type + "\" x=\"" + this.§set §[_loc3_].x + "\" y=\"" + this.§set §[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§0I§.length)
         {
            _loc1_ += "<Item id=\"" + this.§0I§[_loc3_].type + "\" x=\"" + this.§0I§[_loc3_].x + "\" y=\"" + this.§0I§[_loc3_].y + "\" rotation=\"" + this.§0I§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function getObject(param1:int) : §#,§
      {
         return this.§0I§[param1];
      }
      
      public function §5!t§(param1:§#,§) : void
      {
         if(param1.type == null)
         {
            throw new Error("Item type can\'t be null.");
         }
         this.§0I§.push(param1);
      }
      
      public function §5§(param1:int) : §+!^§
      {
         return this.§,>§[param1];
      }
      
      public function §1!"§(param1:§+!^§) : void
      {
         this.§,>§.push(param1);
      }
      
      public function §]!_§(param1:int) : § !T§
      {
         return this.§set §[param1];
      }
      
      public function §7!z§(param1:§ !T§) : void
      {
         this.§set §.push(param1);
      }
      
      public function §00§() : void
      {
         this.§%!J§ = new Vector.<§ !z§>();
      }
      
      public function §;!E§() : void
      {
         this.§set § = new Vector.<§ !T§>();
      }
      
      public function §[!X§(param1:int) : § !z§
      {
         return this.§%!J§[param1];
      }
      
      public function §""%§(param1:§ !z§) : void
      {
         this.§%!J§.push(param1);
      }
   }
}
