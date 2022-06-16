package §#v§
{
   import §,#L§.§!#%§;
   import §,#L§.§"!7§;
   import §,#L§.§#!j§;
   import §,#L§.§+"L§;
   import §,#L§.§8"y§;
   import §,#L§.§<!?§;
   import §,#L§.§?W§;
   import §,#L§.§[g§;
   import §0m§.b2Vec2;
   import §6§.§,"s§;
   import §>!#§.§'"R§;
   import §>!#§.§1""§;
   import §[#a§.§7#]§;
   import §[#a§.§="@§;
   import §`#C§.§3#U§;
   import flash.geom.Point;
   
   public class §2"+§ extends §-"R§
   {
      
      private static const §!§:Number = 4;
       
      
      protected var §8"W§:Number = 4.0;
      
      protected var §0$#§:Vector.<§<!?§> = null;
      
      protected var §;!F§:§'"R§;
      
      protected var §<#M§:Boolean;
      
      public function §2"+§()
      {
         super();
         this.§0$#§ = new Vector.<§<!?§>();
         this.§;!F§ = new §'"R§();
      }
      
      public static function §="H§(param1:String) : §2"+§
      {
         var _loc2_:§2"+§ = new §2"+§();
         _loc2_.readFromLua(param1);
         return _loc2_;
      }
      
      public function get §<$ §() : int
      {
         return this.§0$#§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§<#M§;
      }
      
      public function §?"F§(param1:int) : §<!?§
      {
         return this.§0$#§[param1];
      }
      
      protected function §##Y§(param1:Object) : void
      {
      }
      
      protected function readFromLua(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc2_:String = §1""§.§57§(param1);
         _loc3_ = §1""§.§?!l§(_loc2_);
         this.§##Y§(_loc3_);
         §`",§ = this.convertName(_loc3_.theme);
         §=?§ = new Vector.<§8i§>();
         mBirds = new Vector.<§[g§>();
         §3!2§ = new Vector.<§!#%§>();
         _loc4_ = _loc3_.physicsToWorld;
         this.§8"W§ = _loc3_.gravityForceMultiplier !== undefined ? Number(_loc3_.gravityForceMultiplier) : Number(§!§);
         if(_loc3_.worldGravity)
         {
            §'b§ = _loc3_.worldGravity;
         }
         §7!o§ = _loc3_.scores.MightyEagle;
         §?'§ = _loc3_.scores.Gold;
         §7"w§ = _loc3_.scores.Silver;
         var _loc5_:§8i§ = this.§!"J§(_loc3_.castleCameraData,_loc4_,§8i§.CASTLE);
         var _loc6_:§8i§ = this.§!"J§(_loc3_.birdCameraData,_loc4_,§8i§.SLINGSHOT);
         §=?§.push(_loc5_);
         §=?§.push(_loc6_);
         var _loc7_:Vector.<String> = this.§ $#§(_loc3_.world,_loc2_);
         this.§]$"§(_loc3_.world,_loc7_);
         var _loc8_:Vector.<String> = this.§0!c§(_loc3_.joints,_loc2_);
         this.§!!F§(_loc3_.joints,_loc8_);
         if(_loc3_.slingshotX)
         {
            §3"b§ = _loc3_.slingshotX;
         }
         if(_loc3_.slingshotY)
         {
            §4+§ = _loc3_.slingshotY;
         }
      }
      
      private function § $#§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§1"M§(param1,param2,"world");
      }
      
      private function §0!c§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§1"M§(param1,param2,"joints");
      }
      
      private function §1"M§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc5_:§ "_§ = null;
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
                  (_loc5_ = new § "_§()).name = _loc9_;
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
      
      private function §]$"§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(param1.ground)
         {
            this.§<#M§ = true;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in param2)
         {
            if((_loc5_ = param1[_loc4_]).startNumber && _loc5_.name.indexOf("Bird") >= 0)
            {
               this.§1"!§(_loc5_);
            }
            else if(_loc5_.radius)
            {
               this.§7w§(_loc5_);
            }
            else if(this.§-"X§(_loc5_,_loc3_))
            {
               _loc3_++;
            }
         }
      }
      
      private function §1"!§(param1:Object) : void
      {
         var _loc2_:§[g§ = new §[g§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.angle = param1.angle;
         _loc2_.type = this.convertName(param1.definition);
         _loc2_.index = param1.startNumber - 1;
         if(_loc2_.index == 0)
         {
            §3"b§ = _loc2_.x;
            §4+§ = _loc2_.y - 8.5;
            §-#v§ = _loc2_.angle;
         }
         mBirds.push(_loc2_);
      }
      
      private function §7w§(param1:Object) : void
      {
         var _loc2_:§<!?§ = new §<!?§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.shape = new §3#U§(param1.radius);
         _loc2_.type = param1.definition;
         _loc2_.angle = this.§-#h§(param1.angle);
         _loc2_.§1"$§ = param1.gravitationMinForce;
         _loc2_.§^#L§ = param1.gravitationMaxForce;
         _loc2_.§,#X§ = this.§8"W§;
         this.§0$#§.push(_loc2_);
      }
      
      protected function shouldIgnoreObject(param1:Object) : Boolean
      {
         if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         if(param1.definition.toUpperCase() == "GROUND")
         {
            this.§<#M§ = true;
            return true;
         }
         return false;
      }
      
      protected function §-"X§(param1:Object, param2:int) : §!#%§
      {
         var _loc3_:§!#%§ = null;
         var _loc4_:§#!j§ = null;
         var _loc5_:§"!7§ = null;
         var _loc6_:§+"L§ = null;
         var _loc7_:Vector.<§?W§> = null;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:Vector.<§,"s§> = null;
         var _loc11_:int = 0;
         var _loc12_:Object = null;
         if(this.shouldIgnoreObject(param1))
         {
            return null;
         }
         if(param1.explosionRadius != undefined || param1.explosionForce != undefined || param1.explosionDamageRadius != undefined || param1.explosionDamage != undefined)
         {
            (_loc4_ = new §#!j§()).explosionRadius = param1.explosionRadius;
            _loc4_.explosionForce = param1.explosionForce;
            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
            _loc4_.explosionDamage = param1.explosionDamage;
            _loc3_ = _loc4_;
         }
         else if(param1.shotPattern != undefined)
         {
            (_loc5_ = new §"!7§()).shotPattern = param1.shotPattern;
            _loc3_ = _loc5_;
         }
         else if(!param1.triggerEvents)
         {
            _loc3_ = new §!#%§();
         }
         else
         {
            (_loc6_ = new §+"L§()).§=$%§.initialize(param1.triggerEvents.onDestroyed);
            _loc3_ = _loc6_;
         }
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         if(param1.z)
         {
            _loc3_.z = param1.z;
         }
         else
         {
            _loc3_.z = §="@§.§-!C§;
         }
         _loc3_.angle = this.§-#h§(param1.angle);
         _loc3_.type = this.convertName(param1.definition);
         _loc3_.id = param2;
         _loc3_.instanceName = param1.name;
         _loc3_.linearForce = new b2Vec2(!!param1.forceX ? Number(param1.forceX) : Number(0),!!param1.forceY ? Number(param1.forceY) : Number(0));
         if(param1.behaviors)
         {
            _loc7_ = new Vector.<§?W§>();
            _loc8_ = 0;
            while(_loc8_ < param1.behaviors.length)
            {
               _loc9_ = param1.behaviors[_loc8_];
               _loc7_.push(new §?W§(_loc9_.type,_loc9_.name,_loc9_.event));
               _loc8_++;
            }
            _loc3_.§%$#§(_loc7_);
         }
         if(param1.events)
         {
            _loc10_ = new Vector.<§,"s§>();
            _loc11_ = 0;
            while(_loc11_ < param1.events.length)
            {
               _loc12_ = param1.events[_loc11_];
               _loc10_.push(new §,"s§(_loc12_.name,_loc12_.parameters,_loc12_.trigger));
               _loc11_++;
            }
            _loc3_.§6Y§(_loc10_);
         }
         if(param1.gravityFilterCategory)
         {
            if(§7#]§[param1.gravityFilterCategory] == undefined)
            {
               throw new Error("Unknown gravity filter category \'" + param1.gravityFilterCategory + "\' for object \'" + param1.definition + "\' (id: " + param2 + ")");
            }
            _loc3_.§9"P§ = §7#]§[param1.gravityFilterCategory];
         }
         if(param1.themeTexture)
         {
            _loc3_.themeTexture = param1.themeTexture;
         }
         §3!2§.push(_loc3_);
         if(this.§;!F§[param1.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + param1.name);
         }
         this.§;!F§[param1.name] = param2;
         return _loc3_;
      }
      
      private function §!!F§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§8"y§ = null;
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
            _loc11_ = this.§;!F§[_loc9_];
            _loc12_ = this.§;!F§[_loc10_];
            if(this.§;!F§[_loc9_] == null || this.§;!F§[_loc10_] == null)
            {
               throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
            }
            _loc13_ = _loc4_.collideConnected;
            if(_loc5_ == §8"y§.§6#N§ || _loc5_ == §8"y§.§?#§)
            {
               _loc14_ = _loc4_.limit;
               _loc15_ = _loc4_.lowerLimit;
               _loc16_ = _loc4_.upperLimit;
               _loc17_ = _loc4_.motor;
               _loc18_ = _loc4_.motorSpeed;
               _loc19_ = _loc4_.backAndForth;
               _loc20_ = _loc4_.maxTorque;
               _loc8_ = new §8"y§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
               if(_loc5_ == §8"y§.§?#§)
               {
                  _loc21_ = _loc4_.worldAxisX;
                  _loc22_ = _loc4_.worldAxisY;
                  _loc8_.axisX = _loc21_;
                  _loc8_.axisY = _loc22_;
               }
            }
            else
            {
               _loc8_ = new §8"y§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
               if(_loc5_ == §8"y§.§0$9§)
               {
                  _loc23_ = _loc4_.coordType;
                  _loc24_ = _loc4_.dampingRatio;
                  _loc25_ = _loc4_.frequency;
                  _loc8_.coordinateType = _loc23_;
                  _loc8_.dampingRatio = _loc24_;
                  _loc8_.frequency = _loc25_;
               }
            }
            _loc8_.breakable = _loc4_.breakable;
            _loc8_.breakForce = _loc4_.breakForce;
            _loc8_.isOneWayDestroyed = _loc4_.isOneWayDestroyed;
            _loc8_.destroyChild = _loc4_.destroyChild;
            if(_loc4_.type == §8"y§.§[!J§)
            {
               _loc8_.annihilationTime = _loc4_.destroyTimer;
               _loc8_.distanceToDestroyChild = _loc4_.distanceToDestroyChild;
            }
            §#$2§.push(_loc8_);
         }
      }
      
      private function §!"J§(param1:Object, param2:Number, param3:String) : §8i§
      {
         var _loc4_:§8i§ = new §8i§();
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
      
      protected function §-#h§(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      protected function convertName(param1:String) : String
      {
         return param1;
      }
   }
}
