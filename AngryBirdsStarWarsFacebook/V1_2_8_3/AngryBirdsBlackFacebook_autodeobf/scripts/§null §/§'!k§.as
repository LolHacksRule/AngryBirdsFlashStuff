package §null §
{
   import §!r§.GravityFilterCategory;
   import §#g§.§<b§;
   import §+d§.§2!g§;
   import §+d§.§^!Y§;
   import §=G§.§%H§;
   import §=G§.§6W§;
   import §=G§.§9"S§;
   import §=G§.§9v§;
   import §=G§.§<5§;
   import §=G§.§<u§;
   import §=G§.§=u§;
   import flash.geom.Point;
   
   public class §'!k§ extends §>#-§
   {
      
      private static const §="D§:Number = 4;
       
      
      protected var §]"C§:Number = 4.0;
      
      protected var §]!y§:Vector.<§<u§> = null;
      
      protected var §^"l§:§2!g§;
      
      protected var § "?§:Number = 0.0;
      
      protected var §+"f§:Boolean;
      
      public function §'!k§()
      {
         super();
         this.§]!y§ = new Vector.<§<u§>();
         this.§^"l§ = new §2!g§();
      }
      
      public static function §%B§(param1:String) : §'!k§
      {
         var _loc2_:§'!k§ = new §'!k§();
         _loc2_.§'# §(param1);
         return _loc2_;
      }
      
      public function get §5!+§() : int
      {
         return this.§]!y§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§+"f§;
      }
      
      override public function get worldGravity() : Number
      {
         return this.§ "?§;
      }
      
      public function §#!G§(param1:int) : §<u§
      {
         return this.§]!y§[param1];
      }
      
      protected function §-"Q§(param1:Object) : void
      {
      }
      
      protected function §'# §(param1:String) : void
      {
         var _loc2_:String = §^!Y§.§8!R§(param1);
         var _loc3_:Object = §^!Y§.§5"f§(_loc2_);
         this.§-"Q§(_loc3_);
         §#P§ = this.§+!t§(_loc3_.theme);
         §>!T§ = new Vector.<§ case§>();
         §&"P§ = new Vector.<§<5§>();
         §7"q§ = new Vector.<§9v§>();
         var _loc4_:Number = _loc3_.physicsToWorld;
         this.§]"C§ = _loc3_.gravityForceMultiplier !== undefined ? Number(_loc3_.gravityForceMultiplier) : Number(§="D§);
         if(_loc3_.worldGravity)
         {
            this.§ "?§ = _loc3_.worldGravity;
         }
         var _loc5_:§ case§ = this.§3P§(_loc3_.castleCameraData,_loc4_,§ case§.CASTLE);
         var _loc6_:§ case§ = this.§3P§(_loc3_.birdCameraData,_loc4_,§ case§.SLINGSHOT);
         §>!T§.push(_loc5_);
         §>!T§.push(_loc6_);
         var _loc7_:Vector.<String> = this.§@!2§(_loc3_.world,_loc2_);
         this.§^!U§(_loc3_.world,_loc7_);
         var _loc8_:Vector.<String> = this.§+"h§(_loc3_.joints,_loc2_);
         this.§?!+§(_loc3_.joints,_loc8_);
         if(_loc3_.slingshotX)
         {
            §7!4§ = _loc3_.slingshotX;
         }
         if(_loc3_.slingshotY)
         {
            §`!,§ = _loc3_.slingshotY;
         }
      }
      
      private function §@!2§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§3"Y§(param1,param2,"world");
      }
      
      private function §+"h§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§3"Y§(param1,param2,"joints");
      }
      
      private function §3"Y§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc5_:§"X§ = null;
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
                  (_loc5_ = new §"X§()).name = _loc9_;
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
      
      private function §^!U§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(param1.ground)
         {
            this.§+"f§ = true;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in param2)
         {
            if((_loc5_ = param1[_loc4_]).startNumber && _loc5_.name.indexOf("Bird") >= 0)
            {
               this.§<"`§(_loc5_);
            }
            else if(_loc5_.radius)
            {
               this.§<">§(_loc5_);
            }
            else if(this.§5!S§(_loc5_,_loc3_))
            {
               _loc3_++;
            }
         }
      }
      
      private function §<"`§(param1:Object) : void
      {
         var _loc2_:§<5§ = new §<5§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.angle = param1.angle;
         _loc2_.type = this.§+!t§(param1.definition);
         _loc2_.index = param1.startNumber - 1;
         if(_loc2_.index == 0)
         {
            §7!4§ = _loc2_.x;
            §`!,§ = _loc2_.y - 8.5;
            §#"$§ = _loc2_.angle;
         }
         §&"P§.push(_loc2_);
      }
      
      private function §<">§(param1:Object) : void
      {
         var _loc2_:§<u§ = new §<u§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.shape = new §<b§(param1.radius);
         _loc2_.type = param1.definition;
         _loc2_.angle = this.§3!l§(param1.angle);
         _loc2_.§##2§ = param1.gravitationMinForce;
         _loc2_.§7"a§ = param1.gravitationMaxForce;
         _loc2_.§7#,§ = this.§]"C§;
         this.§]!y§.push(_loc2_);
      }
      
      protected function §'"`§(param1:Object) : Boolean
      {
         if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         if(param1.definition.toUpperCase() == "GROUND")
         {
            this.§+"f§ = true;
            return true;
         }
         return false;
      }
      
      protected function §5!S§(param1:Object, param2:int) : §9v§
      {
         var _loc3_:§9v§ = null;
         var _loc4_:§9"S§ = null;
         var _loc5_:§%H§ = null;
         var _loc6_:§6W§ = null;
         if(this.§'"`§(param1))
         {
            return null;
         }
         if(param1.explosionRadius != undefined || param1.explosionForce != undefined || param1.explosionDamageRadius != undefined || param1.explosionDamage != undefined)
         {
            (_loc4_ = new §9"S§()).explosionRadius = param1.explosionRadius;
            _loc4_.explosionForce = param1.explosionForce;
            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
            _loc4_.explosionDamage = param1.explosionDamage;
            _loc3_ = _loc4_;
         }
         else if(param1.shotPattern != undefined)
         {
            (_loc5_ = new §%H§()).shotPattern = param1.shotPattern;
            _loc3_ = _loc5_;
         }
         else if(!param1.triggerEvents)
         {
            _loc3_ = new §9v§();
         }
         else
         {
            (_loc6_ = new §6W§()).§<"t§.initialize(param1.triggerEvents.onDestroyed);
            _loc3_ = _loc6_;
         }
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         _loc3_.angle = this.§3!l§(param1.angle);
         _loc3_.type = this.§+!t§(param1.definition);
         _loc3_.id = param2;
         _loc3_.instanceName = param1.name;
         if(param1.gravityFilterCategory)
         {
            if(GravityFilterCategory[param1.gravityFilterCategory] == undefined)
            {
               throw new Error("Unknown gravity filter category \'" + param1.gravityFilterCategory + "\' for object \'" + param1.definition + "\' (id: " + param2 + ")");
            }
            _loc3_.§1!E§ = GravityFilterCategory[param1.gravityFilterCategory];
         }
         if(param1.themeTexture)
         {
            _loc3_.themeTexture = param1.themeTexture;
         }
         §7"q§.push(_loc3_);
         if(this.§^"l§[param1.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + param1.name);
         }
         this.§^"l§[param1.name] = param2;
         return _loc3_;
      }
      
      private function §?!+§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§=u§ = null;
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
            _loc11_ = this.§^"l§[_loc9_];
            _loc12_ = this.§^"l§[_loc10_];
            if(this.§^"l§[_loc9_] == null || this.§^"l§[_loc10_] == null)
            {
               throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
            }
            _loc13_ = _loc4_.collideConnected;
            if(_loc5_ == §=u§.§3"S§ || _loc5_ == §=u§.§##%§)
            {
               _loc14_ = _loc4_.limit;
               _loc15_ = _loc4_.lowerLimit;
               _loc16_ = _loc4_.upperLimit;
               _loc17_ = _loc4_.motor;
               _loc18_ = _loc4_.motorSpeed;
               _loc19_ = _loc4_.backAndForth;
               _loc20_ = _loc4_.maxTorque;
               _loc8_ = new §=u§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
               if(_loc5_ == §=u§.§##%§)
               {
                  _loc21_ = _loc4_.worldAxisX;
                  _loc22_ = _loc4_.worldAxisY;
                  _loc8_.axisX = _loc21_;
                  _loc8_.axisY = _loc22_;
               }
            }
            else
            {
               _loc8_ = new §=u§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
               if(_loc5_ == §=u§.§0#1§)
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
            _loc8_.§"!F§ = _loc4_.oneWayDestroy;
            if(_loc4_.type == §=u§.§ !+§)
            {
               _loc8_.annihilationTime = _loc4_.destroyTimer;
            }
            §2"?§.push(_loc8_);
         }
      }
      
      private function §3P§(param1:Object, param2:Number, param3:String) : § case§
      {
         var _loc4_:§ case§ = new § case§();
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
      
      protected function §3!l§(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      protected function §+!t§(param1:String) : String
      {
         return param1;
      }
   }
}
