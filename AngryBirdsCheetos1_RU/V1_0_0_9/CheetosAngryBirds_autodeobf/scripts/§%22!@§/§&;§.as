package §"!@§
{
   import §!U§.§'!8§;
   import §'!K§.*;
   import §,!E§.§?K§;
   import §,!E§.§[+§;
   import §,!E§.§^!'§;
   import §3E§.§6w§;
   import §9!%§.§-D§;
   import §9!%§.§<!L§;
   import flash.geom.Point;
   
   public class §&;§
   {
      
      public static const §,!J§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §>Q§:Number = 0;
      
      public var §]!,§:Number = -8;
      
      private var §!!X§:Vector.<§[+§> = null;
      
      private var §0!`§:Vector.<§^!'§> = null;
      
      private var §!,§:Vector.<§?K§> = null;
      
      private var §!!'§:Vector.<§]8§> = null;
      
      public var §1G§:Number = 0;
      
      public var §#>§:Boolean = false;
      
      public var §,H§:int = 0;
      
      public var §07§:int = 0;
      
      private var §'!Y§:int = 0;
      
      private var §%!'§:String = null;
      
      public var mName:String = null;
      
      public function §&;§()
      {
         super();
         this.§!!'§ = new Vector.<§]8§>();
         this.§!!X§ = new Vector.<§[+§>();
         this.§0!`§ = new Vector.<§^!'§>();
         this.§!,§ = new Vector.<§?K§>();
         this.§%!'§ = §,!J§;
      }
      
      public static function §;G§(param1:String) : §&;§
      {
         var _loc2_:§&;§ = new §&;§();
         _loc2_.§=!'§(param1);
         return _loc2_;
      }
      
      public static function §<=§(param1:§-D§) : Boolean
      {
         if(param1.§"!+§ == §-D§.§1_§ || param1.§"!+§ == §-D§.§#"§ || param1.§"!+§ == §-D§.§8y§)
         {
            return true;
         }
         return false;
      }
      
      public static function §@! §(param1:String) : §&;§
      {
         var _loc2_:§&;§ = §;G§(param1);
         _loc2_.§>Q§ = _loc2_.§0!`§[0].x;
         _loc2_.§]!,§ = _loc2_.§0!`§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§!!X§.length)
         {
            _loc2_.§!!X§[_loc3_].angle = 360 - _loc2_.§!!X§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §7O§(param1:int, param2:Object) : Vector.<§?K§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§?K§ = null;
         var _loc3_:Vector.<§?K§> = new Vector.<§?K§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §?K§.§4H§ || _loc5_.type == §?K§.§`K§)
               {
                  _loc8_ = new §?K§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §?K§.§`K§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §?K§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §?K§.§<!D§)
               {
                  _loc8_.§5"§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §'T§() : int
      {
         return this.§!!X§.length;
      }
      
      public function get §+!<§() : int
      {
         return this.§!,§.length;
      }
      
      public function get § U§() : int
      {
         return this.§0!`§.length;
      }
      
      public function get §'e§() : int
      {
         return this.§!!'§.length;
      }
      
      public function get theme() : String
      {
         return this.§%!'§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§%!'§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§[6§();
         if(_loc1_ > 0 && _loc1_ < this.§'!Y§)
         {
            return _loc1_;
         }
         if(this.§'!Y§ == 0)
         {
            return _loc1_;
         }
         return this.§'!Y§;
      }
      
      public function §0F§(param1:int) : void
      {
         var _loc2_:int = this.§[6§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§'!Y§ = param1;
      }
      
      public function §=!'§(param1:String) : void
      {
         var _loc4_:§]8§ = null;
         var _loc5_:Object = null;
         var _loc6_:§^!'§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§[+§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§1G§ = _loc2_.LevelExtension;
         this.§#>§ = false;
         this.§,H§ = _loc2_.scoreSilver;
         this.§07§ = _loc2_.scoreGold;
         this.§'!Y§ = _loc2_.scoreEagle;
         this.§%!'§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§!,§ = §7O§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§!!'§ = new Vector.<§]8§>();
         this.§0!`§ = new Vector.<§^!'§>();
         this.§!!X§ = new Vector.<§[+§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §]8§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§!!'§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §^!'§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§0!`§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §[+§()).x = _loc8_.x;
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
            this.§!!X§.push(_loc9_);
            _loc3_++;
         }
         this.§>Q§ = _loc2_.slingshotX;
         this.§]!,§ = _loc2_.slingshotY;
      }
      
      public function §,§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§1G§;
         _loc1_.scoreSilver = this.§,H§;
         _loc1_.scoreGold = this.§07§;
         _loc1_.scoreEagle = this.§'!Y§;
         _loc1_.theme = this.§%!'§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§!!'§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§0!`§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§0!`§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!!X§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§!!X§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§!,§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§!,§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§!!X§.length;
         _loc1_.counts.birds = this.§0!`§.length;
         _loc1_.counts.joints = this.§!,§.length;
         _loc1_.slingshotX = this.§>Q§;
         _loc1_.slingshotY = this.§]!,§;
         return _loc1_;
      }
      
      public function §6&§() : String
      {
         return JSON.stringify(this.§,§());
      }
      
      public function §[6§() : int
      {
         var _loc2_:§[+§ = null;
         var _loc3_:String = null;
         var _loc4_:§-D§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!!X§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §<!L§.§]z§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §<!L§.§]z§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§<=§(_loc4_))
               {
                  _loc1_ += _loc4_.§!w§ * §6w§.§5'§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §1j§() : XML
      {
         var _loc2_:§]8§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§1G§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§#>§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§,H§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§07§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§!!'§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §'!8§.§0!^§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§0!`§[0].x + "\" y=\"" + (this.§0!`§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§0!`§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§0!`§[_loc3_].id + "\" x=\"" + this.§0!`§[_loc3_].x + "\" y=\"" + this.§0!`§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§!!X§.length)
         {
            _loc1_ += "<Item id=\"" + this.§!!X§[_loc3_].id + "\" x=\"" + this.§!!X§[_loc3_].x + "\" y=\"" + this.§!!X§[_loc3_].y + "\" rotation=\"" + this.§!!X§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §4!K§(param1:int) : §[+§
      {
         return this.§!!X§[param1];
      }
      
      public function addObject(param1:§[+§) : void
      {
         this.§!!X§.push(param1);
      }
      
      public function §3&§(param1:int) : §?K§
      {
         return this.§!,§[param1];
      }
      
      public function §&!6§(param1:§?K§) : void
      {
         this.§!,§.push(param1);
      }
      
      public function §7B§(param1:int) : §^!'§
      {
         return this.§0!`§[param1];
      }
      
      public function §=!9§(param1:§^!'§) : void
      {
         this.§0!`§.push(param1);
      }
      
      public function §=!N§() : void
      {
         this.§!!'§ = new Vector.<§]8§>();
      }
      
      public function §]4§() : void
      {
         this.§0!`§ = new Vector.<§^!'§>();
      }
      
      public function §5!S§(param1:int) : §]8§
      {
         return this.§!!'§[param1];
      }
      
      public function §"V§(param1:§]8§) : void
      {
         this.§!!'§.push(param1);
      }
   }
}
