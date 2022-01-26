package §;f§
{
   import §"o§.§ M§;
   import §2!"§.§ !A§;
   import §2!"§.§4!%§;
   import §2W§.§4!$§;
   import §5C§.*;
   import §;!2§.§ S§;
   import §;!2§.§"@§;
   import §;!2§.§6!D§;
   import flash.geom.Point;
   
   public class §^o§
   {
      
      public static const §'M§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §+z§:Number = 0;
      
      public var §@!>§:Number = -8;
      
      private var §0V§:Vector.<§6!D§> = null;
      
      private var §0A§:Vector.<§ S§> = null;
      
      private var §%!4§:Vector.<§"@§> = null;
      
      private var § q§:Vector.<§-!=§> = null;
      
      public var §3>§:Number = 0;
      
      public var §3&§:Boolean = false;
      
      public var §7!B§:int = 0;
      
      public var §>V§:int = 0;
      
      private var §;]§:int = 0;
      
      private var §`!?§:String = null;
      
      public var mName:String = null;
      
      public function §^o§()
      {
         super();
         this.§ q§ = new Vector.<§-!=§>();
         this.§0V§ = new Vector.<§6!D§>();
         this.§0A§ = new Vector.<§ S§>();
         this.§%!4§ = new Vector.<§"@§>();
         this.§`!?§ = §'M§;
      }
      
      public static function §8!<§(param1:String) : §^o§
      {
         var _loc2_:§^o§ = new §^o§();
         _loc2_.§6! §(param1);
         return _loc2_;
      }
      
      public static function §+A§(param1:§ !A§) : Boolean
      {
         if(param1.§=&§ == § !A§.§@F§ || param1.§=&§ == § !A§.§+`§ || param1.§=&§ == § !A§.§2#§)
         {
            return true;
         }
         return false;
      }
      
      public static function §9k§(param1:String) : §^o§
      {
         var _loc2_:§^o§ = §8!<§(param1);
         _loc2_.§+z§ = _loc2_.§0A§[0].x;
         _loc2_.§@!>§ = _loc2_.§0A§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§0V§.length)
         {
            _loc2_.§0V§[_loc3_].angle = 360 - _loc2_.§0V§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §^!'§(param1:int, param2:Object) : Vector.<§"@§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§"@§ = null;
         var _loc3_:Vector.<§"@§> = new Vector.<§"@§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §"@§.§6B§ || _loc5_.type == §"@§.§'B§)
               {
                  _loc8_ = new §"@§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §"@§.§'B§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §"@§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §"@§.§0!6§)
               {
                  _loc8_.§&@§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §'^§() : int
      {
         return this.§0V§.length;
      }
      
      public function get § !8§() : int
      {
         return this.§%!4§.length;
      }
      
      public function get §3!G§() : int
      {
         return this.§0A§.length;
      }
      
      public function get §else §() : int
      {
         return this.§ q§.length;
      }
      
      public function get theme() : String
      {
         return this.§`!?§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§`!?§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§-q§();
         if(_loc1_ > 0 && _loc1_ < this.§;]§)
         {
            return _loc1_;
         }
         if(this.§;]§ == 0)
         {
            return _loc1_;
         }
         return this.§;]§;
      }
      
      public function §`5§(param1:int) : void
      {
         var _loc2_:int = this.§-q§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§;]§ = param1;
      }
      
      public function §6! §(param1:String) : void
      {
         var _loc4_:§-!=§ = null;
         var _loc5_:Object = null;
         var _loc6_:§ S§ = null;
         var _loc7_:Object = null;
         var _loc8_:§6!D§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§3>§ = _loc2_.LevelExtension;
         this.§3&§ = false;
         this.§7!B§ = _loc2_.scoreSilver;
         this.§>V§ = _loc2_.scoreGold;
         this.§;]§ = _loc2_.scoreEagle;
         this.§`!?§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§%!4§ = §^!'§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§ q§ = new Vector.<§-!=§>();
         this.§0A§ = new Vector.<§ S§>();
         this.§0V§ = new Vector.<§6!D§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §-!=§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§ q§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new § S§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§0A§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = _loc2_.world["block_" + _loc3_];
            (_loc8_ = new §6!D§()).x = _loc7_.x;
            _loc8_.y = _loc7_.y;
            _loc8_.id = _loc7_.id;
            if(_loc7_.front)
            {
               _loc8_.front = _loc7_.front;
            }
            _loc8_.angle = _loc7_.angle;
            this.§0V§.push(_loc8_);
            _loc3_++;
         }
         this.§+z§ = _loc2_.slingshotX;
         this.§@!>§ = _loc2_.slingshotY;
      }
      
      public function §[$§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§3>§;
         _loc1_.scoreSilver = this.§7!B§;
         _loc1_.scoreGold = this.§>V§;
         _loc1_.scoreEagle = this.§;]§;
         _loc1_.theme = this.§`!?§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§ q§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§0A§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§0A§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0V§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§0V§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%!4§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§%!4§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§0V§.length;
         _loc1_.counts.birds = this.§0A§.length;
         _loc1_.counts.joints = this.§%!4§.length;
         _loc1_.slingshotX = this.§+z§;
         _loc1_.slingshotY = this.§@!>§;
         return _loc1_;
      }
      
      public function §"=§() : String
      {
         return JSON.stringify(this.§[$§());
      }
      
      public function §-q§() : int
      {
         var _loc2_:§6!D§ = null;
         var _loc3_:String = null;
         var _loc4_:§ !A§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0V§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = §4!%§.§`!+§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = §4!%§.§`!+§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§+A§(_loc4_))
               {
                  _loc1_ += _loc4_.§3-§ * § M§.§0!1§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function § case§() : XML
      {
         var _loc2_:§-!=§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§3>§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§3&§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§7!B§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§>V§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§ q§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §4!$§.§6Q§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§0A§[0].x + "\" y=\"" + (this.§0A§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§0A§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§0A§[_loc3_].id + "\" x=\"" + this.§0A§[_loc3_].x + "\" y=\"" + this.§0A§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§0V§.length)
         {
            _loc1_ += "<Item id=\"" + this.§0V§[_loc3_].id + "\" x=\"" + this.§0V§[_loc3_].x + "\" y=\"" + this.§0V§[_loc3_].y + "\" rotation=\"" + this.§0V§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function § n§(param1:int) : §6!D§
      {
         return this.§0V§[param1];
      }
      
      public function addObject(param1:§6!D§) : void
      {
         this.§0V§.push(param1);
      }
      
      public function §8T§(param1:int) : §"@§
      {
         return this.§%!4§[param1];
      }
      
      public function §+! §(param1:§"@§) : void
      {
         this.§%!4§.push(param1);
      }
      
      public function §,!%§(param1:int) : § S§
      {
         return this.§0A§[param1];
      }
      
      public function §!@§(param1:§ S§) : void
      {
         this.§0A§.push(param1);
      }
      
      public function §-!2§() : void
      {
         this.§ q§ = new Vector.<§-!=§>();
      }
      
      public function §=!&§() : void
      {
         this.§0A§ = new Vector.<§ S§>();
      }
      
      public function §3Y§(param1:int) : §-!=§
      {
         return this.§ q§[param1];
      }
      
      public function §0w§(param1:§-!=§) : void
      {
         this.§ q§.push(param1);
      }
   }
}
