package §"L§
{
   import §&V§.§+H§;
   import §&V§.§38§;
   import §&V§.§3V§;
   import §1i§.*;
   import §2!H§.LevelMain;
   import §;T§.§5s§;
   import §;T§.LevelItemManager;
   import §<!j§.§%!-§;
   import flash.geom.Point;
   
   public class LevelModel
   {
      
      public static const §-!Q§:String = "BACKGROUND_BLUE_GRASS";
       
      
      public var §7a§:Number = 0;
      
      public var §<7§:Number = -8;
      
      private var §4!W§:Vector.<§+H§> = null;
      
      private var §#P§:Vector.<§38§> = null;
      
      private var §=![§:Vector.<§3V§> = null;
      
      private var §5P§:Vector.<§;c§> = null;
      
      public var §]X§:Number = 0;
      
      public var §?v§:Boolean = false;
      
      public var §^]§:int = 0;
      
      public var §;!L§:int = 0;
      
      private var §@2§:int = 0;
      
      private var §''§:String = null;
      
      public var mName:String = null;
      
      public function LevelModel()
      {
         super();
         this.§5P§ = new Vector.<§;c§>();
         this.§4!W§ = new Vector.<§+H§>();
         this.§#P§ = new Vector.<§38§>();
         this.§=![§ = new Vector.<§3V§>();
         this.§''§ = §-!Q§;
      }
      
      public static function §?!=§(param1:String) : LevelModel
      {
         var _loc2_:LevelModel = new LevelModel();
         _loc2_.§2U§(param1);
         return _loc2_;
      }
      
      public static function §`O§(param1:§5s§) : Boolean
      {
         if(param1.§17§ == §5s§.§4!T§ || param1.§17§ == §5s§.§"!W§ || param1.§17§ == §5s§.§'!W§)
         {
            return true;
         }
         return false;
      }
      
      public static function §=g§(param1:String) : LevelModel
      {
         var _loc2_:LevelModel = §?!=§(param1);
         _loc2_.§7a§ = _loc2_.§#P§[0].x;
         _loc2_.§<7§ = _loc2_.§#P§[0].y - 8.5;
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.§4!W§.length)
         {
            _loc2_.§4!W§[_loc3_].angle = 360 - _loc2_.§4!W§[_loc3_].angle;
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected static function §8![§(param1:int, param2:Object) : Vector.<§3V§>
      {
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§3V§ = null;
         var _loc3_:Vector.<§3V§> = new Vector.<§3V§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            _loc5_ = param2["joint_" + _loc4_];
            if(_loc5_ != null)
            {
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc5_.type == §3V§.§!U§ || _loc5_.type == §3V§.§]C§)
               {
                  _loc8_ = new §3V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                  if(_loc5_.type == §3V§.§]C§)
                  {
                     _loc8_.axisX = _loc5_.axisX;
                     _loc8_.axisY = _loc5_.axisY;
                  }
               }
               else
               {
                  _loc8_ = new §3V§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
               }
               if(_loc5_.type == §3V§.§@+§)
               {
                  _loc8_.§]!f§ = _loc5_.destroyTimer;
               }
               _loc3_.push(_loc8_);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get §2L§() : int
      {
         return this.§4!W§.length;
      }
      
      public function get §=!#§() : int
      {
         return this.§=![§.length;
      }
      
      public function get §8!c§() : int
      {
         return this.§#P§.length;
      }
      
      public function get §8L§() : int
      {
         return this.§5P§.length;
      }
      
      public function get theme() : String
      {
         return this.§''§;
      }
      
      public function set theme(param1:String) : void
      {
         this.§''§ = param1;
      }
      
      public function getEagleScore() : int
      {
         var _loc1_:int = this.§<o§();
         if(_loc1_ > 0 && _loc1_ < this.§@2§)
         {
            return _loc1_;
         }
         if(this.§@2§ == 0)
         {
            return _loc1_;
         }
         return this.§@2§;
      }
      
      public function §#!2§(param1:int) : void
      {
         var _loc2_:int = this.§<o§();
         if(_loc2_ > 0 && _loc2_ < param1)
         {
            return;
         }
         this.§@2§ = param1;
      }
      
      public function §2U§(param1:String) : void
      {
         var _loc4_:§;c§ = null;
         var _loc5_:Object = null;
         var _loc6_:§38§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§+H§ = null;
         var _loc2_:Object = JSON.parse(param1);
         this.§]X§ = _loc2_.LevelExtension;
         this.§?v§ = false;
         this.§^]§ = _loc2_.scoreSilver;
         this.§;!L§ = _loc2_.scoreGold;
         this.§@2§ = _loc2_.scoreEagle;
         this.§''§ = _loc2_.theme;
         this.mName = _loc2_.id;
         if(_loc2_.counts.joints)
         {
            this.§=![§ = §8![§(_loc2_.counts.joints,_loc2_.world);
         }
         this.§5P§ = new Vector.<§;c§>();
         this.§#P§ = new Vector.<§38§>();
         this.§4!W§ = new Vector.<§+H§>();
         var _loc3_:Number = 0;
         while(_loc3_ < _loc2_.camera.length)
         {
            _loc4_ = new §;c§();
            _loc4_.x = _loc2_.camera[_loc3_].x;
            _loc4_.y = _loc2_.camera[_loc3_].y;
            _loc4_.left = _loc2_.camera[_loc3_].left;
            _loc4_.right = _loc2_.camera[_loc3_].right;
            _loc4_.top = _loc2_.camera[_loc3_].top;
            _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
            _loc4_.id = _loc2_.camera[_loc3_].id;
            this.§5P§.push(_loc4_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.birds)
         {
            _loc5_ = _loc2_.world["bird_" + _loc3_];
            _loc6_ = new §38§();
            _loc6_.x = _loc5_.x;
            _loc6_.y = _loc5_.y;
            _loc6_.id = _loc5_.id;
            this.§#P§.push(_loc6_);
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= _loc2_.counts.blocks)
         {
            _loc7_ = "block_" + _loc3_;
            _loc8_ = _loc2_.world[_loc7_];
            _loc9_ = new §+H§();
            _loc9_.x = _loc8_.x;
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
            this.§4!W§.push(_loc9_);
            _loc3_++;
         }
         this.§7a§ = _loc2_.slingshotX;
         this.§<7§ = _loc2_.slingshotY;
      }
      
      public function §3!@§() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.LevelExtension = this.§]X§;
         _loc1_.scoreSilver = this.§^]§;
         _loc1_.scoreGold = this.§;!L§;
         _loc1_.scoreEagle = this.§@2§;
         _loc1_.theme = this.§''§;
         _loc1_.name = this.mName;
         _loc1_.camera = this.§5P§;
         var _loc2_:Number = 0;
         _loc1_.world = new Object();
         _loc2_ = 0;
         while(_loc2_ < this.§#P§.length)
         {
            _loc1_.world["bird_" + (_loc2_ + 1)] = this.§#P§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§4!W§.length)
         {
            _loc1_.world["block_" + (_loc2_ + 1)] = this.§4!W§[_loc2_];
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§=![§.length)
         {
            _loc1_.world["joint_" + (_loc2_ + 1)] = this.§=![§[_loc2_];
            _loc2_++;
         }
         _loc1_.counts = new Object();
         _loc1_.counts.blocks = this.§4!W§.length;
         _loc1_.counts.birds = this.§#P§.length;
         _loc1_.counts.joints = this.§=![§.length;
         _loc1_.slingshotX = this.§7a§;
         _loc1_.slingshotY = this.§<7§;
         return _loc1_;
      }
      
      public function §4!_§() : String
      {
         return JSON.stringify(this.§3!@§());
      }
      
      public function §<o§() : int
      {
         var _loc2_:§+H§ = null;
         var _loc3_:String = null;
         var _loc4_:§5s§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4!W§)
         {
            _loc3_ = _loc2_.id;
            _loc4_ = LevelItemManager.§&!i§(_loc3_);
            if(_loc4_ == null && _loc3_.indexOf("MISC_") == 0)
            {
               _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
               _loc4_ = LevelItemManager.§&!i§(_loc3_);
            }
            if(_loc4_)
            {
               _loc1_ += _loc4_.score;
               if(§`O§(_loc4_))
               {
                  _loc1_ += _loc4_.§]!3§ * LevelMain.§!!R§.getValue();
               }
            }
         }
         return _loc1_;
      }
      
      public function §0g§() : XML
      {
         var _loc2_:§;c§ = null;
         var _loc3_:int = 0;
         var _loc1_:String = "";
         _loc1_ += "<Level background=\"ThemeHills\"";
         _loc1_ += " LevelExtension=\"" + this.§]X§ + "\"";
         _loc1_ += " AutoCamera=\"" + this.§?v§ + "\"";
         _loc1_ += " scoreSilver=\"" + this.§^]§ + "\"";
         _loc1_ += " scoreGold=\"" + this.§;!L§ + "\"";
         _loc1_ += ">";
         _loc1_ += "<Cameras>";
         for each(_loc2_ in this.§5P§)
         {
            _loc1_ += " <Camera id=\"" + _loc2_.id + "\" leftBorder=\"" + _loc2_.left + "\" rightBorder=\"" + _loc2_.right + "\" topBorder=\"" + _loc2_.top + "\" bottomBorder=\"" + (_loc2_.top + §%!-§.§#!>§) + "\"></Camera>";
         }
         _loc1_ += "</Cameras>";
         _loc1_ += "<Slingshot x=\"" + this.§#P§[0].x + "\" y=\"" + (this.§#P§[0].y - 8) + "\">";
         _loc1_ += " <Birds>";
         _loc3_ = 0;
         while(_loc3_ < this.§#P§.length)
         {
            _loc1_ += "  <Bird id=\"" + this.§#P§[_loc3_].id + "\" x=\"" + this.§#P§[_loc3_].x + "\" y=\"" + this.§#P§[_loc3_].y + "\"></Bird>";
            _loc3_++;
         }
         _loc1_ += " </Birds>";
         _loc1_ += "</Slingshot>";
         _loc3_ = 0;
         while(_loc3_ < this.§4!W§.length)
         {
            _loc1_ += "<Item id=\"" + this.§4!W§[_loc3_].id + "\" x=\"" + this.§4!W§[_loc3_].x + "\" y=\"" + this.§4!W§[_loc3_].y + "\" rotation=\"" + this.§4!W§[_loc3_].angle + "\" ></Item>";
            _loc3_++;
         }
         _loc1_ += "</Level>";
         return new XML(_loc1_);
      }
      
      public function §`T§(param1:int) : §+H§
      {
         return this.§4!W§[param1];
      }
      
      public function addObject(param1:§+H§) : void
      {
         this.§4!W§.push(param1);
      }
      
      public function §1!N§(param1:int) : §3V§
      {
         return this.§=![§[param1];
      }
      
      public function §&8§(param1:§3V§) : void
      {
         this.§=![§.push(param1);
      }
      
      public function §65§(param1:int) : §38§
      {
         return this.§#P§[param1];
      }
      
      public function §&I§(param1:§38§) : void
      {
         this.§#P§.push(param1);
      }
      
      public function §^!4§() : void
      {
         this.§5P§ = new Vector.<§;c§>();
      }
      
      public function §?M§() : void
      {
         this.§#P§ = new Vector.<§38§>();
      }
      
      public function §]t§(param1:int) : §;c§
      {
         return this.§5P§[param1];
      }
      
      public function §>!j§(param1:§;c§) : void
      {
         this.§5P§.push(param1);
      }
   }
}
