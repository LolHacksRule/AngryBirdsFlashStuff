package §`!j§
{
   import § !Y§.§9k§;
   import § !Y§.§[!%§;
   import §"!&§.§="A§;
   import §@w§.§#v§;
   import §@w§.§%![§;
   import §@w§.§&"<§;
   import §@w§.§1o§;
   import §@w§.§[!!§;
   import §@w§.§`a§;
   import flash.geom.Point;
   
   public class §2!7§ extends §#b§
   {
      
      private static const §2"8§:Number = 4;
       
      
      protected var §5!d§:Number = 4.0;
      
      protected var §"!x§:Vector.<§&"<§> = null;
      
      protected var §6"6§:§[!%§;
      
      protected var §92§:Number = 0.0;
      
      protected var §"!k§:Boolean;
      
      protected var §"!!§:Object;
      
      public function §2!7§()
      {
         this.§"!!§ = [];
         super();
         this.§"!x§ = new Vector.<§&"<§>();
         this.§6"6§ = new §[!%§();
         this.initNameHACK();
      }
      
      public static function §<!P§(param1:String) : §2!7§
      {
         var _loc2_:§2!7§ = new §2!7§();
         _loc2_.§[!j§(param1);
         return _loc2_;
      }
      
      public function get § H§() : int
      {
         return this.§"!x§.length;
      }
      
      override public function get hasGround() : Boolean
      {
         return this.§"!k§;
      }
      
      override public function get worldGravity() : Number
      {
         return this.§92§;
      }
      
      public function §!"?§(param1:int) : §&"<§
      {
         return this.§"!x§[param1];
      }
      
      protected function §[!j§(param1:String) : void
      {
         var _loc2_:String = §9k§.§4l§(param1);
         var _loc3_:Object = §9k§.§-^§(_loc2_);
         §;!2§ = _loc3_.theme;
         §>"8§ = new Vector.<§1U§>();
         mBirds = new Vector.<§%![§>();
         §-`§ = new Vector.<§`a§>();
         var _loc4_:Number = _loc3_.physicsToWorld;
         this.§5!d§ = _loc3_.gravityForceMultiplier !== undefined ? Number(_loc3_.gravityForceMultiplier) : Number(§2"8§);
         if(_loc3_.worldGravity)
         {
            this.§92§ = _loc3_.worldGravity;
         }
         var _loc5_:§1U§ = this.§#"F§(_loc3_.castleCameraData,_loc4_,§1U§.CASTLE);
         var _loc6_:§1U§ = this.§#"F§(_loc3_.birdCameraData,_loc4_,§1U§.SLINGSHOT);
         §>"8§.push(_loc5_);
         §>"8§.push(_loc6_);
         var _loc7_:Vector.<String> = this.§2e§(_loc3_.world,_loc2_);
         this.§6!F§(_loc3_.world,_loc7_);
         var _loc8_:Vector.<String> = this.§ get§(_loc3_.joints,_loc2_);
         this.§="1§(_loc3_.joints,_loc8_);
         if(_loc3_.slingshotX)
         {
            §4,§ = _loc3_.slingshotX;
         }
         if(_loc3_.slingshotY)
         {
            §^!b§ = _loc3_.slingshotY;
         }
      }
      
      private function §2e§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§#N§(param1,param2,"world");
      }
      
      private function § get§(param1:Object, param2:String) : Vector.<String>
      {
         return this.§#N§(param1,param2,"joints");
      }
      
      private function §#N§(param1:Object, param2:String, param3:String) : Vector.<String>
      {
         var _loc5_:§%!S§ = null;
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
                  (_loc5_ = new §%!S§()).name = _loc9_;
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
      
      private function §6!F§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(param1.ground)
         {
            this.§"!k§ = true;
         }
         var _loc3_:int = 1;
         for each(_loc4_ in param2)
         {
            if((_loc5_ = param1[_loc4_]).startNumber && _loc5_.name.indexOf("Bird") >= 0)
            {
               this.§9"C§(_loc5_);
            }
            else if(_loc5_.radius)
            {
               this.§+!t§(_loc5_);
            }
            else if(this.§"!]§(_loc5_,_loc3_))
            {
               _loc3_++;
            }
         }
      }
      
      private function §9"C§(param1:Object) : void
      {
         var _loc2_:§%![§ = new §%![§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.angle = param1.angle;
         _loc2_.type = param1.definition;
         _loc2_.index = param1.startNumber - 1;
         if(_loc2_.index == 0)
         {
            §4,§ = _loc2_.x;
            §^!b§ = _loc2_.y - 8.5;
            §9!o§ = _loc2_.angle;
         }
         mBirds.push(_loc2_);
      }
      
      private function §+!t§(param1:Object) : void
      {
         var _loc2_:§&"<§ = new §&"<§();
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.shape = new §="A§(param1.radius);
         _loc2_.type = param1.definition;
         _loc2_.angle = this.§69§(param1.angle);
         _loc2_.§&G§ = param1.gravitationMinForce;
         _loc2_.§1^§ = param1.gravitationMaxForce;
         _loc2_.§^!_§ = this.§5!d§;
         this.§"!x§.push(_loc2_);
      }
      
      private function §3!r§(param1:Object) : Boolean
      {
         if(param1.definition.toUpperCase().indexOf("BLOCK_BONUS_DROID") >= 0)
         {
            return true;
         }
         return false;
      }
      
      private function §"!]§(param1:Object, param2:int) : Boolean
      {
         var _loc3_:§`a§ = null;
         var _loc4_:§[!!§ = null;
         var _loc5_:§#v§ = null;
         if(this.§3!r§(param1))
         {
            return false;
         }
         if(param1.explosionRadius != undefined || param1.explosionForce != undefined || param1.explosionDamageRadius != undefined || param1.explosionDamage != undefined)
         {
            (_loc4_ = new §[!!§()).explosionRadius = param1.explosionRadius;
            _loc4_.explosionForce = param1.explosionForce;
            _loc4_.explosionDamageRadius = param1.explosionDamageRadius;
            _loc4_.explosionDamage = param1.explosionDamage;
            _loc3_ = _loc4_;
         }
         else if(param1.shotPattern != undefined)
         {
            (_loc5_ = new §#v§()).shotPattern = param1.shotPattern;
            _loc3_ = _loc5_;
         }
         else
         {
            _loc3_ = new §`a§();
         }
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         _loc3_.angle = this.§69§(param1.angle);
         _loc3_.type = param1.definition;
         _loc3_.id = param2;
         if(param1.themeTexture)
         {
            _loc3_.themeTexture = param1.themeTexture;
         }
         §-`§.push(_loc3_);
         if(this.§6"6§[param1.name] != null)
         {
            throw new Error("Invalid level! Two objects with the same name: " + param1.name);
         }
         this.§6"6§[param1.name] = param2;
         return true;
      }
      
      private function §="1§(param1:Object, param2:Vector.<String>) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§1o§ = null;
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
            _loc11_ = this.§6"6§[_loc9_];
            _loc12_ = this.§6"6§[_loc10_];
            if(_loc11_ == 0 || _loc12_ == 0)
            {
               throw new Error("Invalid joint! Between objects: " + _loc9_ + " and " + _loc10_);
            }
            _loc13_ = _loc4_.collideConnected;
            if(_loc5_ == §1o§.§4<§ || _loc5_ == §1o§.§="'§)
            {
               _loc14_ = _loc4_.limit;
               _loc15_ = _loc4_.lowerLimit;
               _loc16_ = _loc4_.upperLimit;
               _loc17_ = _loc4_.motor;
               _loc18_ = _loc4_.motorSpeed;
               _loc19_ = _loc4_.backAndForth;
               _loc20_ = _loc4_.maxTorque;
               _loc8_ = new §1o§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
               if(_loc5_ == §1o§.§="'§)
               {
                  _loc21_ = _loc4_.worldAxisX;
                  _loc22_ = _loc4_.worldAxisY;
                  _loc8_.axisX = _loc21_;
                  _loc8_.axisY = _loc22_;
               }
            }
            else
            {
               _loc8_ = new §1o§(_loc5_,_loc11_,_loc12_,_loc6_,_loc7_,_loc13_);
               if(_loc5_ == §1o§.§[&§)
               {
                  _loc23_ = _loc4_.coordType;
                  _loc24_ = _loc4_.dampingRatio;
                  _loc25_ = _loc4_.frequency;
                  _loc8_.§!S§ = _loc23_;
                  _loc8_.dampingRatio = _loc24_;
                  _loc8_.frequency = _loc25_;
               }
            }
            if(_loc4_.type == §1o§.§`!T§)
            {
               _loc8_.§%?§ = _loc4_.destroyTimer;
            }
            § !B§.push(_loc8_);
         }
      }
      
      private function §#"F§(param1:Object, param2:Number, param3:String) : §1U§
      {
         var _loc4_:§1U§ = new §1U§();
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
      
      protected function §69§(param1:Number) : Number
      {
         return param1 * 180 / Math.PI;
      }
      
      protected function initNameHACK() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function §<L§(param1:String) : String
      {
         return this.§"!!§[param1] || param1;
      }
   }
}
