package §?m§
{
   import §1!i§.§,#_§;
   import §1!i§.§7#&§;
   import §2"Y§.§?#Q§;
   import §7P§.GravityFilterCategory;
   import §<"B§.§-#'§;
   import §<"B§.§2!=§;
   import §<"B§.§5y§;
   import §<"B§.§7"B§;
   import §<"B§.§94§;
   import §<"B§.§>"l§;
   import §<"B§.§]§;
   import flash.geom.Point;
   
   public class §=!z§ extends §8!B§
   {
      
      private static const §74§:Number = 4;
       
      
      protected var §`!u§:Number = 4.0;
      
      protected var §`!L§:Vector.<§>"l§> = null;
      
      protected var §@#;§:§,#_§;
      
      protected var §@!_§:Number = 0.0;
      
      protected var §>W§:Boolean;
      
      public function §=!z§()
      {
         super();
         this.§`!L§ = new Vector.<§>"l§>();
         this.§@#;§ = new §,#_§();
      }
      
      public static function §+#^§(param1:String) : §=!z§
      {
         var _loc2_:§=!z§ = new §=!z§();
         _loc2_.§ try§(param1);
         return _loc2_;
      }
      
      public function get §?u§() : int
      {
         return this.§`!L§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§>W§;
      }
      
      override public function get worldGravity() : Number
      {
         return this.§@!_§;
      }
      
      public function §=!8§(param1:int) : §>"l§
      {
         return this.§`!L§[param1];
      }
      
      protected function §^"k§(param1:Object) : void
      {
      }
      
      protected function § try§(param1:String) : void
      {
         var _loc2_:String = §7#&§.§^9§(param1);
         var _loc3_:Object = §7#&§.§'"!§(_loc2_);
         this.§^"k§(_loc3_);
         §"!n§ = this.§=!"§(_loc3_.theme);
         §5#U§ = new Vector.<§0!§>();
         §,!?§ = new Vector.<§5y§>();
         §1!b§ = new Vector.<§94§>();
         var _loc4_:Number = _loc3_.physicsToWorld;
         this.§`!u§ = _loc3_.gravityForceMultiplier !== undefined ? Number(_loc3_.gravityForceMultiplier) : Number(§74§);
         if(_loc3_.worldGravity)
         {
            this.§@!_§ = _loc3_.worldGravity;
         }
         var _loc5_:§0!§ = this.§function§(_loc3_.castleCameraData,_loc4_,§0!§.CASTLE);
         var _loc6_:§0!§ = this.§function§(_loc3_.birdCameraData,_loc4_,§0!§.SLINGSHOT);
         §5#U§.push(_loc5_);
         §5#U§.push(_loc6_);
         var _loc7_:Vector.<String> = this.§1##§(_loc3_.world,_loc2_);
         this.§&"a§(_loc3_.world,_loc7_);
         var _loc8_:Vector.<String> = this.§+!H§(_loc3_.joints,_loc2_);
         this.§'"-§(_loc3_.joints,_loc8_);
         if(_loc3_.slingshotX)
         {
            §7M§ = _loc3_.slingshotX;
         }
         if(_loc3_.slingshotY)
         {
            §=!F§ = _loc3_.slingshotY;
         }
      }
      
      private function §1##§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§ "b§(param1,param2,"world");
      }
      
      private function §+!H§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§ "b§(param1,param2,"joints");
      }
      
      private function § "b§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc5_:§"<§ = null;
         var _loc8_:String = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc4_:Array = [];
         var _loc6_:int;
         if((_loc6_ = param2.indexOf("\"" + param3 + "\"")) >= 0)
         {
            _loc8_ = param2.substring(_loc6_);
            for(_loc9_ in param1)
            {
               if(_loc10_ = _loc8_.indexOf("\"" + _loc9_ + "\""))
               {
                  (_loc5_ = new §"<§()).name = _loc9_;
                  _loc5_.index = _loc10_;
                  _loc4_.push(_loc5_);
               }
            }
         }
         _loc4_.sortOn("index",Array.NUMERIC);
         var _loc7_:Vector.<String> = new Vector.<String>();
         for each(_loc5_ in _loc4_)
         {
            _loc7_.push(_loc5_.name);
         }
         return _loc7_;
      }
      
      private function §&"a§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(param1.ground)
         {
            this.§>W§ = true;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in param2)
         {
            if((_loc5_ = param1[_loc4_]).startNumber && _loc5_.name.indexOf("Bird") >= 0)
            {
               this.§##_§(_loc5_);
            }
            else if(_loc5_.radius)
            {
               this.§`!&§(_loc5_);
            }
            else if(this.§&"%§(_loc5_,_loc3_))
            {
               _loc3_++;
            }
         }
      }
      
      private function §##_§(param1:Object) : void
      {
         var _loc2_:§5y§ = new §5y§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.angle = param1.angle;
         _loc2_.type = this.§=!"§(param1.definition);
         _loc2_.index = param1.startNumber - 1;
         if(_loc2_.index == 0)
         {
            §7M§ = _loc2_.x;
            §=!F§ = _loc2_.y - 8.5;
            §[9§ = _loc2_.angle;
         }
         §,!?§.push(_loc2_);
      }
      
      private function §`!&§(param1:Object) : void
      {
         var _loc2_:§>"l§ = new §>"l§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.shape = new §?#Q§(param1.radius);
         _loc2_.type = param1.definition;
         _loc2_.angle = this.§+!7§(param1.angle);
         _loc2_.§?#_§ = param1.gravitationMinForce;
         _loc2_.§8!i§ = param1.gravitationMaxForce;
         _loc2_.§=5§ = this.§`!u§;
         this.§`!L§.push(_loc2_);
      }
      
      protected function §=!?§(param1:Object) : Boolean
      {
         if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         if(param1.definition.toUpperCase() == "GROUND")
         {
            this.§>W§ = true;
            return true;
         }
         return false;
      }
      
      protected function §&"%§(param1:Object, param2:int) : §94§
      {
         var _loc3_:§94§ = null;
         var _loc4_:§7"B§ = null;
         var _loc5_:§]#3§ = null;
         var _loc6_:§2!=§ = null;
         if(this.§=!?§(param1))
         {
            return null;
         }
         if(param1.explosionRadius != undefined || param1.explosionForce != undefined || param1.explosionDamageRadius != undefined || param1.explosionDamage != undefined)
         {
            (_loc4_ = new §7"B§()).explosionRadius = param1.explosionRadius;
            _loc4_.explosionForce = param1.explosionForce;
            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
            _loc4_.explosionDamage = param1.explosionDamage;
            _loc3_ = _loc4_;
         }
         else if(param1.shotPattern != undefined)
         {
            (_loc5_ = new §]#3§()).shotPattern = param1.shotPattern;
            _loc3_ = _loc5_;
         }
         else if(!param1.triggerEvents)
         {
            _loc3_ = new §94§();
         }
         else
         {
            (_loc6_ = new §2!=§()).§=#X§.initialize(param1.triggerEvents.onDestroyed);
            _loc3_ = _loc6_;
         }
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         _loc3_.angle = this.§+!7§(param1.angle);
         _loc3_.type = this.§=!"§(param1.definition);
         _loc3_.id = param2;
         _loc3_.instanceName = param1.name;
         if(param1.gravityFilterCategory)
         {
            if(GravityFilterCategory[param1.gravityFilterCategory] == undefined)
            {
               throw new Error("Unknown gravity filter category \'" + param1.gravityFilterCategory + "\' for object \'" + param1.definition + "\' (id: " + param2 + ")");
            }
            _loc3_.§=G§ = GravityFilterCategory[param1.gravityFilterCategory];
         }
         if(param1.themeTexture)
         {
            _loc3_.themeTexture = param1.themeTexture;
         }
         §1!b§.push(_loc3_);
         if(this.§@#;§[param1.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + param1.name);
         }
         this.§@#;§[param1.name] = param2;
         return _loc3_;
      }
      
      private function §'"-§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-#'§ = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Boolean = false;
         var _loc18_:Number = NaN;
         var _loc19_:Boolean = false;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:int = 0;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         if(!param1)
         {
            return;
         }
         for each(_loc3_ in param2)
         {
            _loc5_ = (_loc4_ = param1[_loc3_]).type;
            _loc6_ = new Point(_loc4_.x1,_loc4_.y1);
            _loc7_ = new Point(_loc4_.x2,_loc4_.y2);
            _loc8_ = null;
            _loc9_ = _loc4_.end1;
            _loc10_ = _loc4_.end2;
            _loc11_ = this.§@#;§[_loc9_];
            _loc12_ = this.§@#;§[_loc10_];
            if(this.§@#;§[_loc9_] == null || this.§@#;§[_loc10_] == null)
            {
               throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
            }
            _loc13_ = _loc4_.collideConnected;
            if(_loc5_ == §-#'§.§>"z§ || _loc5_ == §-#'§.§,"?§)
            {
               _loc14_ = _loc4_.limit;
               _loc15_ = _loc4_.lowerLimit;
               _loc16_ = _loc4_.upperLimit;
               _loc17_ = _loc4_.motor;
               _loc18_ = _loc4_.motorSpeed;
               _loc19_ = _loc4_.backAndForth;
               _loc20_ = _loc4_.maxTorque;
               _loc8_ = new §-#'§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
               if(_loc5_ == §-#'§.§,"?§)
               {
                  _loc21_ = _loc4_.worldAxisX;
                  _loc22_ = _loc4_.worldAxisY;
                  _loc8_.axisX = _loc21_;
                  _loc8_.axisY = _loc22_;
               }
            }
            else
            {
               _loc8_ = new §-#'§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
               if(_loc5_ == §-#'§.§5&§)
               {
                  _loc23_ = _loc4_.coordType;
                  _loc24_ = _loc4_.dampingRatio;
                  _loc25_ = _loc4_.frequency;
                  _loc8_.coordinateType = _loc23_;
                  _loc8_.dampingRatio = _loc24_;
                  _loc8_.frequency = _loc25_;
               }
            }
            _loc8_.isBreakable = _loc4_.breakable;
            _loc8_.minBreakForce = _loc4_.breakForce;
            _loc8_.§-"A§ = _loc4_.oneWayDestroy;
            if(_loc4_.type == §-#'§.§use §)
            {
               _loc8_.annihilationTime = _loc4_.destroyTimer;
            }
            §6!Z§.push(_loc8_);
         }
      }
      
      private function §function§(param1:Object, param2:Number, param3:String) : §0!§
      {
         var _loc4_:§0!§ = new §0!§();
         var _loc5_:Object = null;
         if(param1.ipad)
         {
            _loc5_ = param1.ipad;
         }
         else
         {
            _loc5_ = param1.iphone;
         }
         var _loc6_:Number = _loc5_.screenWidth;
         var _loc7_:Number = _loc5_.screenHeight;
         var _loc8_:Number = _loc5_.sx;
         var _loc9_:Number = _loc5_.px;
         var _loc10_:Number = _loc5_.py;
         _loc4_.x = _loc9_ / param2;
         _loc4_.y = _loc10_ / param2;
         _loc4_.left = (_loc9_ - 0.5 * _loc6_ / _loc8_) / param2;
         _loc4_.right = (_loc9_ + 0.5 * _loc6_ / _loc8_) / param2;
         _loc4_.top = (_loc10_ - 0.5 * _loc7_ / _loc8_) / param2;
         _loc4_.bottom = (_loc10_ - 0.5 * _loc7_ / _loc8_) / param2;
         _loc4_.scale = _loc8_;
         _loc4_.id = param3;
         return _loc4_;
      }
      
      protected function §+!7§(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      protected function §=!"§(param1:String) : String
      {
         return param1;
      }
   }
}
