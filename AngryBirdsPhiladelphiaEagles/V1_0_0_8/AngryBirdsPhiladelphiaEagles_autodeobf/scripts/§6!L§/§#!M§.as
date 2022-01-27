package §6!L§
{
   import §+4§.*;
   import §,T§.§[-§;
   import §0E§.§"b§;
   import §0E§.§'+§;
   import §5!6§.§&!!§;
   import §@!P§.§-b§;
   import §@!P§.§?v§;
   import §@!P§.§@x§;
   import flash.geom.Point;
   
   public class §#!M§
   {
      
      public static const §-T§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §>'§:Number = 0;
      
      public var §@!-§:Number = -8;
      
      private var §8A§:Vector.<§-b§> = null;
      
      private var §3h§:Vector.<§@x§> = null;
      
      private var §'!M§:Vector.<§?v§> = null;
      
      private var §45§:Vector.<§4!5§> = null;
      
      public var §;!2§:Number = 0;
      
      public var §+X§:Boolean = false;
      
      public var §!p§:int = 0;
      
      public var §#6§:int = 0;
      
      private var §'p§:int = 0;
      
      private var §?!;§:String = null;
      
      public var mName:String = null;
      
      public function §#!M§()
      {
         super();
         this.§45§ = new Vector.<§4!5§>();
         this.§8A§ = new Vector.<§-b§>();
         this.§3h§ = new Vector.<§@x§>();
         this.§'!M§ = new Vector.<§?v§>();
         this.§?!;§ = §-T§;
      }
      
      public static function §^§(param1:String) : §#!M§
      {
         var _loc2_:§#!M§ = new §#!M§();
         _loc2_.§`! §(param1);
         return _loc2_;
      }
      
      public static function §^j§(param1:§'+§) : Boolean
      {
         if(param1.§?!8§ == §'+§.§[#§ || param1.§?!8§ == §'+§.§0S§ || param1.§?!8§ == §'+§.§-<§)
         {
            return true;
         }
         return false;
      }
      
      public static function §`!6§(param1:String) : §#!M§
      {
         var _loc2_:§#!M§ = §^§(param1);
         _loc2_.§>'§ = _loc2_.§3h§[0].x;
         _loc2_.§@!-§ = _loc2_.§3h§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§8A§.length)
         {
            _loc2_.§8A§[_loc3_].angle = 360 - _loc2_.§8A§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §in§(param1:int, param2:Object) : Vector.<§?v§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§?v§ = null;
         var _loc3_:Vector.<§?v§> = new Vector.<§?v§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §?v§.§;D§ || _loc5_.type == §?v§.§#>§)
               {
                  _loc8_ = new §?v§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §?v§.§#>§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §?v§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §?v§.§]!K§)
               {
                  _loc8_.§=!7§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §5v§() : int
      {
         return this.§8A§.length;
      }
      
      public function get §6m§() : int
      {
         return this.§'!M§.length;
      }
      
      public function get §"`§() : int
      {
         return this.§3h§.length;
      }
      
      public function get §<!+§() : int
      {
         return this.§45§.length;
      }
      
      public function get theme() : String
      {
         return this.§?!;§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§?!;§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§,8§();
         if(_loc1_ > 0 && _loc1_ < this.§'p§)
         {
            return _loc1_;
         }
         if(this.§'p§ == 0)
         {
            return _loc1_;
         }
         return this.§'p§;
      }
      
      public function §&2§(param1:int) : void
      {
         var _loc2_:int = this.§,8§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§'p§ = param1;
      }
      
      public function §`! §(param1:String) : void
      {
         var _loc4_:§4!5§ = null;
         var _loc5_:Object = null;
         var _loc6_:§@x§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§-b§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§;!2§ = _loc2_.LevelExtension;
         this.§+X§ = false;
         this.§!p§ = _loc2_.scoreSilver;
         this.§#6§ = _loc2_.scoreGold;
         this.§'p§ = _loc2_.scoreEagle;
         this.§?!;§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§'!M§ = §in§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§45§ = new Vector.<§4!5§>();
         this.§3h§ = new Vector.<§@x§>();
         this.§8A§ = new Vector.<§-b§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §4!5§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§45§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §@x§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§3h§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §-b§()).x = _loc8_.x;
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
            this.§8A§.push(_loc9_);
            _loc3_++;
         }
         this.§>'§ = _loc2_.slingshotX;
         this.§@!-§ = _loc2_.slingshotY;
      }
      
      public function §5!C§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§;!2§;
         _loc1_.scoreSilver = this.§!p§;
         _loc1_.scoreGold = this.§#6§;
         _loc1_.scoreEagle = this.§'p§;
         _loc1_.theme = this.§?!;§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§45§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§3h§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§3h§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§8A§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§8A§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§'!M§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§'!M§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§8A§.length;
         _loc1_.counts.birds = this.§3h§.length;
         _loc1_.counts.joints = this.§'!M§.length;
         _loc1_.slingshotX = this.§>'§;
         _loc1_.slingshotY = this.§@!-§;
         return _loc1_;
      }
      
      public function §@5§() : String
      {
         return JSON.stringify(this.§5!C§());
      }
      
      public function §,8§() : int
      {
         var _loc2_:§-b§ = null;
         var _loc3_:String = null;
         var _loc4_:§'+§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§8A§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §"b§.§[M§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §"b§.§[M§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§^j§(_loc4_))
               {
                  _loc1_ += _loc4_.§ !L§ * §[-§.§&!>§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §3!J§() : XML
      {
         var _loc2_:§4!5§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§;!2§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§+X§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§!p§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§#6§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§45§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §&!!§.§+!P§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§3h§[0].x + "\" y=\"" + (this.§3h§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§3h§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§3h§[_loc3_].id + "\" x=\"" + this.§3h§[_loc3_].x + "\" y=\"" + this.§3h§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§8A§.length)
         {
            _loc1_ += "<Item id=\"" + this.§8A§[_loc3_].id + "\" x=\"" + this.§8A§[_loc3_].x + "\" y=\"" + this.§8A§[_loc3_].y + "\" rotation=\"" + this.§8A§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §?!!§(param1:int) : §-b§
      {
         return this.§8A§[param1];
      }
      
      public function addObject(param1:§-b§) : void
      {
         this.§8A§.push(param1);
      }
      
      public function §^F§(param1:int) : §?v§
      {
         return this.§'!M§[param1];
      }
      
      public function §>H§(param1:§?v§) : void
      {
         this.§'!M§.push(param1);
      }
      
      public function §&1§(param1:int) : §@x§
      {
         return this.§3h§[param1];
      }
      
      public function §-0§(param1:§@x§) : void
      {
         this.§3h§.push(param1);
      }
      
      public function §@7§() : void
      {
         this.§45§ = new Vector.<§4!5§>();
      }
      
      public function §&B§() : void
      {
         this.§3h§ = new Vector.<§@x§>();
      }
      
      public function §7!3§(param1:int) : §4!5§
      {
         return this.§45§[param1];
      }
      
      public function §9d§(param1:§4!5§) : void
      {
         this.§45§.push(param1);
      }
   }
}
