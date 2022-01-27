package §,#+§
{
   import §4"F§.§""'§;
   import §4"F§.§""r§;
   import §4"F§.§'!=§;
   import §4"F§.§8"r§;
   import §4"F§.§["N§;
   import §4"F§.§^d§;
   import §4"F§.§var §;
   import §6"R§.GravityFilterCategory;
   import §7A§.§5"2§;
   import §7A§.§7!a§;
   import §>P§.§3t§;
   import flash.geom.Point;
   
   public class §="l§ extends §<U§
   {
      
      private static const §""l§:Number = 4;
       
      
      protected var §[!w§:Number = 4.0;
      
      protected var §;"z§:Vector.<§8"r§> = null;
      
      protected var §-!+§:§5"2§;
      
      protected var §]E§:Number = 0.0;
      
      protected var §>"O§:Boolean;
      
      public function §="l§()
      {
         super();
         this.§;"z§ = new Vector.<§8"r§>();
         this.§-!+§ = new §5"2§();
      }
      
      public static function §>"Y§(param1:String) : §="l§
      {
         var _loc2_:§="l§ = new §="l§();
         _loc2_.§<"!§(param1);
         return _loc2_;
      }
      
      public function get §#p§() : int
      {
         return this.§;"z§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§>"O§;
      }
      
      override public function get worldGravity() : Number
      {
         return this.§]E§;
      }
      
      public function §6!T§(param1:int) : §8"r§
      {
         return this.§;"z§[param1];
      }
      
      protected function §1"&§(param1:Object) : void
      {
      }
      
      protected function §<"!§(param1:String) : void
      {
         var _loc2_:String = §7!a§.§-! §(param1);
         var _loc3_:Object = §7!a§.§!#6§(_loc2_);
         this.§1"&§(_loc3_);
         §<!h§ = this.§["u§(_loc3_.theme);
         §"<§ = new Vector.<§6G§>();
         §1#!§ = new Vector.<§var §>();
         §,z§ = new Vector.<§^d§>();
         var _loc4_:Number = _loc3_.physicsToWorld;
         this.§[!w§ = _loc3_.gravityForceMultiplier !== undefined ? Number(_loc3_.gravityForceMultiplier) : Number(§""l§);
         if(_loc3_.worldGravity)
         {
            this.§]E§ = _loc3_.worldGravity;
         }
         var _loc5_:§6G§ = this.§`x§(_loc3_.castleCameraData,_loc4_,§6G§.CASTLE);
         var _loc6_:§6G§ = this.§`x§(_loc3_.birdCameraData,_loc4_,§6G§.SLINGSHOT);
         §"<§.push(_loc5_);
         §"<§.push(_loc6_);
         var _loc7_:Vector.<String> = this.§5!O§(_loc3_.world,_loc2_);
         this.§^#&§(_loc3_.world,_loc7_);
         var _loc8_:Vector.<String> = this.§-"%§(_loc3_.joints,_loc2_);
         this.§@",§(_loc3_.joints,_loc8_);
         if(_loc3_.slingshotX)
         {
            §6"q§ = _loc3_.slingshotX;
         }
         if(_loc3_.slingshotY)
         {
            §>!9§ = _loc3_.slingshotY;
         }
      }
      
      private function §5!O§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§<q§(param1,param2,"world");
      }
      
      private function §-"%§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§<q§(param1,param2,"joints");
      }
      
      private function §<q§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc5_:§]#0§ = null;
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
                  (_loc5_ = new §]#0§()).name = _loc9_;
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
      
      private function §^#&§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(param1.ground)
         {
            this.§>"O§ = true;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in param2)
         {
            if((_loc5_ = param1[_loc4_]).startNumber && _loc5_.name.indexOf("Bird") >= 0)
            {
               this.§^"A§(_loc5_);
            }
            else if(_loc5_.radius)
            {
               this.§^J§(_loc5_);
            }
            else if(this.§1#1§(_loc5_,_loc3_))
            {
               _loc3_++;
            }
         }
      }
      
      private function §^"A§(param1:Object) : void
      {
         var _loc2_:§var § = new §var §();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.angle = param1.angle;
         _loc2_.type = this.§["u§(param1.definition);
         _loc2_.index = param1.startNumber - 1;
         if(_loc2_.index == 0)
         {
            §6"q§ = _loc2_.x;
            §>!9§ = _loc2_.y - 8.5;
            §;![§ = _loc2_.angle;
         }
         §1#!§.push(_loc2_);
      }
      
      private function §^J§(param1:Object) : void
      {
         var _loc2_:§8"r§ = new §8"r§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.shape = new §3t§(param1.radius);
         _loc2_.type = param1.definition;
         _loc2_.angle = this.§4"5§(param1.angle);
         _loc2_.§?#0§ = param1.gravitationMinForce;
         _loc2_.§0"l§ = param1.gravitationMaxForce;
         _loc2_.§"d§ = this.§[!w§;
         this.§;"z§.push(_loc2_);
      }
      
      protected function §=p§(param1:Object) : Boolean
      {
         if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         if(param1.definition.toUpperCase() == "GROUND")
         {
            this.§>"O§ = true;
            return true;
         }
         return false;
      }
      
      protected function §1#1§(param1:Object, param2:int) : §^d§
      {
         var _loc3_:§^d§ = null;
         var _loc4_:§""r§ = null;
         var _loc5_:§'!=§ = null;
         var _loc6_:§""'§ = null;
         if(this.§=p§(param1))
         {
            return null;
         }
         if(param1.explosionRadius != undefined || param1.explosionForce != undefined || param1.explosionDamageRadius != undefined || param1.explosionDamage != undefined)
         {
            (_loc4_ = new §""r§()).explosionRadius = param1.explosionRadius;
            _loc4_.explosionForce = param1.explosionForce;
            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
            _loc4_.explosionDamage = param1.explosionDamage;
            _loc3_ = _loc4_;
         }
         else if(param1.shotPattern != undefined)
         {
            (_loc5_ = new §'!=§()).shotPattern = param1.shotPattern;
            _loc3_ = _loc5_;
         }
         else if(!param1.triggerEvents)
         {
            _loc3_ = new §^d§();
         }
         else
         {
            (_loc6_ = new §""'§()).§&!X§.initialize(param1.triggerEvents.onDestroyed);
            _loc3_ = _loc6_;
         }
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         _loc3_.angle = this.§4"5§(param1.angle);
         _loc3_.type = this.§["u§(param1.definition);
         _loc3_.id = param2;
         _loc3_.instanceName = param1.name;
         if(param1.gravityFilterCategory)
         {
            if(GravityFilterCategory[param1.gravityFilterCategory] == undefined)
            {
               throw new Error("Unknown gravity filter category \'" + param1.gravityFilterCategory + "\' for object \'" + param1.definition + "\' (id: " + param2 + ")");
            }
            _loc3_.§+s§ = GravityFilterCategory[param1.gravityFilterCategory];
         }
         if(param1.themeTexture)
         {
            _loc3_.themeTexture = param1.themeTexture;
         }
         §,z§.push(_loc3_);
         if(this.§-!+§[param1.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + param1.name);
         }
         this.§-!+§[param1.name] = param2;
         return _loc3_;
      }
      
      private function §@",§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§["N§ = null;
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
            _loc11_ = this.§-!+§[_loc9_];
            _loc12_ = this.§-!+§[_loc10_];
            if(this.§-!+§[_loc9_] == null || this.§-!+§[_loc10_] == null)
            {
               throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
            }
            _loc13_ = _loc4_.collideConnected;
            if(_loc5_ == §["N§.§^!N§ || _loc5_ == §["N§.§>!Z§)
            {
               _loc14_ = _loc4_.limit;
               _loc15_ = _loc4_.lowerLimit;
               _loc16_ = _loc4_.upperLimit;
               _loc17_ = _loc4_.motor;
               _loc18_ = _loc4_.motorSpeed;
               _loc19_ = _loc4_.backAndForth;
               _loc20_ = _loc4_.maxTorque;
               _loc8_ = new §["N§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
               if(_loc5_ == §["N§.§>!Z§)
               {
                  _loc21_ = _loc4_.worldAxisX;
                  _loc22_ = _loc4_.worldAxisY;
                  _loc8_.axisX = _loc21_;
                  _loc8_.axisY = _loc22_;
               }
            }
            else
            {
               _loc8_ = new §["N§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
               if(_loc5_ == §["N§.§,!N§)
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
            _loc8_.§7!n§ = _loc4_.oneWayDestroy;
            if(_loc4_.type == §["N§.§@"#§)
            {
               _loc8_.annihilationTime = _loc4_.destroyTimer;
            }
            §%#-§.push(_loc8_);
         }
      }
      
      private function §`x§(param1:Object, param2:Number, param3:String) : §6G§
      {
         var _loc4_:§6G§ = new §6G§();
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
      
      protected function §4"5§(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      protected function §["u§(param1:String) : String
      {
         return param1;
      }
   }
}
