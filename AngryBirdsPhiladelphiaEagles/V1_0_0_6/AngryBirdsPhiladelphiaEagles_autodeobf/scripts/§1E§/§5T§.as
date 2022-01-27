package §1E§
{
   import §&K§.§&!A§;
   import §&K§.§]5§;
   import §&K§.set;
   import §4!-§.§%o§;
   import §6h§.§?!I§;
   import §8!2§.*;
   import §<Z§.§ l§;
   import §<Z§.§^!C§;
   import flash.geom.Point;
   
   public class §5T§
   {
      
      public static const §>S§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §%k§:Number = 0;
      
      public var §^!H§:Number = -8;
      
      private var §with§:Vector.<§&!A§> = null;
      
      private var §?q§:Vector.<§]5§> = null;
      
      private var §5'§:Vector.<set> = null;
      
      private var §,!#§:Vector.<§`_§> = null;
      
      public var §@&§:Number = 0;
      
      public var §[!H§:Boolean = false;
      
      public var §-!#§:int = 0;
      
      public var §3!3§:int = 0;
      
      private var §%Q§:int = 0;
      
      private var §7J§:String = null;
      
      public var mName:String = null;
      
      public function §5T§()
      {
         super();
         this.§,!#§ = new Vector.<§`_§>();
         this.§with§ = new Vector.<§&!A§>();
         this.§?q§ = new Vector.<§]5§>();
         this.§5'§ = new Vector.<set>();
         this.§7J§ = §>S§;
      }
      
      public static function §@x§(param1:String) : §5T§
      {
         var _loc2_:§5T§ = new §5T§();
         _loc2_.§15§(param1);
         return _loc2_;
      }
      
      public static function §+#§(param1:§^!C§) : Boolean
      {
         if(param1.§5u§ == §^!C§.§1n§ || param1.§5u§ == §^!C§.§%!C§ || param1.§5u§ == §^!C§.§'I§)
         {
            return true;
         }
         return false;
      }
      
      public static function §^n§(param1:String) : §5T§
      {
         var _loc2_:§5T§ = §@x§(param1);
         _loc2_.§%k§ = _loc2_.§?q§[0].x;
         _loc2_.§^!H§ = _loc2_.§?q§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§with§.length)
         {
            _loc2_.§with§[_loc3_].angle = 360 - _loc2_.§with§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §#d§(param1:int, param2:Object) : Vector.<set>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:set = null;
         var _loc3_:Vector.<set> = new Vector.<set>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == set.§?8§ || _loc5_.type == set.§%!+§)
               {
                  _loc8_ = new set(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == set.§%!+§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new set(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == set.§^o§)
               {
                  _loc8_.§63§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §`7§() : int
      {
         return this.§with§.length;
      }
      
      public function get §9!'§() : int
      {
         return this.§5'§.length;
      }
      
      public function get §%!J§() : int
      {
         return this.§?q§.length;
      }
      
      public function get §8!!§() : int
      {
         return this.§,!#§.length;
      }
      
      public function get theme() : String
      {
         return this.§7J§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§7J§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§"z§();
         if(_loc1_ > 0 && _loc1_ < this.§%Q§)
         {
            return _loc1_;
         }
         if(this.§%Q§ == 0)
         {
            return _loc1_;
         }
         return this.§%Q§;
      }
      
      public function §3'§(param1:int) : void
      {
         var _loc2_:int = this.§"z§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§%Q§ = param1;
      }
      
      public function §15§(param1:String) : void
      {
         var _loc4_:§`_§ = null;
         var _loc5_:Object = null;
         var _loc6_:§]5§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§&!A§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§@&§ = _loc2_.LevelExtension;
         this.§[!H§ = false;
         this.§-!#§ = _loc2_.scoreSilver;
         this.§3!3§ = _loc2_.scoreGold;
         this.§%Q§ = _loc2_.scoreEagle;
         this.§7J§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§5'§ = §#d§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§,!#§ = new Vector.<§`_§>();
         this.§?q§ = new Vector.<§]5§>();
         this.§with§ = new Vector.<§&!A§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            (_loc4_ = new §`_§()).x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§,!#§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            (_loc6_ = new §]5§()).x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§?q§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            (_loc9_ = new §&!A§()).x = _loc8_.x;
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
            this.§with§.push(_loc9_);
            _loc3_++;
         }
         this.§%k§ = _loc2_.slingshotX;
         this.§^!H§ = _loc2_.slingshotY;
      }
      
      public function §4!2§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§@&§;
         _loc1_.scoreSilver = this.§-!#§;
         _loc1_.scoreGold = this.§3!3§;
         _loc1_.scoreEagle = this.§%Q§;
         _loc1_.theme = this.§7J§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§,!#§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§?q§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§?q§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§with§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§with§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§5'§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§5'§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§with§.length;
         _loc1_.counts.birds = this.§?q§.length;
         _loc1_.counts.joints = this.§5'§.length;
         _loc1_.slingshotX = this.§%k§;
         _loc1_.slingshotY = this.§^!H§;
         return _loc1_;
      }
      
      public function §4,§() : String
      {
         return JSON.stringify(this.§4!2§());
      }
      
      public function §"z§() : int
      {
         var _loc2_:§&!A§ = null;
         var _loc3_:String = null;
         var _loc4_:§^!C§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§with§)
         {
            _loc3_ = _loc2_.id;
            if((_loc4_ = § l§.§"<§(_loc3_)) == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = § l§.§"<§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§+#§(_loc4_))
               {
                  _loc1_ += _loc4_.§72§ * §%o§.§-m§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §@_§() : XML
      {
         var _loc2_:§`_§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§@&§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§[!H§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§-!#§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§3!3§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§,!#§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §?!I§.§@^§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§?q§[0].x + "\" y=\"" + (this.§?q§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§?q§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§?q§[_loc3_].id + "\" x=\"" + this.§?q§[_loc3_].x + "\" y=\"" + this.§?q§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§with§.length)
         {
            _loc1_ += "<Item id=\"" + this.§with§[_loc3_].id + "\" x=\"" + this.§with§[_loc3_].x + "\" y=\"" + this.§with§[_loc3_].y + "\" rotation=\"" + this.§with§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §1!1§(param1:int) : §&!A§
      {
         return this.§with§[param1];
      }
      
      public function addObject(param1:§&!A§) : void
      {
         this.§with§.push(param1);
      }
      
      public function §>I§(param1:int) : set
      {
         return this.§5'§[param1];
      }
      
      public function §@!3§(param1:set) : void
      {
         this.§5'§.push(param1);
      }
      
      public function §7x§(param1:int) : §]5§
      {
         return this.§?q§[param1];
      }
      
      public function §^y§(param1:§]5§) : void
      {
         this.§?q§.push(param1);
      }
      
      public function §]!§() : void
      {
         this.§,!#§ = new Vector.<§`_§>();
      }
      
      public function §>d§() : void
      {
         this.§?q§ = new Vector.<§]5§>();
      }
      
      public function §-Q§(param1:int) : §`_§
      {
         return this.§,!#§[param1];
      }
      
      public function §^c§(param1:§`_§) : void
      {
         this.§,!#§.push(param1);
      }
   }
}
