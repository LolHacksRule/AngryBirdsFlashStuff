package §"$=§
{
   import §+#B§.§#k§;
   import §+#B§.§4"[§;
   import §-!!§.§-#L§;
   import §-!!§.§8"J§;
   import §-"i§.§+!7§;
   import §9$+§.§&#;§;
   import §9$+§.§+p§;
   import §9$+§.§5t§;
   import §9$+§.§9"4§;
   import §9$+§.§9$#§;
   import §9$+§.§<!M§;
   import §9$+§.§<$<§;
   import §9$+§.§=!E§;
   import §?§.§0F§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §?#Y§ extends §=$&§
   {
      
      private static const §-$!§:Number = 4;
       
      
      protected var §;S§:Number = 4.0;
      
      protected var §`"s§:Vector.<§&#;§> = null;
      
      protected var §!#>§:§4"[§;
      
      protected var §6"P§:Boolean;
      
      public function §?#Y§()
      {
         super();
         this.§`"s§ = new Vector.<§&#;§>();
         this.§!#>§ = new §4"[§();
      }
      
      public static function §>j§(param1:String) : §?#Y§
      {
         var _loc2_:§?#Y§ = new §?#Y§();
         _loc2_.readFromLua(param1);
         return _loc2_;
      }
      
      public function get §+5§() : int
      {
         return this.§`"s§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§6"P§;
      }
      
      public function §>$>§(param1:int) : §&#;§
      {
         return this.§`"s§[param1];
      }
      
      protected function §@#E§(param1:Object) : void
      {
      }
      
      protected function readFromLua(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc2_:String = §#k§.§ "R§(param1);
         _loc3_ = §#k§.§,r§(_loc2_);
         this.§@#E§(_loc3_);
         §3A§ = this.convertName(_loc3_.theme);
         §3#L§ = new Vector.<§5#v§>();
         mBirds = new Vector.<§=!E§>();
         §3#$§ = new Vector.<§9"4§>();
         _loc4_ = _loc3_.physicsToWorld;
         this.§;S§ = _loc3_.gravityForceMultiplier !== undefined ? Number(_loc3_.gravityForceMultiplier) : Number(§-$!§);
         if(_loc3_.worldGravity)
         {
            §,#J§ = _loc3_.worldGravity;
         }
         §]#R§ = _loc3_.scores.MightyEagle;
         §`a§ = _loc3_.scores.Gold;
         §4"N§ = _loc3_.scores.Silver;
         var _loc5_:§5#v§ = this.§0!-§(_loc3_.castleCameraData,_loc4_,§5#v§.CASTLE);
         var _loc6_:§5#v§ = this.§0!-§(_loc3_.birdCameraData,_loc4_,§5#v§.SLINGSHOT);
         §3#L§.push(_loc5_);
         §3#L§.push(_loc6_);
         var _loc7_:Vector.<String> = this.§-'§(_loc3_.world,_loc2_);
         this.§ $A§(_loc3_.world,_loc7_);
         var _loc8_:Vector.<String> = this.§^!Z§(_loc3_.joints,_loc2_);
         this.§^!+§(_loc3_.joints,_loc8_);
         if(_loc3_.slingshotX)
         {
            §#!,§ = _loc3_.slingshotX;
         }
         if(_loc3_.slingshotY)
         {
            §0##§ = _loc3_.slingshotY;
         }
      }
      
      private function §-'§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§+!b§(param1,param2,"world");
      }
      
      private function §^!Z§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§+!b§(param1,param2,"joints");
      }
      
      private function §+!b§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc5_:§'F§ = null;
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
                  (_loc5_ = new §'F§()).name = _loc9_;
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
      
      private function § $A§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(param1.ground)
         {
            this.§6"P§ = true;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in param2)
         {
            if((_loc5_ = param1[_loc4_]).startNumber && _loc5_.name.indexOf("Bird") >= 0)
            {
               this.§ u§(_loc5_);
            }
            else if(_loc5_.radius)
            {
               this.§[!%§(_loc5_);
            }
            else if(this.§ a§(_loc5_,_loc3_))
            {
               _loc3_++;
            }
         }
      }
      
      private function § u§(param1:Object) : void
      {
         var _loc2_:§=!E§ = new §=!E§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.angle = param1.angle;
         _loc2_.type = this.convertName(param1.definition);
         _loc2_.index = param1.startNumber - 1;
         if(_loc2_.index == 0)
         {
            §#!,§ = _loc2_.x;
            §0##§ = _loc2_.y - 8.5;
            §<l§ = _loc2_.angle;
         }
         mBirds.push(_loc2_);
      }
      
      private function §[!%§(param1:Object) : void
      {
         var _loc2_:§&#;§ = new §&#;§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.shape = new §0F§(param1.radius);
         _loc2_.type = param1.definition;
         _loc2_.angle = this.§9!n§(param1.angle);
         _loc2_.§0!j§ = param1.gravitationMinForce;
         _loc2_.§5$8§ = param1.gravitationMaxForce;
         _loc2_.§'!d§ = this.§;S§;
         this.§`"s§.push(_loc2_);
      }
      
      protected function shouldIgnoreObject(param1:Object) : Boolean
      {
         if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         if(param1.definition.toUpperCase() == "GROUND")
         {
            this.§6"P§ = true;
            return true;
         }
         return false;
      }
      
      protected function § a§(param1:Object, param2:int) : §9"4§
      {
         var _loc3_:§9"4§ = null;
         var _loc4_:§9$#§ = null;
         var _loc5_:§<!M§ = null;
         var _loc6_:§+p§ = null;
         var _loc7_:Vector.<§<$<§> = null;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:Vector.<§+!7§> = null;
         var _loc11_:int = 0;
         var _loc12_:Object = null;
         if(this.shouldIgnoreObject(param1))
         {
            return null;
         }
         if(param1.explosionRadius != undefined || param1.explosionForce != undefined || param1.explosionDamageRadius != undefined || param1.explosionDamage != undefined)
         {
            (_loc4_ = new §9$#§()).explosionRadius = param1.explosionRadius;
            _loc4_.explosionForce = param1.explosionForce;
            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
            _loc4_.explosionDamage = param1.explosionDamage;
            _loc3_ = _loc4_;
         }
         else if(param1.shotPattern != undefined)
         {
            (_loc5_ = new §<!M§()).shotPattern = param1.shotPattern;
            _loc3_ = _loc5_;
         }
         else if(!param1.triggerEvents)
         {
            _loc3_ = new §9"4§();
         }
         else
         {
            (_loc6_ = new §+p§()).§1!3§.initialize(param1.triggerEvents.onDestroyed);
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
            _loc3_.z = §8"J§.§9$9§;
         }
         _loc3_.angle = this.§9!n§(param1.angle);
         _loc3_.type = this.convertName(param1.definition);
         _loc3_.id = param2;
         _loc3_.instanceName = param1.name;
         _loc3_.linearForce = new b2Vec2(!!param1.forceX ? Number(param1.forceX) : Number(0),!!param1.forceY ? Number(param1.forceY) : Number(0));
         if(param1.behaviors)
         {
            _loc7_ = new Vector.<§<$<§>();
            _loc8_ = 0;
            while(_loc8_ < param1.behaviors.length)
            {
               _loc9_ = param1.behaviors[_loc8_];
               _loc7_.push(new §<$<§(_loc9_.type,_loc9_.name,_loc9_.event));
               _loc8_++;
            }
            _loc3_.§-#P§(_loc7_);
         }
         if(param1.events)
         {
            _loc10_ = new Vector.<§+!7§>();
            _loc11_ = 0;
            while(_loc11_ < param1.events.length)
            {
               _loc12_ = param1.events[_loc11_];
               _loc10_.push(new §+!7§(_loc12_.name,_loc12_.parameters,_loc12_.trigger));
               _loc11_++;
            }
            _loc3_.§!8§(_loc10_);
         }
         if(param1.gravityFilterCategory)
         {
            if(§-#L§[param1.gravityFilterCategory] == undefined)
            {
               throw new Error("Unknown gravity filter category \'" + param1.gravityFilterCategory + "\' for object \'" + param1.definition + "\' (id: " + param2 + ")");
            }
            _loc3_.§&"X§ = §-#L§[param1.gravityFilterCategory];
         }
         if(param1.themeTexture)
         {
            _loc3_.themeTexture = param1.themeTexture;
         }
         §3#$§.push(_loc3_);
         if(this.§!#>§[param1.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + param1.name);
         }
         this.§!#>§[param1.name] = param2;
         return _loc3_;
      }
      
      private function §^!+§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§5t§ = null;
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
            _loc11_ = this.§!#>§[_loc9_];
            _loc12_ = this.§!#>§[_loc10_];
            if(this.§!#>§[_loc9_] == null || this.§!#>§[_loc10_] == null)
            {
               throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
            }
            _loc13_ = _loc4_.collideConnected;
            if(_loc5_ == §5t§.§0#i§ || _loc5_ == §5t§.§<#b§)
            {
               _loc14_ = _loc4_.limit;
               _loc15_ = _loc4_.lowerLimit;
               _loc16_ = _loc4_.upperLimit;
               _loc17_ = _loc4_.motor;
               _loc18_ = _loc4_.motorSpeed;
               _loc19_ = _loc4_.backAndForth;
               _loc20_ = _loc4_.maxTorque;
               _loc8_ = new §5t§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
               if(_loc5_ == §5t§.§<#b§)
               {
                  _loc21_ = _loc4_.worldAxisX;
                  _loc22_ = _loc4_.worldAxisY;
                  _loc8_.axisX = _loc21_;
                  _loc8_.axisY = _loc22_;
               }
            }
            else
            {
               _loc8_ = new §5t§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
               if(_loc5_ == §5t§.§@?§)
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
            if(_loc4_.type == §5t§.§;!H§)
            {
               _loc8_.annihilationTime = _loc4_.destroyTimer;
               _loc8_.distanceToDestroyChild = _loc4_.distanceToDestroyChild;
            }
            § t§.push(_loc8_);
         }
      }
      
      private function §0!-§(param1:Object, param2:Number, param3:String) : §5#v§
      {
         var _loc4_:§5#v§ = new §5#v§();
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
      
      protected function §9!n§(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      protected function convertName(param1:String) : String
      {
         return param1;
      }
   }
}
