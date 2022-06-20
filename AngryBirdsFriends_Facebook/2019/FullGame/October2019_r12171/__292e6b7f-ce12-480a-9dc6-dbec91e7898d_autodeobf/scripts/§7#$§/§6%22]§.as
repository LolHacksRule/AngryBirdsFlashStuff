package §7#$§
{
   import § !N§.§2#r§;
   import § !N§.§2>§;
   import § !N§.§2m§;
   import § !N§.§3§;
   import § !N§.§5"?§;
   import § !N§.§8!U§;
   import § !N§.§>!L§;
   import § !N§.§[!+§;
   import §#"4§.§%#F§;
   import §#"4§.§&r§;
   import §,0§.§0"0§;
   import §04§.b2Vec2;
   import §8#K§.§=$'§;
   import §;!=§.§"#-§;
   import §;!=§.§>"G§;
   import flash.geom.Point;
   
   public class §6"]§ extends §?# §
   {
      
      private static const §""Z§:Number = 4;
       
      
      protected var §+"4§:Number = 4.0;
      
      protected var §5"Z§:Vector.<§3#3§> = null;
      
      protected var § s§:§&r§;
      
      protected var §0&§:Boolean;
      
      public function §6"]§()
      {
         super();
         this.§5"Z§ = new Vector.<§3#3§>();
         this.§ s§ = new §&r§();
      }
      
      public static function §%!B§(param1:String) : §6"]§
      {
         var _loc2_:§6"]§ = new §6"]§();
         _loc2_.readFromLua(param1);
         return _loc2_;
      }
      
      public function get §'"`§() : int
      {
         return this.§5"Z§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§0&§;
      }
      
      public function §1!x§(param1:int) : §3#3§
      {
         return this.§5"Z§[param1];
      }
      
      protected function §!%§(param1:Object) : void
      {
      }
      
      protected function readFromLua(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc2_:String = §%#F§.§%3§(param1);
         _loc3_ = §%#F§.§#J§(_loc2_);
         this.§!%§(_loc3_);
         §%$@§ = this.convertName(_loc3_.theme);
         §]"W§ = new Vector.<§5#-§>();
         mBirds = new Vector.<§>!L§>();
         §1#s§ = new Vector.<§5"?§>();
         _loc4_ = _loc3_.physicsToWorld;
         this.§+"4§ = _loc3_.gravityForceMultiplier !== undefined ? Number(_loc3_.gravityForceMultiplier) : Number(§""Z§);
         if(_loc3_.worldGravity)
         {
            §3"]§ = _loc3_.worldGravity;
         }
         §]]§ = _loc3_.scores.MightyEagle;
         §=!=§ = _loc3_.scores.Gold;
         § #T§ = _loc3_.scores.Silver;
         var _loc5_:§5#-§ = this.§+#K§(_loc3_.castleCameraData,_loc4_,§5#-§.CASTLE);
         var _loc6_:§5#-§ = this.§+#K§(_loc3_.birdCameraData,_loc4_,§5#-§.SLINGSHOT);
         §]"W§.push(_loc5_);
         §]"W§.push(_loc6_);
         var _loc7_:Vector.<String> = this.§'#6§(_loc3_.world,_loc2_);
         this.§!"^§(_loc3_.world,_loc7_);
         var _loc8_:Vector.<String> = this.§5!>§(_loc3_.joints,_loc2_);
         this.§<#f§(_loc3_.joints,_loc8_);
         if(_loc3_.slingshotX)
         {
            §&!w§ = _loc3_.slingshotX;
         }
         if(_loc3_.slingshotY)
         {
            §'#d§ = _loc3_.slingshotY;
         }
      }
      
      private function §'#6§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§#"8§(param1,param2,"world");
      }
      
      private function §5!>§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§#"8§(param1,param2,"joints");
      }
      
      private function §#"8§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc5_:§,"s§ = null;
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
                  (_loc5_ = new §,"s§()).name = _loc9_;
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
      
      private function §!"^§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(param1.ground)
         {
            this.§0&§ = true;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in param2)
         {
            if((_loc5_ = param1[_loc4_]).startNumber && _loc5_.name.indexOf("Bird") >= 0)
            {
               this.§%§(_loc5_);
            }
            else if(_loc5_.radius)
            {
               this.§=!<§(_loc5_);
            }
            else if(this.§ !@§(_loc5_,_loc3_))
            {
               _loc3_++;
            }
         }
      }
      
      private function §%§(param1:Object) : void
      {
         var _loc2_:§>!L§ = new §>!L§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.angle = param1.angle;
         _loc2_.type = this.convertName(param1.definition);
         _loc2_.index = param1.startNumber - 1;
         if(_loc2_.index == 0)
         {
            §&!w§ = _loc2_.x;
            §'#d§ = _loc2_.y - 8.5;
            §@!o§ = _loc2_.angle;
         }
         mBirds.push(_loc2_);
      }
      
      private function §=!<§(param1:Object) : void
      {
         var _loc2_:§3#3§ = new §3#3§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.shape = new §=$'§(param1.radius);
         _loc2_.type = param1.definition;
         _loc2_.angle = this.§##R§(param1.angle);
         _loc2_.§^Y§ = param1.gravitationMinForce;
         _loc2_.§^"P§ = param1.gravitationMaxForce;
         _loc2_.§^"e§ = this.§+"4§;
         this.§5"Z§.push(_loc2_);
      }
      
      protected function shouldIgnoreObject(param1:Object) : Boolean
      {
         if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         if(param1.definition.toUpperCase() == "GROUND")
         {
            this.§0&§ = true;
            return true;
         }
         return false;
      }
      
      protected function § !@§(param1:Object, param2:int) : §5"?§
      {
         var _loc3_:§5"?§ = null;
         var _loc4_:§2>§ = null;
         var _loc5_:§2#r§ = null;
         var _loc6_:§[!+§ = null;
         var _loc7_:Vector.<§8!U§> = null;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:Vector.<§0"0§> = null;
         var _loc11_:int = 0;
         var _loc12_:Object = null;
         if(this.shouldIgnoreObject(param1))
         {
            return null;
         }
         if(param1.explosionRadius != undefined || param1.explosionForce != undefined || param1.explosionDamageRadius != undefined || param1.explosionDamage != undefined)
         {
            (_loc4_ = new §2>§()).explosionRadius = param1.explosionRadius;
            _loc4_.explosionForce = param1.explosionForce;
            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
            _loc4_.explosionDamage = param1.explosionDamage;
            _loc3_ = _loc4_;
         }
         else if(param1.shotPattern != undefined)
         {
            (_loc5_ = new §2#r§()).shotPattern = param1.shotPattern;
            _loc3_ = _loc5_;
         }
         else if(!param1.triggerEvents)
         {
            _loc3_ = new §5"?§();
         }
         else
         {
            (_loc6_ = new §[!+§()).§2"`§.initialize(param1.triggerEvents.onDestroyed);
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
            _loc3_.z = §>"G§.§-$"§;
         }
         _loc3_.angle = this.§##R§(param1.angle);
         _loc3_.type = this.convertName(param1.definition);
         _loc3_.id = param2;
         _loc3_.instanceName = param1.name;
         _loc3_.linearForce = new b2Vec2(!!param1.forceX ? Number(param1.forceX) : Number(0),!!param1.forceY ? Number(param1.forceY) : Number(0));
         if(param1.behaviors)
         {
            _loc7_ = new Vector.<§8!U§>();
            _loc8_ = 0;
            while(_loc8_ < param1.behaviors.length)
            {
               _loc9_ = param1.behaviors[_loc8_];
               _loc7_.push(new §8!U§(_loc9_.type,_loc9_.name,_loc9_.event));
               _loc8_++;
            }
            _loc3_.§15§(_loc7_);
         }
         if(param1.events)
         {
            _loc10_ = new Vector.<§0"0§>();
            _loc11_ = 0;
            while(_loc11_ < param1.events.length)
            {
               _loc12_ = param1.events[_loc11_];
               _loc10_.push(new §0"0§(_loc12_.name,_loc12_.parameters,_loc12_.trigger));
               _loc11_++;
            }
            _loc3_.§6"w§(_loc10_);
         }
         if(param1.gravityFilterCategory)
         {
            if(§"#-§[param1.gravityFilterCategory] == undefined)
            {
               throw new Error("Unknown gravity filter category \'" + param1.gravityFilterCategory + "\' for object \'" + param1.definition + "\' (id: " + param2 + ")");
            }
            _loc3_.§@#z§ = §"#-§[param1.gravityFilterCategory];
         }
         if(param1.themeTexture)
         {
            _loc3_.themeTexture = param1.themeTexture;
         }
         §1#s§.push(_loc3_);
         if(this.§ s§[param1.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + param1.name);
         }
         this.§ s§[param1.name] = param2;
         return _loc3_;
      }
      
      private function §<#f§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§2m§ = null;
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
            _loc11_ = this.§ s§[_loc9_];
            _loc12_ = this.§ s§[_loc10_];
            if(this.§ s§[_loc9_] == null || this.§ s§[_loc10_] == null)
            {
               throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
            }
            _loc13_ = _loc4_.collideConnected;
            if(_loc5_ == §2m§.§@!I§ || _loc5_ == §2m§.§ $$§)
            {
               _loc14_ = _loc4_.limit;
               _loc15_ = _loc4_.lowerLimit;
               _loc16_ = _loc4_.upperLimit;
               _loc17_ = _loc4_.motor;
               _loc18_ = _loc4_.motorSpeed;
               _loc19_ = _loc4_.backAndForth;
               _loc20_ = _loc4_.maxTorque;
               _loc8_ = new §2m§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
               if(_loc5_ == §2m§.§ $$§)
               {
                  _loc21_ = _loc4_.worldAxisX;
                  _loc22_ = _loc4_.worldAxisY;
                  _loc8_.axisX = _loc21_;
                  _loc8_.axisY = _loc22_;
               }
            }
            else
            {
               _loc8_ = new §2m§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
               if(_loc5_ == §2m§.§^$$§)
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
            if(_loc4_.type == §2m§.§8!_§)
            {
               _loc8_.annihilationTime = _loc4_.destroyTimer;
               _loc8_.distanceToDestroyChild = _loc4_.distanceToDestroyChild;
            }
            §5!-§.push(_loc8_);
         }
      }
      
      private function §+#K§(param1:Object, param2:Number, param3:String) : §5#-§
      {
         var _loc4_:§5#-§ = new §5#-§();
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
      
      protected function §##R§(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      protected function convertName(param1:String) : String
      {
         return param1;
      }
   }
}
