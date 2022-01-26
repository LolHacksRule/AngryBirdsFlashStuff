package §0C§
{
   import §%b§.§0!Z§;
   import §5C§.*;
   import §?!H§.§!h§;
   import §?!H§.§]!H§;
   import §@I§.§!U§;
   import §@I§.§"N§;
   import §@I§.§0!L§;
   import §[!Q§.§ true§;
   import flash.geom.Point;
   
   public class §;!Q§
   {
      
      public static const §+S§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §7;§:Number = 0;
      
      public var §1!6§:Number = -8;
      
      private var §-8§:Vector.<§"N§> = null;
      
      private var §^!O§:Vector.<§!U§> = null;
      
      private var §"!_§:Vector.<§0!L§> = null;
      
      private var § !O§:Vector.<§+!Y§> = null;
      
      public var §`g§:Number = 0;
      
      public var §4o§:Boolean = false;
      
      public var §;T§:int = 0;
      
      public var § do§:int = 0;
      
      private var §+!N§:int = 0;
      
      private var § o§:String = null;
      
      public var mName:String = null;
      
      public function §;!Q§()
      {
         super();
         this.§ !O§ = new Vector.<§+!Y§>();
         this.§-8§ = new Vector.<§"N§>();
         this.§^!O§ = new Vector.<§!U§>();
         this.§"!_§ = new Vector.<§0!L§>();
         this.§ o§ = §+S§;
      }
      
      public static function §;o§(param1:String) : §;!Q§
      {
         var _loc2_:§;!Q§ = new §;!Q§();
         _loc2_.§]5§(param1);
         return _loc2_;
      }
      
      public static function §-u§(param1:§]!H§) : Boolean
      {
         if(param1.§<l§ == §]!H§.§7!?§ || param1.§<l§ == §]!H§.§6!K§ || param1.§<l§ == §]!H§.§>!;§)
         {
            return true;
         }
         return false;
      }
      
      public static function §#j§(param1:String) : §;!Q§
      {
         var _loc2_:§;!Q§ = §;o§(param1);
         _loc2_.§7;§ = _loc2_.§^!O§[0].x;
         _loc2_.§1!6§ = _loc2_.§^!O§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§-8§.length)
         {
            _loc2_.§-8§[_loc3_].angle = 360 - _loc2_.§-8§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function § q§(param1:int, param2:Object) : Vector.<§0!L§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§0!L§ = null;
         var _loc3_:Vector.<§0!L§> = new Vector.<§0!L§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §0!L§.§3H§ || _loc5_.type == §0!L§.§#!^§)
               {
                  _loc8_ = new §0!L§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §0!L§.§#!^§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §0!L§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §0!L§.§`!H§)
               {
                  _loc8_.§,!N§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §8!9§() : int
      {
         return this.§-8§.length;
      }
      
      public function get §;Y§() : int
      {
         return this.§"!_§.length;
      }
      
      public function get §1C§() : int
      {
         return this.§^!O§.length;
      }
      
      public function get §3!=§() : int
      {
         return this.§ !O§.length;
      }
      
      public function get theme() : String
      {
         return this.§ o§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§ o§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§#!@§();
         if(_loc1_ > 0 && _loc1_ < this.§+!N§)
         {
            return _loc1_;
         }
         if(this.§+!N§ == 0)
         {
            return _loc1_;
         }
         return this.§+!N§;
      }
      
      public function §96§(param1:int) : void
      {
         var _loc2_:int = this.§#!@§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§+!N§ = param1;
      }
      
      public function §]5§(param1:String) : void
      {
         var _loc4_:§+!Y§ = null;
         var _loc5_:Object = null;
         var _loc6_:§!U§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§"N§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§`g§ = _loc2_.LevelExtension;
         this.§4o§ = false;
         this.§;T§ = _loc2_.scoreSilver;
         this.§ do§ = _loc2_.scoreGold;
         this.§+!N§ = _loc2_.scoreEagle;
         this.§ o§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§"!_§ = § q§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§ !O§ = new Vector.<§+!Y§>();
         this.§^!O§ = new Vector.<§!U§>();
         this.§-8§ = new Vector.<§"N§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §+!Y§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§ !O§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §!U§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§^!O§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §"N§()).x = _loc8_.x;
            _loc9_.y = _loc8_.y;
            _loc9_.id = _loc8_.id;
            if(_loc8_.uniqueID && _loc8_.uniqueID.length > 0)
            {
               _loc9_.uniqueID = _loc8_.uniqueID;
            }
            else
            {
               _loc9_.uniqueID = _loc7_;
            }
            if(_loc8_.front)
            {
               _loc9_.front = _loc8_.front;
            }
            _loc9_.angle = _loc8_.angle;
            this.§-8§.push(_loc9_);
            _loc3_++;
         }
         this.§7;§ = _loc2_.slingshotX;
         this.§1!6§ = _loc2_.slingshotY;
      }
      
      public function §6Y§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§`g§;
         _loc1_.scoreSilver = this.§;T§;
         _loc1_.scoreGold = this.§ do§;
         _loc1_.scoreEagle = this.§+!N§;
         _loc1_.theme = this.§ o§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§ !O§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§^!O§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§^!O§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-8§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§-8§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§"!_§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§"!_§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§-8§.length;
         _loc1_.counts.birds = this.§^!O§.length;
         _loc1_.counts.joints = this.§"!_§.length;
         _loc1_.slingshotX = this.§7;§;
         _loc1_.slingshotY = this.§1!6§;
         return _loc1_;
      }
      
      public function §^h§() : String
      {
         return JSON.stringify(this.§6Y§());
      }
      
      public function §#!@§() : int
      {
         var _loc2_:§"N§ = null;
         var _loc3_:String = null;
         var _loc4_:§]!H§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-8§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §!h§.§2M§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §!h§.§2M§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§-u§(_loc4_))
               {
                  _loc1_ += _loc4_.§-#§ * §0!Z§.§76§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §9a§() : XML
      {
         var _loc2_:§+!Y§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§`g§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§4o§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§;T§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§ do§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§ !O§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + § true§.§3q§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§^!O§[0].x + "\" y=\"" + (this.§^!O§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§^!O§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§^!O§[_loc3_].id + "\" x=\"" + this.§^!O§[_loc3_].x + "\" y=\"" + this.§^!O§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§-8§.length)
         {
            _loc1_ += "<Item id=\"" + this.§-8§[_loc3_].id + "\" x=\"" + this.§-8§[_loc3_].x + "\" y=\"" + this.§-8§[_loc3_].y + "\" rotation=\"" + this.§-8§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §,`§(param1:int) : §"N§
      {
         return this.§-8§[param1];
      }
      
      public function addObject(param1:§"N§) : void
      {
         this.§-8§.push(param1);
      }
      
      public function §%,§(param1:int) : §0!L§
      {
         return this.§"!_§[param1];
      }
      
      public function §?!<§(param1:§0!L§) : void
      {
         this.§"!_§.push(param1);
      }
      
      public function §[#§(param1:int) : §!U§
      {
         return this.§^!O§[param1];
      }
      
      public function §3K§(param1:§!U§) : void
      {
         this.§^!O§.push(param1);
      }
      
      public function §=;§() : void
      {
         this.§ !O§ = new Vector.<§+!Y§>();
      }
      
      public function §#;§() : void
      {
         this.§^!O§ = new Vector.<§!U§>();
      }
      
      public function §%3§(param1:int) : §+!Y§
      {
         return this.§ !O§[param1];
      }
      
      public function §!k§(param1:§+!Y§) : void
      {
         this.§ !O§.push(param1);
      }
   }
}
